local assets =
{
	Asset("ANIM", "anim/hat_wearger.zip"),
}
local binassets =
{
	Asset("ANIM", "anim/wearger_bin.zip"),
}
local bedassets =
{
	Asset("ANIM", "anim/swap_bedroll_wearger.zip"),
}
local rugassets =
{
	Asset("ANIM", "anim/wearger_rug.zip"),
}

local function OnEquip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_hat", "hat_wearger", "swap_hat")
    owner.AnimState:Show("HAT")
    owner.AnimState:Show("HAIR_HAT")
    owner.AnimState:Hide("HAIR_NOHAT")
    owner.AnimState:Hide("HAIR")

    if owner:HasTag("player") then
        owner.AnimState:Hide("HEAD")
        owner.AnimState:Show("HEAD_HAT")
        owner.AnimState:Show("HEAD_HAT_NOHELM")
		owner.AnimState:Hide("HEAD_HAT_HELM")
    end

    if owner.components.hunger ~= nil then
        owner.components.hunger.burnratemodifiers:SetModifier(inst, TUNING.ARMORBEARGER_SLOW_HUNGER)
    end

    if inst.components.fueled then
       inst.components.fueled:StartConsuming()        
    end
end

local function OnUnequip(inst, owner)
    owner.AnimState:ClearOverrideSymbol("swap_hat")
    owner.AnimState:Hide("HAT")
    owner.AnimState:Hide("HAIR_HAT")
    owner.AnimState:Show("HAIR_NOHAT")
    owner.AnimState:Show("HAIR")

    if owner:HasTag("player") then
        owner.AnimState:Show("HEAD")
        owner.AnimState:Hide("HEAD_HAT")
        owner.AnimState:Hide("HEAD_HAT_NOHELM")
		owner.AnimState:Hide("HEAD_HAT_HELM")
    end

    if owner.components.hunger ~= nil then
        owner.components.hunger.burnratemodifiers:RemoveModifier(inst)
    end

    if inst.components.fueled then
       inst.components.fueled:StopConsuming()        
    end
end

local function OnEquipToModel(inst, owner)
    if owner.components.hunger ~= nil then
        owner.components.hunger.burnratemodifiers:RemoveModifier(inst)
    end
	if inst.components.fueled ~= nil then
		inst.components.fueled:StopConsuming()
	end
end

local function onperish(inst)
    inst:Remove()
end

local function fn()
	local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

	inst.AnimState:SetBank("hat_wearger")
	inst.AnimState:SetBuild("hat_wearger")
	inst.AnimState:PlayAnimation("anim")

	local swap_data = { bank = "hat_wearger", anim = "anim" }
	MakeInventoryFloatable(inst)
    inst.components.floater:SetBankSwapOnFloat(false, nil, swap_data)

    inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = RUNTSINVIMAGE
    inst:AddComponent("tradable")

	inst:AddComponent("equippable")
	inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable:SetOnEquipToModel(OnEquipToModel)
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_MED

	inst:AddComponent("fueled")
	inst.components.fueled.fueltype = FUELTYPE.USAGE
	inst.components.fueled:InitializeFuelLevel(TUNING.BEARGERVEST_PERISHTIME)
	inst.components.fueled:SetDepletedFn(onperish)

    inst:AddComponent("insulator")
    inst.components.insulator:SetInsulation(TUNING.INSULATION_LARGE)

	MakeHauntableLaunch(inst)

	return inst
end

-- BIN ---------------------------------------------------------------------------------------------

local function OnOpen(inst)
    if inst:HasTag("burnt") then return end
    inst.components.inventoryitem:ChangeImageName("wearger_bin_open")

    inst.AnimState:PlayAnimation("open")

    inst.SoundEmitter:PlaySound("dontstarve/wilson/backpack_open")
end

local function OnClose(inst)
    if inst:HasTag("burnt") then return end
    inst.components.inventoryitem:ChangeImageName()

	if not inst.components.inventoryitem:IsHeld() then
        inst.AnimState:PlayAnimation("close")
        inst.AnimState:PushAnimation("closed", false)
    else
        inst.AnimState:PlayAnimation("closed", false)
    end

    if not inst:IsInLimbo() then
        inst.SoundEmitter:PlaySound("dontstarve/wilson/backpack_close")
    end
end

local function OnPutInInventory(inst)
    inst.components.container:Close()
    inst.AnimState:PlayAnimation("closed", false)
end

local function OnBurnt(inst)
    inst.components.container:DropEverything()
    DefaultBurntFn(inst)
end

local function OnSave(inst, data)
    if (inst.components.burnable ~= nil and inst.components.burnable:IsBurning()) or inst:HasTag("burnt") then
        data.burnt = true
    end
end

local function OnLoad(inst, data)
    if data ~= nil and data.burnt and inst.components.burnable ~= nil then
        inst.components.burnable.onburnt(inst)
    end
end

local floatable_swap_data = { bank = "beargerfur_sack", anim = "closed" }

