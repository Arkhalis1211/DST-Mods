local MakePlayerCharacter = require "prefabs/player_common"

local assets = 
{
		Asset("SCRIPT", "scripts/prefabs/player_common.lua"),

		Asset("ANIM", "anim/weerclops.zip"),
		Asset("ANIM", "anim/ghost_weerclops_build.zip" ),
		Asset("ANIM", "anim/player_idles_weerclops.zip"),
}

local start_inv =
{
	default =
	{},
}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
	start_inv[string.lower(k)] = v.WEERCLOPS
end
local prefabs = FlattenTree(start_inv, true)

local function IsWinter(season)
	return season == "winter"
end

local function OnWinter(inst, season)
	if IsWinter(season) then
		inst:AddTag("winterclops")
	else
		inst:RemoveTag("winterclops")
	end
end

local function DoSpawnIceSpike(inst, x, z)
	inst.spikes = SpawnPrefab("icespike_fx_"..tostring(math.random(1, 4)))
	if IsWinter(TheWorld.state.season) then
		inst.spikes.Transform:SetScale(1.5, 1.5, 1.5)
	end
	inst.spikes.Transform:SetPosition(x, 0, z)
end

local function SpawnIceFx(inst, target)
	if target == nil or not target:IsValid() then
		return
	end

	local x, y, z = target.Transform:GetWorldPosition()
	if not IsWinter(TheWorld.state.season) then
		local numFX = math.random(2, 7)
		for i = 1, numFX do
			inst:DoTaskInTime(math.random() * .25, DoSpawnIceSpike, x + math.random(-1.25,.75), z + math.random(-1.25,.75))
		end
	end
	if IsWinter(TheWorld.state.season) then
		local numFX = math.random(7, 10)
		for i = 1, numFX do
				inst:DoTaskInTime(math.random() * .25, DoSpawnIceSpike, x + math.random(-2,2), z + math.random(-2,2))
		end
	end
end
--	For coldness
local function weerclops_onhit(inst, data)
	local target = data.target
	if target ~= nil and inst:HasTag("frozenclaw") then

	if data.weapon ~= nil then
		if data.projectile == nil then
			if data.weapon.components.projectile ~= nil then
				return
			elseif data.weapon.components.complexprojectile ~= nil then
				return
			elseif data.weapon.components.weapon:CanRangedAttack() then
				return
			elseif data.weapon.components.lighter ~= nil then
				return
			end
		end
	end

	if inst:HasTag("winterclops") or IsWinter(TheWorld.state.season) then
		if not (target.components.health ~= nil and target.components.health:IsDead()) then
			if target.components.freezable ~= nil then
				target.components.freezable:AddColdness(0.5)
				if inst:HasTag("noisysmasher") then
					target.components.freezable:SpawnShatterFX()
				end
			end
		end
	else
		if not (target.components.health ~= nil and target.components.health:IsDead()) then
			if target.components.freezable ~= nil then
				target.components.freezable:AddColdness(0.4)
				if inst:HasTag("noisysmasher") then
					target.components.freezable:SpawnShatterFX()
				end
			end
		end
	end

	end
end
--	For ice spikes
local function onattack(inst, data)
	if data.weapon ~= nil then
		if data.weapon.components.projectile ~= nil then
				return
		elseif data.weapon.components.complexprojectile ~= nil then
				return
			elseif data.weapon.components.weapon:CanRangedAttack() then
				return
			elseif data.weapon.components.lighter ~= nil then
				return
		end
	end

	if inst:HasTag("frozenclaw") then

	local chance = math.random()
	local target = data.target
	local x, y, z = target.Transform:GetWorldPosition()
	if IsWinter(TheWorld.state.season) then
		local chance = chance + .2
	end

	if chance >= .7 then
		if inst:HasTag("noisysmasher") then
			SpawnIceFx(inst, target)
		end
		if IsWinter(TheWorld.state.season) then
			local ents = TheSim:FindEntities(x, y, z, TUNING.WEERCLOPS_ICE_RANGE, nil)
			for k,v in pairs(ents) do
			if v and v:IsValid() and v.components.health ~= nil and not v.components.health:IsDead() then
				if not (v:HasTag("player") or v:HasTag("INLIMBO") or v:HasTag("structure") or v:HasTag("companion") or v:HasTag("abigail")) then
					if v ~= target then v.components.health:DoDelta(-5) end
						if v.components.freezable ~= nil then
							v.components.freezable:AddColdness(.35)
						end
		    		end
	        	end
		    end
		end
	end

	end
