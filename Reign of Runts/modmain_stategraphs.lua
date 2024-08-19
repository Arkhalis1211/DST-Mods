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
local FrameEvent = GLOBAL.FrameEvent

--------------------------------------------------------------------------
	-------------------------- DEERCLOPS --------------------------
--------------------------------------------------------------------------

--------------------------------------------------------------------------
	-------------------------- BEARGER --------------------------
--------------------------------------------------------------------------

--For both Woose and Wearger
local TOSS_MUST_TAGS = { "_inventoryitem" }
local TOSS_CANT_TAGS = { "locomotor", "INLIMBO", "heavy" }
local function flourishstuff(inst)
	local x, y, z = inst.Transform:GetWorldPosition()
	local totoss = TheSim:FindEntities(x, 0, z, 3, TOSS_MUST_TAGS, TOSS_CANT_TAGS)
	for i, v in ipairs(totoss) do
	local inventoryitem = v.components.inventoryitem
		if inventoryitem then
			if not v.components.inventoryitem.nobounce and v.Physics ~= nil and v.Physics:IsActive() then
				GLOBAL.Launch(v, inst, TUNING.LAUNCH_SPEED_SMALL)
				inventoryitem:SetLanded(false, true)
			end
		end
	end
end

local function PickGround_Double(owner, target)
	if (owner.components.skilltreeupdater:IsActivated("wearger_pick_double1") and math.random() < .15) or (owner.components.skilltreeupdater:IsActivated("wearger_pick_double2") and math.random() < .5) then
		if target.components.pickable ~= nil
			and target.components.pickable:CanBePicked()
			and target.components.pickable.caninteractwith then
			local product = target.components.pickable.product
			local item_launch = target.components.lootdropper:SpawnLootPrefab(product)
			if target.components.lootdropper ~= nil then
				GLOBAL.Launch(item_launch, target, 2)
			end
		end
	end
end

local function PickGround(inst)
    local success, loot = inst.components.pickable:Pick(GLOBAL.TheWorld)

    if loot ~= nil then
        for i, item in ipairs(loot) do
            GLOBAL.Launch(item, inst, 1.5)
        end
    end
end

local function Drop_Tuft(inst)
	if inst.components.shedder ~= nil then
	local skilltreeupdater = inst.components.skilltreeupdater
		if skilltreeupdater then
			if skilltreeupdater:IsActivated("wearger_fur_1") then
				inst.components.shedder:DoMultiShed(3, true)
			else
				inst.components.shedder:DoSingleShed()
			end
		end
	end
end

local SLEEPTARGETS_CANT_TAGS = { "epic", "playerghost", "FX", "DECOR", "INLIMBO" }
local SLEEPTARGETS_ONEOF_TAGS = { "sleeper", "player" }

local function DoYawn(inst)
    local x, y, z = inst.Transform:GetWorldPosition()
    local ents = TheSim:FindEntities(x, y, z, TUNING.WEARGER_GP_RANGE, nil, SLEEPTARGETS_CANT_TAGS, SLEEPTARGETS_ONEOF_TAGS)
    local canpvp = not inst:HasTag("wearger") or GLOBAL.TheNet:GetPVPEnabled()
    for i, v in ipairs(ents) do
        if (v == inst or canpvp or not v:HasTag("player")) and
            not (v.components.freezable ~= nil and v.components.freezable:IsFrozen()) and
            not (v.components.pinnable ~= nil and v.components.pinnable:IsStuck()) and
            not (v.components.fossilizable ~= nil and v.components.fossilizable:IsFossilized()) then
            if v:HasTag("player") then
                v:PushEvent("yawn", { grogginess = 0, knockoutduration = 1 })
            elseif v.components.sleeper ~= nil then
                v.components.sleeper:AddSleepiness(5, TUNING.BEARGER_YAWN_SLEEPTIME)
            elseif v.components.grogginess ~= nil then
                v.components.grogginess:AddGrogginess(3, TUNING.BEARGER_YAWN_SLEEPTIME)
            else
                v:PushEvent("knockedout")
            end
        end
    end
end

local function NoHoles(pt)
    return not GLOBAL.TheWorld.Map:IsPointNearHole(pt)
end

local function SummonShadow(owner, target)
    local pt
    if target ~= nil and target:IsValid() then
        pt = target:GetPosition()
    else
        pt = owner:GetPosition()
        target = nil
    end
    local offset = GLOBAL.FindWalkableOffset(pt, math.random() * 2 * GLOBAL.PI, 2, 3, false, true, NoHoles, false, true)
    if offset ~= nil then
        local tentacle = SpawnPrefab("shadowtentacle")
        if tentacle ~= nil then
			tentacle.owner = owner
            tentacle.Transform:SetPosition(pt.x + offset.x, 0, pt.z + offset.z)
			tentacle.components.combat:SetRange(4)
			if target ~= nil and (not target:HasTag("player") or GLOBAL.TheNet:GetPVPEnabled()) then
				tentacle.components.combat:SetTarget(target)
			end
        end
    end
end

local function DoGroundChunks(inst, x, z)
    SpawnPrefab("sinkhole_spawn_fx_"..tostring(math.random(1, 3))).Transform:SetPosition(x, 0, z)
end

local function GroundFx(inst)
    local numFX = math.random(3, 6)
    local x, y, z = inst.Transform:GetWorldPosition()
        for i = 1, numFX do
            inst:DoTaskInTime(math.random() * .25, DoGroundChunks, x + math.random(-2,2), z + math.random(-2,2))
        end
	inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/groundpound")
end

local TARGETS_CANT_TAGS_PVP = { "FX", "NOCLICK", "DECOR", "INLIMBO", "notarget", "noattack", "playerghost", "flying", "moonstorm_static", "companion", "abigail", "wall", "structure" }
local TARGETS_CANT_TAGS = GLOBAL.deepcopy(TARGETS_CANT_TAGS_PVP)
table.insert(TARGETS_CANT_TAGS, "player")
local function GroundPounder(inst)
	local x, y, z = inst.Transform:GetWorldPosition()
	local ents = TheSim:FindEntities(x, y, z, TUNING.WEARGER_GP_RANGE, nil, GLOBAL.TheNet:GetPVPEnabled() and TARGETS_CANT_TAGS_PVP or TARGETS_CANT_TAGS )
	local skilltreeupdater = inst.components.skilltreeupdater
	local wearger_shadow = skilltreeupdater:IsActivated("wearger_allegiance_shadow")
	local wearger_lunar = skilltreeupdater:IsActivated("wearger_allegiance_lunar")
	local wearger_pick_double = skilltreeupdater:IsActivated("wearger_pick_double1")
	for k,v in pairs(ents) do
		if v ~= inst and v:IsValid() then 
			if v.components.pickable ~= nil and TUNING.WEARGER_GP_PICK == true then
				if skilltreeupdater and wearger_pick_double and v:HasTag("plant") and v:HasTag("renewable") then
					PickGround_Double(inst, v)
				end
				PickGround(v)
			end
			if v.components.health ~= nil and not v.components.health:IsDead() then
				if v.components.combat then
					if skilltreeupdater and wearger_shadow then
						v.components.combat:GetAttacked(inst, TUNING.BEARGER_GP_DAMAGE * 3) -- 75
					elseif skilltreeupdater and wearger_lunar then
						v.components.combat:GetAttacked(inst, TUNING.BEARGER_GP_DAMAGE * 7) -- 175
					else
						v.components.combat:GetAttacked(inst, TUNING.BEARGER_GP_DAMAGE) -- 25
					end
				end
				if (v and v:HasTag("bird") and v.sg and v.sg:HasState("stunned")) then
					v.sg:GoToState("stunned")
				end
				if skilltreeupdater and wearger_shadow then
					SummonShadow(inst, v)
				end
			end
			if v and v:HasTag("tree") or v:HasTag("stump") and not v:HasTag("structure") then
				if v.components.workable ~= nil and v.components.workable:CanBeWorked() then
					if skilltreeupdater and wearger_shadow then
						v.components.workable:WorkedBy(inst, 10)
					elseif skilltreeupdater and wearger_lunar then
						v.components.workable:WorkedBy(inst, 15)
					else
						v.components.workable:WorkedBy(inst, 2.5)
					end
				end
			end
		end
	end
