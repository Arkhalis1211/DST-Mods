local MakePlayerCharacter = require "prefabs/player_common"

local assets = 
{
		Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
		Asset("SCRIPT", "scripts/prefabs/skilltree_wragonfly.lua"),

		Asset("ANIM", "anim/wragonfly.zip"),
		Asset("ANIM", "anim/wragonfly_enraged.zip"),
		Asset("ANIM", "anim/ghost_wragonfly_build.zip" ),
		Asset("ANIM", "anim/player_idles_wragonfly.zip"),
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
	start_inv[string.lower(k)] = v.WRAGONFLY
end
local prefabs = FlattenTree(start_inv, true)
--------------------------------------------------------------------------
local function GetRageStatus(inst)
	return inst:HasTag("playerghost")
		and string.upper("GHOST")
		or string.upper("ENRAGED")
end

local function EnragedSanityFn(inst)
	local skilltreeupdater = inst.components.skilltreeupdater
	if skilltreeupdater then
		if skilltreeupdater:IsActivated("wragonfly_hunger") then
			return -TUNING.SANITYAURA_SMALL_TINY
		else
			return -TUNING.SANITYAURA_SMALL
		end
	end
end

local function ChangeNormalBuild(inst)
	if inst.components.timer:TimerExists("enraged") then
		inst.components.timer:StopTimer("enraged")
	end

	if inst.components.timer:TimerExists("enraged_extended") then
		inst.components.timer:StopTimer("enraged_extended")
	end

	if inst.components.inspectable.getstatus == GetRageStatus then
		inst.components.inspectable.getstatus = inst._getstatus
		inst._getstatus = nil
	end

	if not inst.sg:HasStateTag("ghostbuild") then
		inst.components.skinner:SetSkinMode("normal_skin", "wragonfly")
		inst.AnimState:SetLightOverride(0)
	end

	inst:RemoveTag("Enraged")
	inst.components.timer:StartTimer("cooldown", TUNING.WFLY_ENRAGED_CDTIME)

	if inst.enraged then
		local fx = SpawnPrefab("fire_fail_fx")
		fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
	end

    local current_health = inst.health_percent or inst.components.health:GetPercent()
    inst.health_percent = nil

	if inst.components.health ~= nil and not inst.components.health:IsDead() then
		inst.components.health:SetMaxHealth(TUNING.WRAGONFLY_HEALTH)
		inst.components.health:SetPercent(current_health)

		inst.components.health.fire_damage_scale = TUNING.WFLY_FIRE_IMMUNE
	end

	inst.components.combat.externaldamagemultipliers:RemoveModifier(inst)

	inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "wragonfly_enraged_speed")

	if inst.ramper ~= nil then
		inst.ramper:Cancel()
		inst.ramper = nil
	end

	inst.components.temperature.mintemp = TUNING.MIN_ENTITY_TEMP
	inst.components.temperature.maxtemp = TUNING.MAX_ENTITY_TEMP + 9

	if inst.components.freezable ~= nil then
		inst.components.freezable:SetResistance(4)
	end

	inst.components.heater.heat = 0

	inst.components.hunger.burnratemodifiers:RemoveModifier(inst)

	inst.components.sanity.custom_rate_fn = nil

	inst.enraged_tick = 0

	inst.enraged = false
end

local function OnExtinquish(inst)
	ChangeNormalBuild(inst)

	if inst.components.talker ~= nil then
		inst.components.talker:Say(GetString(inst, "ANNOUNCE_ENRAGED_EXTINGUISHED"))
	end

	inst.sg:PushEvent("powerdown")

	local fx = SpawnPrefab("collapse_small")
	fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
end

local function OnMoistureDelta(inst, data)
    if inst.enraged then
        local break_threshold = inst.components.moisture.maxmoisture * 0.3
        if (data.old < break_threshold and data.new >= break_threshold) then
            OnExtinquish(inst)
        end
    end
end

