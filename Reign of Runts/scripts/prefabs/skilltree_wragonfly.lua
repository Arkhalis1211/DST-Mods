local ALLEGIANCE_POS_Y_1 = 172
local ALLEGIANCE_POS_Y_2 = 128
local ALLEGIANCE_POS_Y_3 = 84
local ALLEGIANCE_POS_Y_4 = 38

local ALLEGIANCE_LOCK_X = 202
local ALLEGIANCE_SHADOW_X = ALLEGIANCE_LOCK_X - 23
local ALLEGIANCE_LUNAR_X  = ALLEGIANCE_LOCK_X + 24

--------------------------------------------------------------------------------------------------

local WRAGONFLY_SKILL_STRINGS = STRINGS.SKILLTREE.WRAGONFLY

--------------------------------------------------------------------------------------------------

local function CreateAddTagFn(tag)
    return function(inst) inst:AddTag(tag) end
end

local function CreateRemoveTagFn(tag)
    return function(inst) inst:RemoveTag(tag) end
end

local function CreateAccomplishmentLockFn(key)
    return
        function(prefabname, activatedskills, readonly)
            return readonly and "question" or TheGenericKV:GetKV(key) == "1"
        end
end

--------------------------------------------------------------------------------------------------

local ORDERS =
{
    {"rage",       {-135,                   202}},
    {"lavae",       {60,                  202}},
    {"ash",     { -196,     46 }},
    {"allegiance",  {202,                   202}},
}

--------------------------------------------------------------------------------------------------

