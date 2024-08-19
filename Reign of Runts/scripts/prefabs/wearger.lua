local MakePlayerCharacter = require "prefabs/player_common"

local assets = 
{
		Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
		Asset("SCRIPT", "scripts/prefabs/skilltree_wearger.lua"),

		Asset("ANIM", "anim/wearger.zip"),
		Asset("ANIM", "anim/ghost_wearger_build.zip" ),
		Asset("ANIM", "anim/player_wearger_slam.zip"),
		Asset("ANIM", "anim/player_idles_wearger.zip"),
}

local start_inv =
{
    default =
    {},
}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
	start_inv[string.lower(k)] = v.WEARGER
end
local prefabs = FlattenTree(start_inv, true)
--------------------------------------------------------------------------
local function oneat(inst, food)
	if food and (food.prefab == "honey" or food:HasTag("honeyed")) then
		if inst.components.sanity then
			inst.components.sanity:DoDelta(TUNING.BEARGER_HONEYBONUS)-- +10 Sanity
		end
	end
end
--------------------------------------------------------------------------
local function IsHibernationSeason(season)
    return season == "winter" or season == "spring"
end

local function OnSeasonChange(inst, season)
    if IsHibernationSeason(season) then
		if not inst:HasTag("hibearnating") then
			inst:AddTag("hibearnating")
			inst:DoTaskInTime(3, function()
				if inst.components.talker ~= nil then
					inst.components.talker:Say(GetString(inst, "ANNOUNCE_HIBEARNATION"))
				end
			end)
		end
    else
        inst:RemoveTag("hibearnating")
    end
end

local function SetHibernationStats(inst)
	if inst:HasTag("hibearnating") or IsHibernationSeason(TheWorld.state.season) then

		inst.components.hunger:SetRate(1*TUNING.WILSON_HUNGER_RATE)

        inst.components.shedder:StopShedding()

		inst.components.health:SetAbsorptionAmount(TUNING.WEARGER_ABSORPTION)

		--SkillTree;
		local skilltreeupdater = inst.components.skilltreeupdater
		if skilltreeupdater then
			if skilltreeupdater:IsActivated("wearger_foods") then
				if inst.components.eater ~= nil then
					inst.components.eater:SetAbsorptionModifiers(1, 1.2, 1)
				end
			end

			if inst.components.grogginess ~= nil then
				inst.components.grogginess:SetResistance(3)--Default is 3
			end

			if skilltreeupdater:IsActivated("wearger_yawn2") then
				if inst.components.sleepingbaguser ~= nil then
					inst.components.sleepingbaguser.health_bonus_mult = 1.3 -- +30%
					inst.components.sleepingbaguser.sanity_bonus_mult = 1.3 -- +30%
				end
			end
			if skilltreeupdater:IsActivated("wearger_yawn3") then
				inst.components.sleepingbaguser.hunger_bonus_mult = 0.1 -- 90%
			end
		end

	else-- Not Hibearnating

	    inst.components.hunger:SetRate(TUNING.WILSON_HUNGER_RATE * TUNING.BEARGER_HUNGERDRAIN)
	    inst.components.temperature.inherentinsulation = 0

		local current_health = inst.health_percent or inst.components.health:GetPercent()
		inst.health_percent = nil

		if inst.components.health ~= nil and not inst.components.health:IsDead() then
			if inst.components.health.maxhealth >= TUNING.WEARGER_HEALTH+25 then -- 200
				inst.components.health:SetMaxHealth(TUNING.WEARGER_HEALTH) -- 175
				inst.components.health:SetPercent(current_health)
			end
			inst.components.health:SetAbsorptionAmount(0)
		end

		--SkillTree;
		if inst.components.eater ~= nil then
			inst.components.eater:SetAbsorptionModifiers(1, 1, 1)
		end

		if inst.components.sleepingbaguser ~= nil then
			inst.components.sleepingbaguser.hunger_bonus_mult = 1
			inst.components.sleepingbaguser.health_bonus_mult = 1
			inst.components.sleepingbaguser.sanity_bonus_mult = 1
		end

		local skilltreeupdater = inst.components.skilltreeupdater
		if skilltreeupdater then
			if skilltreeupdater:IsActivated("wearger_fur_1") then
				inst.components.shedder:StartShedding(345)-- 5
				else
				inst.components.shedder:StartShedding(690)-- 10
			end
			if skilltreeupdater:HasSkillTag("sleepresist") then
			    if inst.components.grogginess ~= nil then
					inst.components.grogginess:SetResistance(10)--Default is 3
				end
			end
		end
	end