local function SetRampingSpeed(inst)
    if inst.components.rider:IsRiding() or inst:HasTag("playerghost") then
		inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "wragonfly_enraged_speed")
		inst.components.combat.externaldamagemultipliers:RemoveModifier(inst)
		return
    end
	local time = inst.components.timer:GetTimeLeft("enraged")
	local TIME = TUNING.WFLY_ENRAGED_TIME
	if inst.components.timer:TimerExists("enraged") and time then 
		if time/TIME < 0.3 then
			inst.components.locomotor:SetExternalSpeedMultiplier(inst, "wragonfly_enraged_speed", TUNING.WFLY_ENRAGED_RUN_SPEED + .2) -- +20%
			inst.components.combat.externaldamagemultipliers:SetModifier(inst, TUNING.WFLY_ENRAGED_ATTACK_MULT + .2) -- +20%
		elseif time/TIME < 0.5 then
			inst.components.locomotor:SetExternalSpeedMultiplier(inst, "wragonfly_enraged_speed", TUNING.WFLY_ENRAGED_RUN_SPEED + .1) -- +10%
			inst.components.combat.externaldamagemultipliers:SetModifier(inst, TUNING.WFLY_ENRAGED_ATTACK_MULT + .1) -- +10%
		end
	end
end

local function SetEnrageBuild(inst)
	if not inst:HasTag("Enraged") then
		inst.components.skinner:SetSkinMode("powerup", "wragonfly_enraged")
		inst.AnimState:SetLightOverride(0.15)
	end

	if inst.components.inspectable.getstatus ~= GetRageStatus then
		inst._getstatus = inst.components.inspectable.getstatus
		inst.components.inspectable.getstatus = GetRageStatus
    end

	local skilltreeupdater = inst.components.skilltreeupdater

	if inst.components.health ~= nil and not inst.components.health:IsDead() then
		local current_health = inst.health_percent or inst.components.health:GetPercent()
		inst.health_percent = nil

		inst.components.health:SetMaxHealth(TUNING.WRAGONFLY_HEALTH + TUNING.WFLY_ENRAGE_MAXHP)
		inst.components.health:SetPercent(current_health)

		inst.components.health.fire_damage_scale = 0 --0

		local vigor1_skill = skilltreeupdater:IsActivated("wragonfly_vigor_1")
		if vigor1_skill then
			local current_sanity = inst.components.sanity:GetPercent() -- 0 to 0.99
			inst.components.health:DoDelta(current_sanity * 70)
		end
	end

	inst.components.combat.externaldamagemultipliers:SetModifier(inst, TUNING.WFLY_ENRAGED_ATTACK_MULT) --10%

	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "wragonfly_enraged_speed", TUNING.WFLY_ENRAGED_RUN_SPEED) --20%

	local vigor2_skill = skilltreeupdater:IsActivated("wragonfly_vigor_2")
	if vigor2_skill then
		inst.ramper = inst:DoPeriodicTask(1, function()
			SetRampingSpeed(inst)
		end)
	end

	inst.components.temperature.mintemp = 60
	inst.components.temperature.maxtemp = 60

	inst.components.moisture:DoDelta(-inst.components.moisture:GetMoisture()) --Remove any moisture, since she can still have a little before she cannot enrage

    if inst.components.freezable ~= nil then
		inst.components.freezable:SetResistance(8) --Default is 4, willow 3, real enraged dfly 12
	end

	inst.components.heater.heat = 25

	inst.components.hunger.burnratemodifiers:SetModifier(inst, 4)

	inst.components.sanity.custom_rate_fn = EnragedSanityFn

	inst.enraged = true
end

local function NoHoles(pt)
    return not TheWorld.Map:IsPointNearHole(pt)
end

local function SummonAlly(inst)
    local theta = math.random() * 2 * PI
    local pt = inst:GetPosition()
    local radius = math.random(1, 4)
    local offset = FindWalkableOffset(pt, theta, radius, 4, true, true, NoHoles)
	if inst and inst.components.petleash and not inst.components.petleash:IsFull() then
		if offset ~= nil then
			pt.x = pt.x + offset.x
			pt.z = pt.z + offset.z
		end
		inst.components.petleash:SpawnPetAt(pt.x, 0, pt.z, "lavae_wragonfly")

		local summonfx = SpawnPrefab("shadow_puff_solid")
		summonfx.Transform:SetPosition(pt.x, 0, pt.z)
		local summonfx2 = SpawnPrefab("shadow_teleport_in")
		summonfx2.Transform:SetPosition(pt.x, 0, pt.z)
	end
