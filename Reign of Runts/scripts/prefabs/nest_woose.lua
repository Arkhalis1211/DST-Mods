require "prefabutil"

local assets =
{
    Asset("ANIM", "anim/woose_nest.zip"),
}

local prefabs =
{
    "nest_woose",
	"moose_nest_fx_idle",
    "moose_nest_fx_hit",
    "electricchargedfx",
}

local assets_fx =
{
    Asset("ANIM", "anim/horrorfuel.zip"),
}
----
local function dozap(inst)
    if inst.zaptask ~= nil then
        inst.zaptask:Cancel()
    end

    SpawnPrefab("electricchargedfx").Transform:SetPosition(inst.Transform:GetWorldPosition())

    inst.zaptask = inst:DoTaskInTime(math.random(10, 60), dozap)
end

local ondaycomplete

local function discharge(inst)
    if inst.charged then
        inst:StopWatchingWorldState("cycles", ondaycomplete)
        inst.AnimState:ClearBloomEffectHandle()
        inst.charged = false
        inst.chargeleft = nil
        inst.Light:Enable(false)
        if inst.zaptask ~= nil then
            inst.zaptask:Cancel()
            inst.zaptask = nil
        end
    end
end

local function ondaycomplete(inst)
    dozap(inst)
    if inst.chargeleft > 1 then
        inst.chargeleft = inst.chargeleft - 1
    else
        discharge(inst)
    end
end

local function setcharged(inst, charges)
    if not inst.charged then
        inst.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
        inst.Light:Enable(true)
        inst:WatchWorldState("cycles", ondaycomplete)
        inst.charged = true
    end
    inst.chargeleft = math.max(inst.chargeleft or 0, charges)
    dozap(inst)
end

local function onlightning(inst)
    setcharged(inst, 2)
end
----

local function ApplySkillBonuses(inst)
	if inst._shocker:value() then
		inst:AddTag("lightningrod")
	else
		inst:RemoveTag("lightningrod")
	end

	if inst._charger:value() then
		inst:AddTag("chargeablenest")
	else
		inst:RemoveTag("chargeablenest")
	end

	if inst._follower:value() then
		inst:AddTag("followernest")
	else
		inst:RemoveTag("followernest")
	end
end

local function ConfigureSkillTreeUpgrades(inst, builder)
	local skilltreeupdater = builder and builder.components.skilltreeupdater or nil

	local shocker = skilltreeupdater ~= nil and skilltreeupdater:IsActivated("woose_nest_lightning")
	local charger = skilltreeupdater ~= nil and skilltreeupdater:IsActivated("woose_nest_charger")
	local follower = skilltreeupdater ~= nil and skilltreeupdater:IsActivated("woose_nest_follower")

	local dirty = inst._shocker:value() ~= shocker or inst._charger:value() ~= charger or inst._follower:value() ~= follower

	inst._shocker:set(shocker)
	inst._charger:set(charger)
	inst._follower:set(follower)
	inst._motherid = builder and builder:HasTag("woosegoose") and builder.userid or nil

	return dirty
end

local function DoBuiltOrDeployed(inst, doer, fastforward, sound)
	ConfigureSkillTreeUpgrades(inst, doer)
	ApplySkillBonuses(inst)
end

local function ondeploy(inst, pt, deployer)
	local nest = SpawnPrefab("nest_woose")
    if nest ~= nil then
        nest.Physics:SetCollides(false)
        nest.Physics:Teleport(pt.x, 0, pt.z)
        nest.Physics:SetCollides(true)
		SpawnPrefab("electricchargedfx").Transform:SetPosition(nest.Transform:GetWorldPosition())
        nest.SoundEmitter:PlaySound("dontstarve/common/plant")
        inst:Remove()
		DoBuiltOrDeployed(nest, deployer) -- Skill Tree
        PreventCharacterCollisionsWithPlacedObjects(nest)
    end
end

local function fn()
    local inst = CreateEntity()
	inst.nameoverride = "nesting_woose_item"

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("woose_nest")
    inst.AnimState:SetBuild("woose_nest")
    inst.AnimState:PlayAnimation("flat")

    inst.pickupsound = "vegetation_grassy"

    inst:AddTag("cattoy")

    MakeInventoryFloatable(inst, "med", 0.05, {0.85, 0.6, 0.85})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("fuel")
    inst.components.fuel.fuelvalue = TUNING.LARGE_FUEL

    MakeSmallBurnable(inst, TUNING.LARGE_BURNTIME)
    MakeSmallPropagator(inst)
    MakeHauntableLaunchAndIgnite(inst)

    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "nest_woose_inv"
	inst.components.inventoryitem.atlasname = RUNTSINVIMAGE

    inst:AddComponent("tradable")

    inst:AddComponent("deployable")
    --inst.components.deployable:SetDeploySpacing(DEPLOYSPACING.NONE)
    inst.components.deployable.ondeploy = ondeploy
	inst.components.deployable.restrictedtag = "woosegoose"

    return inst