end

local function OnTimerDone(inst, data)
	if data.name == "stage1" then
		inst.components.talker:Say(GetString(inst, "ANNOUNCE_CRAVE_1"))
		inst.components.sanity.dapperness = -TUNING.DAPPERNESS_TINY
		inst.components.timer:StartTimer("stage2", TUNING.TOTAL_DAY_TIME*1) --stage2
		inst.stage = 1
	end
	if data.name == "stage2" then
		inst.components.talker:Say(GetString(inst, "ANNOUNCE_CRAVE_2"))
		inst.components.sanity.dapperness = -TUNING.DAPPERNESS_LARGE/2
		inst.components.timer:StartTimer("stage3", TUNING.TOTAL_DAY_TIME*2) --stage3
		inst.stage = 2
	end
	if data.name == "stage3" then
		inst.components.talker:Say(GetString(inst, "ANNOUNCE_CRAVE_3"))
		inst.components.sanity.dapperness = -TUNING.DAPPERNESS_LARGE
		inst.components.timer:StartTimer("stage4", TUNING.TOTAL_DAY_TIME*3) --stage4
		inst.stage = 3
	end
	if data.name == "stage4" then --stage3 timer ends in final stage
		inst.components.talker:Say(GetString(inst, "ANNOUNCE_CRAVE_4"))
		inst.components.sanity.dapperness = -TUNING.DAPPERNESS_LARGE*3 --no more timers and max sanity loss per second happens here
		inst.stage = 4
	end
end

local function StopTimers(inst, data)
	if inst.components.timer:TimerExists("stage1") then
		inst.components.timer:StopTimer("stage1")
	end
	if inst.components.timer:TimerExists("stage2") then
		inst.components.timer:StopTimer("stage2")
	end
	if inst.components.timer:TimerExists("stage3") then
		inst.components.timer:StopTimer("stage3")
	end
	if inst.components.timer:TimerExists("stage4") then
		inst.components.timer:StopTimer("stage4")
	end
	inst.stage = 0
	inst.components.sanity.dapperness = 0
end
	
local function onbecamedeerclops(inst)
	StopTimers(inst)
	inst.components.timer:StartTimer("stage1", TUNING.TOTAL_DAY_TIME * TUNING.WEERCLOPS_SANITYSTART)--stage1
end

local function structuresated(inst, data)
	onbecamedeerclops(inst)
	inst.components.talker:Say(GetString(inst, "ANNOUNCE_STRUCTURE_DESTROYED"))
	if data.target:HasTag("boulder") or data.target:HasTag("buried") or data.target:HasTag("renewable") or data.target:HasTag("carnivalgame_part") or data.target:HasTag("carnivaldecor") or data.target:HasTag("little_smashable") then 
		inst.components.sanity:DoDelta(TUNING.WEERCLOPS_STRUCTURE_SANITY/5)--1
	elseif data.target:HasTag("sign") or data.target:HasTag("stump") then
		inst.components.sanity:DoDelta(TUNING.WEERCLOPS_STRUCTURE_SANITY/10)--0.5 --Avoid 1 recipe cheese
	elseif data.target:HasTag("door") or data.target:HasTag("chest") or data.target:HasTag("object") or data.target:HasTag("campfire") then
		inst.components.sanity:DoDelta(TUNING.WEERCLOPS_STRUCTURE_SANITY/2)--2.5(3)
	elseif data.target:HasTag("wardrobe") or data.target:HasTag("prototyper") or data.target:HasTag("statue") then
		inst.components.sanity:DoDelta(TUNING.WEERCLOPS_STRUCTURE_SANITY*1.2)--6
	elseif data.target:HasTag("larger_smashable") or data.target:HasTag("altar") or data.target:HasTag("shelter") then
		inst.components.sanity:DoDelta(TUNING.WEERCLOPS_STRUCTURE_SANITY*1.5)--7.5(8)
	else
		inst.components.sanity:DoDelta(TUNING.WEERCLOPS_STRUCTURE_SANITY)
	end
