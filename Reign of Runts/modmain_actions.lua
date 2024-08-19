local State = GLOBAL.State
local require = GLOBAL.require
SoundEmitter = GLOBAL.SoundEmitter
local FRAMES = GLOBAL.FRAMES
local EventHandler = GLOBAL.EventHandler
local TimeEvent = GLOBAL.TimeEvent
local ActionHandler = GLOBAL.ActionHandler
local ACTIONS = GLOBAL.ACTIONS
local Vector3 = GLOBAL.Vector3
local SpawnPrefab = GLOBAL.SpawnPrefab
--------------------------------------------------------------------------
	-------------------------- DEERCLOPS --------------------------
--------------------------------------------------------------------------
local function DoSpawnIceSpike(inst, x, z)
	inst.spikes = SpawnPrefab("icespike_fx_"..tostring(math.random(1, 4)))
		if GLOBAL.TheWorld.state.season then
			inst.spikes.Transform:SetScale(1.5, 1.5, 1.5)
		end
	inst.spikes.Transform:SetPosition(x, 0, z)
end

local function SpawnIceFx(inst, target)
	if target == nil or not target:IsValid() then
		return
	end
	local x, y, z = target.Transform:GetWorldPosition()
	local numFX = math.random(2, 6)
	for i = 1, numFX do
		inst:DoTaskInTime(math.random() * .25, DoSpawnIceSpike, x + math.random(-1.25,.75), z + math.random(-1.25,.75))
	end
end

local WEERWORKABLE = AddAction("WEERWORKABLE", "Destroy", function(act)
	if act.target ~= nil then
		if act.target.components.workable ~= nil and act.target.components.workable:CanBeWorked() then
			act.target.components.workable:WorkedBy(act.doer, 1.5)
		if act.doer:HasTag("noisysmasher") then
			SpawnIceFx(act.doer, act.target)
		end
			return true
		end
	end
end)

WEERWORKABLE.priority = -1
WEERWORKABLE.invalid_hold_action = true

AddComponentAction("SCENE", "workable", function(inst, doer, actions, right)
	if right and doer:HasTag("weerclops") and doer.replica.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS) == nil then
		if inst:HasTag("HAMMER_workable") or inst:HasTag("MINE_workable") then
		table.insert(actions, WEERWORKABLE)
		end
	end
end)

AddStategraphActionHandler("wilson", GLOBAL.ActionHandler(WEERWORKABLE,
		function(inst)
		inst.AnimState:ClearOverrideSymbol("swap_object")
			return not inst.sg:HasStateTag("propattack")
			and (inst.sg:HasStateTag("pausepredict") and
				"attack_prop" or
				"attack_prop_pre")
				or nil
			end))
AddStategraphActionHandler("wilson_client", GLOBAL.ActionHandler(WEERWORKABLE,
		function(inst)
		inst.AnimState:ClearOverrideSymbol("swap_object")
			return not inst.sg:HasStateTag("propattack") and "attack_prop_pre" or nil
		end))
--------------------------------------------------------------------------
	-------------------------- BEARGER --------------------------
--------------------------------------------------------------------------
if GetModConfigData("wearger_attackstyle") == 2 or GetModConfigData("wearger_attackstyle") == 4 then

AddAction("WEARGERPOUND", "Slam", function(act)
	local act_pos = act:GetActionPoint()
	if act.doer:HasTag("wearger") and act_pos ~= nil and act.doer ~= nil then
		return true
	end
end)

ACTIONS.WEARGERPOUND.priority = -4
ACTIONS.WEARGERPOUND.distance = math.huge
ACTIONS.WEARGERPOUND.rmb = true
ACTIONS.WEARGERPOUND.mount_valid = false

local weargerpound_handler = ActionHandler(ACTIONS.WEARGERPOUND, function(inst, action)
	if not inst:HasTag("poundcooldown") then
		if inst:HasTag("player_shadow_aligned") then
			return "wearger_pound_shadow"
		else
			return "wearger_pound"
		end
	end
end)

AddStategraphActionHandler("wilson", weargerpound_handler)
AddStategraphActionHandler("wilson_client", weargerpound_handler)

end

AddAction("WEARGERBUTTSLAM", "Butt Slam", function(act)
	local act_pos = act:GetActionPoint()
	if act_pos ~= nil and act.doer ~= nil and act.doer.sg ~= nil and act.doer.sg.currentstate.name == "wearger_pound_lunar_pre" then
		act.doer.sg:GoToState("wearger_pound_lunar", {dest = act_pos,})
		return true
	end
end)