end
-- wearger_attackstyle 1 ------------------------------------------------------------------------
local function onattack(inst, data)
	if data.weapon ~= nil then
		if data.weapon.components.projectile ~= nil then
			return
		elseif data.weapon.components.weapon:CanRangedAttack() then
			return
		end
	end

	if inst.components.rider:IsRiding() then
		return
	end

	inst.tick = inst.tick + 1
	if inst.tick == 4 then
		if (GLOBAL.TheWorld.state.iswinter or GLOBAL.TheWorld.state.isspring) and math.random() < TUNING.BEARGER_YAWN_CHANCE then -- > .8
			if inst.components.skilltreeupdater then
				if not inst.components.skilltreeupdater:IsActivated("wearger_yawn4") then
					DoYawn(inst)
					inst.tick = 0
					return
				end
			end
		end
		-------------
		if math.random() < .20 then
			Drop_Tuft(inst)
		end
		inst.sg:GoToState("helmsplitter")
		-------------
		inst:DoTaskInTime(16 * FRAMES, function(inst)
				inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/swhoosh")
				GroundFx(inst)
				inst:PerformBufferedAction()
				if inst.components.timer ~= nil and not inst.components.timer:TimerExists("cooldown") and not inst:HasTag("player_lunar_aligned") then
					inst.components.timer:StartTimer("cooldown", TUNING.WEARGER_GP_CD)
					inst:AddTag("poundcooldown")
				end
				------------- Close-Range Damage -------------
				local x, y, z = inst.Transform:GetWorldPosition()
				local ents = TheSim:FindEntities(x, y, z, TUNING.WEARGER_GP_RANGE, nil, {"INLIMBO", "player", "flying", "companion", "abigail", "moonstorm_static", "wall", "structure"} )
				for k,v in pairs(ents) do
					if v and v:IsValid() and v.components.health ~= nil and v.components.combat ~= nil and not v.components.health:IsDead() then
						if inst.components.skilltreeupdater then
							if inst:HasTag("fullhibearnation") and inst.components.skilltreeupdater:IsActivated("wearger_hibear1") then
								v.components.combat:GetAttacked(inst, TUNING.BEARGER_GP_DAMAGE * 2)
							else
								v.components.combat:GetAttacked(inst, TUNING.BEARGER_GP_DAMAGE)
							end
						end
					end
				end
		end)
		-------------
		inst:DoTaskInTime(24 * FRAMES, function(inst)
			--	inst:DoTaskInTime(math.random() * .25, GLOBAL.ShakeAllCameras(GLOBAL.CAMERASHAKE.FULL, 1, .015, .3, inst, 30))
			inst.components.groundpounder:GroundPound()
			GroundPounder(inst)
			flourishstuff(inst)
			inst.tick = 0
		end)
	end
end

if GetModConfigData("wearger_attackstyle") == 1 or GetModConfigData("wearger_attackstyle") == 4 then
	AddPrefabPostInit("wearger", function(inst)
		if GLOBAL.TheWorld.ismastersim then
			inst:ListenForEvent("onattackother", onattack)
		end
	end)
