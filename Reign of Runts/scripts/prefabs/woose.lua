local MakePlayerCharacter = require "prefabs/player_common"

local assets = 
{
		Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
		Asset("SCRIPT", "scripts/prefabs/skilltree_woose.lua"),

		Asset("ANIM", "anim/woose.zip"),
		Asset("ANIM", "anim/ghost_woose_build.zip"),
		Asset("ANIM", "anim/player_idles_woose.zip"),
		Asset("ANIM", "anim/player_woose_spin.zip"),
		Asset("ANIM", "anim/player_woose_migrate.zip"),
}
local prefabs = {    
    "weregoose_splash",
    "weregoose_splash_med1",
    "weregoose_splash_med2",
    "weregoose_splash_less1",
    "weregoose_splash_less2",
    "weregoose_ripple1",
    "weregoose_ripple2"
}
local start_inv =
{
}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
	start_inv[string.lower(k)] = v.WOOSE
end
local prefabs = FlattenTree(start_inv, true)
--------------------------------------------------------------------------
local function feather_molt(inst)
	local offset = 1
	local spd = 1.75 + math.random() * 2.5
	local angle = (135 + math.random() * 45) * DEGREES * 1.1
	local x, y, z = inst.Transform:GetWorldPosition()
	local feather = SpawnPrefab("goose_feather")
		feather.Transform:SetPosition(x - math.sin(angle) * offset, 1.35, z - math.cos(angle) * offset)
		feather.Physics:SetVel(math.cos(angle) * spd, 12, math.sin(angle) * spd)
end

local function IsSummer(season)--Geese molt their feathers at the end of summer, good thing woose already can't fly
    return season == "summer"
end

local function OnSummer(inst, season)
	if not inst:HasTag("playerghost") then
    	if IsSummer(season) then
			inst.sg:GoToState("hit")
			SpawnPrefab("weregoose_feathers"..tostring(math.random(3))).entity:SetParent(inst.entity)
			feather_molt(inst)
			feather_molt(inst)
			feather_molt(inst)
    	end
	end
end

local function TossFish(inst, item)
	-- Keeps the fish intact
	if item:HasTag("oceanfish") then
		local ix, iy, iz = item.Transform:GetWorldPosition()
		local owner = item
		local item = SpawnPrefab(item.fish_def and item.fish_def.prefab.."_inv")
		item.Transform:SetPosition(ix, iy, iz)
		Launch2(item, inst, 2, 0, 2, 0)
		owner:Remove()
		inst:DoTaskInTime(0.6,function()
			inst.components.inventory:GiveItem(item)
		end)
	end
end

local function LightningMult(inst)
	local skilltreeupdater = inst.components.skilltreeupdater
	local mult = TUNING.ELECTRIC_WET_DAMAGE_MULT * inst.components.moisture:GetMoisturePercent()
	if skilltreeupdater and skilltreeupdater:IsActivated("woose_absorber") then
		return TUNING.LIGHTNING_DAMAGE + mult * TUNING.LIGHTNING_DAMAGE + TUNING.LIGHTNING_DAMAGE -- 20 - 29
	else
		return TUNING.LIGHTNING_DAMAGE + mult * TUNING.LIGHTNING_DAMAGE -- 10 - 19
	end
end

local function onlightingstrike_woose(inst)
    if inst.components.health ~= nil and not (inst.components.health:IsDead() or inst.components.health:IsInvincible()) then
        if not inst.components.inventory:IsInsulated() then
            local mult = TUNING.ELECTRIC_WET_DAMAGE_MULT * inst.components.moisture:GetMoisturePercent()
            local heal = LightningMult(inst)

            inst.components.health:DoDelta(heal, false, "lightning")
            inst.components.talker:Say(GetString(inst, "ANNOUNCE_LIGHTNING_WOOSE"))
			if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("woose_absorber") then
				inst:AddDebuff("buff_electricattack", "buff_electricattack")
			end
        else
            inst:PushEvent("lightningdamageavoided")
        end
    end
end

local function onattack(inst, data)
	if math.random() < .10 then
	    ShakeAllCameras(CAMERASHAKE.FULL, 1, .015, .3, inst, 30)
	    inst.SoundEmitter:PlaySound("dontstarve/characters/woose/emote")
	    inst.components.epicscare:Scare(5)
		inst.components.talker:Say(GetString(inst, "ANNOUNCE_HONK"))
	end