ACTIONS.WEARGERBUTTSLAM.priority = -4
ACTIONS.WEARGERBUTTSLAM.rmb = true
ACTIONS.WEARGERBUTTSLAM.distance = 14
ACTIONS.WEARGERBUTTSLAM.mount_valid = false

local lunarweargerpound_handler = ActionHandler(ACTIONS.WEARGERBUTTSLAM, function(inst, action)
	return "wearger_pound_lunar_pre"
end)
AddStategraphActionHandler("wilson", lunarweargerpound_handler)
AddStategraphActionHandler("wilson_client", lunarweargerpound_handler)
------------------------------------------------------------------
local _SEWfn = ACTIONS.SEW.fn
function ACTIONS.SEW.fn(act, ...)
	if act.invobject and act.invobject:HasTag("furtuft") and act.doer ~= nil 
	and act.doer.components.skilltreeupdater and not act.doer.components.skilltreeupdater:IsActivated("wearger_fur_left") then
		return false, "NOTWEARGER"
	end
	if _SEWfn then
		return _SEWfn(act, ...)
	end
end
--------------------------------------------------------------------------
	-------------------------- MOOSE/GOOSE --------------------------
--------------------------------------------------------------------------
if GetModConfigData("enable_woose_speen") == true then

AddAction("WOOSESPIN", "Spin", function(act)
	local act_pos = act:GetActionPoint()
	if act.doer:HasTag("woosegoose") and act_pos ~= nil and act.doer ~= nil then
		return true
	end
end)

ACTIONS.WOOSESPIN.priority = -4
ACTIONS.WOOSESPIN.rmb = true
ACTIONS.WOOSESPIN.distance = math.huge
ACTIONS.WOOSESPIN.invalid_hold_action = true

local woosespin_handler = ActionHandler(ACTIONS.WOOSESPIN, function(inst, action)
	if not inst:HasTag("groggy") and not (inst.sg ~= nil and inst.sg:HasStateTag("spinning")) then
		return "woose_spin_pre"
	end
end)

AddStategraphActionHandler("wilson", woosespin_handler)
AddStategraphActionHandler("wilson_client", woosespin_handler)

end
------------------------------------------------------------------
local MUST_TOSSABLE_TAGS = {"oceanfish"}
local NOT_TOSSABLE_TAGS = {"INLIMBO", "outofreach", "FX", "fishmeat"}
local function GetNearbyFishTarget(inst)
    return (GLOBAL.FindEntity(inst, 2,
                function(item)
                    return item:IsOnOcean(false)
                end,
                MUST_TOSSABLE_TAGS,
                NOT_TOSSABLE_TAGS
            )
        ) or nil
end

local function TryToFish(inst)
    local nearest_fish = GetNearbyFishTarget(inst)
	local toss_data = {target = nearest_fish}
    if nearest_fish then
        inst.sg:GoToState("woose_toss_fish", toss_data)
	else
		if inst.components.talker ~= nil then
			inst.components.talker:Say(GLOBAL.GetString(inst, "ANNOUNCE_WOOSE_FISH_MISS"))
		end
    end
end

local WOOSE_OCEANFISH = AddAction("WOOSE_OCEANFISH", "Dip", function(act)
    local pos = act:GetActionPoint()
    if pos == nil then
        pos = act.target:GetPosition()
    end
	if not (act.doer.sg ~= nil and act.doer.sg:HasStateTag("spinning") or act.doer.sg:HasStateTag("busy")) then
		TryToFish(act.doer)
	end
	SpawnPrefab("weregoose_splash").Transform:SetPosition(act.doer.Transform:GetWorldPosition())
	return true
end)

ACTIONS.WOOSE_OCEANFISH.priority = 2
ACTIONS.WOOSE_OCEANFISH.distance = 1.3
ACTIONS.WOOSE_OCEANFISH.disable_platform_hopping = true

local woosefish_handler = ActionHandler(ACTIONS.WOOSE_OCEANFISH, function(inst, action)
	if not (inst.sg ~= nil and inst.sg:HasStateTag("spinning") or inst.sg:HasStateTag("busy")) then
		return "dolongaction"
	end
end)

AddStategraphActionHandler("wilson", woosefish_handler)
AddStategraphActionHandler("wilson_client", woosefish_handler)

-- This was for Controller Support, but I'll let it be by default too - If it causes issues remove
AddComponentAction("SCENE", "oceanfishable", function(inst, doer, actions, right)
	if right and doer:HasTag("woosegoose") then
		if GLOBAL.TheWorld.Map:IsOceanAtPoint(doer:GetPosition():Get()) then
			if doer.components.skilltreeupdater:IsActivated("woose_ocean_1") then
				table.insert(actions, ACTIONS.WOOSE_OCEANFISH)
			end
		end
	end
end)
------------------------------------------------------------------
local LOOT =
{
	twigs = .5,
	cutgrass = .4,
	feather_robin = .3,
	feather_crow = .3,
	feather_robin_winter = .2,
}