end
-- wearger_attackstyle 2 ------------------------------------------------------------------------
AddStategraphState("wilson", 
	State{
        name = "wearger_pound",
        tags = { "nointerrupt", "doing", "nodangle", "groundpounding" },

        onenter = function(inst)
            inst.components.locomotor:Stop()

			if inst.components.skilltreeupdater then
				if not inst.components.skilltreeupdater:IsActivated("wearger_yawn4") then
					if (GLOBAL.TheWorld.state.iswinter or GLOBAL.TheWorld.state.isspring) and math.random() < TUNING.BEARGER_YAWN_CHANCE then
						DoYawn(inst)
					if inst.components.timer ~= nil and not inst.components.timer:TimerExists("cooldown") then
						inst.components.timer:StartTimer("cooldown", TUNING.WEARGER_GP_CD)
						inst:AddTag("poundcooldown")
					end
					if inst.components.hunger ~= nil then
						inst.components.hunger:DoDelta(-TUNING.CALORIES_TINY)-- -9.3
					end
						return
					end
				end
			end

			inst.AnimState:PlayAnimation("mighty_gym_active_wearger_pre")
            inst.AnimState:PushAnimation("mighty_gym_fail_wearger", false)

			inst.sg.statemem.action = inst:GetBufferedAction()

			if GLOBAL.TheNet:GetServerGameMode() == "lavaarena" then
			inst.components.health:SetInvincible(true)
			end

            inst.sg:SetTimeout(30 * FRAMES)
        end,
		
        timeline =
        {
            TimeEvent(15 * FRAMES, function(inst)
				if math.random() < .20 then
					Drop_Tuft(inst)
				end
            end),
            TimeEvent(17 * FRAMES, function(inst)
				inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/swhoosh")
				inst:PerformBufferedAction()
				if inst.components.timer ~= nil and not inst.components.timer:TimerExists("cooldown") then
					if GLOBAL.TheNet:GetServerGameMode() == "quagmire" then
						inst.components.timer:StartTimer("cooldown", 1)
						inst:AddTag("poundcooldown")
					else
						inst.components.timer:StartTimer("cooldown", TUNING.WEARGER_GP_CD)
						inst:AddTag("poundcooldown")
					end
				end
				------------- Close-Range Damage -------------
				local x, y, z = inst.Transform:GetWorldPosition()
			    local ents = TheSim:FindEntities(x, y, z, TUNING.WEARGER_GP_RANGE / 4, nil, {"INLIMBO", "player", "flying", "companion", "abigail", "moonstorm_static", "wall", "structure"} )
	            for k,v in pairs(ents) do
					if v and v:IsValid() and v.components.health ~= nil and v.components.combat ~= nil and not v.components.health:IsDead() then
						if inst.components.skilltreeupdater then
							if inst:HasTag("fullhibearnation") and inst.components.skilltreeupdater:IsActivated("wearger_hibear1") then
								v.components.combat:GetAttacked(inst, TUNING.BEARGER_GP_DAMAGE * 2) -- 75 Combined
							else
								v.components.combat:GetAttacked(inst, TUNING.BEARGER_GP_DAMAGE) -- 50 Combined
							end
						end
					end
			    end
            end),
			TimeEvent(24 * FRAMES, function(inst)
				inst:DoTaskInTime(math.random() * .25, GLOBAL.ShakeAllCameras(GLOBAL.CAMERASHAKE.FULL, 1, .015, .3, inst, 30))
				GroundPounder(inst)
				inst.components.groundpounder:GroundPound()
				flourishstuff(inst)
            end),
        },

        ontimeout = function(inst)
            inst.sg:GoToState("idle", true)
        end,
		
		events =
        {
            EventHandler("animqueueover", function(inst)
                if inst.AnimState:AnimDone() then
					inst.sg:GoToState("idle")
				end
            end),
        },

        onexit = function(inst)
            inst.components.combat:SetTarget(nil)
			if GLOBAL.TheNet:GetServerGameMode() == "lavaarena" then
				inst.components.health:SetInvincible(false)
			end
			if inst.bufferedaction == inst.sg.statemem.action and
			(inst.components.playercontroller == nil or inst.components.playercontroller.lastheldaction ~= inst.bufferedaction) then
				inst:ClearBufferedAction()
			end
        end,

    }
)
-- Shadow Aligned --
AddStategraphState("wilson", 
	State{
        name = "wearger_pound_shadow",
        tags = { "nointerrupt", "doing", "nodangle", "groundpounding" },

        onenter = function(inst, data)
			inst.components.locomotor:Stop()
			inst.AnimState:PlayAnimation("shadow_slam_wearger")
			inst.sg.statemem.action = inst:GetBufferedAction()
			inst.components.health:SetInvincible(true)

			if inst.components.skilltreeupdater then
				if not inst.components.skilltreeupdater:IsActivated("wearger_yawn4") then
					if (GLOBAL.TheWorld.state.iswinter or GLOBAL.TheWorld.state.isspring) and math.random() < TUNING.BEARGER_YAWN_CHANCE then
						DoYawn(inst)
					if inst.components.timer ~= nil and not inst.components.timer:TimerExists("cooldown") then
						inst.components.timer:StartTimer("cooldown", TUNING.WEARGER_GP_CD)
						inst:AddTag("poundcooldown")
					end
					if inst.components.hunger ~= nil then
						inst.components.hunger:DoDelta(-TUNING.CALORIES_TINY)-- -9.3
					end
						return
					end
				end
			end

            inst.sg:SetTimeout(29 * FRAMES)
        end,

        timeline =
        {
            TimeEvent(7 * FRAMES, function(inst)
				if math.random() < .20 then
					Drop_Tuft(inst)
				end
            end),
            TimeEvent(10 * FRAMES, function(inst)
				inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/swhoosh")
				inst:PerformBufferedAction()
				inst.components.groundpounder:GroundPound()
				if inst.components.timer ~= nil and not inst.components.timer:TimerExists("cooldown") then
					inst.components.timer:StartTimer("cooldown", TUNING.WEARGER_GP_CD)
					inst:AddTag("poundcooldown")
				end
				------------- Close-Range Damage -------------
				local x, y, z = inst.Transform:GetWorldPosition()
				local ents = TheSim:FindEntities(x, y, z, TUNING.WEARGER_GP_RANGE / 4 , nil, {"INLIMBO", "notarget", "player", "companion", "abigail", "moonstorm_static", "wall", "structure"} )
				for k,v in pairs(ents) do
					if v and v:IsValid() and v.components.health ~= nil and v.components.combat ~= nil and not v.components.health:IsDead() then
						if inst.components.skilltreeupdater then
							if inst:HasTag("fullhibearnation") and inst.components.skilltreeupdater:IsActivated("wearger_hibear1") then
								v.components.combat:GetAttacked(inst, TUNING.BEARGER_GP_DAMAGE * 4) -- 175 Combined
							else
								v.components.combat:GetAttacked(inst, TUNING.BEARGER_GP_DAMAGE * 3) -- 150 Combined
							end
						end
					end
				end
				local x, y, z = inst.Transform:GetWorldPosition()
				local _shadowfx = SpawnPrefab("shadow_shield3")
				_shadowfx.Transform:SetPosition(x, y, z)
            end),
			TimeEvent(15 * FRAMES, function(inst)
				inst:DoTaskInTime(math.random() * .25, GLOBAL.ShakeAllCameras(GLOBAL.CAMERASHAKE.FULL, 1, .015, .3, inst, 30))
				flourishstuff(inst)
				inst.components.health:SetInvincible(false)
				GroundPounder(inst)
            end),
        },

        ontimeout = function(inst)
            inst.sg:GoToState("idle", true)
        end,

		events =
        {
            EventHandler("animqueueover", function(inst)
                if inst.AnimState:AnimDone() then
					inst.sg:GoToState("idle")
				end
            end),
        },

        onexit = function(inst)
            inst.components.combat:SetTarget(nil)
			inst.components.health:SetInvincible(false)
			if inst.bufferedaction == inst.sg.statemem.action and
            (inst.components.playercontroller == nil or inst.components.playercontroller.lastheldaction ~= inst.bufferedaction) then
                inst:ClearBufferedAction()
            end
        end,
    }
)
-- Lunar Aligned --
AddStategraphState("wilson", 

	State{
		name = "wearger_pound_lunar_pre",
		tags = {"groundpounding"},

        onenter = function(inst)
            inst.components.locomotor:Stop()
            inst.AnimState:PlayAnimation("wearger_look")

            local buffaction = inst:GetBufferedAction()
            if buffaction ~= nil and buffaction.pos ~= nil then
                inst:ForceFacePoint(buffaction:GetActionPoint():Get())
            end
        end,

        events =
        {
            EventHandler("animover", function(inst)
                if inst.AnimState:AnimDone() and not inst:PerformBufferedAction() then
                    inst.sg:GoToState("idle")
                end
            end),
        },
	}
)

