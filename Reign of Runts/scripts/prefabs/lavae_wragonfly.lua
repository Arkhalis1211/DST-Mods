local brain = require("brains/lavaewflybrain")

local assets =
{
    Asset("ANIM", "anim/lavae.zip"),
    Asset("SOUND", "sound/together.fsb"),
}

local prefabs =
{
    "lavae_move_fx",
    "lavae_cocoon",
}

SetSharedLootTable( 'lavae_pet_frozen',
{
    {'lavae_cocoon',1.0},
})

local WAKE_TO_FOLLOW_DISTANCE = 10
local SLEEP_NEAR_LEADER_DISTANCE = 7
local MIN_HEAT = 1--15
local MAX_HEAT = 50--100

local function RetargetFn(inst)
    --Find things attacking leader
    local leader = inst.components.follower:GetLeader()
    return leader ~= nil
        and FindEntity(
            leader,
            14,
            function(guy)
                return guy ~= inst
                    and (guy.components.combat:TargetIs(leader) or
                        guy.components.combat:TargetIs(inst))
                    and inst.components.combat:CanTarget(guy)
            end,
            { "_combat" },
            { "playerghost", "INLIMBO" }
        )
        or nil
end

local function KeepTargetFn(inst, target)
	return inst.components.combat:CanTarget(target)
		and inst.components.follower:IsNearLeader(14)
		and target.components.minigame_participator == nil
        and (not target:HasTag("player") or TheNet:GetPVPEnabled())
end

local function OnAttackHit(attacker, data)
	if data.target ~= nil then
		local leader = attacker.components.follower:GetLeader()
		if leader ~= nil and leader.components.skilltreeupdater:IsActivated("wragonfly_lavaehunger_2") then
			attacker.components.hunger:DoDelta(TUNING.WFLY_LAVAE_DAMAGE / 2)
		end
	end
end

local function OnAttacked(inst, data)
    if data.attacker ~= nil then
		if data.attacker.components.petleash and data.attacker.components.petleash:IsPet(inst) then
			inst.components.combat:SetTarget(nil)
		elseif data.attacker:HasTag("player") and not TheNet:GetPVPEnabled() then
			inst.components.combat:SetTarget(nil)
		elseif data.attacker.components.combat ~= nil then
			inst.components.combat:SuggestTarget(data.attacker)
		end
    end
end

local POP_MUST_TAGS = { "_combat", "_health" }
local POP_CANT_TAGS = { "INLIMBO", "player", "companion", "notarget", "noattack"}
local function OnDeath(inst)
	local leader = inst.components.follower:GetLeader()
	if leader ~= nil and leader.components.skilltreeupdater:IsActivated("wragonfly_lavaedeath_1") then
		if inst.components.health:IsDead() then
        local x, y, z = inst.Transform:GetWorldPosition()
			for i, v in ipairs(TheSim:FindEntities(x, y, z, 3, POP_MUST_TAGS, POP_CANT_TAGS)) do
				if v and v:IsValid() and v.components.combat ~= nil and v.components.health ~= nil and not v.components.health:IsDead() then
					v.components.combat:GetAttacked(inst, TUNING.WFLY_LAVAE_DAMAGE * 4)
					local firefx = SpawnPrefab("deer_fire_burst")
					firefx.Transform:SetPosition(inst.Transform:GetWorldPosition())
					inst.SoundEmitter:PlaySound("dontstarve/common/balloon_pop")
				end
			end
		end
	end

	if leader ~= nil and leader.components.skilltreeupdater:IsActivated("wragonfly_allegiance_lunar") then
        if not inst.sg:HasStateTag("thawing") or inst.sg:HasStateTag("frozen") or inst.sg:HasStateTag("thaw_breaking") then
			if inst.components.lootdropper then
				inst.components.lootdropper:SetChanceLootTable(inst.FrozenLootTable or 'lavae_frozen')
				inst.components.lootdropper:DropLoot(Vector3(inst.Transform:GetWorldPosition()))
				inst.SoundEmitter:PlaySound("dontstarve/creatures/together/lavae/shatter")
			end
		end
	end
end

local function ShouldWakeUp(inst)
    return DefaultWakeTest(inst)
    or not inst.components.follower:IsNearLeader(WAKE_TO_FOLLOW_DISTANCE)
    or inst.components.hunger:GetPercent() <= 0.25
end

local function ShouldSleep(inst)
    return DefaultSleepTest(inst)
    and not TheWorld.state.isfullmoon
    and inst.components.follower:IsNearLeader(SLEEP_NEAR_LEADER_DISTANCE)
    and inst.components.hunger:GetPercent() > 0.25
end

local function OnNewTargetFn(inst, data)
    if inst.components.sleeper:IsAsleep() then
        inst.components.sleeper:WakeUp()
    end
end

