local prefabs =
{
	"moose_nest_fx_idle",
    "moose_nest_fx_hit",
	"electricchargedfx",
}

local function OnTick(inst, target)
    if target.components.health ~= nil and
        not target.components.health:IsDead() and
        not target:HasTag("playerghost") then

		if target.components.hunger ~= nil and target:HasTag("woosegoose") then
			target.components.hunger:DoDelta(-TUNING.WINTERSFEASTBUFF.HUNGER_GAIN, true) --true = overtime (75 hunger per day)
		end
	else
		inst.components.debuff:Stop()
	end
end

local function OnFxTick(inst, target)
	local fx = SpawnPrefab("moose_nest_fx_hit")
	fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
	fx.Transform:SetScale(.7, .7, .7)
end

local function OnAttached(inst, target)
    inst.entity:SetParent(target.entity)
    inst.Transform:SetPosition(0, 0, 0) --in case of loading
	target.defbuffed = true

    inst.task = inst:DoPeriodicTask(3, OnTick, nil, target)
	inst.plfxtask = inst:DoTaskInTime(5 + math.random(), OnFxTick, inst, target)

    inst:ListenForEvent("death", function()
        inst.components.debuff:Stop()
    end, target)
	-- Sanity Regen
	if target.components.sanity ~= nil then
		if target.components.skilltreeupdater and target.components.skilltreeupdater:IsActivated("woose_nest_1") then
			target.components.sanity.externalmodifiers:SetModifier(inst, TUNING.WINTERSFEASTBUFF.SANITY_GAIN*1.5)
		else
			target.components.sanity.externalmodifiers:SetModifier(inst, TUNING.WINTERSFEASTBUFF.SANITY_GAIN)
		end
	end
	-- Damage Absorb
	if target.components.health ~= nil then
        target.components.health.externalabsorbmodifiers:SetModifier(inst, TUNING.WOOSE_NEST_BUFF) --25%
    end
	-- Gorge
	if TheNet:GetServerGameMode() == "quagmire" then
		if target.components.locomotor ~= nil then
		target.components.locomotor:SetExternalSpeedMultiplier(target, "quagmire_nest_speedup", 1.06) --10%
        end
	end
end

local function OnTimerDone(inst, data)
    if data.name == "buffover" then
        inst.components.debuff:Stop()
    end
end

local function OnExtended(inst, target)
    inst.components.timer:StopTimer("buffover")
    inst.components.timer:StartTimer("buffover", inst.duration)
end

local function OnDetached(inst, target)
	if target.defbuffed then
	    target.defbuffed = nil
	end

    if target.components.sanity ~= nil then
        target.components.sanity.externalmodifiers:RemoveModifier(inst)
	end

    if target.components.health ~= nil then
        target.components.health.externalabsorbmodifiers:RemoveModifier(inst)
    end

	if TheNet:GetServerGameMode() == "quagmire" then
		if target.components.locomotor ~= nil then
			target.components.locomotor:RemoveExternalSpeedMultiplier(target, "quagmire_nest_speedup")
		end
	end

    inst:Remove()
end

local function fn()
    local inst = CreateEntity()

    if not TheWorld.ismastersim then
        --Not meant for client!
        inst:DoTaskInTime(0, inst.Remove)
        return inst
    end

    inst.entity:AddTransform()
	inst.entity:AddSoundEmitter()

    --[[Non-networked entity]]
    inst.entity:Hide()
    inst.persists = false

    inst:AddTag("CLASSIFIED")

    inst:AddComponent("debuff")
    inst.components.debuff:SetAttachedFn(OnAttached)
    inst.components.debuff:SetDetachedFn(OnDetached)
	inst.components.debuff:SetExtendedFn(OnExtended)
    inst.components.debuff.keepondespawn = true

    inst.duration = 10

    inst:AddComponent("timer")
    inst.components.timer:StartTimer("buffover", inst.duration)
    inst:ListenForEvent("timerdone", OnTimerDone)

    return inst
end
-----------------------------------------------------------------------------------------------
local function OnKillBuff_Skill(inst)
    inst.components.debuff:Stop()
end

local function OnAttached_Skill(inst, target)
    inst.entity:SetParent(target.entity)
    inst.Transform:SetPosition(0, 0, 0) --in case of loading
    inst:ListenForEvent("death", function()
        inst.components.debuff:Stop()
    end, target)

    inst.bufftask = inst:DoTaskInTime(TUNING.COACH_TIME_BUFF_LASTS, OnKillBuff_Skill) -- 10

    if target ~= nil and target:IsValid() and target.components.combat ~= nil then
        local mult = TUNING.WOLFGANG_COACH_BUFF -- 2
        target.components.combat.externaldamagemultipliers:SetModifier(inst, mult)
        local fx = SpawnPrefab("electricchargedfx")
        inst.bufffx = fx
        fx.entity:SetParent(target.entity)
    end
end

local function OnDetached_Skill(inst, target)    
    if target ~= nil and target:IsValid() and target.components.combat ~= nil then
        target.components.combat.externaldamagemultipliers:RemoveModifier(inst)
    end
    if inst.bufffx and inst.bufffx:IsValid() then
        inst.bufffx:Remove()
    end
    inst.bufffx = nil
    inst:Remove()
end

local function OnExtendedBuff_Skill(inst)
    if inst.bufftask ~= nil then
        inst.bufftask:Cancel()
        inst.bufftask = inst:DoTaskInTime(TUNING.COACH_TIME_BUFF_LASTS, OnKillBuff_Skill) -- 10
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

    inst.persists = false

    inst:AddTag("CLASSIFIED")

    inst:AddComponent("debuff")
    inst.components.debuff:SetAttachedFn(OnAttached_Skill)
    inst.components.debuff:SetDetachedFn(OnDetached_Skill)
    inst.components.debuff:SetExtendedFn(OnExtendedBuff_Skill)
    inst.components.debuff.keepondespawn = true

    return inst
end

return Prefab("nestbuff", fn, nil, prefabs),
		Prefab("nest_follower_buff", bufffn, nil, prefabs)