local WOOSE_SEARCH = AddAction("WOOSE_SEARCH", "Rummage", function(act)
	if act.doer and act.target and act.target:HasTag("plant") then
		if act.doer.components.timer ~= nil and not act.doer.components.timer:TimerExists("search_cooldown") then
			if math.random() < .7 then
				item = GLOBAL.weighted_random_choice(LOOT)
				local item_launch = SpawnPrefab(item)
				GLOBAL.Launch2(item_launch, act.target, 2, 0, 2, 0)
				act.doer.components.timer:StartTimer("search_cooldown", 10)
			end
		end

		local x, y, z = act.target.Transform:GetWorldPosition()
        SpawnPrefab("pine_needles_chop").Transform:SetPosition(x, y + math.random() * 2, z)
		act.target.SoundEmitter:PlaySound("dontstarve_DLC001/fall/leaf_rustle")

		return true
	end
end)

ACTIONS.WOOSE_SEARCH.rmb = true
ACTIONS.WOOSE_SEARCH.priority = 1
ACTIONS.WOOSE_SEARCH.mount_valid = true

AddComponentAction("SCENE", "growable", function(inst, doer, actions, right)
	if right and doer:HasTag("woosegoose") and doer.components.skilltreeupdater and doer.components.skilltreeupdater:IsActivated("woose_nest_invest_1") then
		if inst:HasTag("tree") and not inst:HasTag("stump") then
			table.insert(actions, ACTIONS.WOOSE_SEARCH)
		end
	end
end)

AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.WOOSE_SEARCH, "dojostleaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.WOOSE_SEARCH, "dojostleaction"))
------------------------------------------------------------------
local function TeleportTime(doer)
	local x, y, z = doer.Transform:GetWorldPosition()
	local pt = doer:GetPosition()
	local portal = TheSim:FindEntities(pt.x,pt.y,pt.z, 900, nil, {"inventoryitem"}, {"nesting_egged"})
	local portal_capelet = TheSim:FindEntities(pt.x,pt.y,pt.z, 1900, nil, {"inventoryitem"}, {"nesting_egged"})
	local equipped = doer.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.BODY)
	if equipped ~= nil and equipped.prefab == "woose_capelet" then
		if portal_capelet ~= nil then
			for i,v in ipairs(portal_capelet) do
				local tp_pos = v:GetPosition()
				doer:DoTaskInTime(1.2,function()
				doer.Physics:Teleport(tp_pos:Get())
				doer:SnapCamera()
				doer:ResetMinimapOffset()
				end)
			end	 
		end
	else
		if portal ~= nil then
			for i,v in ipairs(portal) do
				local tp_pos = v:GetPosition()
				doer:DoTaskInTime(1.2,function()
				doer.Physics:Teleport(tp_pos:Get())
				doer:SnapCamera()
				doer:ResetMinimapOffset()
				end)
			end	 
		end
	end
end

local WOOSE_MIGRATE = AddAction("WOOSE_MIGRATE", "Migrate", function(act)
	if act.doer:HasTag("migratorskill") then
		TeleportTime(act.doer)
		return true
	end
end)

ACTIONS.WOOSE_MIGRATE.priority = -4
ACTIONS.WOOSE_MIGRATE.rmb = true

local woosefly_handler = ActionHandler(ACTIONS.WOOSE_MIGRATE, function(inst, action)
	if not inst:HasTag("groggy") and not (inst.sg ~= nil and inst.sg:HasStateTag("spinning") or inst.sg:HasStateTag("busy")) then
		return "woose_migrate_pre"
	end
end)

AddStategraphActionHandler("wilson", woosefly_handler)
AddStategraphActionHandler("wilson_client", woosefly_handler)