end

local function HungerTresh(inst)
	local skilltreeupdater = inst.components.skilltreeupdater
	if skilltreeupdater then
		if skilltreeupdater:IsActivated("wearger_hibear4") then
			return .2*TUNING.WEARGER_HUNGER -- 20% of 230 46
		else
			return .5*TUNING.WEARGER_HUNGER -- 50% of 230 115
		end
	end
end

local function onhungerchange(inst, data, forcesilent)
	if inst:HasTag("hibearnating") or inst:HasTag("hibearmaster") or IsHibernationSeason(TheWorld.state.season) then
		local health_max = TUNING.WEARGER_HEALTH
		local skilltreeupdater = inst.components.skilltreeupdater
		local planardefense_skill = skilltreeupdater:IsActivated("wearger_hibear1")
		local knockbackdefense_skill = skilltreeupdater:IsActivated("wearger_hibear2")
		local heavyobject_skill = skilltreeupdater:IsActivated("wearger_hibear3")

			if inst.components.hunger.current > HungerTresh(inst) then
				health_max = TUNING.WEARGER_HEALTH+25-- 200
				inst.components.temperature.inherentinsulation = TUNING.INSULATION_LARGE
				inst:AddTag("fullhibearnation")
				if knockbackdefense_skill then
					inst:AddTag("heavybody")
				end
				if planardefense_skill then
					inst.components.planardefense:AddBonus(inst, 10, "wearger_combat_defense")
				end
				if heavyobject_skill then
					inst:AddTag("mightiness_mighty")
					local hand = inst.replica.inventory:GetEquippedItem(EQUIPSLOTS.BODY)
					if hand ~= nil and hand:HasTag("heavy") then -- For instances where OnEquip won't run
						hand.components.equippable.walkspeedmult = 1
					end
				end
			elseif inst.components.hunger.current < HungerTresh(inst) then
				health_max = TUNING.WEARGER_HEALTH
				inst.components.temperature.inherentinsulation = TUNING.INSULATION_TINY
				inst:RemoveTag("fullhibearnation")
				inst:RemoveTag("heavybody")
				inst.components.planardefense:RemoveBonus(inst, "wearger_combat_defense")
				inst:RemoveTag("mightiness_mighty")
				if heavyobject_skill then
					local hand = inst.replica.inventory:GetEquippedItem(EQUIPSLOTS.BODY)
					if hand ~= nil and hand:HasTag("heavy") then
						hand.components.equippable.walkspeedmult = TUNING.HEAVY_SPEED_MULT --	Ideally all Heavy objects use this value
					end
				end
			end

		local health_percent = inst.components.health:GetPercent()
			inst.components.health:SetMaxHealth(health_max)
			inst.components.health:SetPercent(health_percent, true)
	end
end
--------------------------------------------------------------------------
local function ontimerdone(inst, data)
	if data.name == "cooldown" then
	    inst.starttime = nil
	    inst.endtime = nil
		inst:RemoveTag("poundcooldown")
    end
end

local function SetUpGroundPounder(inst) -- This is a little redundant for now
    local num_rings = 3

	inst.components.groundpounder:UseRingMode()
    inst.components.groundpounder.numRings = num_rings
    inst.components.groundpounder.radiusStepDistance = 1.5
    inst.components.groundpounder.ringWidth = 1.5
    inst.components.groundpounder.damageRings = 0 -- Handled via GroundPounder
    inst.components.groundpounder.destructionRings = 0 -- Handled via GroundPounder
    inst.components.groundpounder.platformPushingRings = 1
    inst.components.groundpounder.inventoryPushingRings = 0 -- Handled via flourishstuff
    inst.components.groundpounder.noTags = { "FX", "NOCLICK", "DECOR", "INLIMBO", "playerghost", "flying", "bird", "companion", "abigail", "wall", "structure" }

    inst.components.groundpounder.groundpoundfx = "werebeaver_groundpound_fx"
end