end

local function DoFireRing(inst, x, z)
	local ring = SpawnPrefab("firering_fx")
	ring.Transform:SetScale(.75, .75, .75)
	ring.Transform:SetPosition(x, 0, z)
	SpawnPrefab("firesplash_fx").Transform:SetPosition(x, 0, z)
end

local function FireFx(inst)
	local x, y, z = inst.Transform:GetWorldPosition()
        local numFX = math.random(2, 4)
        for i = 1, numFX do
            inst:DoTaskInTime(math.random() * .25, DoFireRing, x, z)
			inst:DoTaskInTime(math.random() * .45, inst.SoundEmitter:PlaySound("dontstarve/wilson/attack_whoosh"), x, z)
	    end
	local tauntfx = SpawnPrefab("tauntfire_fx")
	tauntfx.Transform:SetScale(.75, .75, .75)
	tauntfx.Transform:SetPosition(x, 0, z)
end

local function EnRage(inst)
	local x, y, z = inst.Transform:GetWorldPosition()

	inst:DoTaskInTime(math.random() * .25, ShakeAllCameras(CAMERASHAKE.FULL, 1, .015, .3, inst, 30))
	SetEnrageBuild(inst) -- here is where we make the change to the build and stats
	FireFx(inst)

	if inst.components.talker ~= nil then
		inst.components.talker:Say(GetString(inst, "ANNOUNCE_ENRAGED"))
	end

	if not inst.sg:HasStateTag("doing") then
		inst.SoundEmitter:PlaySound("dontstarve/characters/wragonfly/emote")
		inst.AnimState:PlayAnimation("boat_jump_pre")
		inst.AnimState:PushAnimation("boat_jump_pst", false)
	end

	if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("wragonfly_hunger") then
		inst.components.timer:StartTimer("enraged_extended", TUNING.WFLY_ENRAGED_TIME*2)
	end

    if not inst:HasTag("icedfly") then
		local ents = TheSim:FindEntities(x, y, z, 5, nil)
		for k,v in pairs(ents) do
			if v and v:IsValid() and v.components.combat ~= nil and
			v.components.health ~= nil and not v.components.health:IsDead() then
				if not (v:HasTag("player") or v:HasTag("wragonflyminion") or v:HasTag("abigail") or v:HasTag("wall") or 
				v:HasTag("companion") or v:HasTag("INLIMBO") or  v:HasTag("structure")) then
					v.components.combat:GetAttacked(inst, TUNING.WFLY_ENRAGED_BURSTDMG)
					if TheNet:GetServerGameMode() == "lavaarena" then
						v.components.debuffable:AddDebuff("wragonfly_rage_buff", "wragonfly_rage_buff")
					end
				end
			elseif v and v:HasTag("campfire") then
				if v.components.fueled ~= nil then
					v.components.fueled:DoDelta(TUNING.MED_FUEL)
				end
			end
		end
	end

	if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("wragonfly_allegiance_shadow") then
		SummonAlly(inst)
		SummonAlly(inst)
		SummonAlly(inst)
	end
end

local function ontimerdone(inst, data)
	if data.name == "enraged" then
		if not inst:HasTag("playerghost") or inst.components.health:IsDead() then
			ChangeNormalBuild(inst)
			if inst.components.talker ~= nil then
				inst.components.talker:Say(GetString(inst, "ANNOUNCE_ENRAGED_OVER"))
			end
		end
	end

	if data.name == "cooldown" then
		inst.tick = 0
		inst.starttime = nil
		inst.endtime = nil
		--(some visuals to let me know when wragonfly is off of cooldown)--
		if not inst:HasTag("playerghost") or inst.components.health:IsDead() then
			local readyfx = SpawnPrefab("deer_fire_burst")
			readyfx.Transform:SetPosition(inst.Transform:GetWorldPosition())
			if inst.components.talker ~= nil then
				inst.components.talker:Say(GetString(inst, "ANNOUNCE_ENRAGE_CD_OVER"))
			end
		end
    end

	if data.name == "iced" then
		inst:RemoveTag("icedfly")
	end