end
--------------------------------------------------------------------------
local function GetPointSpecialActions(inst, pos, useitem, right)
    if right then
		if not inst:HasTag("groggy") then
			local rider = inst.replica.rider
			if useitem == nil then
				local inventory = inst.replica.inventory
				if inventory ~= nil then
					useitem = inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
				end
			end
			if rider == nil or not rider:IsRiding() then
				if not (useitem and useitem.components.aoetargeting) then
					return { ACTIONS.WOOSESPIN }
				end
			end
		end
	else
		if inst.components.playercontroller.isclientcontrollerattached then
			if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("woose_birds_2") and not TheWorld.Map:IsOceanAtPoint(inst:GetPosition():Get()) then
				return { ACTIONS.WOOSE_MIGRATE }
			end
		end
    end
    return {}
end

local function OnSetOwner(inst)
    if inst.components.playeractionpicker ~= nil then
        inst.components.playeractionpicker.pointspecialactionsfn = GetPointSpecialActions
    end
end
--------------------------------------------------------------------------
local function ShouldNotDrown(inst)
    if inst.components.drownable ~= nil then
        if inst.components.drownable.enabled ~= false then
            inst.components.drownable.enabled = false
            inst.Physics:ClearCollisionMask()
            inst.Physics:CollidesWith(COLLISION.GROUND)
            inst.Physics:CollidesWith(COLLISION.OBSTACLES)
            inst.Physics:CollidesWith(COLLISION.SMALLOBSTACLES)
            inst.Physics:CollidesWith(COLLISION.CHARACTERS)
            inst.Physics:CollidesWith(COLLISION.GIANTS)
            inst.Physics:Teleport(inst.Transform:GetWorldPosition())
        end
	end
end

local function ShouldDrown(inst)
    if inst.components.drownable ~= nil then
		if inst.components.drownable.enabled == false then
		inst.components.drownable.enabled = true
            if not inst:HasTag("playerghost") then
                inst.Physics:ClearCollisionMask()
                inst.Physics:CollidesWith(COLLISION.WORLD)
                inst.Physics:CollidesWith(COLLISION.OBSTACLES)
                inst.Physics:CollidesWith(COLLISION.SMALLOBSTACLES)
                inst.Physics:CollidesWith(COLLISION.CHARACTERS)
                inst.Physics:CollidesWith(COLLISION.GIANTS)
                inst.Physics:Teleport(inst.Transform:GetWorldPosition())
            end
		end
    end
end

local function DoRipple(inst)
    if inst.components.drownable ~= nil and inst.components.drownable:IsOverWater() and not inst:HasTag("playerghost") then
        SpawnPrefab("weregoose_ripple"..tostring(math.random(2))).entity:SetParent(inst.entity)
    end
end

local function DoSplash(inst)
    if inst.components.drownable ~= nil and inst.components.drownable:IsOverWater() and inst.sg:HasStateTag("moving") and not inst:HasTag("playerghost") then
        SpawnPrefab("weregoose_splash_med"..tostring(math.random(2))).entity:SetParent(inst.entity)
    end
end

local function UpdateMoist(self, dt)
	if self.inst.components.moisture:GetMoisture() >= TUNING.WOOSE_DROWNMAX or self.inst.components.rider:IsRiding() or self.inst.components.inventory:IsHeavyLifting() or self.inst:IsCarefulWalking() then
		ShouldDrown(self.inst)
	elseif self.inst.components.moisture:GetMoisture() < TUNING.WOOSE_DROWNMAX then
		ShouldNotDrown(self.inst)
	end

	if self:IsForceDry() then
        --can still get here even if we're not in the update list
        --i.e. LongUpdate or OnUpdate called explicitly
        return
    end

    local sleepingbagdryingrate = self:GetSleepingBagDryingRate()
    if sleepingbagdryingrate ~= nil then
        self.rate = -sleepingbagdryingrate
	elseif self.inst.components.drownable ~= nil and self.inst.components.drownable:IsOverWater() then
		local moisturerate = self:GetMoistureRate()
		local dryingrate = self:GetDryingRate(moisturerate)
		local skillrate = 0
        if self.inst.components.skilltreeupdater and self.inst.components.skilltreeupdater:IsActivated("woose_ocean_2") then
            skillrate = 0.09
        end

		self.rate = moisturerate + 0.5 + skillrate + self:GetEquippedMoistureRate(dryingrate)
    else
        local moisturerate = self:GetMoistureRate()
        local dryingrate = self:GetDryingRate(moisturerate)
        local equippedmoisturerate = self:GetEquippedMoistureRate(dryingrate)

        self.rate = moisturerate + equippedmoisturerate - dryingrate
    end

    self.ratescale =
        (self.rate > .3 and RATE_SCALE.INCREASE_HIGH) or
        (self.rate > .15 and RATE_SCALE.INCREASE_MED) or
        (self.rate > .001 and RATE_SCALE.INCREASE_LOW) or
        (self.rate < -3 and RATE_SCALE.DECREASE_HIGH) or
        (self.rate < -1.5 and RATE_SCALE.DECREASE_MED) or
        (self.rate < -.001 and RATE_SCALE.DECREASE_LOW) or
        RATE_SCALE.NEUTRAL

    self:DoDelta(self.rate * dt)