local function OnEat(inst, food)
	if food and food.components.edible.foodtype == FOODTYPE.BURNT then
		local leader = inst.components.follower:GetLeader()
		if leader ~= nil and leader.components.skilltreeupdater:IsActivated("wragonfly_lavaehunger_1") then
			inst.components.hunger:DoDelta(30) -- 50 Total
		end
		if leader ~= nil and leader.components.skilltreeupdater:IsActivated("wragonfly_lavaehealth_1") then
			inst.components.health:DoDelta(50) -- 70 Total
		end
	end
end

local function ShouldAcceptItem(inst, item)
    --Can I eat it?
    return not (inst.components.sleeper:IsAsleep() or
                inst.components.inventory:IsFull())
        and item.components.edible ~= nil
        and inst.components.eater:CanEat(item)
end

local function OnHungerDelta(inst, data)
    --Adjust heat and light put off.
    inst.components.heater.heat = Lerp(MIN_HEAT, MAX_HEAT, data.newpercent)
    inst.Light:SetRadius(Lerp(.33, 1, data.newpercent))
    inst.Light:SetIntensity(Lerp(.25, .75, data.newpercent))

	if data.newpercent <= 0 then
		inst.components.health:StopRegen()
	end
end

local function CustomCombatDamage(inst, target, weapon, multiplier, mount)
	local leader = inst.components.follower:GetLeader()
	if leader and leader.components.skilltreeupdater:IsActivated("wragonfly_lavae_hot") then
		if target.components.burnable and target.components.burnable:IsBurning() then
			return 1.3 -- +30% 65 Damage
		end
	end