end

local function oneat(inst, food)
	if food and food.prefab == "ash" then --Charcoal is BURNT too, stick with only ash
	    if inst.starttime ~= nil and inst.endtime ~= nil then
			if GetTime() < inst.endtime then
				inst.tick = inst.tick + 1 --quick eat timing set up for how long it would take to rack up ticks
			end
			if GetTime() > inst.endtime then
			    inst.starttime = nil
			end

			if inst.tick ~= nil and inst.tick == TUNING.WFLY_MAX_ASHES then--8
				if inst.components.timer:TimerExists("enraged") or inst.components.timer:TimerExists("cooldown") 
				or inst.components.moisture:GetMoisture() > 30 or inst.components.temperature:GetCurrent() < 10 then
					return
	            else
					EnRage(inst)
					inst:AddTag("Enraged")
					inst.components.timer:StartTimer("enraged", TUNING.WFLY_ENRAGED_TIME)

					if inst.components.skilltreeupdater ~= nil and
					not inst.components.skilltreeupdater:IsActivated("wragonfly_ash")
					then
						SendRPCToClient(CLIENT_RPC.UpdateAccomplishment, inst.userid, "wragonfly_enraged")
					end
				end
			end
			if inst.tick ~= nil and inst.tick >= TUNING.WFLY_MAX_ASHES + 2 then
                if inst.components.grogginess ~= nil then
					inst.components.grogginess:AddGrogginess(1, 2)
                end
			end
		end

		if inst.starttime == nil then
			inst.starttime = GetTime()
			inst.endtime = inst.starttime + 20
			inst.tick = 1
		end

		if inst.enraged and inst.components.skilltreeupdater ~= nil and inst.components.skilltreeupdater:IsActivated("wragonfly_damage_4") then
			inst:AddTag("lavaspitter")
		end
	end

	if food and food.prefab == "ice" then
		if inst.components.timer:TimerExists("iced") then
			return
		else
			inst:AddTag("icedfly")
			inst.components.timer:StartTimer("iced", TUNING.WFLY_ENRAGED_TIME)
		end
	end

	if inst.components.skilltreeupdater then
		if inst.components.skilltreeupdater:IsActivated("wragonfly_hunger") then
			if food and food.prefab == "charcoal" then
				if not inst.components.timer:TimerExists("enraged") then
					return
				else
					local timeleft = inst.components.timer:GetTimeLeft("enraged")
					local bonus = 20
					if timeleft <= TUNING.WFLY_ENRAGED_TIME and inst.components.timer:TimerExists("enraged_extended") then
						inst.components.timer:SetTimeLeft("enraged", timeleft + bonus )
					--	print("bonus duration:", timeleft + bonus)
					else
					--	print("no bonus duration")
					end
				end
			end
		end
	end
end