AddStategraphState("wilson", 
	State{
        name = "wearger_pound_lunar",
        tags = { "busy", "pausepredict", "nodangle", "nomorph", "groundpounding" },

        onenter = function(inst, data)
            inst.components.locomotor:Stop()
			inst.AnimState:PlayAnimation("boat_jump_pre")
			inst.AnimState:PushAnimation("boat_jump_loop", true)
			inst.components.health:SetInvincible(true)
			inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/bearger/swhoosh")

			if inst.components.skilltreeupdater then
				if not inst.components.skilltreeupdater:IsActivated("wearger_yawn4") then
					if (GLOBAL.TheWorld.state.iswinter or GLOBAL.TheWorld.state.isspring) and math.random() < TUNING.BEARGER_YAWN_CHANCE then
						DoYawn(inst)
					if inst.components.hunger ~= nil then
						inst.components.hunger:DoDelta(-TUNING.CALORIES_TINY)-- -9.3
					end
						return
					end
				end
			end

			inst.sg.statemem.action = inst:GetBufferedAction()
			inst.sg:SetTimeout(11 * FRAMES)
            local dest = data and data.dest or nil
            if dest ~= nil then
                inst.sg.statemem.dest = dest
                inst:ForceFacePoint(dest:Get())
            else
                inst.sg.statemem.dest = Vector3(x, y, z)
            end

            if inst.components.playercontroller ~= nil then
                inst.components.playercontroller:RemotePausePrediction()
            end

			inst.Physics:ClearCollisionMask()
			inst.Physics:CollidesWith(GLOBAL.COLLISION.GROUND)
			inst.Physics:CollidesWith(GLOBAL.COLLISION.GIANTS)

			local pt = dest
			local x1, y1, z1 = pt:Get()
			local x2, y2, z2 = inst.Transform:GetWorldPosition()
			local dist = math.sqrt((x1 - x2)*(x1 - x2) + (z1 - z2)*(z1 - z2))
			if pt ~= nil and GLOBAL.TheWorld.Map:IsPassableAtPoint(pt:Get()) and not GLOBAL.TheWorld.Map:IsGroundTargetBlocked(pt) then
				if dist ~= nil and GLOBAL.TheWorld.Map:IsPassableAtPoint(pt:Get()) and not GLOBAL.TheWorld.Map:IsGroundTargetBlocked(pt) then
					inst.Physics:SetMotorVel(dist * 2.3, 0, 0) 
				end
			end

            if target ~= nil and target:IsValid() then
				inst.sg.statemem.target = target
            end
        end,

        ontimeout = function(inst)
            inst.sg:GoToState("wearger_pound_lunar_pst", {dest = inst.sg.statemem.dest})
			GLOBAL.ChangeToCharacterPhysics(inst)
			inst.components.health:SetInvincible(false)
        end,

        onexit = function(inst)
            inst.components.combat:SetTarget(nil)
			if inst.bufferedaction == inst.sg.statemem.action and
            (inst.components.playercontroller == nil or inst.components.playercontroller.lastheldaction ~= inst.bufferedaction) then
                inst:ClearBufferedAction()
            end
			GLOBAL.ChangeToCharacterPhysics(inst)
			inst.components.health:SetInvincible(false)
        end,
	}
)

AddStategraphState("wilson", 
	State{
		name = "wearger_pound_lunar_pst",
		tags = { "busy", "nopredict", "nomorph", "noattack", "nointerrupt" },

        onenter = function(inst, data)
            inst.components.locomotor:Stop()
            inst.AnimState:PlayAnimation("mighty_gym_fail_wearger")
            local dest = data and data.dest or nil
            if dest ~= nil then
                inst.Physics:Teleport(dest:Get())
                if TheWorld and TheWorld.components.walkableplatformmanager then 
                    TheWorld.components.walkableplatformmanager:PostUpdate(0)
                end
            else
                dest = inst:GetPosition()
            end
            if target ~= nil and target:IsValid() then
				inst.sg.statemem.target = target
            end
				
			inst.sg:SetTimeout(14 * FRAMES)
			inst.Physics:ClearMotorVelOverride()
        end,

        timeline =
        {
            TimeEvent(1 * FRAMES, function(inst)
                Drop_Tuft(inst)
				------------- Close-Range Damage -------------
				local x, y, z = inst.Transform:GetWorldPosition()
				local ents = TheSim:FindEntities(x, y, z, TUNING.WEARGER_GP_RANGE / 3, nil, {"INLIMBO", "player", "companion", "abigail", "moonstorm_static", "wall", "structure"} )
				for k,v in pairs(ents) do
					if v and v:IsValid() and v.components.health ~= nil and v.components.combat ~= nil and not v.components.health:IsDead() then
						if inst.components.skilltreeupdater then
							if inst:HasTag("fullhibearnation") and inst.components.skilltreeupdater:IsActivated("wearger_hibear1") then
								v.components.combat:GetAttacked(inst, TUNING.BEARGER_GP_DAMAGE * 5) -- 300 Combined
							else
								v.components.combat:GetAttacked(inst, TUNING.BEARGER_GP_DAMAGE * 3) -- 250 Combined
							end
						end
					end
				end
            end),
            TimeEvent(3 * FRAMES, function(inst)
                inst.sg:RemoveStateTag("noattack")
                inst.SoundEmitter:PlaySound("dontstarve/movement/bodyfall_dirt")
				inst:DoTaskInTime(math.random() * .25, GLOBAL.ShakeAllCameras(GLOBAL.CAMERASHAKE.FULL, 1, .015, .3, inst, 30))
				inst.components.groundpounder:GroundPound()
				GroundPounder(inst)
				flourishstuff(inst)
            end),
        },

		events =
		{
			EventHandler("animover", function(inst) inst.sg:GoToState("idle") GLOBAL.ChangeToCharacterPhysics(inst) end),
		},

        ontimeout = function(inst)
            inst.sg:GoToState("idle", true)
			GLOBAL.ChangeToCharacterPhysics(inst)
        end,
	}
)
-- Client --
AddStategraphState("wilson_client", 
	State{
        name = "wearger_pound",
        tags = { "nointerrupt", "doing", "groundpounding" },
		server_states = { "wearger_pound" },

        onenter = function(inst, snap)
		    inst.components.locomotor:Stop()
			inst.AnimState:PlayAnimation("mighty_gym_active_wearger_pre")
            inst.AnimState:PushAnimation("mighty_gym_active_wearger_lag", false)
            inst:PerformPreviewBufferedAction()
            inst.sg:SetTimeout(2)
        end,

        onupdate = function(inst)
            if inst:HasTag("doing") then
                if inst.entity:FlattenMovementPrediction() then
					inst.sg:GoToState("idle", "noanim")
                end
            elseif inst.bufferedaction == nil then
					inst.sg:GoToState("idle")
            end
        end,

        ontimeout = function(inst)
			inst:ClearBufferedAction()
			inst.sg:GoToState("idle")
        end,  
	}
)

AddStategraphState("wilson_client", 
	State{
        name = "wearger_pound_shadow",
        tags = { "nointerrupt", "doing", "groundpounding" },
		server_states = { "wearger_pound_shadow" },

        onenter = function(inst, snap)
		    inst.components.locomotor:Stop()
			inst.AnimState:PlayAnimation("mighty_gym_active_wearger_pre")
            inst.AnimState:PushAnimation("mighty_gym_active_wearger_lag", false)
            inst:PerformPreviewBufferedAction()
            inst.sg:SetTimeout(2)
        end,

        onupdate = function(inst)
            if inst:HasTag("doing") then
                if inst.entity:FlattenMovementPrediction() then
					inst.sg:GoToState("idle", "noanim")
                end
            elseif inst.bufferedaction == nil then
					inst.sg:GoToState("idle")
            end
        end,

        ontimeout = function(inst)
			inst:ClearBufferedAction()
			inst.sg:GoToState("idle")
        end,  
	}
)

