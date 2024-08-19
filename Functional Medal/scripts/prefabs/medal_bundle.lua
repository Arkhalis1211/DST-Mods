require "prefabs/winter_ornaments"

local assets = {
	Asset("ANIM", "anim/wetpouch.zip"),
}

--燃烧函数，燃烧时自动解包
local function onburnt(inst)
    inst.burnt = true
    inst.components.unwrappable:Unwrap()
end
--冒烟函数，冒烟时不能解包
local function onignite(inst)
    inst.components.unwrappable.canbeunwrapped = false
end
--冒烟熄灭函数，熄灭后被能解包
local function onextinguish(inst)
    inst.components.unwrappable.canbeunwrapped = true
end

--打包函数
local function OnWrapped(inst, num, doer)
	inst.AnimState:PlayAnimation("idle_onesize")
	if doer ~= nil and doer.SoundEmitter ~= nil then
		doer.SoundEmitter:PlaySound("dontstarve/common/together/packaged")
	end
end

--随机获取掉落物
local function lootfn(inst, doer)
	local rweightloot = nil--权重替换表
	--把未学过的蓝图加入权重替换表
	if inst.setupdata.printtable ~= nil then
		rweightloot = {}
		local builder = doer ~= nil and doer.components.builder or nil
		local medal_infosave = TheWorld and TheWorld.components.medal_infosave or nil
		for k,v in ipairs(inst.setupdata.printtable) do
			local blueprint = v.key.."_blueprint"
			--学过该蓝图,则清空蓝图计数
			if builder and builder:KnowsRecipe(v.key) then
				if medal_infosave then
					medal_infosave:ClearGuaranteedCount(doer, blueprint)
				end
			else--未学过则加入蓝图掉落
				local add_weight = 0--加权
				if medal_infosave then
					add_weight = medal_infosave:GetGuaranteedNum(doer, blueprint) * (v.addweight or 1)--计算加权值
					medal_infosave:DoGuaranteedCount(doer, blueprint)--加权计数
				end
				rweightloot[blueprint] = v.weight + add_weight
			end
		end
	end
	local items = {}
	local item = GetMedalRandomItem(inst.setupdata.loottable,inst,rweightloot)--随机获取一个物品
	table.insert(items,item)
	if inst.prefab == "medal_losswetpouch7" then
		table.insert(items,"medal_spacetime_snacks_packet")--零食包装袋
	end
	return items
end

--解包函数
local function OnUnwrapped(inst, pos, doer)
	--用解包者坐标替换包裹坐标，防止出现位置异常的问题
	if doer then
		pos=doer:GetPosition()
	end
		
	if inst.burnt then
		SpawnPrefab("ash").Transform:SetPosition(pos:Get())
	else
		local loottable = lootfn(inst, doer)--获取掉落物
		if loottable ~= nil then
			local moisture = inst.components.inventoryitem:GetMoisture()--潮湿度
			local iswet = inst.components.inventoryitem:IsWet()--是否潮湿
			for i, v in ipairs(loottable) do
				local item = SpawnPrefab(v)
				if item ~= nil then
					if item.Physics ~= nil then
						item.Physics:Teleport(pos:Get())
					else
						item.Transform:SetPosition(pos:Get())
					end
					if item.components.inventoryitem ~= nil then
						item.components.inventoryitem:InheritMoisture(moisture, iswet)
						item.components.inventoryitem:OnDropped(true, .5)
					end
				end
			end
		end
		SpawnPrefab("wetpouch_unwrap").Transform:SetPosition(pos:Get())--生成解包动画
	end
	if doer ~= nil and doer.SoundEmitter ~= nil then
		doer.SoundEmitter:PlaySound("dontstarve/common/together/packaged")
	end
	inst:Remove()
end

--定义包裹(代码,预制物列表,开包裹时里面的物品是否抛掷出来)
local function MakeBundle(name, setupdata)
	--预制物列表
	local prefabs = {
		"ash",
		"wetpouch_unwrap",
	}

	for k,v in ipairs(setupdata.loottable) do
		table.insert(prefabs, v.key)
	end

	local function fn()
		local inst = CreateEntity()

		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		inst.entity:AddNetwork()

		MakeInventoryPhysics(inst)

		inst.AnimState:SetBank("wetpouch")
		inst.AnimState:SetBuild("wetpouch")
		inst.AnimState:PlayAnimation("idle_onesize")

		inst:AddTag("bundle")
		-- inst:AddTag("fate_rewriteable")--可改命

        --unwrappable (from unwrappable component) added to pristine state for optimization
		inst:AddTag("unwrappable")

		inst.entity:SetPristine()

		if not TheWorld.ismastersim then
			return inst
		end
		
		inst.build = "wetpouch"--钓鱼显示用
		inst.setupdata = setupdata--包裹掉落物数据
		inst.wet_prefix = STRINGS.WET_PREFIX.POUCH--潮湿前缀

		inst:AddComponent("inspectable")

		inst:AddComponent("inventoryitem")
		inst.components.inventoryitem:SetSinks(true)
		inst.components.inventoryitem:ChangeImageName("wetpouch")
		inst.components.inventoryitem:InheritMoisture(100, true)--初始100点潮湿度

		inst:AddComponent("unwrappable")
		inst.components.unwrappable:SetOnWrappedFn(OnWrapped)
		inst.components.unwrappable:SetOnUnwrappedFn(OnUnwrapped)

		if not setupdata.unburnable then
			MakeSmallBurnable(inst, TUNING.SMALL_BURNTIME)--可燃
			MakeSmallPropagator(inst)--可引燃
			inst.components.propagator.flashpoint = 10 + math.random() * 5
			inst.components.burnable:SetOnBurntFn(onburnt)--燃烧函数，燃烧时自动解包
			inst.components.burnable:SetOnIgniteFn(onignite)--冒烟函数，冒烟时不能解包
			inst.components.burnable:SetOnExtinguishFn(onextinguish)--冒烟熄灭函数，熄灭后被能解包
		end

		MakeHauntableLaunchAndIgnite(inst)

		inst:AddComponent("medal_itemdestiny")--宿命
		inst.components.medal_itemdestiny:SetDestinyKey("medal_losswetpouch")--所有塑料袋共用一个key即可

		return inst
	end

	return Prefab(name, fn, assets, prefabs)
end

local bundles = {}
for k, v in pairs(require("medal_defs/medal_bundle_defs")) do
    table.insert(bundles, MakeBundle(k,v))
end
return unpack(bundles)