local function BuildSkillsData(SkillTreeFns)
    local skills =
    {
		-- On enrage, regain health based on your current sanity
		wragonfly_vigor_1 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_VIGOR_1_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_VIGOR_1_DESC,
			icon = "wragonfly_vigor_1",
			pos = {-182, 165},
			root = true,
			connects = { "wragonfly_vigor_2" },
			group = "rage",
			tags = {"rage"},
		},

		-- Speed and Damage ramp up the closer you are to rage ending
		wragonfly_vigor_2 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_VIGOR_2_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_VIGOR_2_DESC,
			icon = "wragonfly_vigor_2",
			pos = {-182, 127},
			group = "rage",
			tags = {"rage"},
		},

		-- Your additional damage bursts will be consistent, every other hit instead of RNG
		wragonfly_damage_1 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_1_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_1_DESC,
			icon = "wragonfly_damage_1",
			pos = {-134, 165},
			root = true,
			connects = { "wragonfly_damage_2" },
			group = "rage",
			tags = {"rage"},
		},

		-- While enraged, enemies attacking you will take fire damage from doing so
		wragonfly_damage_2 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_2_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_2_DESC,
			icon = "wragonfly_damage_2",
			pos = {-134, 127},
			connects = { "wragonfly_damage_3" },
			group = "rage",
			tags = {"rage"},
		},

		-- While enraged, mark your enemies with a debuff that causes rage's damage bursts for 15 seconds on hit
		wragonfly_damage_3 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_3_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_3_DESC,
			icon = "wragonfly_damage_3",
			pos = {-134, 89},
			connects = { "wragonfly_damage_4" },
			group = "rage",
			tags = {"rage"},
		},

		-- While enraged, gain the ability to hock a hot loogie
		wragonfly_damage_4 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_4_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_4_DESC,
			icon = "wragonfly_damage_4",
			pos = {-134, 51},
			group = "rage",
			tags = {"rage"},
		},

        wragonfly_hunger_lock = {
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_HUNGER_LOCK_DESC,
            pos = {-86, 165},
            group = "rage",
            tags = {"lock"},
            root = true,
            lock_open = function(prefabname, activatedskills, readonly) 
                if readonly then
                    return "question"
                end

                local dfly_skills = SkillTreeFns.CountTags(prefabname, "rage", activatedskills)
                return dfly_skills >= 3

            end,
            connects = {
                "wragonfly_hunger",
            },
        },

		-- Lose less sanity while enraged, charcoal eaten will increase your enraged timer by 10 seconds 
		wragonfly_hunger = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_HUNGER_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_HUNGER_DESC,
			icon = "wragonfly_hunger",
			pos = {-86, 127},
			group = "rage",
			tags = {"rage"},
		},

        --------------------------------------------------------------------------

        wragonfly_rage_lavae_lock = {
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_LAVAE_LOCK_DESC,
            pos = {-60, 89},
            group = "rage",
            tags = {"lock"},
            root = true,
            lock_open = function(prefabname, activatedskills, readonly) 
                if readonly then
                    return "question"
                end

                local lavae_skills = SkillTreeFns.CountTags(prefabname, "lavae", activatedskills)
                return lavae_skills >= 4

            end,
            connects = {
                "wragonfly_rage_lavae_1",
            },
        },

		-- While enraged, deal more damage to targets of your Lavae
		wragonfly_rage_lavae_1 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_LAVAE_1_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_LAVAE_1_DESC,
			icon = "wragonfly_rage_lavae_1",
			pos = {-60, 51},
			connects = { "wragonfly_rage_lavae_2" },
			group = "rage",
			tags = {"rage"},
		},

		-- Gain the ability to consume your Lavae, returning 30% of its current hp to yours, its current hunger to yours, and at a sanity cost of 10% its current hp
		wragonfly_rage_lavae_2 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_LAVAE_2_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_LAVAE_2_DESC,
			icon = "wragonfly_rage_lavae_2",
			pos = {-60, 13},
			group = "rage",
			tags = {"rage"},
		},

        --------------------------------------------------------------------------

		-- Lavae will heal significantly more from food
		wragonfly_lavaehealth_1 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHEALTH_1_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHEALTH_1_DESC,
			icon = "wragonfly_lavaehunger_1",
			pos = {20, 165},
			root = true,
			connects = { "wragonfly_lavaehealth_2" },
			group = "lavae",
			tags = {"lavae"},
            defaultfocus = true,
		},

		-- When not starving, Lavae will regenerate health
		wragonfly_lavaehealth_2 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHEALTH_2_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHEALTH_2_DESC,
			icon = "wragonfly_lavaehealth_2",
			pos = {20, 127},
			group = "lavae",
			tags = {"lavae"},
		},

		-- Lavae are a little less hungry and food a little more filling
		wragonfly_lavaehunger_1 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHUNGER_1_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHUNGER_1_DESC,
			icon = "wragonfly_lavaehealth_1",
			pos = {58, 165},
			root = true,
			connects = { "wragonfly_lavaehunger_2" },
			group = "lavae",
			tags = {"lavae"},
		},

		-- Lavae will feed off the life-force of their enemies, damage dealt returned as hunger
		wragonfly_lavaehunger_2 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHUNGER_2_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHUNGER_2_DESC,
			icon = "wragonfly_lavaehunger_2",
			pos = {58, 127},
			group = "lavae",
			tags = {"lavae"},
		},

		-- Lavae will pop on death, causing splash damage
		wragonfly_lavaedeath_1 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEDEATH_1_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEDEATH_1_DESC,
			icon = "wragonfly_lavaedeath_1",
			pos = {96, 165},
			root = true,
			connects = { "wragonfly_lavaedeath_2" },
			group = "lavae",
			tags = {"lavae"},
		},

		-- Lavae will no longer die when you do and will still follow you as a ghost
		wragonfly_lavaedeath_2 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEDEATH_2_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEDEATH_2_DESC,
			icon = "wragonfly_lavaedeath_2",
			pos = {96, 127},
			group = "lavae",
			tags = {"lavae"},
		},

		-- Lavae will deal 25% more damage to burning targets
		wragonfly_lavae_hot = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_HOT_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_HOT_DESC,
			icon = "wragonfly_lavae_hot",
			pos = {58, 51},
			root = true,
			group = "lavae",
			tags = {"lavae"},
		},

        --------------------------------------------------------------------------

        wragonfly_lavae_rage_lock = {
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAE_RAGE_LOCK_DESC,
            pos = {1, 89},
            group = "rage",
            tags = {"lock"},
            root = true,
            lock_open = function(prefabname, activatedskills, readonly) 
                if readonly then
                    return "question"
                end

                local rage_skills = SkillTreeFns.CountTags(prefabname, "rage", activatedskills)
                return rage_skills >= 4

            end,
            connects = {
                "wragonfly_lavae_rage_1",
            },
        },

		-- Lavae will take less damage while you're enraged
		wragonfly_lavae_rage_1 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAE_RAGE_1_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAE_RAGE_1_DESC,
			icon = "wragonfly_lavae_rage_1",
			pos = {1, 51},
			connects = { "wragonfly_lavae_rage_2" },
			group = "lavae",
			tags = {"lavae"},
		},

		-- Lavae will be quicker to attack while you're enraged
		wragonfly_lavae_rage_2 = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAE_RAGE_2_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAE_RAGE_2_DESC,
			icon = "wragonfly_lavae_rage_2",
			pos = {1, 13},
			group = "lavae",
			tags = {"lavae"},
		},

        --------------------------------------------------------------------------

        -- Eat 8 Ash and Enrage to unlock
        wragonfly_ash_lock = {
            group = "ash",
			tags = {"ash","lock"},
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ASH_LOCK_DESC,
			pos = {-218, 25},
            root = true,
            connects = { "wragonfly_ash" },

            lock_open = CreateAccomplishmentLockFn("wragonfly_enraged"),
        },

		-- Gain the ability to spit on certain burnables to immediately convert to ash
		wragonfly_ash = {
			title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ASH_TITLE,
			desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ASH_DESC,
			icon = "wragonfly_ash",
			pos = {-180, 25},
			group = "ash",
			tags = {"ash"},
		},

        --------------------------------------------------------------------------

        wragonfly_allegiance_lock_1 = {
            desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ALLEGIANCE_LOCK_1_DESC,
            pos = {ALLEGIANCE_LOCK_X, ALLEGIANCE_POS_Y_1},
            group = "allegiance",
            tags = {"allegiance","lock"},
            root = true,
            lock_open = function(prefabname, activatedskills, readonly)
                return SkillTreeFns.CountSkills(prefabname, activatedskills) >= 12
            end,
        },

        wragonfly_allegiance_lock_2 = SkillTreeFns.MakeFuelWeaverLock(
            { pos = {ALLEGIANCE_SHADOW_X, ALLEGIANCE_POS_Y_2} }
        ),


        wragonfly_allegiance_lock_4 = SkillTreeFns.MakeNoLunarLock(
            { pos = {ALLEGIANCE_SHADOW_X, ALLEGIANCE_POS_Y_3} }
        ),

        wragonfly_allegiance_shadow = {
            title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ALLEGIANCE_SHADOW_TITLE,
            desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ALLEGIANCE_SHADOW_DESC,
            icon = "wragonfly_allegiance_shadow",
            pos = {ALLEGIANCE_SHADOW_X , ALLEGIANCE_POS_Y_4},
            group = "allegiance",
            tags = {"allegiance","shadow","shadow_favor"},
            locks = {"wragonfly_allegiance_lock_1", "wragonfly_allegiance_lock_2", "wragonfly_allegiance_lock_4"},

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

        wragonfly_allegiance_lock_3 = SkillTreeFns.MakeCelestialChampionLock(
            { pos = {ALLEGIANCE_LUNAR_X, ALLEGIANCE_POS_Y_2} }
        ),

        wragonfly_allegiance_lock_5 = SkillTreeFns.MakeNoShadowLock(
            { pos = {ALLEGIANCE_LUNAR_X, ALLEGIANCE_POS_Y_3} }
        ),

        wragonfly_allegiance_lunar = {
		    title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ALLEGIANCE_LUNAR_TITLE,
            desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ALLEGIANCE_LUNAR_DESC,
            icon = "wragonfly_allegiance_lunar",
            pos = {ALLEGIANCE_LUNAR_X , ALLEGIANCE_POS_Y_4},
            group = "allegiance",
            tags = {"allegiance","lunar","lunar_favor"},
            locks = {"wragonfly_allegiance_lock_1", "wragonfly_allegiance_lock_3", "wragonfly_allegiance_lock_5"},

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