AddStategraphState("wilson_client", 
	State{
		name = "wearger_pound_lunar_pre",
		server_states = { "wearger_pound_lunar_pre", "wearger_pound_lunar" },

        onenter = function(inst)
            inst.components.locomotor:Stop()

			inst.AnimState:PlayAnimation("wearger_look")
        --    inst.AnimState:PlayAnimation("idle_tap_pre")
        --    inst.AnimState:PushAnimation("idle_tap_pst", false)

            local buffaction = inst:GetBufferedAction()
            if buffaction ~= nil then
                inst:PerformPreviewBufferedAction()

                if buffaction.pos ~= nil then
                    inst:ForceFacePoint(buffaction:GetActionPoint():Get())
                end
            end

            inst.sg:SetTimeout(TIMEOUT)
        end,

        onupdate = function(inst)
			if inst.sg:ServerStateMatches() then
                if inst.entity:FlattenMovementPrediction() then
                    inst.sg:GoToState("idle", "noanim")
                end
            elseif inst.bufferedaction == nil then
                inst.sg:GoToState("idle")
            end
        end,

        ontimeout = function(inst)
            inst:ClearBufferedAction()
            inst.sg:GoToState("idle")
        end,
	}
)
------------------------------------------------------------------
if GetModConfigData("enable_groundpcancel") == true then
	if GLOBAL.TheNet:GetServerGameMode() ~= "lavaarena" then
		AddStategraphPostInit("wilson", function(sg)
			sg.states.helmsplitter.tags.busy = nil
			sg.states.helmsplitter.tags.pausepredict = nil
			sg.states.helmsplitter.tags.doing = nil
			sg.states.helmsplitter.tags.nointerrupt = nil
		end)
	end
end
--------------------------------------------------------------------------
	-------------------------- MOOSE/GOOSE --------------------------
--------------------------------------------------------------------------
local WORK_ACTIONS =
{
    CHOP = true,
    DIG = false,
    HAMMER = TUNING.WOOSE_TORNADO_HAMMER,
    MINE = true,
}
local TARGET_TAGS = { "_combat" }
for k, v in pairs(WORK_ACTIONS) do
    table.insert(TARGET_TAGS, k.."_workable")
end
local TARGET_IGNORE_TAGS = { "INLIMBO", "abigail", "companion", "notarget", "noattack" }

local function woose_destroystuff(inst)
    local x, y, z = inst.Transform:GetWorldPosition()
    local ents = TheSim:FindEntities(x, y, z, 3, nil, TARGET_IGNORE_TAGS, TARGET_TAGS)
    local skilltreeupdater = inst.components.skilltreeupdater
    local woose_spin_rain = skilltreeupdater:IsActivated("woose_spin_rain")
    for i, v in ipairs(ents) do
        if v:IsValid() then
            if v.components.health ~= nil and
                not v.components.health:IsDead() and
                v.components.combat ~= nil and
                v.components.combat:CanBeAttacked() and not v:HasTag("player") then
				if skilltreeupdater and woose_spin_rain then
					v.components.combat:GetAttacked(inst, TUNING.WOOSE_TORNADO_DAMAGE*1.2, nil, "electric")
				else
					v.components.combat:GetAttacked(inst, TUNING.WOOSE_TORNADO_DAMAGE, nil, "wind")
				end
            elseif v.components.workable ~= nil and
                v.components.workable:CanBeWorked() and
                v.components.workable:GetWorkAction() and
                WORK_ACTIONS[v.components.workable:GetWorkAction().id] then
                SpawnPrefab("mining_fx").Transform:SetPosition(v.Transform:GetWorldPosition())
                v.components.workable:WorkedBy(inst, 2)
            elseif GLOBAL.TheNet:GetPVPEnabled() and v:HasTag("player") and not v.components.health:IsDead() and inst ~= v then
                v.components.combat:GetAttacked(inst, TUNING.WOOSE_TORNADO_DAMAGE, nil, "wind")
            end
        end
    end
end

local function LightningStrike(inst)
	GLOBAL.TheWorld:PushEvent("ms_sendlightningstrike", inst:GetPosition())
end

local function OnReflectDamage(inst, data)
    if data.attacker ~= nil and data.attacker:IsValid() then
        local impactfx = SpawnPrefab("impact")
        if impactfx ~= nil then
            if data.attacker.components.combat ~= nil then
                local follower = impactfx.entity:AddFollower()
                follower:FollowSymbol(data.attacker.GUID, data.attacker.components.combat.hiteffectsymbol, 0, 0, 0)
            else
                impactfx.Transform:SetPosition(data.attacker.Transform:GetWorldPosition())
            end
            impactfx:FacePoint(inst.Transform:GetWorldPosition())
        end
    end
end