local function wfly_onhit(attacker, data)
	if data.target ~= nil then

	if attacker.enraged == true and not attacker:HasTag("icedfly") then
		if data.target ~= nil and data.target:IsValid() and attacker:IsValid() and not data.target:HasTag("shadowcreature") then
			if math.random() < .66 then
				local atkfx = SpawnPrefab("attackfire_fx")
				atkfx.Transform:SetPosition(attacker.Transform:GetWorldPosition())
				atkfx.Transform:SetScale(.20, .30, .30)
			end

			local x, y, z = attacker.Transform:GetWorldPosition()

			if attacker.components.skilltreeupdater and attacker.components.skilltreeupdater:IsActivated("wragonfly_damage_1") then
				attacker.enraged_tick = attacker.enraged_tick + 1

				if attacker.enraged_tick == 2 then -- 2 Hits
					local atkfx1 = SpawnPrefab("halloween_firepuff_1")
					atkfx1.Transform:SetPosition(data.target.Transform:GetWorldPosition())
					atkfx1.Transform:SetScale(.45, .45, .45)
					data.target.components.combat:GetAttacked(attacker, TUNING.WFLY_ENRAGED_BURSTDMG)
				elseif attacker.enraged_tick == 5 then -- 4 Hits
					local atkfx2 = SpawnPrefab("halloween_firepuff_2")
					atkfx2.Transform:SetPosition(data.target.Transform:GetWorldPosition())
					atkfx2.Transform:SetScale(.75, .7, .7)
					data.target.components.combat:GetAttacked(attacker, TUNING.WFLY_ENRAGED_BURSTDMG * 2.5)
				elseif attacker.enraged_tick == 8 then -- 6 Hits
					local atkfx3 = SpawnPrefab("halloween_firepuff_3")
					atkfx3.Transform:SetPosition(data.target.Transform:GetWorldPosition())
					data.target.components.combat:GetAttacked(attacker, TUNING.WFLY_ENRAGED_BURSTDMG * 5)
					attacker.enraged_tick = 0
				end
			else
				if math.random() <= .25 then --25%
					local atkfx1 = SpawnPrefab("halloween_firepuff_1")
					atkfx1.Transform:SetPosition(data.target.Transform:GetWorldPosition())
					atkfx1.Transform:SetScale(.45, .45, .45)
					data.target.components.combat:GetAttacked(attacker, TUNING.WFLY_ENRAGED_BURSTDMG)
				end
				if math.random() <= .15 then --15%
					local atkfx2 = SpawnPrefab("halloween_firepuff_2")
					atkfx2.Transform:SetPosition(data.target.Transform:GetWorldPosition())
					atkfx2.Transform:SetScale(.75, .7, .7)
					data.target.components.combat:GetAttacked(attacker, TUNING.WFLY_ENRAGED_BURSTDMG * 2.5)
				end
				if math.random() <= .05 then --5%
					SpawnPrefab("halloween_firepuff_3").Transform:SetPosition(data.target.Transform:GetWorldPosition())
					data.target.components.combat:GetAttacked(attacker, TUNING.WFLY_ENRAGED_BURSTDMG * 5)
				end
			end

			if attacker.components.skilltreeupdater and attacker.components.skilltreeupdater:IsActivated("wragonfly_damage_3") then
				data.target:AddDebuff("wragonfly_rage_buff", "wragonfly_rage_buff")
			end
		end
	end

	end
end

local function OnAttacked(inst, data)
	local target = data.attacker
	if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("wragonfly_damage_2") then
		if inst.enraged == true and not inst:HasTag("icedfly") then
			if target ~= nil and target:IsValid() and target.components.burnable ~= nil and math.random() < .5 * target.components.burnable.flammability then
	--			target.components.burnable:Ignite(nil, data.attacker)
				local atkfx = SpawnPrefab("attackfire_fx")
				atkfx.Transform:SetPosition(target.Transform:GetWorldPosition())
				atkfx.Transform:SetScale(.4, .5, .4)
				target.components.combat:GetAttacked(inst, TUNING.WFLY_ENRAGED_BURSTDMG * 3.4)
			end
		end
	end

	if inst:HasTag("playerghost") or
		inst.components.health:IsDead() or 
		inst.components.timer:TimerExists("enraged") or inst.components.timer:TimerExists("cooldown") or 
		inst.components.moisture:GetMoisture() > 30 or inst.components.temperature:GetCurrent() < 10 then
		return
    end
	--If attacked when hp is 100 to 1 then 70% chance enrage each hit
	if inst.components.health ~= nil and not inst.components.health:IsDead() then
		if inst.components.health.currenthealth <= inst.components.health.maxhealth / 2 and math.random() < .7 then
			EnRage(inst)
			inst:AddTag("Enraged")
			inst.components.timer:StartTimer("enraged", TUNING.WFLY_ENRAGED_TIME)
		end
	end
end

local function CustomCombatDamage(inst, target, weapon, multiplier, mount)
	for k, v in pairs(inst.components.petleash:GetPets()) do
		if v:HasTag("wragonflyminion") then
			if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("wragonfly_rage_lavae_1") then
				if v.components.combat:TargetIs(target) then
					return 1.15 -- +15%
				end
			end
		end
	end
end
--------------------------------------------------------------------------
local function KillPet(pet)
	pet.components.health:Kill()
