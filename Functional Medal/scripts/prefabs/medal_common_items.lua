local function MackItem(def)
	local assets =
	{
	    Asset("ANIM", "anim/"..def.build..".zip"),
		Asset("ATLAS", "images/"..def.name..".xml"),
		Asset("ATLAS_BUILD", "images/"..def.name..".xml",256),
	}

	if def.bank ~= def.build then
		table.insert(assets,Asset("ANIM", "anim/"..def.bank..".zip"))
	end
	
	local function fn()
		local inst = CreateEntity()
	
		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		inst.entity:AddSoundEmitter()
		inst.entity:AddNetwork()
	
		MakeInventoryPhysics(inst)
	
		inst.AnimState:SetBank(def.bank)
		inst.AnimState:SetBuild(def.build)
		inst.AnimState:PlayAnimation(def.anim or def.name)
		
		if def.taglist then
			for _,v in ipairs(def.taglist) do
				inst:AddTag(v)
			end
		end
		
		if def.floatdata then
			MakeInventoryFloatable(inst,def.floatdata[1],def.floatdata[2],def.floatdata[3])
		else
			MakeInventoryFloatable(inst,"med",0.1,0.65)
		end
	
		inst.entity:SetPristine()

		if def.clientfn then
			def.clientfn(inst)
		end
	
		if not TheWorld.ismastersim then
			return inst
		end
		
		if def.maxsize then
			inst:AddComponent("stackable")
			inst.components.stackable.maxsize = def.maxsize
		end
			
		inst:AddComponent("inventoryitem")
		inst.components.inventoryitem.imagename = def.name
		inst.components.inventoryitem.atlasname = "images/"..def.name..".xml"
			
		inst:AddComponent("inspectable")

		if def.burnable then
			inst:AddComponent("fuel")
    		inst.components.fuel.fuelvalue = TUNING.SMALL_FUEL
			
			MakeSmallBurnable(inst, TUNING.MED_BURNTIME)
			MakeSmallPropagator(inst)
		end

		MakeHauntableLaunchAndSmash(inst)

		if def.masterfn then
			def.masterfn(inst)
		end
	
		return inst
	end
	
	return Prefab(def.name, fn, assets)
end