end

local function OnSave(inst, data)
	if inst.stage == 1 then data.stage = 1 end
	if inst.stage == 2 then data.stage = 2 end
	if inst.stage == 3 then data.stage = 3 end
	if inst.stage == 4 then data.stage = 4 end
end

local function OnLoad(inst, data)
	if data.stage == nil then onbecamedeerclops(inst) end
		if data.stage == 1 then
			inst.components.sanity.dapperness = -TUNING.DAPPERNESS_TINY
			inst.stage = 1
		end
		if data.stage == 2 then
			inst.components.sanity.dapperness = -TUNING.DAPPERNESS_LARGE/2
			inst.stage = 2
		end
		if data.stage == 3 then
			inst.components.sanity.dapperness = -TUNING.DAPPERNESS_LARGE
			inst.stage = 3
		end
		if data.stage == 4 then
			inst.components.sanity.dapperness = -TUNING.DAPPERNESS_LARGE*3
			inst.stage = 4
		end
end

local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "weerclops.tex" )
	if TheNet:GetServerGameMode() == "quagmire" then
		inst.regorged = true
		inst:AddTag("fridge")-- 50% slower spoilage
		inst:AddTag("nocool")
	else
		inst:AddTag("weerclops")
	end
end

local master_postinit = function(inst)
	inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

	inst.soundsname = "weerclops"
	inst.customidleanim = "idle_weerclops"

	inst.components.health:SetMaxHealth(TUNING.WEERCLOPS_HEALTH)
	inst.components.hunger:SetMax(TUNING.WEERCLOPS_HUNGER)
	inst.components.sanity:SetMax(TUNING.WEERCLOPS_SANITY)

    inst.components.sanity:AddSanityAuraImmunity("deerclops")

	inst.components.foodaffinity:AddPrefabAffinity("watermelonicle", TUNING.AFFINITY_15_CALORIES_SMALL)

	inst.components.workmultiplier:AddMultiplier(ACTIONS.HAMMER, 1.5, inst)

    inst.components.temperature.inherentinsulation = TUNING.INSULATION_LARGE
    inst.components.temperature.inherentsummerinsulation = -TUNING.INSULATION_MED
	inst.components.temperature:SetFreezingHurtRate(TUNING.WILSON_HEALTH / TUNING.WEERCLOPS_FREEZING_KILL_TIME)-- freezing dmg reduction
	inst.components.temperature:SetOverheatHurtRate(TUNING.WILSON_HEALTH / TUNING.WEERCLOPS_OVERHEAT_KILL_TIME)-- overheating dmg addition

	if inst.components.slipperyfeet ~= nil then
		inst.components.slipperyfeet.threshold = 2400
	end

	inst:WatchWorldState("season", OnWinter)
	OnWinter(inst, TheWorld.state.season)

	if TheNet:GetServerGameMode() == "lavaarena" then
		return
	end

	inst.OnSave = OnSave
	inst.OnLoad = OnLoad
	inst.OnNewSpawn = onbecamedeerclops

	inst:ListenForEvent("onhitother", weerclops_onhit)
	inst:ListenForEvent("ms_respawnedfromghost", onbecamedeerclops)
	inst:ListenForEvent("timerdone", OnTimerDone)
	inst:ListenForEvent("onattackother", onattack)
	inst:ListenForEvent("finishedwork", structuresated)

end

return MakePlayerCharacter("weerclops", prefabs, assets, common_postinit, master_postinit)