end

local function OnSpawnPet(inst, pet)
	if pet:HasTag("wragonflyminion") then
		if not (inst.components.health:IsDead() or inst:HasTag("playerghost")) then
			inst:ListenForEvent("onremove", inst._onpetlost, pet)
			local new_name = subfmt("{mother}'s Lavae", { mother = inst.name })
			pet.components.named:SetName(new_name)
		elseif pet._killtask == nil then
			pet._killtask = pet:DoTaskInTime(math.random(), KillPet)
		end
    elseif inst._OnSpawnPet ~= nil then
		inst:_OnSpawnPet(pet)
	end
end

local function OnDespawnPet(inst, pet)
	if pet:HasTag("wragonflyminion") then
		pet:Remove()
	elseif inst._OnDespawnPet ~= nil then
		inst:_OnDespawnPet(pet)
	end
end

local function OnDeath(inst)
	for k, v in pairs(inst.components.petleash:GetPets()) do
		if v:HasTag("wragonflyminion") and v._killtask == nil then
			if inst.components.skilltreeupdater and not inst.components.skilltreeupdater:IsActivated("wragonfly_lavaedeath_2") then
				v._killtask = v:DoTaskInTime(math.random(), KillPet)
			end
		end
	end

	if inst.components.timer:TimerExists("enraged") or inst:HasTag("Enraged") then
		ChangeNormalBuild(inst)--extinguish her rage on death instead of keeping it
	end
end

local function OnReroll(inst)
	local todespawn = {}
	for k, v in pairs(inst.components.petleash:GetPets()) do
		if v:HasTag("wragonflyminion") then
			table.insert(todespawn, v)
        end
	end
	for i, v in ipairs(todespawn) do
		inst.components.petleash:DespawnPet(v)
	end
end
--------------------------------------------------------------------------
local function GnawUpdate(inst)
	if TheWorld.net.components.quagmire_hangriness:GetLevel() > 2 then
	if not inst:HasTag("Enraged") or inst.components.timer:TimerExists("cooldown") then
		EnRage(inst)
		inst:AddTag("Enraged")
	end
	elseif inst:HasTag("Enraged") then
		ChangeNormalBuild(inst)
		if inst.components.talker ~= nil then
			inst.components.talker:Say(GetString(inst, "ANNOUNCE_ENRAGED_OVER"))
		end
	end
end

local function IsOverheating(inst)
    if inst.components.temperature ~= nil then
        return inst.components.temperature:IsOverheating()
    elseif inst.player_classified ~= nil then
        return inst.player_classified.currenttemperature > TUNING.WFLY_OVERHEAT_TEMP
    else
        return false
    end
end

local function GetPointSpecialActions(inst, pos, useitem, right)
	if right then
		if inst:HasTag("lavaspitter") and inst.components.skilltreeupdater:IsActivated("wragonfly_damage_4") then
			return { ACTIONS.WFLY_LAVASPIT }
		end
	end
	return {}
end

local function ReticuleTargetFn()
	local player = ThePlayer
	local ground = TheWorld.Map
	local pos = Vector3()
	--Toss range is 8
	for r = 6.5, 1, -.25 do
		pos.x, pos.y, pos.z = player.entity:LocalToWorldSpace(r, 0, 0)
		if ground:IsPassableAtPoint(pos:Get()) and not ground:IsGroundTargetBlocked(pos) then
			return pos
		end
	end
	pos.x, pos.y, pos.z = player.Transform:GetWorldPosition()
	return pos
end

local function OnSetOwner(inst)
	if inst.components.playeractionpicker ~= nil then
		inst.components.playeractionpicker.pointspecialactionsfn = GetPointSpecialActions
	end
end

local function onload(inst, data)
	if data.enraged then
		SetEnrageBuild(inst)
	end
	inst.tick = 0
	inst.starttime = nil
	inst.endtime = nil
end

local function onsave(inst, data)
	data.enraged = inst.enraged