--初始化谜题
local function InitPuzzle(inst)
	local order = {1,2,3,4,5,6,7,8}
	inst.puzzle = {}
	inst.product_orchestrina=true
	for i=1,8 do
		local num = math.random(1,#order)
		table.insert(inst.puzzle,order[num])
		table.remove(order,num)
	end
end

--堆叠数量
local SIZE_L=TUNING.STACK_SIZE_LARGEITEM--10
local SIZE_M=TUNING.STACK_SIZE_MEDITEM--20
local SIZE_S=TUNING.STACK_SIZE_SMALLITEM--40
local SIZE_T=TUNING.STACK_SIZE_TINYITEM--60

local items_loot={
	{--不朽精华
		name="immortal_essence",--预置物名
		bank="immortal_essence",
		build="immortal_essence",
		anim="idle",--动画名，不填默认用name
		maxsize=SIZE_S--堆叠数量
		-- floatdata={"med", 0.1, 0.65},--特殊水面动画参数，不填用默认值
		-- taglist={"cooldownable"},--标签列表
	},
	{--鱼骨
		name="medal_fishbones",
		bank="medal_fishbones",
		build="medal_fishbones",
		maxsize=SIZE_M,
		floatdata={"small", 0.15, 0.8},
	},
	{--方尖碑碎片
		name="sanityrock_fragment",
		bank="sanityrock_fragment",
		build="sanityrock_fragment",
		maxsize=SIZE_S,
	},
	{--血汗钱
		name="toil_money",
		bank="toil_money",
		build="toil_money",
		anim="toil_money",
		maxsize=SIZE_S,
		taglist={"medal_tradeable"},--可和雕像交易
	},
	{--黑曜石
		name="medal_obsidian",
		bank="medal_obsidian",
		build="medal_obsidian",
		maxsize=SIZE_S,
		taglist={"cooldownable"},--可冷却
	},
	{--蓝曜石
		name="medal_blue_obsidian",
		bank="medal_obsidian",
		build="medal_obsidian",
		anim="medal_blue_obsidian",
		maxsize=SIZE_S,
	},
	{--怪物精华
		name="medal_monster_essence",
		bank="medal_monster_essence",
		build="medal_monster_essence",
		maxsize=SIZE_S,
	},
	{--育王蜂种
		name="medal_bee_larva",
		bank="medal_bee_larva",
		build="medal_bee_larva",
		anim="idle",
		maxsize=SIZE_S,
	},
	{--不朽宝石
		name="immortal_gem",
		bank="immortal_gem",
		build="immortal_gem",
		anim="idle",
		maxsize=SIZE_S,
	},
	{--时空碎片
		name="medal_time_slider",
		bank="medal_time_slider",
		build="medal_time_slider",
		anim="idle",
		maxsize=SIZE_S,
	},
	{--时空宝石
		name="medal_space_gem",
		bank="medal_space_gem",
		build="medal_space_gem",
		anim="idle",
		maxsize=SIZE_S,
		masterfn=function(inst)
			local upgrader = inst:AddComponent("upgrader")
			upgrader.upgradetype = UPGRADETYPES.MEDAL_CHEST
		end,
	},
	{--时空灵石
		name="medal_spacetime_lingshi",
		bank="medal_spacetime_lingshi",
		build="medal_spacetime_lingshi",
		anim="idle",
		maxsize=SIZE_S,
		taglist={"showmedalinfo"},--可检查信息
		masterfn=function(inst)
			inst:AddComponent("tradable")--可交易
			inst.components.tradable.spacetime_value = TUNING_MEDAL.MEDAL_SPACETIME_LINGSHI_HUNGER--时空饱食度
			inst.getMedalInfo = function(inst)--显示时空饱食度
				return STRINGS.MEDAL_INFO.SPACETIMEVALUE..(inst.components.tradable.spacetime_value or 0)
			end
		end
	},
	{--时空零食
		name="medal_spacetime_snacks",
		bank="medal_spacetime_snacks",
		build="medal_spacetime_snacks",
		anim="idle",
		maxsize=SIZE_S,
		taglist={"showmedalinfo","medaldustmothfood"},--可检查信息、时空尘蛾食物
		masterfn=function(inst)
			inst:AddComponent("tradable")--可交易
			inst:AddComponent("edible")
			inst.components.edible.foodtype = FOODTYPE.ELEMENTAL
			inst.components.edible.hungervalue = TUNING.CALORIES_SMALL
			
			inst.components.tradable.spacetime_value = TUNING_MEDAL.MEDAL_SPACETIME_SNACKS_HUNGER--时空饱食度
			inst.getMedalInfo = function(inst)--显示时空饱食度
				return STRINGS.MEDAL_INFO.SPACETIMEVALUE..(inst.components.tradable.spacetime_value or 0)
			end
		end
	},
	{--零食包装袋
		name="medal_spacetime_snacks_packet",
		bank="medal_spacetime_snacks_packet",
		build="medal_spacetime_snacks_packet",
		anim="idle",
		maxsize=SIZE_S,
	},
	{--改命药水
		name="medal_spacetime_potion",
		bank="medal_spacetime_potion",
		build="medal_spacetime_potion",
		anim="idle",
		maxsize=SIZE_M,
	},
	{--时空符文
		name="medal_spacetime_runes",
		bank="medal_spacetime_runes",
		build="medal_spacetime_runes",
		anim="idle",
		maxsize=SIZE_M,
		clientfn=function(inst)--客户端扩展函数
			inst.deliverylist = net_string(inst.GUID, "deliverylist")--传送列表
			inst.quickdelivery = {--支持快速传送的道具
				medal_treasure_map="medal_treasure",--藏宝图
				medal_loss_treasure_map="medal_treasure",--遗失藏宝图
				deer_antler1="klaus_sack",--鹿角→赃物袋
				deer_antler2="klaus_sack",--鹿角→赃物袋
				deer_antler3="klaus_sack",--鹿角→赃物袋
				klaussackkey="klaus_sack",--麋鹿茸→赃物袋
				lureplantbulb="lureplant",--食人花种子→食人花
				goose_feather="moose",--麋鹿鹅羽毛→麋鹿鹅
				lunarplant_husk="lunarthrall_plant",--亮茄外壳→亮茄
				wagpunk_bits="wagstaff_machinery",--废铁→被丢弃的垃圾
				purebrilliance="lunarrift_portal",--纯粹辉煌→裂隙
				horrorfuel="daywalker",--纯粹恐惧→噩梦猪人
			}
		end,
		masterfn=function(inst)
			inst:AddComponent("medal_delivery")--自由传送组件
		end,
	},
	{--特制鱼食
		name="medal_chum",
		bank="medal_chum",
		build="medal_chum",
		anim="idle",
		maxsize=SIZE_M,
		masterfn=function(inst)
			inst.components.stackable.drop_single_in_ocean = true--在海上只能单个丢弃
			if inst.components.inventoryitem then
				inst.components.inventoryitem:SetOnDroppedFn(function(inst)
					local x, y, z = inst.Transform:GetWorldPosition()
					if TheWorld.Map:IsOceanAtPoint(x, y, z) then
						SpawnPrefab("splash_green").Transform:SetPosition(x, y, z)
						SpawnPrefab("chum_aoe").Transform:SetPosition(x, y, z)
						inst:Remove()
					end
				end)
			end
		end
	},
	{--琥珀灵石
		name="medal_dustmeringue",
		bank="medal_dustmeringue",
		build="medal_dustmeringue",
		anim="medal_dustmeringue",
		maxsize=SIZE_S,
		taglist={"molebait","medaldustmothfood"},--鼹鼠诱饵、时空尘蛾食物
		floatdata={"small", 0.05, 1},
		-- clientfn=function(inst)--客户端扩展函数
		-- 	inst.AnimState:OverrideSymbol("swap_food", "cook_pot_food6", "dustmeringue")
		-- end,
		masterfn=function(inst)
			inst:AddComponent("edible")
			inst.components.edible.foodtype = FOODTYPE.ELEMENTAL
			inst.components.edible.hungervalue = TUNING.CALORIES_SMALL
			inst:AddComponent("tradable")
		end
	},
	{--尘蛾巢台
		name="medal_dustmothden_base",
		bank="medal_dustmothden_base",
		build="medal_dustmothden_base",
		anim="idle",
		maxsize=SIZE_M,
	},
	{--旋花藤
		name="medal_ivy",
		bank="medal_ivy",
		build="medal_ivy",
		anim="medal_ivy",
		maxsize=SIZE_M,
		burnable=true,--可燃
	},
	{--奉纳符
		name="medal_tribute_symbol",
		bank="medal_tribute_symbol",
		build="medal_tribute_symbol",
		anim="medal_tribute_symbol",
		maxsize=SIZE_S,
		burnable=true,--可燃
		taglist={"medal_tradeable"},--可和雕像交易
	},
	{--格罗姆精华
		name="medal_glommer_essence",
		bank="medal_glommer_essence",
		build="medal_glommer_essence",
		anim="medal_glommer_essence",
		maxsize=SIZE_S,
		burnable=true,--可燃
	},
	{--藏宝图碎片·日出
		name="medal_treasure_map_scraps1",
		bank="medal_treasure_map_scraps",
		build="medal_treasure_map_scraps",
		anim="medal_treasure_map_scraps1",
		maxsize=SIZE_S,
		burnable=true,--可燃
	},
	{--藏宝图碎片·黄昏
		name="medal_treasure_map_scraps2",
		bank="medal_treasure_map_scraps",
		build="medal_treasure_map_scraps",
		anim="medal_treasure_map_scraps2",
		maxsize=SIZE_S,
		burnable=true,--可燃
	},
	{--藏宝图碎片·夜晚
		name="medal_treasure_map_scraps3",
		bank="medal_treasure_map_scraps",
		build="medal_treasure_map_scraps",
		anim="medal_treasure_map_scraps3",
		maxsize=SIZE_S,
		burnable=true,--可燃
	},
	-- {--遗失藏宝图碎片
	-- 	name="medal_loss_treasure_map_scraps",
	-- 	bank="medal_loss_treasure_map_scraps",
	-- 	build="medal_loss_treasure_map_scraps",
	-- 	anim="medal_loss_treasure_map_scraps",
	-- 	maxsize=SIZE_S,
	-- },
	{--酬勤令
		name="medal_diligence_token",
		bank="medal_diligence_token",
		build="medal_diligence_token",
		anim="medal_diligence_token",
		maxsize=SIZE_S,
		taglist={"medal_tradeable"},--可和雕像交易
	},
	{--暗影魔法石
		name="medal_shadow_magic_stone",
		bank="moonrock_seed",
		build="medal_shadow_magic_stone",
		anim="idle",
		maxsize=SIZE_S,
		taglist={"powerabsorbable"},--可吸收能力
		masterfn=function(inst)
			inst:AddComponent("playerprox")
			inst.components.playerprox:SetDist(4, 5)
			inst.components.playerprox.onnear = function(inst)
				inst.AnimState:PlayAnimation("proximity_pre")
    			inst.AnimState:PushAnimation("proximity_loop", true)
			end
			inst.components.playerprox.onfar = function(inst)
				inst.AnimState:PlayAnimation("proximity_pst")
        		inst.AnimState:PushAnimation("idle", false)
			end
		end
	},
	{--传承书页
		name="medal_inherit_page",
		bank="medal_inherit_page",
		build="medal_inherit_page",
		anim="medal_inherit_page",
		maxsize=SIZE_S,
		burnable=true,--可燃
		taglist={"powerabsorbable","archive_lockbox"},--可吸收能力、可传承知识
		clientfn=function(inst)--客户端扩展函数
			inst.copy_list = {--支持临摹的目标
				dustmothden="dustmothden_copy_blueprint",--尘蛾窝
				archive_cookpot="archive_cookpot_copy_blueprint",--远古窑
				insanityrock="insanityrock_copy_blueprint",--方尖碑
				sanityrock="sanityrock_copy_blueprint",--反向方尖碑
				meatrack_hermit="meatrack_hermit_copy_blueprint",--隐士晾肉架
				beebox_hermit="beebox_hermit_copy_blueprint",--隐士蜂箱
			}
		end,
		masterfn=function(inst)--额外扩展函数
			inst.InitPuzzle = InitPuzzle
			InitPuzzle(inst)
			inst:ListenForEvent("onteach", function(inst)
				--生成特效
				SpawnPrefab("lavaarena_player_revive_from_corpse_fx").Transform:SetPosition(inst.Transform:GetWorldPosition())
				--禁止拾取
				if inst.components.inventoryitem then
					inst.components.inventoryitem.canbepickedup=false
				end
				local x, y, z = inst.Transform:GetWorldPosition()
				local player = FindClosestPlayerInRange(x, y, z, 10, true)
				--获取距离最近的玩家没学过的蓝图
				if player ~= nil and player.components.builder and inst.copy_list ~= nil then
					for k, v in pairs(inst.copy_list) do
						if not player.components.builder:KnowsRecipe(k.."_copy") then
							inst.inherit_recipe = v
							break
						end
					end
				end
				inst:DoTaskInTime(2, function() 
					local blueprint = SpawnPrefab(inst.inherit_recipe or "blueprint")--生成蓝图
					if blueprint then
						local x, y, z = inst.Transform:GetWorldPosition()
						local main = TheSim:FindEntities(x,y,z, 10, {"archive_orchestrina_main"})
						if main then
							for i,ent in ipairs(main)do
								ent.busy = false--解除法阵的占用状态
							end
						end
						blueprint.Transform:SetPosition(x, y, z)
						if inst.components.stackable and inst.components.stackable:IsStack() then
							inst.components.stackable:Get():Remove()
							--恢复可拾取状态
							if inst.components.inventoryitem and not inst.components.inventoryitem.canbepickedup then
								inst.components.inventoryitem.canbepickedup=true
							end
							--重置谜题
							if inst.InitPuzzle then
								inst:InitPuzzle()
							end
							--多余的弹出去
							LaunchAt(inst, inst, nil, 1, 2, 3, 360)
						else
							inst:Remove()
						end
					end
				end)
			end)
		end,
	},
}

local items = {}
for i, v in ipairs(items_loot) do
    table.insert(items, MackItem(v))
end
return unpack(items)