end
-----------------------------------------------------------------------------------------------
local function SetFoodSymbol(inst, foodname, override_build)
	if foodname == nil then
		inst.AnimState:ClearOverrideSymbol("swap_egg")
	else
		if foodname == "purebrilliance" then
			inst.fx1 = SpawnPrefab("purebrilliance_symbol_fx")
			inst.fx1.entity:SetParent(inst.entity)
			inst.fx1.Follower:FollowSymbol(inst.GUID, "swap_egg", 0, 30, 0, true)
		elseif foodname == "horrorfuel" then
			inst.fx2 = SpawnPrefab("nest_horrorfuel_symbol_fx")
			inst.fx2.entity:SetParent(inst.entity)
			inst.fx2.Follower:FollowSymbol(inst.GUID, "swap_egg", 0, 60, 0, true)
		else
			inst.AnimState:OverrideSymbol("swap_egg", override_build or "tallbird_egg", "egg01") --foodname (No current support for other egg builds)
		end
	end
end

local function DropFoodFromShelf(inst)
	local item = inst.components.shelf.itemonshelf

	if item ~= nil then
		local cantakeitem = inst.components.shelf.cantakeitem
		inst.components.shelf.cantakeitem = true
		inst.components.shelf:TakeItem(nil) -- taker = nil means item isn't given to an inventory
		inst.components.shelf.cantakeitem = cantakeitem

		return item
	end
end

local function RemoveNest(inst)
    if inst.components.burnable ~= nil and inst.components.burnable:IsBurning() then
        inst.components.burnable:Extinguish()
    end
	if inst.DoPlayerAura ~= nil then
	    inst.DoPlayerAura:Cancel()
	end
	if inst.DoPlayerEggAura ~= nil then
	    inst.DoPlayerEggAura:Cancel()
	end
	if inst.fxtask ~= nil then
	    inst.fxtask:Cancel()
		inst.fxtask = nil
	end

	local item = DropFoodFromShelf(inst)
	if item ~= nil then
		item.Transform:SetPosition(inst.Transform:GetWorldPosition())
	end

    inst.components.lootdropper:DropLoot()

	if inst.components.fueled:GetCurrentSection() > 2 then
		inst.components.lootdropper:SpawnLootPrefab("nesting_woose", nil)
		inst:Remove()
	else
	    local fx = SpawnPrefab("collapse_small")
		fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
		fx:SetMaterial("wood")
		inst:Remove()
	end
end

local function ontakefuel(inst)
    inst.SoundEmitter:PlaySound("dontstarve/wilson/harvest_sticks")
end

local function OnFuelSectionChange(new, old, inst)
    if inst._fuellevel ~= new then
        inst._fuellevel = new
    end
end

local function OnFxTick(inst, target)
    if inst.fxtask ~= nil then
        inst.fxtask:Cancel()
        inst.fxtask = nil
    end
	local fx = SpawnPrefab("moose_nest_fx_idle") -- FX for the Nest
	fx.entity:SetParent(inst.entity)
	fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
	fx.Transform:SetScale(.33, .33, .33)
end

local function DoEggBuff(inst, target)
    if target.defbuffed then
	    return
	end

    if target.components.debuffable ~= nil and target.components.debuffable:IsEnabled() and
            not (target.components.health ~= nil and target.components.health:IsDead()) and
            not target:HasTag("playerghost") and
            not target.defbuffed then
			target.components.debuffable:AddDebuff("nestbuff", "nestbuff")
		if inst.charged and inst:HasTag("chargeablenest") and not target.components.debuffable:HasDebuff("buff_electricattack") then
			target.components.debuffable:AddDebuff("buff_electricattack", "buff_electricattack")
		end
	end
end

local function DoFollowerEggBuff(inst, target)
	if inst:HasTag("followernest") then
		if not (target.components.health ~= nil and target.components.health:IsDead()) and
            not target:HasDebuff("nest_follower_buff") then
				target:AddDebuff("nest_follower_buff", "nest_follower_buff")
				if target.components.follower ~= nil and (target:HasTag("pig") or target:HasTag("merm") or target:HasTag("rocky")) then
					target.components.follower:AddLoyaltyTime(10)
				end
		end
	end
