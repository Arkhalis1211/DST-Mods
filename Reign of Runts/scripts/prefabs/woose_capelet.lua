local assets =
{
	Asset("ANIM", "anim/woose_capelet.zip"),
}

local function dozap(inst)
    SpawnPrefab("electrichitsparks").Transform:SetPosition(inst.Transform:GetWorldPosition())
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "woose_capelet_speed", 1.30) -- 30%
end

local ondaycomplete

local function discharge(inst)
    if inst.charged then
        inst:StopWatchingWorldState("cycles", ondaycomplete)
        inst.AnimState:ClearBloomEffectHandle()
        inst.charged = false
        inst.chargeleft = nil
		inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "woose_capelet_speed")
    end
end

local function ondaycomplete(inst)
    if inst.chargeleft > 1 then
        inst.chargeleft = inst.chargeleft - 1
    else
        discharge(inst)
    end
end

local function setcharged(inst, charges)
    if not inst.charged then
        inst.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
        inst:WatchWorldState("cycles", ondaycomplete)
        inst.charged = true
    end
    inst.chargeleft = math.max(inst.chargeleft or 0, charges)
    dozap(inst)
end

local function onlightning(inst)
    setcharged(inst, 1)
end

local function capelet_onlightning(inst, data)
	local equip = inst.components.inventory ~= nil and inst.components.inventory:GetEquippedItem(EQUIPSLOTS.BODY) or nil
	equip.components.fueled:DoDelta(-equip.components.fueled.maxfuel * 0.2) -- 20%
	onlightning(inst)
end

local function OnEquip(inst, owner)
    owner.AnimState:OverrideSymbol("backpack", "woose_capelet", "backpack")
    owner.AnimState:OverrideSymbol("swap_body", "woose_capelet", "swap_body")

	owner:AddTag("lightningrod")
	owner:ListenForEvent("lightningstrike", capelet_onlightning, owner)

    if inst.components.fueled then
       inst.components.fueled:StartConsuming()        
    end
end

local function OnUnequip(inst, owner)
    owner.AnimState:ClearOverrideSymbol("backpack")
    owner.AnimState:ClearOverrideSymbol("swap_body")

	owner:RemoveTag("lightningrod")
	discharge(owner)
	owner:RemoveEventCallback("lightningstrike", capelet_onlightning, owner)

    if inst.components.fueled then
       inst.components.fueled:StopConsuming()        
    end
end

local function OnEquipToModel(inst, owner)
	if inst.components.fueled ~= nil then
		inst.components.fueled:StopConsuming()
	end
end

local function capelet_perish(inst)
    if inst.components.equippable ~= nil and inst.components.equippable:IsEquipped() then
        local owner = inst.components.inventoryitem ~= nil and inst.components.inventoryitem.owner or nil
        if owner ~= nil then
            discharge(owner)
        end
    end
    inst:Remove()
end

local function fn()
	local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

	inst.AnimState:SetBank("woose_capelet")
	inst.AnimState:SetBuild("woose_capelet")
	inst.AnimState:PlayAnimation("anim")

    MakeInventoryFloatable(inst, "med", nil, 0.6)

    inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = RUNTSINVIMAGE

    inst:AddComponent("tradable")

	inst:AddComponent("equippable")
	inst.components.equippable.equipslot = EQUIPSLOTS.BODY
	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable:SetOnEquipToModel(OnEquipToModel)

	inst:AddComponent("fueled")
	inst.components.fueled.fueltype = FUELTYPE.USAGE
	inst.components.fueled:InitializeFuelLevel(TUNING.CARNIVAL_VEST_PERISHTIME)
	inst.components.fueled:SetDepletedFn(capelet_perish)

    inst:AddComponent("insulator")
    inst.components.insulator:SetInsulation(TUNING.INSULATION_MED)
    inst.components.insulator:SetSummer()

	MakeHauntableLaunch(inst)

	return inst
end

return Prefab("woose_capelet", fn, assets)