end
-- Called from lavaewflybrain
local function onLeaderChanged(inst)
	local leader = inst.components.follower:GetLeader()

	if leader and leader.components.skilltreeupdater:IsActivated("wragonfly_lavaehunger_1") then
        inst.components.hunger:SetRate(TUNING.WOBY_SMALL_HUNGER_RATE)
    --else
    --    inst.components.hunger:SetRate(TUNING.LAVAE_HUNGER_RATE)
    end

	if leader and leader.components.skilltreeupdater:IsActivated("wragonfly_lavae_rage_1") and leader.enraged then
        inst.components.health:SetAbsorptionAmount(.25) --	25% Less Damage
    else
        inst.components.health:SetAbsorptionAmount(0)
    end

	if leader and leader.components.skilltreeupdater:IsActivated("wragonfly_lavae_rage_2") and leader.enraged then
        inst.components.combat:SetAttackPeriod(TUNING.LAVAE_ATTACK_PERIOD / 4) -- 1
		inst.components.locomotor.walkspeed = 9.31 -- +33%
    else
        inst.components.combat:SetAttackPeriod(TUNING.LAVAE_ATTACK_PERIOD)
		inst.components.locomotor.walkspeed = 7
    end

    if leader and leader.components.skilltreeupdater:IsActivated("wragonfly_lavaehealth_2") then
		if not inst.components.hunger:IsStarving() then
			inst.components.health:StartRegen(1, 1) -- 1 Health, 1 Second
		else
			inst.components.health:StopRegen()
		end
    end

    if leader and ( leader.components.skilltreeupdater:IsActivated("wragonfly_allegiance_lunar") or leader.components.skilltreeupdater:IsActivated("wragonfly_allegiance_shadow") )  then
        if leader.components.skilltreeupdater:IsActivated("wragonfly_allegiance_lunar") then
            inst:AddTag("lunar_aligned")
            local damagetyperesist = inst.components.damagetyperesist
            if damagetyperesist then
                damagetyperesist:AddResist("lunar_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_LUNAR_RESIST, "allegiance_lunar")
            end
            local damagetypebonus = inst.components.damagetypebonus
            if damagetypebonus then
                damagetypebonus:AddBonus("shadow_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_VS_SHADOW_BONUS, "allegiance_lunar")
            end
        end
        if leader.components.skilltreeupdater:IsActivated("wragonfly_allegiance_shadow") then
            inst:AddTag("shadow_aligned")
            local damagetyperesist = inst.components.damagetyperesist
            if damagetyperesist then
                damagetyperesist:AddResist("shadow_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_SHADOW_RESIST, "allegiance_shadow")
            end
            local damagetypebonus = inst.components.damagetypebonus
            if damagetypebonus then
                damagetypebonus:AddBonus("lunar_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_VS_LUNAR_BONUS, "allegiance_shadow")                        
            end
        end  
    end
end

local function OnHaunt(inst, haunter)
    if math.random() <= TUNING.HAUNT_CHANCE_ALWAYS then
        inst.components.hauntable.panic = true
        inst.components.hauntable.panictimer = TUNING.HAUNT_PANIC_TIME_SMALL
        inst.components.hauntable.hauntvalue = TUNING.HAUNT_SMALL
        return true
    end
    return false
end

local function describe(inst)
    local hunger = inst.components.hunger:GetPercent()
    if hunger <= 0.25 then
        return "STARVING"
    elseif hunger <= 0.5 then
        return "HUNGRY"
    elseif hunger <= 0.75 then
        return "CONTENT"
    else
        return "GENERIC"
    end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddDynamicShadow()
    inst.entity:AddLight()
    inst.entity:AddNetwork()
    inst.entity:AddLightWatcher()

    inst.DynamicShadow:SetSize(2, .8)
    inst.Transform:SetSixFaced()
    MakeCharacterPhysics(inst, 10, .3)

    inst.AnimState:SetBank("lavae")
    inst.AnimState:SetBuild("lavae")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("companion")
    inst:AddTag("noauradamage")
    inst:AddTag("character")
    inst:AddTag("scarytoprey")
    inst:AddTag("notraptrigger")
    inst:AddTag("smallcreature")
	inst:AddTag("NOBLOCK")
	inst:AddTag("wragonflyminion")

    --cooker (from cooker component) added to pristine state for optimization
    inst:AddTag("cooker")

    --trader (from trader component) added to pristine state for optimization
    inst:AddTag("trader")

    inst.Light:SetRadius(.5)
    inst.Light:SetFalloff(0.5)
    inst.Light:SetIntensity(0.5)
    inst.Light:SetColour(235/255, 121/255, 12/255)
    inst.Light:Enable(true)

    inst.Transform:SetScale(0.6, 0.6, 0.6)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("health")
    inst:AddComponent("combat")
    inst:AddComponent("inspectable")
    inst:AddComponent("locomotor")
    inst:AddComponent("follower")
    inst:AddComponent("cooker")
    inst:AddComponent("heater")
    inst:AddComponent("knownlocations")
    inst:AddComponent("sleeper")
	inst.components.sleeper.watchlight = true
    inst:AddComponent("trader")
    inst:AddComponent("eater")
    inst:AddComponent("inventory")
    inst:AddComponent("hunger")
    inst:AddComponent("lootdropper")
	inst:AddComponent("named")
    inst:AddComponent("drownable")

    inst:AddComponent("damagetyperesist")
    inst:AddComponent("damagetypebonus")

    inst:SetStateGraph("SGlavae")
    inst:SetBrain(brain)

	inst.components.combat:SetDefaultDamage(TUNING.WFLY_LAVAE_DAMAGE)--50
    inst.components.combat:SetRange(TUNING.LAVAE_ATTACK_RANGE, TUNING.LAVAE_HIT_RANGE)
    inst.components.combat:SetAttackPeriod(TUNING.LAVAE_ATTACK_PERIOD)
    inst.components.combat:SetKeepTargetFunction(KeepTargetFn)
    inst.components.combat:SetRetargetFunction(2, RetargetFn)
    inst.components.combat.customdamagemultfn = CustomCombatDamage
	
	inst.components.follower:KeepLeaderOnAttacked()
    inst.components.follower.keepdeadleader = true
	inst.components.follower.keepleaderduringminigame = true

	inst.components.inspectable.nameoverride = "LAVAE_PET" --Use common inspect strings, but unique display names
    inst.components.inspectable.getstatus = describe

    inst.components.hunger:SetRate(TUNING.LAVAE_HUNGER_RATE)
	inst.components.hunger:SetKillRate(TUNING.WFLY_LAVAE_HEALTH / 100)
	inst.components.eater:SetOnEatFn(OnEat)

    inst.components.inventory.maxslots = 2

    inst.components.eater:SetDiet({ FOODTYPE.BURNT })

    inst.components.trader:SetAcceptTest(ShouldAcceptItem)
    inst.components.trader.deleteitemonaccept = false

    inst.components.heater.heat = MAX_HEAT

    inst.components.sleeper:SetResistance(3)
    inst.components.sleeper.testperiod = GetRandomWithVariance(6, 2)
    inst.components.sleeper:SetSleepTest(ShouldSleep)
    inst.components.sleeper:SetWakeTest(ShouldWakeUp)
	inst:ListenForEvent("newcombattarget", OnNewTargetFn)

    inst.components.health:SetMaxHealth(TUNING.WFLY_LAVAE_HEALTH)
    inst.components.health.fire_damage_scale = 0

    inst.components.locomotor.walkspeed = 7

	inst.NormalLootTable = ""
	inst.FrozenLootTable = "lavae_pet_frozen"

	inst.onLeaderChanged = onLeaderChanged

    inst:ListenForEvent("hungerdelta", OnHungerDelta)

	inst:ListenForEvent("onhitother", OnAttackHit)

	inst:ListenForEvent("attacked", OnAttacked)

	inst:ListenForEvent("death", OnDeath)

    MakeLargeFreezableCharacter(inst)
    AddHauntableCustomReaction(inst, OnHaunt, false, false, true)

    return inst
end

return Prefab("lavae_wragonfly", fn, assets, prefabs)