end

local function CanAddFuelItem(inst, item, doer)
	return (item and item.prefab == "twigs" or item.prefab == "cutgrass" or item.prefab == "log" or item.prefab == "furtuft" or item:HasTag("birdfeather"))
end

local function ItemTradeTest(inst, item, giver)
	if item ~= nil and item.prefab == "tallbirdegg" or item.prefab == "tallbirdegg_cracked" then
		if giver:HasTag("woosegoose") then
			return true
		else
			return false, "NOTMOTHER"
		end
	elseif (item and item.prefab == "twigs" or item.prefab == "cutgrass" or item.prefab == "log" or item.prefab == "furtuft") then
		inst.components.fueled:DoDelta(TUNING.MED_FUEL)
		ontakefuel(inst)
		return true
	elseif (item and item:HasTag("birdfeather")) then
		inst.components.fueled:DoDelta(TUNING.LARGE_FUEL*2)
		ontakefuel(inst)
		SpawnPrefab("weregoose_feathers"..tostring(math.random(3))).entity:SetParent(inst.entity)
		return true
	elseif (item and item.prefab == "purebrilliance") then
		if giver:HasTag("woosegoose") and giver:HasTag("player_lunar_aligned") and not giver:HasTag("player_shadow_aligned") then
			return true
		else
			return false, "NOTMOTHER"
		end
	elseif (item and item.prefab == "horrorfuel") then
		if giver:HasTag("woosegoose") and giver:HasTag("player_shadow_aligned") and not giver:HasTag("player_lunar_aligned") then
			return true
		else
			return false, "NOTMOTHER"
		end
	else
		return false, "NOTMOTHER"
	end
end

local function EggTask(inst, guy)
	--[[
	local x, y, z = inst.Transform:GetWorldPosition()
    local players = FindPlayersInRange(x, y, z, 25, true)
    for i,player in ipairs(players)do
		if player:IsValid() and not player.components.health:IsDead() then
            DoEggBuff(inst, player)
        end
    end--]]
	local INSPIRE_DIST = 25
	local fightbuff = {}
    local sanitybuff= {}

        for k,v in pairs(AllPlayers) do
            if v:GetDistanceSqToInst(inst) < INSPIRE_DIST*INSPIRE_DIST  and v ~= inst then
                table.insert(sanitybuff,v)
                if v.components.leader then
                    for follower, i in pairs(v.components.leader.followers)do
                        if follower and follower:GetDistanceSqToInst(inst) < INSPIRE_DIST*INSPIRE_DIST then
                            table.insert(fightbuff,follower)
                        end
                    end
                end            
            end
        end

        for i,v in ipairs(sanitybuff) do
			DoEggBuff(inst, v)
        end

        for i,v in ipairs(fightbuff) do
            v:DoTaskInTime(0.2+(0.1*i),function()
				DoFollowerEggBuff(inst, v)
            end)
        end
end

local IGNORE_TAGS = {"player", "notarget", "invisible", "INLIMBO"}
local ONE_OF_TAGS_SHDW = {"shadow_aligned"}
local function EggTask_Affinity_Lunar(inst)
	local targets = {}
	local x, y, z = inst.Transform:GetWorldPosition()
	local shadow_targets = TheSim:FindEntities(x, y, z, 25, nil, IGNORE_TAGS, ONE_OF_TAGS_SHDW)

	for k, v in pairs(shadow_targets) do
		if v.entity:IsVisible() then
			table.insert(targets, v)
		end
	end

	if #targets > 0 then
		for i, v in ipairs(targets) do
			if (v.components.health == nil or not v.components.health:IsDead()) then
				v.components.health.externalabsorbmodifiers:SetModifier(inst, -0.5)
			end
		end
	end
end
-- It's redundant to just have it be copies of the same function but It'll do for now
local ONE_OF_TAGS_LNR = {"lunar_aligned"}
local function EggTask_Affinity_Shadow(inst)
	local targets = {}
	local x, y, z = inst.Transform:GetWorldPosition()
	local lunar_targets = TheSim:FindEntities(x, y, z, 25, nil, IGNORE_TAGS, ONE_OF_TAGS_LNR)

	for k, v in pairs(lunar_targets) do
		if v.entity:IsVisible() then
			table.insert(targets, v)
		end
	end

	if #targets > 0 then
		for i, v in ipairs(targets) do
			if (v.components.health == nil or not v.components.health:IsDead()) then
				v.components.health.externalabsorbmodifiers:SetModifier(inst, -0.5)
			end
		end
	end
end