AddStategraphState("wilson", 
	State{
		name = "woose_spin_pre",
		tags = {"busy"},

		onenter = function(inst)
			inst.AnimState:PlayAnimation("hide")
            inst.sg:SetTimeout(2)
		end,

        ontimeout = function(inst)
            inst:PerformBufferedAction()
        end,

		events =
		{
			EventHandler("animover", function(inst)
				inst.sg:GoToState("woose_spin_loop")
			end),
		},

		timeline =
		{
			TimeEvent(6*FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve/characters/woose/emote") end),
		},
	}
)
AddStategraphState("wilson_client", 
	State{
		name = "woose_spin_pre",
		tags = {"busy"},
		server_states = { "woose_spin_pre", "woose_spin_loop" },

		onenter = function(inst)
			inst.AnimState:PlayAnimation("hide")
			inst:PerformPreviewBufferedAction()
			inst.sg:SetTimeout(2)
		end,

        onupdate = function(inst)
			if inst.sg:ServerStateMatches() then
                if inst.entity:FlattenMovementPrediction() then
					inst.sg:GoToState("idle", "noanim")
                end
            elseif inst.bufferedaction == nil then
                inst.sg:GoToState("idle")
            end
        end,

        ontimeout = function(inst)
            inst:ClearBufferedAction()
            inst.sg:GoToState("idle")
        end,
	}
)
--TODO; Fix Unresponsive Controls on LagComp(client)
AddStategraphState("wilson", 
	State{
		name = "woose_spin_loop",
		tags = {"moving", "running", "spinning", "canrotate", "nopredict", "nomorph", "nodangle", "overridelocomote"},

		onenter = function(inst)
			inst.components.skinner:SetSkinMode("tornado_skin", "player_woose_spin")

			if not inst.AnimState:IsCurrentAnimation("spin_loop") then
                inst.AnimState:PlayAnimation("spin_loop", true)
            end

			inst.components.health:SetInvincible(TUNING.WOOSE_TORNADO_INVULN)

			if GLOBAL.TheWorld.state.israining and inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("woose_spin_rain") then 
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "woose_spin_speed", TUNING.WOOSE_TORNADO_SPEED*1.2)
			else
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "woose_spin_speed", TUNING.WOOSE_TORNADO_SPEED)
			end

			inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/mossling/spin", "spinLoop")

			local fx = SpawnPrefab("mossling_spin_fx")
			fx.entity:SetParent(inst.entity)
			fx.Transform:SetPosition(0,0.1,0)

			inst.components.burnable:Extinguish()
			inst.components.moisture:DoDelta(math.random(-10, 0))

			if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("woose_spin_3") then
				woose_destroystuff(inst)
				woose_destroystuff(inst)
				woose_destroystuff(inst)
			end

			if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("woose_spin_2") then
				inst:AddComponent("damagereflect")
				inst:ListenForEvent("onreflectdamage", OnReflectDamage)
				if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("woose_spin_4") then
					inst.components.damagereflect:SetDefaultDamage(150)
				else
					inst.components.damagereflect:SetDefaultDamage(50)
				end
			end

			flourishstuff(inst)
			inst.sg:SetTimeout(TUNING.WOOSE_TORNADO_TIME)
		end,

		onupdate = function(inst)
			inst.components.locomotor:RunForward()
		end,

		timeline=
		{
			TimeEvent(5*FRAMES, function(inst)
				if math.random() < TUNING.WOOSE_TORNADO_LIGHTNING then
					LightningStrike(inst)
				end
			end),
			TimeEvent(0*FRAMES, woose_destroystuff),
			TimeEvent(3*FRAMES, woose_destroystuff),
			TimeEvent(7*FRAMES, woose_destroystuff),
			TimeEvent(10*FRAMES, woose_destroystuff),
			TimeEvent(20*FRAMES, woose_destroystuff),
			TimeEvent(35*FRAMES, woose_destroystuff),
			TimeEvent(50*FRAMES, woose_destroystuff),
			TimeEvent(70*FRAMES, woose_destroystuff),
			TimeEvent(90*FRAMES, woose_destroystuff),
			TimeEvent(100*FRAMES, woose_destroystuff),
			TimeEvent(115*FRAMES, woose_destroystuff),
			TimeEvent(130 * FRAMES, function(inst)
                inst.sg:GoToState("woose_spin_pst")
				woose_destroystuff(inst)
            end),
		},

		ontimeout = function(inst)
			inst.sg:GoToState("woose_spin_pst")
			flourishstuff(inst)
		end,

		onexit = function(inst)
			inst.SoundEmitter:KillSound("spinLoop")

			SpawnPrefab("sand_puff").Transform:SetPosition(inst.Transform:GetWorldPosition())
			SpawnPrefab("moose_nest_fx_hit").Transform:SetPosition(inst.Transform:GetWorldPosition())

			inst.components.skinner:SetSkinMode("normal_skin", "woose")

			inst.components.health:SetInvincible(false)
			if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("woose_spin_2") then
				inst:RemoveComponent("damagereflect")
				inst:RemoveEventCallback("onreflectdamage", OnReflectDamage)
			end

			inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "woose_spin_speed")
			if inst.components.grogginess ~= nil then
				inst.components.grogginess:AddGrogginess(TUNING.WOOSE_TORNADO_GROG, 0)
			end
		end,
	}
)

AddStategraphState("wilson", 
	State{
		name = "woose_spin_pst",
		tags = {"busy"},

		onenter = function(inst)
			inst.AnimState:PlayAnimation("revert_weregoose_pst")
			SpawnPrefab("electricchargedfx").Transform:SetPosition(inst.Transform:GetWorldPosition())
			inst.components.locomotor:StopMoving()
			if inst.components.skilltreeupdater and inst.components.skilltreeupdater:IsActivated("woose_spin_1") then
				woose_destroystuff(inst)
				woose_destroystuff(inst)
				woose_destroystuff(inst)
			end
			flourishstuff(inst)
		end,

		events =
		{
			EventHandler("animover", function(inst) inst.sg:GoToState("idle") end),
		},
	}
)
------------------------------------------------------------------
AddStategraphState("wilson", 
	State{
        name = "woose_toss_fish",
        tags = { "busy" },

        onenter = function(inst, target_data)
			inst.components.locomotor:Stop()
			inst.AnimState:PlayAnimation("atk_prop_pre")
			inst.AnimState:PushAnimation("atk_prop", false)
			if not inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS) then
				inst.AnimState:ClearOverrideSymbol("swap_object") -- Because the anim wasn't meant for handless
			end

			if target_data then
                local target = target_data.target
                inst.sg.statemem.toss_target = target
			end

			inst.sg.statemem.action = inst:GetBufferedAction()
        end,

        timeline =
        {
            TimeEvent(6 * FRAMES, function(inst)
                inst.SoundEmitter:PlaySound("dontstarve/wilson/attack_whoosh")
			    if inst.components.moisture ~= nil then
                    inst.components.moisture:DoDelta(15, true)
					SpawnPrefab("splash_green").Transform:SetPosition(inst.Transform:GetWorldPosition())
                end
            end),
            TimeEvent(7 * FRAMES, function(inst)
				inst.sg:RemoveStateTag("busy")
                inst:PerformBufferedAction()
				local target = inst.sg.statemem.toss_target
				if target and target:IsValid() and target:IsOnOcean(false) then
					inst:TossFish(target)
				end
            end),
            TimeEvent(13 * FRAMES, function(inst)
                inst.AnimState:PlayAnimation("lightspit")
            end),
            TimeEvent(19 * FRAMES, function(inst)
                inst.sg:GoToState("idle", true)
            end),
        },

        ontimeout = function(inst)
            inst.sg:GoToState("idle", true)
        end,
		
		events =
        {
            EventHandler("animqueueover", function(inst)
			if inst.AnimState:AnimDone() then
					inst.sg:GoToState("idle")
				end
            end),
        },

		onexit = function(inst)
			if inst.bufferedaction == inst.sg.statemem.action and
			(inst.components.playercontroller == nil or inst.components.playercontroller.lastheldaction ~= inst.bufferedaction) then
				inst:ClearBufferedAction()
			end
		end,
	}
)

AddStategraphState("wilson_client", 
	State{
		name = "woose_toss_fish",
		server_states = { "woose_toss_fish" },
		forward_server_states = true,
		onenter = function(inst) inst.sg:GoToState("doshortaction") end,
	}
)
------------------------------------------------------------------
local function Tornadohandler_WilsonPostInit(sg)
local _castaoe_actionhandler = sg.actionhandlers[ACTIONS.CASTAOE].deststate
    sg.actionhandlers[ACTIONS.CASTAOE].deststate = function(inst, action, ...)
        if action.invobject ~= nil then
            if action.invobject:HasTag("fan") then
                return "tornado_start"
            end
        end
        return _castaoe_actionhandler(inst, action, ...)
	end
end