end
--------------------------------------------------------------------------
local WOOSEFLYCAM_SETTINGS =
{
	UpdateFn = function(dt, params, parent, best_dist_sq)
		if parent.wooseflycamvec ~= nil then
			local x, y, z = parent.AnimState:GetSymbolPosition("torso")
			parent.wooseflycamvec.y = y + 1.5
			TheCamera:SetOffset(parent.wooseflycamvec)
		end
	end,
}

local function OnWooseFlyingDirty(inst)
    if not (ThePlayer ~= nil and inst == ThePlayer) then
        return
    end

    if inst._wooseflying:value() and inst:HasTag("migratorskill") then
        TheMixer:PushMix("flying")
		inst.wooseflycamvec = Vector3(0, 0, 0)
		TheFocalPoint.components.focalpoint:StartFocusSource(inst, "wooseflycam", nil, math.huge, math.huge, 99, WOOSEFLYCAM_SETTINGS)
    else
        TheMixer:PopMix("flying")
		TheFocalPoint.components.focalpoint:StopFocusSource(inst, "wooseflycam")
		inst.wooseflycamvec = nil
    end
end

local function SetWooseFlying(inst, bool)
    inst._wooseflying:set(bool)
    OnWooseFlyingDirty(inst)
end

local function OnPlayerDeactivated(inst)
    inst:RemoveEventCallback("onremove", OnPlayerDeactivated)
    if not TheWorld.ismastersim then
        inst:RemoveEventCallback("wooseflyingdirty", OnWooseFlyingDirty)
    end
end

local function OnPlayerActivated(inst)
    inst:ListenForEvent("onremove", OnPlayerDeactivated)
    if not TheWorld.ismastersim then
        inst:ListenForEvent("wooseflyingdirty", OnWooseFlyingDirty)
    end
    OnWooseFlyingDirty(inst)
end

local function CanShaveTest(inst)
	if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("woose_nest_invest_2") then
		return inst.components.beard.bits > 1, "REFUSE"
	else
		return false, "REFUSE"
	end
end

local function OnResetBeard(inst)
	inst.components.beard.bits = 1
	SpawnPrefab("weregoose_feathers"..tostring(math.random(3))).entity:SetParent(inst.entity)
end

local function OnGrowFeathers(inst, season)
	if not TheWorld.state.season ~= "summer" then
		inst.components.beard.bits = 3
	else
		inst.components.beard.bits = 4
	end
end

local function CheckNestSkillChanged(inst, skill)
	if skill == "woose_nest_lightning" or
		skill == "woose_nest_charger" or
		skill == "woose_nest_follower"
	then
		TheWorld:PushEvent("woose_nestskillchanged", inst)
		return true
	end
end

local function OnActivateSkill(inst, data)
	if data then
		local changed =
		CheckNestSkillChanged(inst, data.skill)
	end
end

local function OnDeactivateSkill(inst, data)
	if data then
		if CheckNestSkillChanged(inst, data.skill) then
			--do nothing
		end
	end
end

local function OnSkillTreeInitialized(inst)
	TheWorld:PushEvent("woose_nestskillchanged", inst)
end