local function OnEggGiven(inst, giver, item)
    if item ~= nil then
		inst.components.shelf:PutItemOnShelf(item)
	end
end

local function OnGetShelfItem(inst, item)
	if item ~= nil then
		if item.prefab == "tallbirdegg" or item.prefab == "tallbirdegg_cracked" or item.prefab == "purebrilliance" or item.prefab == "horrorfuel" then
			inst.components.trader:Disable()

			SetFoodSymbol(inst, item.prefab)

			inst.components.shelf.cantakeitem = true

			inst.SoundEmitter:PlaySound("dontstarve/wilson/harvest_berries")

			inst.AnimState:PlayAnimation("squish", true)

			inst:AddTag("nesting_egged")

			if inst.components.sittable ~= nil then
				inst.components.sittable:SetOccupier(item) -- Literally
			end

			inst.DoPlayerEggAura = inst:DoPeriodicTask(2, EggTask)
			if not inst.fxtask then
				inst.fxtask = inst:DoPeriodicTask(20 + math.random(10, 40)*1.75, OnFxTick)
			end

			if item.prefab == "purebrilliance" then
				inst.AnimState:SetSymbolLightOverride("swap_egg", 0.1)
				inst.DoPlayerEggAffinityAura = inst:DoPeriodicTask(3, EggTask_Affinity_Lunar)
			elseif item.prefab == "horrorfuel" then
				inst.AnimState:SetSymbolLightOverride("swap_egg", 0.1)
				inst.DoPlayerEggAffinityAura = inst:DoPeriodicTask(3, EggTask_Affinity_Shadow)
			end
		else -- Let's just pretend it was added as fuel here
			local item = DropFoodFromShelf(inst)
			if item ~= nil then
				item:Remove()
			end

			inst.components.trader:Enable()

			inst.components.shelf.cantakeitem = false
		end
	end
end

local function OnLoseShelfItem(inst, taker, item)
    inst.components.trader:Enable()
    inst.AnimState:PlayAnimation("nest")
	inst.AnimState:ClearOverrideSymbol("swap_egg")
	inst:RemoveTag("nesting_egged")

    if inst.fx1 then
		inst.fx1:Remove()
    end

    if inst.fx2 then
		inst.fx2:Remove()
    end

	if inst.components.sittable ~= nil then
		inst.components.sittable:SetOccupier(nil)
	end

	if inst.DoPlayerEggAura ~= nil then
	    inst.DoPlayerEggAura:Cancel()
	end
end

local function getstatus(inst)
    return (inst.components.fueled:GetCurrentSection() <= 2 and "LOW")
        or "GENERAL"
end
----
local function OnSave(inst, data)
    if inst.charged then
        data.charged = inst.charged
        data.chargeleft = inst.chargeleft
    end
	--skilltree
	data.shocker = inst._shocker:value() or nil
	data.charger = inst._charger:value() or nil
	data.follower = inst._follower:value() or nil
	data.motherid = inst._motherid
end

local function OnLoadPostPass(inst, ents, data)
	local item = inst.components.inventory:GetItemInSlot(1)
	if item ~= nil then
		inst.components.shelf:PutItemOnShelf(item)
	end

	if inst.components.inventory:FindItem(function(item) if item.prefab == "tallbirdegg" or item.prefab == "tallbirdegg_cracked" then return true end end) then
        local item = inst.components.inventory:FindItem(function(item) if item.prefab == "tallbirdegg" or item.prefab == "tallbirdegg_cracked" then return true end end)
        OnGetShelfItem(inst, item)
    end
end

local function OnLoad(inst, data)
    if data ~= nil and data.charged and data.chargeleft ~= nil and data.chargeleft > 0 then
        setcharged(inst, data.chargeleft)
    end
	--skilltree
	inst._shocker:set(data.shocker or false)
	inst._charger:set(data.charger or false)
	inst._follower:set(data.follower or false)
	inst._motherid = data.motherid
	ApplySkillBonuses(inst)
end
----
local function rename(inst)
    inst.components.named:PickNewName()
end

