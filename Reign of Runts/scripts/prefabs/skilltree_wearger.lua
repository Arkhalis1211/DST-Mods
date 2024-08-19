local POS_Y_1 =  172

local ALLEGIANCE_POS_Y_1 = POS_Y_1
local ALLEGIANCE_POS_Y_2 = 128
local ALLEGIANCE_POS_Y_3 = 84
local ALLEGIANCE_POS_Y_4 = 38

local ALLEGIANCE_LOCK_X = 202
local ALLEGIANCE_SHADOW_X = ALLEGIANCE_LOCK_X - 23
local ALLEGIANCE_LUNAR_X  = ALLEGIANCE_LOCK_X + 24

local ALLEGIANCE_TILE_X = ALLEGIANCE_LOCK_X

local TITLE_Y = POS_Y_1 + 30

--------------------------------------------------------------------------------------------------

local WEARGER_SKILL_STRINGS = STRINGS.SKILLTREE.WEARGER

--------------------------------------------------------------------------------------------------

local function CreateAddTagFn(tag)
    return function(inst) inst:AddTag(tag) end
end

local function CreateRemoveTagFn(tag)
    return function(inst) inst:RemoveTag(tag) end
end

--------------------------------------------------------------------------------------------------

local ORDERS =
{
    {"hibearnation",       { -170,     TITLE_Y }},
    {"fur",       { 24         , 176 + 18 }},
    {"allegiance",  { ALLEGIANCE_TILE_X, TITLE_Y }},
}

--------------------------------------------------------------------------------------------------