AddStategraphPostInit("wilson", Tornadohandler_WilsonPostInit)
AddStategraphPostInit("wilson_client", Tornadohandler_WilsonPostInit)

AddStategraphState("wilson",
    State{
        name = "tornado_start",
        tags = { "doing", "busy", "nointerrupt", "nomorph" },

        onenter = function(inst)
            inst.components.locomotor:Stop()
            inst.AnimState:PlayAnimation("tornado")
        end,

        timeline =
        {
            TimeEvent(40 * FRAMES, function(inst)
                inst.SoundEmitter:PlaySound("dontstarve/wilson/attack_whoosh", nil, nil, true)
				inst:PerformBufferedAction()
            end),
        },

        events =
        {
            EventHandler("animover", function(inst)
                if inst.AnimState:AnimDone() then
                    inst.sg:GoToState("idle")
                end
            end),
        },
    }
)

AddStategraphState("wilson_client",
    State{
        name = "tornado_start",
        tags = { "doing", "busy", "nointerrupt" },
		server_states = { "tornado_start" },

        onenter = function(inst)
            inst.components.locomotor:Stop()
            inst.AnimState:PlayAnimation("tornado")

            inst:PerformPreviewBufferedAction()
            inst.sg:SetTimeout(TIMEOUT)
        end,

        timeline =
        {
            TimeEvent(4 * FRAMES, function(inst)
                inst.SoundEmitter:PlaySound("dontstarve/wilson/attack_whoosh", nil, nil, true)
            end),
        },

        onupdate = function(inst)
			if inst.sg:ServerStateMatches() then
                if inst.entity:FlattenMovementPrediction() then
                    inst.sg:GoToState("idle", "noanim")
                end
            elseif inst.bufferedaction == nil then
                inst.sg:GoToState("idle")
            end
        end,

        ontimeout = function(inst)
            inst:ClearBufferedAction()
            inst.sg:GoToState("idle")
        end,
    }
)
------------------------------------------------------------------
AddStategraphState("wilson",
    State{
        name = "woose_migrate_pre",
        tags = { "busy" },

        onenter = function(inst)
            inst.components.locomotor:Stop()
            inst.AnimState:PlayAnimation("woose_migrate_pre")
        end,

        timeline =
        {
            FrameEvent(10, function(inst)
                inst.sg:RemoveStateTag("busy")
            end),
        },

		events =
		{
			EventHandler("animover", function(inst)
				if inst.AnimState:AnimDone() then
					inst.sg:GoToState("woose_migrate")
				end
			end),
		},
    }
)

AddStategraphState("wilson",
    State{
        name = "woose_migrate",
        tags = { "busy", "flying", "pausepredict", "nomorph", "noattack", "nointerrupt" },

        onenter = function(inst)
            inst.components.locomotor:Stop()
            inst.components.health:SetInvincible(true)

            if inst.components.playercontroller ~= nil then
				inst.components.playercontroller:RemotePausePrediction()
                inst.components.playercontroller:Enable(false)
            end

            inst:SetCameraDistance(14)

            inst.AnimState:PushAnimation("woose_migrate")

			inst.SoundEmitter:PlaySound("dontstarve/characters/woose/emote")
            inst.SoundEmitter:PlaySound("meta2/woodie/weregoose_takeoff")

            inst:SetWooseFlying(true)
        end,

        timeline =
        {
			FrameEvent(3, function(inst)
				if not inst.SoundEmitter:PlayingSound("fly_lp") then
					inst.SoundEmitter:PlaySound("monkeyisland/pollyroger/flap_lp", "fly_lp")
				end
            end),
			FrameEvent(7, function(inst)
                inst.DynamicShadow:Enable(false)
            end),
            FrameEvent(40, function(inst)
                inst:ScreenFade(false, 1)
            end),
            FrameEvent(60, function(inst)
                inst:Hide()
                inst:PerformBufferedAction()
            end),
            FrameEvent(100, function(inst)
				inst.sg.statemem.landing = true
				inst.sg:GoToState("woose_land")
            end),
        },

		onexit = function(inst)
			inst:Show()
			inst.SoundEmitter:KillSound("fly_lp")
			if inst.components.grogginess ~= nil then
				inst.components.grogginess:AddGrogginess(1.8, 0)
			end
				inst.DynamicShadow:Enable(true)
				inst:SetWooseFlying(false)
				inst:ScreenFade(true, 0)
				inst:SetCameraDistance()
				inst.components.health:SetInvincible(false)
				if inst.components.playercontroller ~= nil then
					inst.components.playercontroller:Enable(true)
				end
		end,
    }
)

AddStategraphState("wilson",
    State{
        name = "woose_land",
        tags = { "busy", "flying", "nopredict", "nomorph", "noattack", "nointerrupt" },

        onenter = function(inst)
            inst.AnimState:PlayAnimation("enter")
            inst:ScreenFade(true, .3)
			inst.SoundEmitter:PlaySound("dontstarve/movement/bodyfall_dirt")
        end,

        events =
        {
            EventHandler("animover", function(inst)
                if inst.AnimState:AnimDone() then
                    inst.sg:GoToState("idle")
                end
            end),
        },

		onexit = function(inst)
			inst.DynamicShadow:Enable(true)
			inst:SetWooseFlying(false)
			inst:SetCameraDistance()
			inst.components.health:SetInvincible(false)
			if inst.components.hunger ~= nil then
                inst.components.hunger:DoDelta(-50)
			end
			if not inst.sg.statemem.landing then
				--interrupted
				if inst.components.playercontroller ~= nil then
					inst.components.playercontroller:Enable(true)
				end
			end
		end,
    }
)

AddStategraphState("wilson_client",
    State{
        name = "woose_migrate_pre",
        tags = { "busy" },
		server_states = { "woose_migrate_pre", "woose_migrate" },

        onenter = function(inst)
            inst.components.locomotor:Stop()
            inst.AnimState:PlayAnimation("woose_migrate_pre")
            inst.AnimState:PushAnimation("woose_migrate_lag", false)
            inst:PerformPreviewBufferedAction()
            inst.sg:SetTimeout(TIMEOUT)
        end,

        onupdate = function(inst)
            if inst.sg:ServerStateMatches() then
                if inst.entity:FlattenMovementPrediction() then
                    inst.sg:GoToState("idle", "noanim")
                end
            elseif inst.bufferedaction == nil then
                inst.sg:GoToState("idle")
            end
        end,

		timeline =
		{
			FrameEvent(10, function(inst)
				inst.sg:RemoveStateTag("busy")
			end),
		},

        ontimeout = function(inst)
            inst:ClearBufferedAction()
            inst.sg:GoToState("idle")
        end,
    }
)
--------------------------------------------------------------------------
	-------------------------- DRAGONFLY --------------------------