end
--------------------------------------------------------------------------
local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "wragonfly.tex" )
	inst:AddTag("wragonfly")

	--For UI health meter arrows
    inst:AddTag("heatresistant") --less overheat damage
	inst:AddTag("HASHEATER")            -- from heater component
	inst.AnimState:SetHatOffset(10, -10) -- This is not networked.

	inst:AddComponent("reticule")
	inst.components.reticule.targetfn = ReticuleTargetFn
	inst.components.reticule.ease = true

	inst.IsOverheating = IsOverheating

	inst:ListenForEvent("setowner", OnSetOwner)
end

local master_postinit = function(inst)
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

	inst.soundsname = "wragonfly"
	inst.customidleanim = "idle_wragonfly"

	inst.components.health:SetMaxHealth(TUNING.WRAGONFLY_HEALTH)
	inst.components.hunger:SetMax(TUNING.WRAGONFLY_HUNGER)
	inst.components.sanity:SetMax(TUNING.WRAGONFLY_SANITY)

	inst:AddComponent("heater")
	inst.components.heater.heat = 0

	inst.components.foodaffinity:AddPrefabAffinity("dragonchilisalad", TUNING.AFFINITY_15_CALORIES_MED)

    inst.components.combat.customdamagemultfn = CustomCombatDamage

	inst.tick = 0
	inst.enraged_tick = 0
	inst.enraged = false
	inst._getstatus = nil

	if inst.components.petleash ~= nil then
		inst._OnSpawnPet = inst.components.petleash.onspawnfn
		inst._OnDespawnPet = inst.components.petleash.ondespawnfn
		inst.components.petleash:SetMaxPets(inst.components.petleash:GetMaxPets() + TUNING.WFLY_MAX_LAVAE)
    else
		inst:AddComponent("petleash")
		inst.components.petleash:SetMaxPets(TUNING.WFLY_MAX_LAVAE)--10
    end
    inst.components.petleash:SetOnSpawnFn(OnSpawnPet)
    inst.components.petleash:SetOnDespawnFn(OnDespawnPet)

	inst:ListenForEvent("timerdone", ontimerdone)

    inst:ListenForEvent("onhitother", wfly_onhit)

	inst:ListenForEvent("attacked", OnAttacked)

	inst:ListenForEvent("moisturedelta", OnMoistureDelta)

	inst:ListenForEvent("knockedout", ChangeNormalBuild)

	inst.components.temperature.overheattemp = TUNING.WFLY_OVERHEAT_TEMP
	inst.components.temperature.maxtemp = 99
	inst.components.temperature.inherentsummerinsulation = TUNING.INSULATION_LARGE
	inst.components.temperature:SetOverheatHurtRate(TUNING.WILSON_HEALTH / 200)
	inst.components.temperature.ignoreheatertags = { "INLIMBO", "lava" }

	inst.components.health.fire_damage_scale = TUNING.WFLY_FIRE_IMMUNE

--	inst:WatchWorldState("issnowing", onisraining)
--	onisraining(inst, TheWorld.state.issnowing)

	if inst.components.eater ~= nil then
		inst.components.eater:SetCanEatBurnt()
		inst.components.eater:SetOnEatFn(oneat)
    end

    if inst.components.freezable ~= nil then
        inst.components.freezable.onfreezefn = ChangeNormalBuild
    end

    if TheNet:GetServerGameMode() == "lavaarena" then
		return
    elseif TheNet:GetServerGameMode() == "quagmire" then
		inst:DoPeriodicTask(0.7, GnawUpdate)
    end

	inst._onpetlost = function(pet)
		if inst.sg:HasStateTag("doing") or inst:HasTag("playerghost") or inst.components.timer:TimerExists("enraged") or inst.components.timer:TimerExists("cooldown") 
			or inst.components.moisture:GetMoisture() > 30 or inst.components.temperature:GetCurrent() < 10 then
				return
			else
			if inst.components.petleash:GetNumPets() < 1 then
				EnRage(inst)
				inst:AddTag("Enraged")
				inst.components.timer:StartTimer("enraged", TUNING.WFLY_ENRAGED_TIME)
			end
		end
	end

    inst:ListenForEvent("ms_respawnedfromghost", function()
		ChangeNormalBuild(inst)
	end)

	inst:ListenForEvent("ms_becameghost", function()
		inst.tick = 0
		inst.enraged = false
	end)
	inst:ListenForEvent("death", OnDeath)
    inst:ListenForEvent("ms_playerreroll", OnReroll)

    inst.OnSave = onsave
	inst.OnLoad = onload