local function nest_fn()
    local inst = CreateEntity()
	inst.nameoverride = "nesting_woose"

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddLight()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()
	inst.entity:AddMiniMapEntity()
	inst.MiniMapEntity:SetIcon("nest_woose.tex")

	--skilltree
	inst._shocker = net_bool(inst.GUID, "woose_nest_._lightning", "skillsdirty")
	inst._charger = net_bool(inst.GUID, "woose_nest_._charger", "skillsdirty")
	inst._follower = net_bool(inst.GUID, "woose_nest_.follower", "skillsdirty")
	inst.Light:Enable(false)
    inst.Light:SetRadius(1)
    inst.Light:SetFalloff(1)
    inst.Light:SetIntensity(.4)
    inst.Light:SetColour(235/255,121/255,12/255)

	inst:SetDeploySmartRadius(DEPLOYSPACING_RADIUS[DEPLOYSPACING.DEFAULT] / 2)
    inst:SetPhysicsRadiusOverride(.5)
    MakeObstaclePhysics(inst, inst.physicsradiusoverride)

    inst.AnimState:SetBank("woose_nest")
    inst.AnimState:SetBuild("woose_nest")
	inst.AnimState:SetFinalOffset(-1)
    inst.AnimState:PlayAnimation("nest")

	inst:AddTag("structure")
	inst:AddTag("nesting")
    inst:AddTag("chewable") -- by werebeaver

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

	inst:ListenForEvent("lightningstrike", onlightning) -- Skill Tree
	inst:ListenForEvent("woose_nestskillchanged", function(world, user)
		if user.userid == inst._motherid then
			if ConfigureSkillTreeUpgrades(inst, user) then
				ApplySkillBonuses(inst)
			end
		end
	end, TheWorld)

    inst._fuellevel = 10

    inst.DoPlayerAura = inst:DoPeriodicTask(1, function()
		FindEntity(inst, 25, function(guy)
			if (guy and guy:HasTag("woosegoose")) then
				if not (guy.components.health ~= nil and guy.components.health:IsDead()) then
					EggTask(inst)
					if not inst.fxtask then
						inst.fxtask = inst:DoTaskInTime(10 + math.random(10, 40)*.75, OnFxTick)
					end
				end
			end
		end)
    end)

	inst:AddComponent("lootdropper")

    inst:AddComponent("inventory")
    inst.components.inventory.maxslots = 1

    inst:AddComponent("workable")
    inst.components.workable:SetWorkLeft(1)
	inst.components.workable:SetWorkAction(ACTIONS.DIG)
    inst.components.workable:SetOnFinishCallback(RemoveNest)

    inst:AddComponent("fueled")
	inst.components.fueled:SetCanTakeFuelItemFn(CanAddFuelItem)
    inst.components.fueled:SetDepletedFn(RemoveNest)
    inst.components.fueled:SetTakeFuelFn(ontakefuel)
    inst.components.fueled.accepting = true
    inst.components.fueled:SetSections(10)
    inst.components.fueled:SetSectionCallback(OnFuelSectionChange)
    inst.components.fueled:InitializeFuelLevel(TUNING.TOTAL_DAY_TIME * TUNING.WOOSE_NEST_TIME)
	if not inst.components.fueled.consuming then
        inst.components.fueled:StartConsuming()
	end

	inst:AddComponent("shelf")
    inst.components.shelf:SetOnShelfItem(OnGetShelfItem)
    inst.components.shelf:SetOnTakeItem(OnLoseShelfItem)

	inst:AddTag("alltrader")
    inst:AddComponent("trader")
    inst.components.trader:SetAbleToAcceptTest(ItemTradeTest)
	inst.components.trader.acceptnontradable = true
    inst.components.trader.onaccept = OnEggGiven
	inst.components.trader.deleteitemonaccept = false

	inst:AddComponent("sittable")

    inst:AddComponent("inspectable")
	inst.components.inspectable.getstatus = getstatus

    MakeMediumBurnable(inst, TUNING.LARGE_BURNTIME)
	inst.components.burnable.ignorefuel = true --igniting/extinguishing should not start/stop fuel consumption
    MakeSmallPropagator(inst)

    MakeHauntableWork(inst)

    inst.OnSave = OnSave
	inst.OnLoadPostPass = OnLoadPostPass
    inst.OnLoad = OnLoad

	--skilltree
	inst._motherid = nil

    return inst
end
-----------------------------------------------------------------------------------------------
-- Adding our own here until there's one officially like Pure Brilliance
local function symbolfxfn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddFollower()
    inst.entity:AddNetwork()

    inst.AnimState:SetBank("horrorfuel")
    inst.AnimState:SetBuild("horrorfuel")
	inst.AnimState:PlayAnimation("middle_loop", true)

    inst:AddTag("FX")
    inst:AddTag("NOCLICK")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst.persists = false

    return inst
end

return Prefab("nest_woose", nest_fn, assets, prefabs),
    Prefab("nesting_woose", fn, assets, prefabs),
	Prefab("nest_horrorfuel_symbol_fx", symbolfxfn, assets_fx),
    MakePlacer("nesting_woose_placer", "woose_nest", "woose_nest", "squish")