--------------------------------------------------------------------------
local function LaunchProjectile(inst, targetpos)
    local x, y, z = inst.Transform:GetWorldPosition()

    local projectile = SpawnPrefab("wragonfly_lavaspit")
    projectile.Transform:SetPosition(x, y, z)

    local dx = targetpos.x - x
    local dz = targetpos.z - z
    local rangesq = dx * dx + dz * dz
    local maxrange = TUNING.FIRE_DETECTOR_RANGE
    projectile.components.complexprojectile:Launch(targetpos, inst, inst)
end

AddStategraphState("wilson", 
	State{
        name = "wragonfly_lavaspit",
        tags = { "busy", "spitting" },

        onenter = function(inst, data)
			inst.AnimState:PlayAnimation("lightspit")
			inst.SoundEmitter:PlaySound("dontstarve/characters/wragonfly/eye_rub_vo")
			inst.SoundEmitter:PlaySound("dontstarve/frog/attack_spit")

			inst.sg.statemem.action = inst:GetBufferedAction()
			inst.sg:SetTimeout(20 * FRAMES)
            local dest = data and data.dest or nil
            if dest ~= nil then
                inst.sg.statemem.dest = dest
                inst:ForceFacePoint(dest:Get())
            else
                inst.sg.statemem.dest = Vector3(x, y, z)
            end

			local pt = dest
			local x1, y1, z1 = pt:Get()
			local x2, y2, z2 = inst.Transform:GetWorldPosition()
			local dist = math.sqrt((x1 - x2)*(x1 - x2) + (z1 - z2)*(z1 - z2))
			if pt ~= nil and GLOBAL.TheWorld.Map:IsPassableAtPoint(pt:Get()) and not GLOBAL.TheWorld.Map:IsGroundTargetBlocked(pt) then
				if dist ~= nil and GLOBAL.TheWorld.Map:IsPassableAtPoint(pt:Get()) and not GLOBAL.TheWorld.Map:IsGroundTargetBlocked(pt) then
					LaunchProjectile(inst, pt)
				end
			end
        end,

        ontimeout = function(inst)
            inst.sg:GoToState("idle", true)
        end,
		
		events =
        {
            EventHandler("animqueueover", function(inst)
			if inst.AnimState:AnimDone() then
					inst.sg:GoToState("idle")
				end
            end),
        },

		onexit = function(inst)
			if inst.bufferedaction == inst.sg.statemem.action and
			(inst.components.playercontroller == nil or inst.components.playercontroller.lastheldaction ~= inst.bufferedaction) then
				inst:ClearBufferedAction()
			end
			if inst:HasTag("lavaspitter") then
				inst:RemoveTag("lavaspitter")
			end
		end,
	}
)

AddStategraphState("wilson_client", 
	State{
		name = "wragonfly_lavaspit",
		server_states = { "wragonfly_lavaspit" },
		forward_server_states = true,
		onenter = function(inst) inst.sg:GoToState("doshortaction") end,
	}
)
------------------------------------------------------------------
AddStategraphPostInit("lavae", function(sg)
	local oldidleenter = sg.states["idle"].onenter
	sg.states["idle"].onenter = function(inst)
		if inst.components.drownable ~= nil and inst.components.drownable:ShouldDrown() then
			inst.sg:GoToState("thaw_break")
			GLOBAL.SinkEntity(inst) -- Drownable cheat
			return
		end
		oldidleenter(inst)
	end

	sg.states.thaw_break.tags["thaw_breaking"] = true
end)
--------------------------------------------------------------------------
	-------------------------- UPVALUEHACKER --------------------------
--------------------------------------------------------------------------
--Hate to have to do this, but it's for a goose cause.
local UpvalueHacker = require("tools/upvaluehacker")
AddStategraphPostInit("wilson", function(inst)
local ToggleOffPhysics
local ToggleOnPhysics

	do
    local _jumpin_onenter = inst.states["jumpin"].onenter
    local _jumpin_onexit = inst.states["jumpin"].onexit
    ToggleOffPhysics = UpvalueHacker.GetUpvalue(_jumpin_onenter, "ToggleOffPhysics")
    ToggleOnPhysics = UpvalueHacker.GetUpvalue(_jumpin_onexit, "ToggleOnPhysics")
    UpvalueHacker.SetUpvalue(_jumpin_onenter, function(...) ToggleOffPhysics(...) end, "ToggleOffPhysics")
    UpvalueHacker.SetUpvalue(_jumpin_onexit, function(...) ToggleOnPhysics(...) end, "ToggleOnPhysics")

    local _ToggleOnPhysics = ToggleOnPhysics
    ToggleOnPhysics = function(inst, ...)
    _ToggleOnPhysics(inst, ...)
		if inst:HasTag("woosegoose") and not inst:HasTag("playerghost") and not inst.components.rider:IsRiding() and not inst.components.inventory:IsHeavyLifting() and not GLOBAL.TheWorld:HasTag("cave") then
			if inst.components.moisture:GetMoisture() < TUNING.WOOSE_DROWNMAX then
                inst.Physics:ClearCollisionMask()
                inst.Physics:CollidesWith(GLOBAL.COLLISION.GROUND)
                inst.Physics:CollidesWith(GLOBAL.COLLISION.OBSTACLES)
                inst.Physics:CollidesWith(GLOBAL.COLLISION.SMALLOBSTACLES)
                inst.Physics:CollidesWith(GLOBAL.COLLISION.CHARACTERS)
                inst.Physics:CollidesWith(GLOBAL.COLLISION.GIANTS)
			end
		end
    end
------------------------------------------------------------------
	-- Apply Fast Heavy Walk Fix
	local ConfigureRunState
    local _run_start_onenter = inst.states["run_start"].onenter
    ConfigureRunState = UpvalueHacker.GetUpvalue(_run_start_onenter, "ConfigureRunState")
    UpvalueHacker.SetUpvalue(_run_start_onenter, function(...) ConfigureRunState(...) end, "ConfigureRunState")

    local _ConfigureRunState = ConfigureRunState
		ConfigureRunState = function(inst, ...)
		_ConfigureRunState(inst, ...)
			if inst:HasTag("fullhibearnation") then
				inst.sg.statemem.heavy_fast = inst.components.skilltreeupdater ~= nil and inst.components.skilltreeupdater:IsActivated("wearger_hibear3")
			end
		end
	-- On Wake Grogginess
	local SetSleeperAwakeState
    local _wakeup_onexit = inst.states["wakeup"].onexit
    SetSleeperAwakeState = UpvalueHacker.GetUpvalue(_wakeup_onexit, "SetSleeperAwakeState")
    UpvalueHacker.SetUpvalue(_wakeup_onexit, function(...) SetSleeperAwakeState(...) end, "SetSleeperAwakeState")

    local _SetSleeperAwakeState = SetSleeperAwakeState
		SetSleeperAwakeState = function(inst, ...)
		_SetSleeperAwakeState(inst, ...)
			if inst:HasTag("wearger") then
				if not (inst.sg:HasStateTag("sleeping") or inst.sg:HasStateTag("tent") or inst.sg:HasStateTag("bedroll")) then
					inst:PushEvent("wearger_onwakeup")
				end
			end
		end
	end

end)