end
--------------------------------------------------------------------------
local function OnKillBuff(inst)
    inst.components.debuff:Stop()
end

local function OnAttached(inst, target)
    inst.entity:SetParent(target.entity)
    inst.Transform:SetPosition(0, 0, 0) --in case of loading
    inst:ListenForEvent("death", function()
        inst.components.debuff:Stop()
    end, target)

    if target ~= nil and target:IsValid() and target.components.combat ~= nil then
		target.enraged_buff_tick = 0
		inst:ListenForEvent("attacked", function(attacker, data)
			if data.attacker ~= nil then
				if not data.attacker.enraged == true and not data.attacker:HasTag("icedfly") then -- Do not double Dragonfly's bursts
					target.enraged_buff_tick = target.enraged_buff_tick + 1
					if target.enraged_buff_tick == 4 then -- 4 Hits
						local atkfx1 = SpawnPrefab("halloween_firepuff_1")
						atkfx1.Transform:SetScale(.36, .36, .36)
						atkfx1.Transform:SetPosition(target.Transform:GetWorldPosition())
						target.components.combat:GetAttacked(data.attacker, TUNING.WFLY_ENRAGED_BURSTDMG)
					elseif target.enraged_buff_tick == 7 then -- 6 Hits
						local atkfx2 = SpawnPrefab("halloween_firepuff_2")
						atkfx2.Transform:SetScale(.56, .56, .56)
						atkfx2.Transform:SetPosition(target.Transform:GetWorldPosition())
						target.components.combat:GetAttacked(data.attacker, TUNING.WFLY_ENRAGED_BURSTDMG * 2)
					elseif target.enraged_buff_tick == 12 then -- 10 Hits
						local atkfx3 = SpawnPrefab("halloween_firepuff_3")
						atkfx3.Transform:SetScale(.66, .66, .66)
						atkfx3.Transform:SetPosition(target.Transform:GetWorldPosition())
						target.components.combat:GetAttacked(data.attacker, TUNING.WFLY_ENRAGED_BURSTDMG * 3)
						target.enraged_buff_tick = 0
					end
				end
			end
        end, target)
        local fx = SpawnPrefab("deer_fire_flakes")
        inst.bufffx = fx
        fx.entity:SetParent(target.entity)
		fx.Transform:SetScale(.7, .65, .7)
    end
end

local function OnDetached(inst, target)
    if inst.bufffx and inst.bufffx:IsValid() then
        inst.bufffx:Remove()
    end
    inst.bufffx = nil
    inst:Remove()
end

local function OnExtendedBuff(inst)
	inst.components.timer:StopTimer("wragonfly_rage_buff")
	inst.components.timer:StartTimer("wragonfly_rage_buff", 20)
end

local function OnTimerDone(inst, data)
	if data.name == "wragonfly_rage_buff" then
		inst.components.debuff:Stop()
	end
end

local function bufffn()
    local inst = CreateEntity()

    if not TheWorld.ismastersim then
        --Not meant for client!
        inst:DoTaskInTime(0, inst.Remove)
        return inst
    end

    inst.entity:AddTransform()
    --[[Non-networked entity]]
    inst.entity:Hide()

    inst.persists = false

    inst:AddTag("CLASSIFIED")

    inst:AddComponent("debuff")
    inst.components.debuff:SetAttachedFn(OnAttached)
    inst.components.debuff:SetDetachedFn(OnDetached)
    inst.components.debuff:SetExtendedFn(OnExtendedBuff)

	inst:AddComponent("timer")
	inst.components.timer:StartTimer("wragonfly_rage_buff", 20)
	inst:ListenForEvent("timerdone", OnTimerDone)

    return inst
end

return MakePlayerCharacter("wragonfly", prefabs, assets, common_postinit, master_postinit),
        Prefab("wragonfly_rage_buff", bufffn, nil)