AddComponentAction("SCENE", "skilltreeupdater", function(inst, doer, actions, right)
	if right and doer:HasTag("woosegoose") and inst == doer then
		if GLOBAL.TheWorld.Map:IsOceanAtPoint(doer:GetPosition():Get()) then
			if doer.components.skilltreeupdater:IsActivated("woose_ocean_1") then
				table.insert(actions, ACTIONS.WOOSE_OCEANFISH)
			end
		else
			if doer.components.skilltreeupdater:IsActivated("woose_birds_2") then
				table.insert(actions, ACTIONS.WOOSE_MIGRATE)
			end
		end
	end
end)
------------------------------------------------------------------
local WOOSE_HUG = AddAction("WOOSE_HUG", "Comfort", function(act)
	if act.doer and act.target and not (act.target.sg ~= nil and  act.target.sg:HasStateTag("moving") or  act.target.sg:HasStateTag("busy") or  act.target.sg:HasStateTag("doing")) then
		if (act.target.components.debuffable and act.target.components.debuffable:HasDebuff("nestbuff")) and not (act.doer.components.timer ~= nil and act.doer.components.timer:TimerExists("hug_cooldown")) then
			if act.target.components.sanity and act.target.components.health then
				act.target.components.sanity:DoDelta(10)
				act.target.components.health:DoDelta(25, false, nil, true, act.doer)
			end
		else
			if act.target.components.sanity and act.target.components.health then
				act.target.components.sanity:DoDelta(1)
				act.target.components.health:DoDelta(1, false, nil, true, act.doer)
			end
		end
		act.doer.sg:GoToState("coach")
		if act.doer.components.timer ~= nil and not act.doer.components.timer:TimerExists("hug_cooldown") then
			act.doer.components.timer:StartTimer("hug_cooldown", 25)
		end

		act.target.sg:GoToState("spooked")
		return true
	else
		return false, "CANTHUG"
	end
end)

ACTIONS.WOOSE_HUG.rmb = true
ACTIONS.WOOSE_HUG.priority = -1

AddComponentAction("SCENE", "playerinspectable", function(inst, doer, actions, right)
	if right and doer:HasTag("woosegoose") and doer.components.skilltreeupdater and doer.components.skilltreeupdater:IsActivated("woose_nest_smother") then
		if inst ~= doer then
			table.insert(actions, ACTIONS.WOOSE_HUG)
		end
	end
end)

local woosehug_handler = ActionHandler(ACTIONS.WOOSE_HUG, function(inst, action)
	if not (inst.sg ~= nil and inst.sg:HasStateTag("spinning") or inst.sg:HasStateTag("busy") or inst.sg:HasStateTag("doing")) then
		return "dostandingaction"
	end
end)

AddStategraphActionHandler("wilson", woosehug_handler)
AddStategraphActionHandler("wilson_client", woosehug_handler)
--------------------------------------------------------------------------
	-------------------------- DRAGONFLY --------------------------
--------------------------------------------------------------------------
local function IsAsh(item)
	return item.prefab == "ash"
end

local WFLYSUMMON = AddAction("WFLYSUMMON", "Summon", function(act)
	if act.doer.components.petleash and act.doer.components.petleash:IsFull() then
		return false, "CANTSUMMON"
	end

	if act.target:HasTag("lavae_cocoon") and not act.doer:HasTag("player_lunar_aligned") then
		return false, "CANTSUMMONEGG"
	end

	if act.doer and act.target and act.target.components.magmaaction ~= nil then
		if act.target:HasTag("lava") then
			local ashes = act.doer.components.inventory:FindItem(IsAsh)
			if ashes ~= nil then
				act.doer.components.inventory:ConsumeByName("ash", 1)--Can currently be done w/o ash in inventory, take more dmg if so
				act.doer.components.hunger:DoDelta(-TUNING.WFLYSUMMON_PENALTY / 2)
				act.doer.components.health:DoDelta(-TUNING.WFLYSUMMON_PENALTY / 2)--10
			else
				act.doer.components.hunger:DoDelta(-TUNING.WFLYSUMMON_PENALTY)
				act.doer.components.health:DoDelta(-TUNING.WFLYSUMMON_PENALTY)--20
			end
				act.doer.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/dragonfly/vomit")
				act.target.components.magmaaction:Summon( act.doer )
			return true
		else	-- Assume if not lava, then lavae
				act.target.components.magmaaction:Summon( act.doer )
				act.target.SoundEmitter:PlaySound("dontstarve/creatures/together/lavae/shatter")
				local fx = SpawnPrefab("shatter")
				fx.Transform:SetPosition(act.target.Transform:GetWorldPosition())
				fx.components.shatterfx:SetLevel(1)
				act.target:Remove()
			return true
		end
	end

end)

WFLYSUMMON.priority = 2

AddComponentAction("SCENE", "magmaaction", function(inst, doer, actions, right)
	if right and doer:HasTag("wragonfly") then 
		table.insert(actions, ACTIONS.WFLYSUMMON)
	end
end)

AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.WFLYSUMMON, "dolongaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.WFLYSUMMON, "dolongaction"))
------------------------------------------------------------------
local WFLYCOOK = AddAction("WFLYCOOK", "Spit On", function(act)
	if act.doer ~= nil and act.target ~= nil and act.doer:HasTag("wragonfly") then
		if act.target.components.burnable ~= nil then
			local ash = SpawnPrefab("ash")
			local spitfx = SpawnPrefab("wragonfly_lavaspit")
			ash.Transform:SetPosition(act.target.Transform:GetWorldPosition())

			act.doer.SoundEmitter:PlaySound("dontstarve/wilson/cook")
			act.doer.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/dragonfly/sleep_pre")
			spitfx.Transform:SetScale(.5, .5, .5)
			spitfx.Transform:SetPosition(act.target.Transform:GetWorldPosition())

			if act.target.components.stackable ~= nil then
				ash.components.stackable.stacksize = math.min(ash.components.stackable.maxsize, act.target.components.stackable.stacksize)
			end

			if act.target.components.health ~= nil then -- Just in-case
				act.doer:PushEvent("murdered", { victim = act.target, stackmult = 1 })
				if act.target.components.combat ~= nil then
					act.doer:PushEvent("killed", { victim = act.target })
				end
			end

			act.target:Remove()
			return true
		else
			return false, "CANTBURN"
		end
	end
end)

ACTIONS.WFLYCOOK.rmb = true
ACTIONS.WFLYCOOK.priority = 2
ACTIONS.WFLYCOOK.mount_valid = true

AddComponentAction("SCENE", "inventoryitem", function(inst, doer, actions, right)
	if right and doer:HasTag("wragonfly") and doer.components.skilltreeupdater and doer.components.skilltreeupdater:IsActivated("wragonfly_ash") then
		if inst:HasTag("cattoy") or inst.prefab == "log" then
			table.insert(actions, ACTIONS.WFLYCOOK)
		end
	end
end)

AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.WFLYCOOK, "domediumaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.WFLYCOOK, "domediumaction"))
------------------------------------------------------------------
local WFLYCONSUME = AddAction("WFLYCONSUME", "Consume", function(act)
	if act.doer and act.target and act.target:HasTag("wragonflyminion") then
		act.doer.SoundEmitter:PlaySound("dontstarve/wilson/eat", "eating")
		act.doer.SoundEmitter:PlaySound("dontstarve/common/teleportworm/swallow")

		act.doer.AnimState:PlayAnimation("feast_eat_pre")
		act.doer.AnimState:PushAnimation("feast_eat_pst", false)

		act.doer:DoTaskInTime(0.5,function()
			local current_health = act.target.components.health.currenthealth
			local current_hunger = act.target.components.hunger.current
			act.doer.components.health:DoDelta(current_health * .33) -- 33%
			act.doer.components.sanity:DoDelta(-current_health * .1) -- -10%
			act.doer.components.hunger:DoDelta(current_hunger)
			act.doer.SoundEmitter:KillSound("eating")
			act.doer.SoundEmitter:PlaySound("dontstarve/creatures/together/antlion/swallow")
			act.target.SoundEmitter:PlaySound("dontstarve/creatures/together/lavae/death")
		end)

		act.target.sg:GoToState("gohome")
		act.target:DoTaskInTime(0.6,function()
			act.target:Remove()
		end)
		return true
	end
end)

ACTIONS.WFLYCONSUME.rmb = true
ACTIONS.WFLYCONSUME.priority = 1

AddComponentAction("SCENE", "follower", function(inst, doer, actions, right)
	if right and doer:HasTag("wragonfly") and doer.components.skilltreeupdater and doer.components.skilltreeupdater:IsActivated("wragonfly_rage_lavae_2") then
		if inst:HasTag("wragonflyminion") or inst.prefab == "lavae_wragonfly" then
			table.insert(actions, ACTIONS.WFLYCONSUME)
		end
	end
end)

AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.WFLYCONSUME, "doshortaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.WFLYCONSUME, "doshortaction"))
------------------------------------------------------------------
AddAction("WFLY_LAVASPIT", "Spit", function(act)
	local act_pos = act:GetActionPoint()
	if act.doer:HasTag("lavaspitter") and act_pos ~= nil and act.doer ~= nil then
		act.doer.sg:GoToState("wragonfly_lavaspit", {dest = act_pos,})
		if act.doer.components.hunger ~= nil then 
			act.doer.components.hunger:DoDelta(-4)
		end
		return true
	end
end)

ACTIONS.WFLY_LAVASPIT.priority = -1
ACTIONS.WFLY_LAVASPIT.rmb = true
ACTIONS.WFLY_LAVASPIT.distance = 8

AddStategraphActionHandler("wilson",  ActionHandler(ACTIONS.WFLY_LAVASPIT, "doshortaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.WFLY_LAVASPIT, "doshortaction"))