local function binfn()
	local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()

    inst.MiniMapEntity:SetIcon("wearger_bin.tex")

    inst.AnimState:SetBank("wearger_bin")
    inst.AnimState:SetBuild("wearger_bin")
    inst.AnimState:PlayAnimation("closed")

    MakeInventoryPhysics(inst)

    MakeInventoryFloatable(inst, "small", 0.35, 1.45, nil, nil, floatable_swap_data)

    inst:AddTag("portablestorage")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
	--inst.OnEntityReplicated = function(inst) inst.replica.container:WidgetSetup("beargerfur_sack") end
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("container")
    inst.components.container:WidgetSetup("wearger_bin")
    inst.components.container.onopenfn = OnOpen
    inst.components.container.onclosefn = OnClose
    inst.components.container.skipclosesnd = true
    inst.components.container.skipopensnd = true
    inst.components.container.droponopen = true

    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = RUNTSINVIMAGE
    inst.components.inventoryitem:SetOnPutInInventoryFn(OnPutInInventory)

    MakeSmallBurnable(inst)
    MakeMediumPropagator(inst)

    inst.components.burnable:SetOnBurntFn(OnBurnt)

    inst.OnSave = OnSave
    inst.OnLoad = OnLoad

    MakeHauntableLaunchAndDropFirstItem(inst)

	return inst
end

-- BED ---------------------------------------------------------------------------------------------

local function onwake(inst, sleeper, nostatechange)
    if inst.components.finiteuses == nil or inst.components.finiteuses:GetUses() <= 0 then
        if inst.components.stackable ~= nil then
            inst.components.stackable:Get():Remove()
        else
            inst:Remove()
        end
    end
end

local function onuse_fur(inst, sleeper)
    sleeper.AnimState:OverrideSymbol("swap_bedroll", "swap_bedroll_wearger", "bedroll_wearger")
end

local function temperaturetick(inst, sleeper)
    if sleeper.components.temperature ~= nil then
        if inst.components.sleepingbag.sleep_temp_min ~= nil and sleeper.components.temperature:GetCurrent() < inst.components.sleepingbag.sleep_temp_min then
            sleeper.components.temperature:SetTemperature(sleeper.components.temperature:GetCurrent() + TUNING.SLEEP_TEMP_PER_TICK)
        elseif inst.components.sleepingbag.sleep_temp_max ~= nil and sleeper.components.temperature:GetCurrent() > inst.components.sleepingbag.sleep_temp_max then
            sleeper.components.temperature:SetTemperature(sleeper.components.temperature:GetCurrent() - TUNING.SLEEP_TEMP_PER_TICK)
        end
    end
end

local function bedfn()
	local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

	inst.AnimState:SetBank("swap_bedroll_wearger")
	inst.AnimState:SetBuild("swap_bedroll_wearger")
	inst.AnimState:PlayAnimation("idle")

    local swap_data = {bank = "swap_bedroll_wearger", anim = "idle"}
    MakeInventoryFloatable(inst, "small", 0.2, 0.95, nil, nil, swap_data)

    inst:AddTag("beargerfurbed")

    inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

    inst:AddComponent("inspectable")
    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = RUNTSINVIMAGE

    inst:AddComponent("fuel")
    inst.components.fuel.fuelvalue = TUNING.LARGE_FUEL

    inst:AddComponent("sleepingbag")
    inst.components.sleepingbag.onwake = onwake

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetConsumption(ACTIONS.SLEEPIN, 1)
    inst.components.finiteuses:SetMaxUses(TUNING.BEDROLL_FURRY_USES * 4)
    inst.components.finiteuses:SetUses(TUNING.BEDROLL_FURRY_USES * 4)

    inst.components.sleepingbag.sleep_temp_min = TUNING.SLEEP_TARGET_TEMP_BEDROLL_FURRY
    inst.components.sleepingbag.sleep_temp_max = TUNING.SLEEP_TARGET_TEMP_BEDROLL_FURRY_MAX * 1.3
	inst.components.sleepingbag.ambient_temp = TUNING.SLEEP_AMBIENT_TEMP_BEDROLL_FURRY * 1.3
    inst.components.sleepingbag:SetTemperatureTickFn(temperaturetick)
	inst.components.sleepingbag:SetSleepPhase("day") -- This currently doesn't work for a bedroll, BUT changing to day won't wake you up
	inst.components.sleepingbag.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK / 3 -- -0.33/second

    inst.onuse = onuse_fur

	MakeSmallBurnable(inst, TUNING.LARGE_BURNTIME)
    MakeSmallPropagator(inst) 
	MakeHauntableLaunch(inst)

	return inst
end

-- RUG ---------------------------------------------------------------------------------------------

local function rugfn()
	local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst:AddTag("heavy")
	inst:AddTag("NOBLOCK")
	inst:AddTag("DECOR")

	inst.AnimState:SetBank("wearger_rug")
	inst.AnimState:SetBuild("wearger_rug")
	inst.AnimState:PlayAnimation("idle")
    inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
    inst.AnimState:SetLayer(LAYER_BACKGROUND)
    inst.AnimState:SetSortOrder(3)

    inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

    inst:AddComponent("inspectable")
    inst:AddComponent("heater")
    inst.components.heater.heat = 15

    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem:SetSinks(true)
	inst.components.inventoryitem.atlasname = RUNTSINVIMAGE

	inst:AddComponent("fuel")
	inst.components.fuel.fuelvalue = TUNING.TINY_FUEL
	MakeMediumBurnable(inst, TUNING.MED_BURNTIME)
	MakeSmallPropagator(inst)

    inst:AddComponent("hauntable")
    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_TINY)

	return inst
end

return Prefab("wearger_hat", fn, assets),
	Prefab("wearger_bin", binfn, binassets),
	Prefab("wearger_bed", bedfn, bedassets),
	Prefab("wearger_rug", rugfn, rugassets)