local function BuildSkillsData(SkillTreeFns)
    local skills =
    {
		-- Increase Shedding Rate + Ground Pound Shedding
		wearger_fur_1 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_FUR_1_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_1_DESC,
			icon = "wearger_fur_1",
			pos = {25, 159},
			root = true,
			group = "fur",
			tags = {"fur"},
			connects = {
                "wearger_fur_2",
            },
            onactivate = function(inst)
				-- For load (skills activation occurs after onload functions).
                if not inst:HasTag("hibearnating") then
                    inst.components.shedder:StartShedding(345)
                end
            end,
            defaultfocus = true,
		},
		-- Craft Bearger Thick Furs more efficiently.
		wearger_fur_2 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_FUR_2_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_2_DESC,
			icon = "wearger_fur_2",
			pos = {25, 121},
			group = "fur",
			tags = {"fur"},
			connects = {
                "wearger_fur_craft_1",
            },
            onactivate   = CreateAddTagFn("thickfurmaker"),
            ondeactivate = CreateRemoveTagFn("thickfurmaker"),
		},
		-- Learn to craft the Hibearnation Hat
		wearger_fur_craft_1 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT1_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT1_DESC,
			icon = "wearger_fur_craft_1",
			pos = {25, 83},
			group = "fur",
			tags = {"fur"},
			connects = {
                "wearger_fur_craft_2",
                "wearger_fur_craft_3",
                "wearger_fur_left",
                "wearger_fur_right",
            },
            onactivate   = CreateAddTagFn("hibearhatmaker"),
            ondeactivate = CreateRemoveTagFn("hibearhatmaker"),
		},
		-- Learn to use your Fur Tufts to repair clothing
		wearger_fur_left = {
			title = WEARGER_SKILL_STRINGS.WEARGER_FUR_LEFT_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_LEFT_DESC,
			icon = "wearger_fur_left",
			pos = {-20, 90},
			group = "fur",
			tags = {"fur"},
		},
		-- Learn to craft the Bearger Rug
		wearger_fur_right = {
			title = WEARGER_SKILL_STRINGS.WEARGER_FUR_RIGHT_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_RIGHT_DESC,
			icon = "wearger_fur_right",
			pos = {70, 90},
			group = "fur",
			tags = {"fur"},
            onactivate   = CreateAddTagFn("beargerrugmaker"),
            ondeactivate = CreateRemoveTagFn("beargerrugmaker"),
		},

		-- Learn to craft the Bearger Bin
		wearger_fur_craft_2 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT2_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT2_DESC,
			icon = "wearger_fur_craft_2",
			pos = {0, 37},
			group = "fur",
			tags = {"fur"},
            onactivate   = CreateAddTagFn("beargerbinmaker"),
            ondeactivate = CreateRemoveTagFn("beargerbinmaker"),
		},
		-- Learn to craft the Bearger Bed Roll
		wearger_fur_craft_3 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT3_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT3_DESC,
			icon = "wearger_fur_craft_3",
			pos = {50, 37},
			group = "fur",
			tags = {"fur"},
            onactivate   = CreateAddTagFn("beargerbedmaker"),
            ondeactivate = CreateRemoveTagFn("beargerbedmaker"),
		},
        --------------------------------------------------------------------------
		wearger_pick_double1 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_PICK_1_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_PICK_1_DESC,
			icon = "wearger_pick_double1",
			pos = {-52, 169},
			root = true,
			connects = {
                "wearger_pick_double2",
            },
			group = "fur",
			tags = {"fur"},
		},

		wearger_pick_double2 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_PICK_2_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_PICK_2_DESC,
			icon = "wearger_pick_double2",
			pos = {-52, 131},
			group = "fur",
			tags = {"fur"},
		},
        --------------------------------------------------------------------------
		-- During Hibernation, Foods are 20% More Filling
		wearger_foods = {
			title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_FOOD_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_FOOD_DESC,
			icon = "wearger_foods",
			pos = {-201, 160},
			root = true,
			
			group = "hibearnation",
			tags = {"hibearnation"},
            onactivate = function(inst)
                if inst:HasTag("hibearnating") then
                    if inst.components.eater ~= nil then
						inst.components.eater:SetAbsorptionModifiers(1, 1.2, 1)
					end
                end
            end,
		},

		wearger_yawn1 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_YAWN_1_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_YAWN_1_DESC,
			icon = "wearger_yawn1",
			pos = {-125, 160},
			root = true,
			connects = { "wearger_yawn2" },
			
			group = "hibearnation",
			tags = {"hibearnation", "sleepresist"},
            onactivate = function(inst)
                -- For load (skills activation occurs after onload functions).
                if not inst:HasTag("hibearnating") then
                    if inst.components.grogginess ~= nil then
						inst.components.grogginess:SetResistance(10)--Default is 3
					end
                end
            end,
		},

		wearger_yawn2 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_YAWN_2_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_YAWN_2_DESC,
			icon = "wearger_yawn2",
			pos = {-125, 122},
            connects = {
                "wearger_yawn3",
            },
			
			group = "hibearnation",
			tags = {"hibearnation"},
            onactivate = function(inst)
                if inst:HasTag("hibearnating") then
                    if inst.components.sleepingbaguser ~= nil then
						inst.components.sleepingbaguser.health_bonus_mult = 1.3 --30%
						inst.components.sleepingbaguser.sanity_bonus_mult = 1.3 --30%
					end
                end
            end,
		},

		wearger_yawn3 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_YAWN_3_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_YAWN_3_DESC,
			icon = "wearger_yawn3",
			pos = {-125, 84},
            connects = {
                "wearger_yawn4",
            },
			
			group = "hibearnation",
			tags = {"hibearnation"},
            onactivate = function(inst)
                if inst:HasTag("hibearnating") then
                    if inst.components.sleepingbaguser ~= nil then
						inst.components.sleepingbaguser.hunger_bonus_mult = 0.1
					end
                end
			end,
		},

		wearger_yawn4 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_YAWN_4_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_YAWN_4_DESC,
			icon = "wearger_yawn4",
			pos = {-125, 46},
			
			group = "hibearnation",
			tags = {"hibearnation"},
		},

		wearger_hibear1 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_1_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_1_DESC,
			icon = "wearger_hibear1",
			pos = {-163, 160},
			root = true,
			connects = { "wearger_hibear2" },
			
			group = "hibearnation",
			tags = {"hibearnation"},
            ondeactivate = function(inst)
				if inst.components.planardefense ~= nil then
					inst.components.planardefense:RemoveBonus(inst, "wearger_combat_defense")
				end
			end,
		},

		wearger_hibear2 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_2_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_2_DESC,
			icon = "wearger_hibear2",
			pos = {-163, 122},
			connects = { "wearger_hibear3" },
			
			group = "hibearnation",
			tags = {"hibearnation"},
		},

		wearger_hibear3 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_3_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_3_DESC,
			icon = "wearger_hibear3",
			pos = {-163, 84},
			connects = { "wearger_hibear4" },
			
			group = "hibearnation",
			tags = {"hibearnation"},
			ondeactivate = CreateRemoveTagFn("mightiness_mighty"),
		},

		wearger_hibear4 = {
			title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_4_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_4_DESC,
			icon = "wearger_hibear4",
			pos = {-163, 46},
			
			group = "hibearnation",
			tags = {"hibearnation"},
		},

        --------------------------------------------------------------------------

        wearger_hibear_full_lock = {
			desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_LOCK_DESC,
            pos = {-201, 84},
            group = "hibearnation",
            tags = {"lock"},
            root = true,
            lock_open = function(prefabname, activatedskills, readonly) 
                if readonly then
                    return "question"
                end

                local bear_skills = SkillTreeFns.CountTags(prefabname, "hibearnation", activatedskills)
                return bear_skills >= 5

            end,
            connects = {
                "wearger_hibear_full",
            },
        },

        -- Hibernation Mastery - Full stomach benefits are all-season. Health increase, insulation, & previous hibear branch
        wearger_hibear_full = {
			title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_FULL_TITLE,
			desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_FULL_DESC,
			icon = "wearger_hibear_full",
            pos = {-201, 46},
            group = "hibearnation",
            tags = {"hibearnation", "hibearmaster"},
			onactivate   = CreateAddTagFn("hibearmaster"),
            ondeactivate = CreateRemoveTagFn("hibearmaster"),
        },

        --------------------------------------------------------------------------

        wearger_allegiance_lock_1 = {
            desc = WEARGER_SKILL_STRINGS.WEARGER_ALLEGIANCE_LOCK_1_DESC,
            pos = {ALLEGIANCE_LOCK_X, ALLEGIANCE_POS_Y_1},
            group = "allegiance",
            tags = {"allegiance","lock"},
            root = true,
            lock_open = function(prefabname, activatedskills, readonly)
                return SkillTreeFns.CountSkills(prefabname, activatedskills) >= 12
            end,
        },

        wearger_allegiance_lock_2 = SkillTreeFns.MakeFuelWeaverLock(
            { pos = {ALLEGIANCE_SHADOW_X, ALLEGIANCE_POS_Y_2} }
        ),


        wearger_allegiance_lock_4 = SkillTreeFns.MakeNoLunarLock(
            { pos = {ALLEGIANCE_SHADOW_X, ALLEGIANCE_POS_Y_3} }
        ),

        wearger_allegiance_shadow = {
            title = WEARGER_SKILL_STRINGS.WEARGER_ALLEGIANCE_SHADOW_TITLE,
            desc = WEARGER_SKILL_STRINGS.WEARGER_ALLEGIANCE_SHADOW_DESC,
            icon = "wearger_allegiance_shadow",
            pos = {ALLEGIANCE_SHADOW_X , ALLEGIANCE_POS_Y_4},
            group = "allegiance",
            tags = {"allegiance","shadow","shadow_favor"},
            locks = {"wearger_allegiance_lock_1", "wearger_allegiance_lock_2", "wearger_allegiance_lock_4"},

            onactivate = function(inst, fromload)
                inst:AddTag("player_shadow_aligned")

                local damagetyperesist = inst.components.damagetyperesist
                if damagetyperesist then
                    damagetyperesist:AddResist("shadow_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_SHADOW_RESIST, "allegiance_shadow")
                end
                local damagetypebonus = inst.components.damagetypebonus
                if damagetypebonus then
                    damagetypebonus:AddBonus("lunar_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_VS_LUNAR_BONUS, "allegiance_shadow")
                end
            end,
            ondeactivate = function(inst, fromload)
                inst:RemoveTag("player_shadow_aligned")

                local damagetyperesist = inst.components.damagetyperesist
                if damagetyperesist then
                    damagetyperesist:RemoveResist("shadow_aligned", inst, "allegiance_shadow")
                end
                local damagetypebonus = inst.components.damagetypebonus
                if damagetypebonus then
                    damagetypebonus:RemoveBonus("lunar_aligned", inst, "allegiance_shadow")
                end
            end,
        },

        wearger_allegiance_lock_3 = SkillTreeFns.MakeCelestialChampionLock(
            { pos = {ALLEGIANCE_LUNAR_X, ALLEGIANCE_POS_Y_2} }
        ),

        wearger_allegiance_lock_5 = SkillTreeFns.MakeNoShadowLock(
            { pos = {ALLEGIANCE_LUNAR_X, ALLEGIANCE_POS_Y_3} }
        ),

        wearger_allegiance_lunar = {
		    title = WEARGER_SKILL_STRINGS.WEARGER_ALLEGIANCE_LUNAR_TITLE,
            desc = WEARGER_SKILL_STRINGS.WEARGER_ALLEGIANCE_LUNAR_DESC,
            icon = "wearger_allegiance_lunar",
            pos = {ALLEGIANCE_LUNAR_X , ALLEGIANCE_POS_Y_4},
            group = "allegiance",
            tags = {"allegiance","lunar","lunar_favor"},
            locks = {"wearger_allegiance_lock_1", "wearger_allegiance_lock_3", "wearger_allegiance_lock_5"},

            onactivate = function(inst, fromload)
                inst:AddTag("player_lunar_aligned")

                local damagetyperesist = inst.components.damagetyperesist
                if damagetyperesist then
                    damagetyperesist:AddResist("lunar_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_LUNAR_RESIST, "allegiance_lunar")
                end
                local damagetypebonus = inst.components.damagetypebonus
                if damagetypebonus then
                    damagetypebonus:AddBonus("shadow_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_VS_SHADOW_BONUS, "allegiance_lunar")
                end
            end,
            ondeactivate = function(inst, fromload)
                inst:RemoveTag("player_lunar_aligned")

                local damagetyperesist = inst.components.damagetyperesist
                if damagetyperesist then
                    damagetyperesist:RemoveResist("lunar_aligned", inst, "allegiance_lunar")
                end
                local damagetypebonus = inst.components.damagetypebonus
                if damagetypebonus then
                    damagetypebonus:RemoveBonus("shadow_aligned", inst, "allegiance_lunar")
                end
            end,
        },
	}

    return {
        SKILLS = skills,
        ORDERS = ORDERS,
    }
end

--------------------------------------------------------------------------------------------------

return BuildSkillsData