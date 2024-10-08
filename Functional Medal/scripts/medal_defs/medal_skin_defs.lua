local medal_skins =
{
    medal_statue_marble_gugugu={--大帅鸽雕像
		sort_num=1,--排序编号
		skin_info={
			{--合家欢乐
				id=1,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_GUGUGU_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_gugugu_skin2", "swap_statue")
				end,
				image="medal_statue_gugugu_skin2",
			},
			{--鸽王之王
				id=2,--皮肤ID(非唯一ID,仅用于区分同一预制物)
				price=28,--价格
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_GUGUGU_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_gugugu_skin1", "swap_statue")
				end,
				image="medal_statue_gugugu_skin1",--展示用贴图
			},
			{--冰雕玉琢
				id=3,
				price=168,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_GUGUGU_SKIN3,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_gugugu_skin3", "swap_statue")
				end,
				image="medal_statue_gugugu_skin3",
			},
			-- {--鸽之
			-- 	id=4,
			-- 	price=8,
			-- 	name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_GUGUGU_SKIN4,
			-- 	reskin_fn=function(inst)
			-- 		inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_gugugu_skin4", "swap_statue")
			-- 	end,
			-- 	image="medal_statue_gugugu_skin4",
			-- },
			{--烤乳鸽
				id=5,
				price=88,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_GUGUGU_SKIN5,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_gugugu_skin5", "swap_statue")
				end,
				image="medal_statue_gugugu_skin5",
			},
		},
		initskin_fn=function(inst)--原皮数据的应用函数(皮肤法杖切回原皮肤的时候需要执行)
			inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_gugugu", "swap_statue")
		end,
		fx_data={y=0.5,scale=1.2},--特效参数(特效名、尺寸、偏移等)
	},
	medal_statue_marble_saltfish={--咸鱼雕像
		sort_num=2,
		skin_info={
			{--虎虎生威
				id=1,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_SALTFISH_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_saltfish_skin1", "swap_statue")
				end,
				image="medal_statue_saltfish_skin1",
			},
			{--幸运锦鲤
				id=2,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_SALTFISH_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_saltfish_skin2", "swap_statue")
				end,
				image="medal_statue_saltfish_skin2",
			},
			{--冰雕玉琢
				id=3,
				price=168,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_SALTFISH_SKIN3,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_saltfish_skin3", "swap_statue")
				end,
				image="medal_statue_saltfish_skin3",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_saltfish", "swap_statue")
		end,
		fx_data={y=0.5,scale=1.2},
	},
	medal_statue_marble_stupidcat={--猫猫雕像
		sort_num=3,
		skin_info={
			{--招财进宝
				id=1,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_STUPIDCAT_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_stupidcat_skin1", "swap_statue")
				end,
				image="medal_statue_stupidcat_skin1",
			},
			{--冰雕玉琢
				id=2,
				price=168,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_STUPIDCAT_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_stupidcat_skin2", "swap_statue")
				end,
				image="medal_statue_stupidcat_skin2",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_stupidcat", "swap_statue")
		end,
		fx_data={y=0.5,scale=1.2},
	},
	medal_naughtybell={--淘气铃铛
		sort_num=4,
		skin_info={
			{--虎年吉祥
				id=1,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_NAUGHTYBELL_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_naughtybell")
					inst.AnimState:SetBuild("medal_naughtybell_skin2")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("medal_naughtybell_skin2")
					end
				end,
				image="medal_naughtybell_skin2",
				build="medal_naughtybell_skin2",
			},
			{--冰雪格罗姆
				id=2,
				price=28,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_NAUGHTYBELL_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_naughtybell")
           			inst.AnimState:SetBuild("medal_naughtybell_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("medal_naughtybell_skin1")
					end
				end,
				image="medal_naughtybell_skin1",
				build="medal_naughtybell_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("medal_naughtybell")
           	inst.AnimState:SetBuild("medal_naughtybell")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("medal_naughtybell")
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_goathat={--羊角帽
		sort_num=5,
		skin_info={
			{--财运亨通
				id=1,
				price=88,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_GOATHAT_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_goathat")
           			inst.AnimState:SetBuild("medal_goathat_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("medal_goathat_skin1")
					end
				end,
				image="medal_goathat_skin1",
				build="medal_goathat_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("medal_goathat")
           	inst.AnimState:SetBuild("medal_goathat")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("medal_goathat")
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_krampus_chest_item={--坎普斯宝匣(物品)
		sort_num=6,
		skin_info={
			{--福禄呈祥
				id=1,
				price=168,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_KRAMPUS_CHEST_ITEM_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_krampus_chest_item")
           			inst.AnimState:SetBuild("medal_krampus_chest_item_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("medal_krampus_chest_item_skin1")
					end
				end,
				image="medal_krampus_chest_item_skin1",
				placer="medal_krampus_chest_item_skin1_placer",--安置时的预览placer
			},
			{--镂冰雕琼
				id=2,
				price=188,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_KRAMPUS_CHEST_ITEM_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_krampus_chest_item")
					inst.AnimState:SetBuild("medal_krampus_chest_item_skin2")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("medal_krampus_chest_item_skin2")
					end
				end,
				image="medal_krampus_chest_item_skin2",
				placer="medal_krampus_chest_item_skin2_placer",--安置时的预览placer
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("medal_krampus_chest_item")
           	inst.AnimState:SetBuild("medal_krampus_chest_item")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("medal_krampus_chest_item")
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_krampus_chest={--坎普斯宝匣(箱子)
		hide=true,--皮肤界面不展示
		skin_key="medal_krampus_chest_item",--判断是否解锁用的key(特殊道具才需要用)
		sort_num=6,
		skin_info={
			{--福禄呈祥
				id=1,
				price=168,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_KRAMPUS_CHEST_ITEM_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("dragonfly_chest")
           			inst.AnimState:SetBuild("medal_krampus_chest_skin1")
				end,
				image="medal_krampus_chest_item_skin1",
			},
			{--镂冰雕琼
				id=2,
				price=188,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_KRAMPUS_CHEST_ITEM_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("dragonfly_chest")
					inst.AnimState:SetBuild("medal_krampus_chest_skin2")
				end,
				image="medal_krampus_chest_item_skin2",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("dragonfly_chest")
           	inst.AnimState:SetBuild("medal_krampus_chest")
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_box={--勋章盒
		sort_num=7,
		skin_info={
			{--金钗钿合
				id=1,
				price=128,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_BOX_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_box")
           			inst.AnimState:SetBuild("medal_box_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("medal_box_skin1")
					end
				end,
				image="medal_box_skin1",
			},
			{--纸上雪
				id=2,
				price=288,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_BOX_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_box")
					inst.AnimState:SetBuild("medal_box_skin2")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("medal_box_skin2")
					end
				end,
				image="medal_box_skin2",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("medal_box")
           	inst.AnimState:SetBuild("medal_box")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("medal_box")
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	spices_box={--调料盒
		sort_num=8,
		skin_info={
			{--五味俱全
				id=1,
				price=88,
				name=STRINGS.MEDAL_SKIN_NAME.SPICES_BOX_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("spices_box")
           			inst.AnimState:SetBuild("spices_box_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("spices_box_skin1")
					end
				end,
				image="spices_box_skin1",
			},
			{--祈福香囊
				id=2,
				price=28,
				name=STRINGS.MEDAL_SKIN_NAME.SPICES_BOX_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("spices_box")
					inst.AnimState:SetBuild("spices_box_skin2")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("spices_box_skin2")
					end
				end,
				image="spices_box_skin2",
			},
			{--星星糖果罐
				id=3,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.SPICES_BOX_SKIN3,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("spices_box")
					inst.AnimState:SetBuild("spices_box_skin3")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("spices_box_skin3")
					end
				end,
				image="spices_box_skin3",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("spices_box")
           	inst.AnimState:SetBuild("spices_box")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("spices_box")
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	bearger_chest={--熊皮宝箱
		sort_num=9,
		skin_info={
			{--八珍玉食
				id=1,
				price=168,
				name=STRINGS.MEDAL_SKIN_NAME.BEARGER_CHEST_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("dragonfly_chest")
           			inst.AnimState:SetBuild("bearger_chest_skin1")
				end,
				image="bearger_chest_skin1",
			},
			{--时空宝箱
				id=2,
				price=0,--0表示需要皮肤券才可解锁
				name=STRINGS.MEDAL_SKIN_NAME.BEARGER_CHEST_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("dragonfly_chest")
					inst.AnimState:SetBuild("medal_spacetime_chest")
				end,
				image="bearger_chest_skin2",
			},
		},
		initskin_fn=function(inst)
			-- local numupgrades = inst.components.upgradeable and inst.components.upgradeable.numupgrades or 0
			-- if numupgrades == 1 then
				-- inst.AnimState:SetBank("dragonfly_chest_upgraded")
        		-- inst.AnimState:SetBuild("bearger_chest_upgraded")
			-- else
				inst.AnimState:SetBank("dragonfly_chest")
				inst.AnimState:SetBuild("bearger_chest")
			-- end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_fishingrod={--玻璃钓竿
		sort_num=10,
		skin_info={
			{--红梅报喜
				id=1,
				price=128,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_FISHINGROD_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("fishingrod")
           			inst.AnimState:SetBuild("medal_fishingrod_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("medal_fishingrod_skin1")
					end
					if inst.components.floater and inst.components.floater.swap_data then
						inst.components.floater.swap_data.sym_build="swap_medal_fishingrod_skin1"
						if inst.components.floater:IsFloating() then
							inst.components.floater:SwitchToFloatAnim()
						end
					end
				end,
				image="medal_fishingrod_skin1",
				build="swap_medal_fishingrod_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("fishingrod")
           	inst.AnimState:SetBuild("medal_fishingrod")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("medal_fishingrod")
			end
			if inst.components.floater and inst.components.floater.swap_data then
				inst.components.floater.swap_data.sym_build="swap_medal_fishingrod"
				if inst.components.floater:IsFloating() then
					inst.components.floater:SwitchToFloatAnim()
				end
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	sanityrock_mace={--方尖锏
		sort_num=11,
		skin_info={
			{--锦依玉石
				id=1,
				price=88,
				name=STRINGS.MEDAL_SKIN_NAME.SANITYROCK_MACE_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("sanityrock_mace")
           			inst.AnimState:SetBuild("sanityrock_mace_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("sanityrock_mace_skin1")
					end
					if inst.components.floater and inst.components.floater.swap_data then
						inst.components.floater.swap_data.sym_build="sanityrock_mace_skin1"
						if inst.components.floater:IsFloating() then
							inst.components.floater:SwitchToFloatAnim()
						end
					end
				end,
				image="sanityrock_mace_skin1",
				build="sanityrock_mace_skin1",
			},
			{--一剑霜寒
				id=2,
				price=268,
				name=STRINGS.MEDAL_SKIN_NAME.SANITYROCK_MACE_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("sanityrock_mace")
					inst.AnimState:SetBuild("sanityrock_mace_skin2")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("sanityrock_mace_skin2")
					end
					if inst.components.floater and inst.components.floater.swap_data then
						inst.components.floater.swap_data.sym_build="sanityrock_mace_skin2"
						if inst.components.floater:IsFloating() then
							inst.components.floater:SwitchToFloatAnim()
						end
					end
				end,
				image="sanityrock_mace_skin2",
				build="sanityrock_mace_skin2",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("sanityrock_mace")
           	inst.AnimState:SetBuild("sanityrock_mace")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("sanityrock_mace")
			end
			if inst.components.floater and inst.components.floater.swap_data then
				inst.components.floater.swap_data.sym_build="sanityrock_mace"
				if inst.components.floater:IsFloating() then
					inst.components.floater:SwitchToFloatAnim()
				end
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	lureplant_rod={--食人花手杖
		sort_num=12,
		skin_info={
			{--霸王之花
				id=1,
				price=28,
				name=STRINGS.MEDAL_SKIN_NAME.LUREPLANT_ROD_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("lureplant_rod")
           			inst.AnimState:SetBuild("lureplant_rod_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("lureplant_rod_skin1")
					end
					if inst.components.floater and inst.components.floater.swap_data then
						inst.components.floater.swap_data.sym_build="lureplant_rod_skin1"
						if inst.components.floater:IsFloating() then
							inst.components.floater:SwitchToFloatAnim()
						end
					end
				end,
				image="lureplant_rod_skin1",
				build="lureplant_rod_skin1",--手持动画用
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("lureplant_rod")
           	inst.AnimState:SetBuild("lureplant_rod")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("lureplant_rod")
			end
			if inst.components.floater and inst.components.floater.swap_data then
				inst.components.floater.swap_data.sym_build="lureplant_rod"
				if inst.components.floater:IsFloating() then
					inst.components.floater:SwitchToFloatAnim()
				end
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	devour_staff={--吞噬法杖
		sort_num=13,
		skin_info={
			{--贪吃蛇
				id=1,
				price=28,
				name=STRINGS.MEDAL_SKIN_NAME.DEVOUR_STAFF_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("devour_staff")
           			inst.AnimState:SetBuild("devour_staff_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("devour_staff_skin1")
					end
					if inst.components.floater and inst.components.floater.swap_data then
						inst.components.floater.swap_data.sym_build="devour_staff_skin1"
						if inst.components.floater:IsFloating() then
							inst.components.floater:SwitchToFloatAnim()
						end
					end
				end,
				image="devour_staff_skin1",
				build="devour_staff_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("devour_staff")
           	inst.AnimState:SetBuild("devour_staff")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("devour_staff")
			end
			if inst.components.floater and inst.components.floater.swap_data then
				inst.components.floater.swap_data.sym_build="devour_staff"
				if inst.components.floater:IsFloating() then
					inst.components.floater:SwitchToFloatAnim()
				end
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_statue_marble_changeable={--百变雕像
		sort_num=14,
		skin_info={
			{--大白
				id=1,
				price=88,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_CHANGEABLE_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_changeable_skin1", "swap_statue")
				end,
				image="medal_statue_changeable_skin1",
			},
			{--某幻想家
				id=2,
				price=88,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_CHANGEABLE_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_changeable_skin2", "swap_statue")
				end,
				image="medal_statue_changeable_skin2",
			},
			{--Hubert
				id=3,
				price=88,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_CHANGEABLE_SKIN3,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_changeable_skin3", "swap_statue")
				end,
				image="medal_statue_changeable_skin3",
			},
			{--暗夜坎普斯
				id=4,
				price=0,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_CHANGEABLE_SKIN4,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_changeable_skin4", "swap_statue")
				end,
				image="medal_statue_changeable_skin4",
			},
			{--凋零之蜂
				id=5,
				price=0,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_CHANGEABLE_SKIN5,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_changeable_skin5", "swap_statue")
				end,
				image="medal_statue_changeable_skin5",
			},
			{--时空吞噬者
				id=6,
				price=0,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_CHANGEABLE_SKIN6,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_changeable_skin6", "swap_statue")
				end,
				image="medal_statue_changeable_skin6",
			},
			{--暗影尖啸者
				id=7,
				price=0,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_CHANGEABLE_SKIN7,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_changeable_skin7", "swap_statue")
				end,
				image="medal_statue_changeable_skin7",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_changeable", "swap_statue")
		end,
		fx_data={y=0.5,scale=1.2},
	},
	meteor_staff={--流星法杖
		sort_num=15,
		skin_info={
			{--北斗七星
				id=1,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.METEOR_STAFF_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("meteor_staff")
           			inst.AnimState:SetBuild("meteor_staff_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("meteor_staff_skin1")
					end
					if inst.components.floater and inst.components.floater.swap_data then
						inst.components.floater.swap_data.sym_build="meteor_staff_skin1"
						if inst.components.floater:IsFloating() then
							inst.components.floater:SwitchToFloatAnim()
						end
					end
				end,
				image="meteor_staff_skin1",
				build="meteor_staff_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("meteor_staff")
           	inst.AnimState:SetBuild("meteor_staff")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("meteor_staff")
			end
			if inst.components.floater and inst.components.floater.swap_data then
				inst.components.floater.swap_data.sym_build="meteor_staff"
				if inst.components.floater:IsFloating() then
					inst.components.floater:SwitchToFloatAnim()
				end
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_seapond={--船上钓鱼池
		sort_num=16,
		skin_info={
			{--泳池派对
				id=1,
				price=168,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_SEAPOND_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("crater_pool")
           			inst.AnimState:SetBuild("medal_seapond_skin1")
				end,
				image="medal_seapond_skin1",
			},
			{--冬日温泉
				id=2,
				price=188,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_SEAPOND_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("crater_pool")
					inst.AnimState:SetBuild("medal_seapond_skin2")
				end,
				image="medal_seapond_skin2",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("crater_pool")
           	inst.AnimState:SetBuild("medal_seapond")
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_statue_marble_blackegg={--大黑蛋子雕像
		sort_num=17,
		skin_info={
			{--黑大帅
				id=1,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_BLACKEGG_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_blackegg_skin1", "swap_statue")
				end,
				image="medal_statue_blackegg_skin1",
			},
			{--大白蛋子？
				id=2,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_BLACKEGG_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_blackegg_skin2", "swap_statue")
				end,
				image="medal_statue_blackegg_skin2",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:OverrideSymbol("swap_statue", "medal_statue_blackegg", "swap_statue")
		end,
		fx_data={y=0.5,scale=1.2},
	},
	medal_cookpot={--红晶锅
		sort_num=18,
		skin_info={
			{--铜炉火锅
				id=1,
				price=128,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_COOKPOT_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("cook_pot")
    				inst.AnimState:SetBuild("medal_cookpot_skin1")
				end,
				image="medal_cookpot_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("cook_pot")
    		inst.AnimState:SetBuild("medal_cookpot")
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_fruit_tree_immortal_fruit={--不朽果树
		sort_num=19,
		skin_info={
			{--琼紫玉藤
				id=1,
				price=328,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_FRUIT_TREE_IMMORTAL_FRUIT_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_fruit_tree_immortal_fruit")
    				inst.AnimState:SetBuild("medal_fruit_tree_immortal_fruit_skin1")
				end,
				image="medal_fruit_tree_immortal_fruit_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("medal_fruit_tree_immortal_fruit")
    		inst.AnimState:SetBuild("medal_fruit_tree_immortal_fruit")
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_statue_marble_potting={--大理石盆栽
		sort_num=20,
		skin_info={
			{--迎春花
				id=1,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_POTTING_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_statue_potting")
    				inst.AnimState:SetBuild("medal_statue_potting_skin1")
				end,
				image="medal_statue_potting_skin1",
			},
			{--梨花
				id=2,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_POTTING_SKIN2,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_statue_potting")
					inst.AnimState:SetBuild("medal_statue_potting_skin2")
				end,
				image="medal_statue_potting_skin2",
			},
			{--丁香花
				id=3,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_POTTING_SKIN3,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_statue_potting")
					inst.AnimState:SetBuild("medal_statue_potting_skin3")
				end,
				image="medal_statue_potting_skin3",
			},
			{--蔷薇
				id=4,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_POTTING_SKIN4,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_statue_potting")
					inst.AnimState:SetBuild("medal_statue_potting_skin4")
				end,
				image="medal_statue_potting_skin4",
			},
			{--杜鹃
				id=5,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_POTTING_SKIN5,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_statue_potting")
					inst.AnimState:SetBuild("medal_statue_potting_skin5")
				end,
				image="medal_statue_potting_skin5",
			},
			{--睡莲
				id=6,
				price=68,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_STATUE_POTTING_SKIN6,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_statue_potting")
					inst.AnimState:SetBuild("medal_statue_potting_skin6")
				end,
				image="medal_statue_potting_skin6",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("medal_statue_potting")
    		inst.AnimState:SetBuild("medal_statue_potting")
		end,
		fx_data={y=0.5,scale=1.2},
	},
	medal_livingroot_chest={--树根宝箱
		sort_num=21,
		skin_info={
			{--蘑菇
				id=1,
				price=328,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_LIVINGROOT_CHEST_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_livingroot_chest_skin1")
    				inst.AnimState:SetBuild("medal_livingroot_chest_skin1")
				end,
				image="medal_livingroot_chest_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("medal_livingroot_chest")
    		inst.AnimState:SetBuild("medal_livingroot_chest")
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_space_staff={--时空法杖
		sort_num=22,
		skin_info={
			{--小鸟时钟
				id=1,
				price=128,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_SPACE_STAFF_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_space_staff")
           			inst.AnimState:SetBuild("medal_space_staff_skin1")
					if inst.changeTarget then
						inst:changeTarget(inst.space_target)
					end
					if inst.components.floater and inst.components.floater.swap_data then
						inst.components.floater.swap_data.sym_build="medal_space_staff_skin1"
						if inst.components.floater:IsFloating() then
							inst.components.floater:SwitchToFloatAnim()
						end
					end
				end,
				image="medal_space_staff_skin1",
				build="medal_space_staff_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("medal_space_staff")
           	inst.AnimState:SetBuild("medal_space_staff")
			if inst.changeTarget then
				inst:changeTarget(inst.space_target)
			end
			if inst.components.floater and inst.components.floater.swap_data then
				inst.components.floater.swap_data.sym_build="medal_space_staff"
				if inst.components.floater:IsFloating() then
					inst.components.floater:SwitchToFloatAnim()
				end
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_childishness_chest={--童心箱
		sort_num=23,
		skin_info={
			{--玩具收纳箱
				id=1,
				price=88,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_TOY_CHEST_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("dragonfly_chest")
           			inst.AnimState:SetBuild("medal_toy_chest_skin1")
				end,
				image="medal_toy_chest_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("dragonfly_chest")
           	inst.AnimState:SetBuild("medal_toy_chest")
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_skin_staff={--风花雪月
		sort_num=24,
		skin_info={
			{--雪花谣
				id=1,
				price=128,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_SKIN_STAFF_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("medal_skin_staff")
           			inst.AnimState:SetBuild("medal_skin_staff_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("medal_skin_staff_skin1")
					end
					if inst.components.floater and inst.components.floater.swap_data then
						inst.components.floater.swap_data.sym_build="medal_skin_staff_skin1"
						if inst.components.floater:IsFloating() then
							inst.components.floater:SwitchToFloatAnim()
						end
					end
				end,
				image="medal_skin_staff_skin1",
				build="medal_skin_staff_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("medal_skin_staff")
           	inst.AnimState:SetBuild("medal_skin_staff")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("medal_skin_staff")
			end
			if inst.components.floater and inst.components.floater.swap_data then
				inst.components.floater.swap_data.sym_build="medal_skin_staff"
				if inst.components.floater:IsFloating() then
					inst.components.floater:SwitchToFloatAnim()
				end
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	down_filled_coat={--羽绒服
		sort_num=25,
		skin_info={
			{--加绒唐装
				id=1,
				price=88,
				name=STRINGS.MEDAL_SKIN_NAME.DOWN_FILLED_COAT_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("down_filled_coat")
           			inst.AnimState:SetBuild("down_filled_coat_skin1")
					if inst.components.inventoryitem then
						inst.components.inventoryitem:ChangeImageName("down_filled_coat_skin1")
					end
				end,
				image="down_filled_coat_skin1",
				build="down_filled_coat_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("down_filled_coat")
           	inst.AnimState:SetBuild("down_filled_coat")
			if inst.components.inventoryitem then
				inst.components.inventoryitem:ChangeImageName("down_filled_coat")
			end
		end,
		fx_data={y=0.5,scale=0.8},
	},
	medal_waterpump={--手摇深井泵
		sort_num=26,
		skin_info={
			{--雪农与水
				id=1,
				price=128,
				name=STRINGS.MEDAL_SKIN_NAME.MEDAL_WATERPUMP_SKIN1,
				reskin_fn=function(inst)
					inst.AnimState:SetBank("boat_waterpump")
           			inst.AnimState:SetBuild("medal_waterpump_skin1")
				end,
				image="medal_waterpump_skin1",
			},
		},
		initskin_fn=function(inst)
			inst.AnimState:SetBank("boat_waterpump")
           	inst.AnimState:SetBuild("medal_waterpump")
		end,
		fx_data={y=0.5,scale=0.8},
	},
}

return medal_skins