local function OnRespawnedFromGhost(inst)
    ShouldNotDrown(inst)

    if not inst:HasTag("playerghost") then
        if inst.gooserippletask == nil then
            inst.gooserippletask = inst:DoPeriodicTask(.7, DoRipple, FRAMES)
        end
		if inst.goosesplashtask == nil then
            inst.goosesplashtask = inst:DoPeriodicTask(.3, DoSplash, FRAMES)
        end
    else
        if inst.gooserippletask ~= nil then
            inst.gooserippletask:Cancel()
            inst.gooserippletask = nil
        end
		if inst.goosesplashtask ~= nil then
            inst.goosesplashtask:Cancel()
            inst.goosesplashtask = nil
        end
    end

	inst.components.moisture.OnUpdate = UpdateMoist

	inst.components.moisture.maxMoistureRate = 1.2 -- 60% increased max moisture rate
	
	local MoistureDelta_old = inst.components.moisture.DoDelta -- 60% increased wetness gain
	inst.components.moisture.DoDelta = function(self, num, ...)
		if num > 0 then num = num * TUNING.WOOSE_WETNESS_GAIN end
		return MoistureDelta_old(self, num, ...)
	end
end
--------------------------------------------------------------------------
local common_postinit = function(inst)
	inst.MiniMapEntity:SetIcon( "woose.tex" )
	inst:AddTag("woosegoose")
	inst:AddTag("electricdamageimmune") -- electricdamageimmune is for combat and not lightning strikes
	inst:AddTag("mossling")

	inst:AddTag("allow_special_point_action_on_impassable") -- IA

	inst.AnimState:SetHatOffset(6, 6) -- This is not networked.
	inst.TossFish = TossFish

	if TheNet:GetServerGameMode() == "lavaarena" then
	--No Spin
	elseif TheNet:GetServerGameMode() == "quagmire" then
		inst:AddTag("quagmire_foodie")
		inst.regorged = true
	else
		inst:ListenForEvent("setowner", OnSetOwner)
	end

	inst._wooseflying = net_bool(inst.GUID, "woose._wooseflying", "wooseflyingdirty")

    --bearded (from beard component) added to pristine state for optimization
    inst:AddTag("bearded")

    inst:ListenForEvent("playeractivated", OnPlayerActivated)
    inst:ListenForEvent("playerdeactivated", OnPlayerDeactivated)
end

local master_postinit = function(inst)
    if TheNet:GetServerGameMode() == "quagmire" then
		inst.starting_inventory = start_inv.quagmire
	else
		inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	end

	inst.soundsname = "woose"
	inst.customidleanim = "idle_woose"

	if TheNet:GetServerGameMode() == "lavaarena" then
		return
    end

	inst.components.health:SetMaxHealth(TUNING.WOOSE_HEALTH)
	inst.components.hunger:SetMax(TUNING.WOOSE_HUNGER)
	inst.components.sanity:SetMax(TUNING.WOOSE_SANITY)

	inst:AddComponent("beard")
	inst.components.beard.insulation_factor = 0
	inst.components.beard.onreset = OnResetBeard
	inst.components.beard.prize = "goose_feather"
	inst.components.beard.canshavetest = CanShaveTest
	inst.components.beard:AddCallback(3, OnGrowFeathers)

	inst.components.foodaffinity:AddPrefabAffinity("flowersalad", TUNING.AFFINITY_15_CALORIES_SMALL)

	inst:WatchWorldState("season", OnSummer)
    OnSummer(inst, TheWorld.state.season)

	inst.components.playerlightningtarget:SetHitChance(TUNING.WOOSE_LIGHTNING_ATTRACT) --90% chance
	inst.components.playerlightningtarget:SetOnStrikeFn(onlightingstrike_woose) --Takes reverse lightning damage w/no stun

	inst:AddComponent("epicscare")
    inst.components.epicscare:SetRange(TUNING.WOOSE_HONK_RANGE)
    inst:ListenForEvent("onattackother", onattack)

	inst:ListenForEvent("ms_respawnedfromghost", OnRespawnedFromGhost)
	inst:ListenForEvent("ms_becameghost", function()
		ShouldDrown(inst)
	end)

	inst:ListenForEvent("onactivateskill_server", OnActivateSkill)
	inst:ListenForEvent("ondeactivateskill_server", OnDeactivateSkill)
	inst:ListenForEvent("ms_skilltreeinitialized", OnSkillTreeInitialized)
	inst.SetWooseFlying = SetWooseFlying
	OnRespawnedFromGhost(inst)

	--inst.OnLoad = OnRespawnedFromGhost
end

return MakePlayerCharacter("woose", prefabs, assets, common_postinit, master_postinit)