local function GetPointSpecialActions(inst, pos, useitem, right)
    if right and not inst:HasTag("poundcooldown") then
		local rider = inst.replica.rider
		if rider == nil or not rider:IsRiding() then
			if not inst.components.skilltreeupdater:IsActivated("wearger_allegiance_lunar") then
				return { ACTIONS.WEARGERPOUND }
			else
				return { ACTIONS.WEARGERBUTTSLAM }
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
local function BeeResist(inst)
	local self = inst.components.combat
	local _GetAttacked = self.GetAttacked
	self.GetAttacked = function(self, attacker, damage, weapon, stimuli)
		if attacker and attacker:HasTag("bee") and damage then
			damage = damage * (1 - TUNING.WEARGER_BEERESIST)
		end
		return _GetAttacked(self, attacker, damage, weapon, stimuli)
	end
end

local function OnEquip(inst, data)
    local skilltreeupdater = inst.components.skilltreeupdater
    if skilltreeupdater then
		if data ~= nil and data.item ~= nil then
			if skilltreeupdater:IsActivated("wearger_hibear3") and inst:HasTag("fullhibearnation") then
				if data.item:HasTag("heavy") then
				--	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "wearger_heavy_speed", 5)
				--	This isn't healthy, but it's safer than SetExternalSpeedMultiplier
					data.item.components.equippable.walkspeedmult = 1
				end
			end
		end
	end
end

local function OnUnequip(inst, data)
    local skilltreeupdater = inst.components.skilltreeupdater
    if skilltreeupdater then
		if data ~= nil and data.item ~= nil then
			if skilltreeupdater:IsActivated("wearger_hibear3") then
				if data.item:HasTag("heavy") then
				--	inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "wearger_heavy_speed")
					data.item.components.equippable.walkspeedmult = TUNING.HEAVY_SPEED_MULT --	Ideally all Heavy objects use this value
				end
			end
		end
	end
end

local function OnWakeUp(inst, data)
    local skilltreeupdater = inst.components.skilltreeupdater
	local grogginess_skill = inst.components.skilltreeupdater:IsActivated("wearger_yawn4")
    if skilltreeupdater then
		if inst.components.grogginess ~= nil and not inst.components.grogginess.isgroggy then
			inst.components.grogginess:AddGrogginess(grogginess_skill and 1 or 2.7, 0)
		end
	end
end

local function onbecamebearger(inst)
	SetHibernationStats(inst)
	inst:SetUpGroundPounder()
end

local function onbecameghost(inst)
	inst.components.shedder:StopShedding()
end

local function onload(inst, data)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamebearger)
    inst:ListenForEvent("ms_becameghost", onbecameghost)
	inst:ListenForEvent("hungerdelta", onhungerchange)
    inst:ListenForEvent("equip",   OnEquip)
    inst:ListenForEvent("unequip", OnUnequip)
    inst:ListenForEvent("wearger_onwakeup", OnWakeUp)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamebearger(inst)
    end
end
--------------------------------------------------------------------------
local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "wearger.tex" )
	inst:ListenForEvent("setowner", OnSetOwner)
	inst:AddTag("wearger")
end

local master_postinit = function(inst)
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

	inst.soundsname = "wearger"
	inst.customidleanim = "idle_wearger"

    inst.tick = 0

	inst.components.health:SetMaxHealth(TUNING.WEARGER_HEALTH)
	inst.components.hunger:SetMax(TUNING.WEARGER_HUNGER)
	inst.components.sanity:SetMax(TUNING.WEARGER_SANITY)

    inst.components.foodaffinity:AddPrefabAffinity("honeyham", TUNING.AFFINITY_15_CALORIES_HUGE)

	if inst.components.eater ~= nil then
	inst.components.eater:SetOnEatFn(oneat)
	end

	inst:ListenForEvent("timerdone", ontimerdone)

	if TheNet:GetServerGameMode() == "lavaarena" then
		return
    end

	inst:AddComponent("shedder")
    inst.components.shedder.shedItemPrefab = "furtuft"
    inst.components.shedder.shedHeight = 1

	inst:WatchWorldState("season", OnSeasonChange)
    OnSeasonChange(inst, TheWorld.state.season)

	inst:WatchWorldState( "iswinter", function() SetHibernationStats(inst) end)
	inst:WatchWorldState( "isspring", function() SetHibernationStats(inst) end)

	BeeResist(inst)

	inst:AddComponent("groundpounder")
	inst.SetUpGroundPounder = SetUpGroundPounder

	inst.OnLoad = onload
    inst.OnNewSpawn = onload
end

return MakePlayerCharacter("wearger", prefabs, assets, common_postinit, master_postinit)