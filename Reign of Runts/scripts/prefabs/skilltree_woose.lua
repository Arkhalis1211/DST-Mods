local UI_LEFT, UI_RIGHT = -214, 228
local UI_VERTICAL_MIDDLE = (UI_LEFT + UI_RIGHT) * 0.5
local UI_TOP, UI_BOTTOM = 176, 20

--------------------------------------------------------------------------------------------------

local WOOSE_SKILL_STRINGS = STRINGS.SKILLTREE.WOOSE

--------------------------------------------------------------------------------------------------

local function CreateAddTagFn(tag)
    return function(inst) inst:AddTag(tag) end
end

local function CreateRemoveTagFn(tag)
    return function(inst) inst:RemoveTag(tag) end
end

local WOOSE_PATHFINDER_TILES = {
    WORLD_TILES.OCEAN_COASTAL_SHORE,
    WORLD_TILES.OCEAN_BRINEPOOL_SHORE,
    WORLD_TILES.OCEAN_COASTAL,
    WORLD_TILES.OCEAN_WATERLOG,
    WORLD_TILES.OCEAN_BRINEPOOL,
    WORLD_TILES.OCEAN_SWELL,
    WORLD_TILES.OCEAN_ROUGH,
    WORLD_TILES.OCEAN_HAZARDOUS,
}

--------------------------------------------------------------------------------------------------

local ORDERS =
{
    { "spin",    { UI_LEFT, UI_TOP } },
    { "nesting",   { UI_LEFT, UI_TOP } },
    { "ocean",    { UI_LEFT, UI_TOP } },
    { "feather",    { UI_LEFT, UI_TOP } },
    { "allegiance1", { UI_LEFT, UI_TOP } },
    { "allegiance2", { UI_LEFT, UI_TOP } },
}

--------------------------------------------------------------------------------------------------

local function BuildSkillsData(SkillTreeFns)
    local skills =
    {
		-- Increase your Spin's speed while raining
		woose_spin_rain = {
			title = WOOSE_SKILL_STRINGS.WOOSE_SPIN_RAIN_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_SPIN_RAIN_DESC,
			icon = "woose_spin_rain",
			pos = {-60, 180},
			group = "spin",
			tags = {"spin"},
		},

		-- Your Spin will deal a burst of aoe on ending
		woose_spin_1 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_SPIN_1_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_SPIN_1_DESC,
			icon = "woose_spin_1",
			pos = {-44, 127},
			root = true,
			connects = { "woose_spin_rain", "woose_spin_2", "woose_absorber" },
			group = "spin",
			tags = {"spin"},
		},

		-- Damage done to your spin is returned to the attacker
		woose_spin_2 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_SPIN_2_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_SPIN_2_DESC,
			icon = "woose_spin_2",
			pos = {-92, 137},
			connects = { "woose_spin_3" },
			group = "spin",
			tags = {"spin"},
		},

		--  Your Spin will deal a burst of aoe on start
		woose_spin_3 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_SPIN_3_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_SPIN_3_DESC,
			icon = "woose_spin_3",
			pos = {-150, 107},
			connects = { "woose_spin_4" },
			group = "spin",
			tags = {"spin"},
		},

		-- Increase returned damage done to your spin
		woose_spin_4 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_SPIN_4_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_SPIN_4_DESC,
			icon = "woose_spin_4",
			pos = {-198, 137},
			group = "spin",
			tags = {"spin"},
		},

        --------------------------------------------------------------------------

		-- Gain the ability to dip your head in the ocean to grab loot or fish
		woose_ocean_1 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_OCEAN_1_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_OCEAN_1_DESC,
			icon = "woose_ocean_1",
			pos = {1, 165},
			root = true,
			connects = { "woose_ocean_2" },
			group = "ocean",
			tags = {"ocean"},
            defaultfocus = true,
		},

		-- Increase your speed while walking on the ocean
		woose_ocean_2 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_OCEAN_2_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_OCEAN_2_DESC,
			icon = "woose_ocean_2",
			pos = {1, 127},
			group = "ocean",
			tags = {"ocean"},
			onactivate = function(inst)
                for _, tile in ipairs(WOOSE_PATHFINDER_TILES) do
                    inst.components.locomotor:SetFasterOnGroundTile(tile, true)
                end
            end,
            ondeactivate = function(inst)
                for _, tile in ipairs(WOOSE_PATHFINDER_TILES) do
                    inst.components.locomotor:SetFasterOnGroundTile(tile, true)
                end
            end,
		},

        --------------------------------------------------------------------------

		-- Moose/Goose will regen sanity quicker from nests with an egg nested
		woose_nest_1 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_NEST_1_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_NEST_1_DESC,
			icon = "woose_nest_1",
			pos = {44, 127},
			root = true,
			connects = { "woose_nest_follower", "woose_nest_smother", "woose_birds_1" },
			group = "nesting",
			tags = {"nesting"},
		},

		-- Your nest will now double the damage of nearby followers & increase their loyalty
		woose_nest_follower = {
			title = WOOSE_SKILL_STRINGS.WOOSE_NEST_2_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_NEST_2_DESC,
			icon = "woose_nest_follower",
			pos = {92, 137},
			connects = { "woose_nest_lightning" },
			group = "nesting",
			tags = {"nesting"},
		},

		-- Your nest will function similar to a lightning rod
		woose_nest_lightning = {
			title = WOOSE_SKILL_STRINGS.WOOSE_NEST_3_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_NEST_3_DESC,
			icon = "woose_nest_lightning",
			pos = {150, 107},
			connects = { "woose_nest_charger" },
			group = "nesting",
			tags = {"nesting"},
		},

		-- Nests charged by lightning will buff players with Electrical Damage
		woose_nest_charger = {
			title = WOOSE_SKILL_STRINGS.WOOSE_NEST_4_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_NEST_4_DESC,
			icon = "woose_nest_charger",
			pos = {198, 137},
			group = "nesting",
			tags = {"nesting"},
		},

		-- Gain the ability to hug players within your nest's radius for a health boost for both
		woose_nest_smother = {
			title = WOOSE_SKILL_STRINGS.WOOSE_SMOTHER_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_SMOTHER_DESC,
			icon = "woose_nest_smother",
			pos = {60, 180},
			group = "nesting",
			tags = {"nesting"},
		},

        --------------------------------------------------------------------------

        woose_bonus_full_lock = {
			desc = WOOSE_SKILL_STRINGS.WOOSE_BONUS_LOCK_DESC,
            pos = {1, 89},
            group = "spin",
            tags = {"lock"},
            root = true,
            lock_open = function(prefabname, activatedskills, readonly)
                return activatedskills and (activatedskills["woose_spin_1"] or activatedskills["woose_nest_1"]) and (SkillTreeFns.CountTags(prefabname, "nesting", activatedskills) > 3 or SkillTreeFns.CountTags(prefabname, "spin", activatedskills) > 3)
            end,
            connects = {
                "woose_absorber", "woose_birds_1",
            },
        },

		-- On getting struck by lightning you will deal elec damage for a short amount of time, lightning heals you for more
		woose_absorber = {
			title = WOOSE_SKILL_STRINGS.WOOSE_ABSORB_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_ABSORB_DESC,
			icon = "woose_absorber",
			pos = {-44, 89},
			group = "spin",
			tags = {"spin"},
            locks = {"woose_bonus_full_lock"},
		},


		-- Learn to craft a migration capelet for a shocking boost
		woose_birds_1 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_BIRDS_1_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_BIRDS_1_DESC,
			icon = "woose_birds_1",
			pos = {44, 89},
			connects = { "woose_birds_2" },
			group = "nesting",
			tags = {"nesting"},
            locks = {"woose_bonus_full_lock"},
            onactivate   = CreateAddTagFn("feathercapemaker"),
            ondeactivate = CreateRemoveTagFn("feathercapemaker"),
		},

		-- Learn how to Migrate to the nearest egged motherly nesting
		woose_birds_2 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_BIRDS_2_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_BIRDS_2_DESC,
			icon = "woose_birds_2",
			pos = {92, 89},
			group = "nesting",
			tags = {"nesting"},
            onactivate   = CreateAddTagFn("migratorskill"),
            ondeactivate = CreateRemoveTagFn("migratorskill"),
		},

        --------------------------------------------------------------------------

		-- Gain the ability to search Trees for twigs & grass & feathers
		woose_nest_invest_1 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_NEST_INVEST_1_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_NEST_INVEST_1_DESC,
			icon = "woose_nest_invest_1",
			pos = {44, 31},
			root = true,
			connects = { "woose_nest_invest_2" },
			group = "feather",
			tags = {"feather"},
		},

		-- Gain the ability to pluck a few of your down feathers
		woose_nest_invest_2 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_NEST_INVEST_2_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_NEST_INVEST_2_DESC,
			icon = "woose_nest_invest_2",
			pos = {92, 41},
			group = "feather",
			tags = {"feather"},
		},

		--  Equip the Feather Fan, gain the ability to charge it with restrained static and summon Lightning with it
		woose_feather_fan_1 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_FEATHER_1_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_FEATHER_1_DESC,
			icon = "woose_feather_fan_1",
			pos = {-44, 31},
			root = true,
			connects = { "woose_feather_fan_2" },
			group = "feather",
			tags = {"feather"},
            onactivate = function(owner, from_load)
                owner:AddTag("featherfanholder")
				owner:AddTag(UPGRADETYPES.SPEAR_LIGHTNING.."_upgradeuser") -- Woose can upgrade Elden Spears, and Wigfrid Feather Fans...let's not think abt that right now
            end,
            ondeactivate = function(owner, from_load)
                owner:RemoveTag("featherfanholder")
				owner:RemoveTag(UPGRADETYPES.SPEAR_LIGHTNING.."_upgradeuser")
            end,
		},

		-- Give the Feather Fan a speed boost and reduced cooldown
		woose_feather_fan_2 = {
			title = WOOSE_SKILL_STRINGS.WOOSE_FEATHER_2_TITLE,
			desc = WOOSE_SKILL_STRINGS.WOOSE_FEATHER_2_DESC,
			icon = "woose_feather_fan_2",
			pos = {-92, 41},
			group = "feather",
			tags = {"feather"},
		},

        --------------------------------------------------------------------------

        woose_allegiance_count_lock_1 = {
            desc = WOOSE_SKILL_STRINGS.WOOSE_ALLEGIANCE_LOCK_1_DESC,
            pos = {UI_LEFT + 64, UI_BOTTOM + 130},
            group = "allegiance1",
            tags = {"allegiance","lock"},
            root = true,
            lock_open = function(prefabname, activatedskills, readonly)
                return SkillTreeFns.CountSkills(prefabname, activatedskills) >= 12
            end,
        },

        woose_allegiance_count_lock_2 = {
            desc = WOOSE_SKILL_STRINGS.WOOSE_ALLEGIANCE_LOCK_1_DESC,
            pos = {UI_RIGHT - 78, UI_BOTTOM + 130},
            group = "allegiance1",
            tags = {"allegiance","lock"},
            root = true,
            lock_open = function(prefabname, activatedskills, readonly)
                return SkillTreeFns.CountSkills(prefabname, activatedskills) >= 12
            end,
        },

        woose_allegiance_lock_2 = SkillTreeFns.MakeFuelWeaverLock(
            { pos = {UI_LEFT + 64, UI_BOTTOM + 168}, 
			  group = "allegiance1",
			}
        ),

        woose_allegiance_lock_4 = SkillTreeFns.MakeNoLunarLock(
            { pos = {UI_LEFT + 64, UI_BOTTOM + 200},
			  group = "allegiance1",
			}
        ),

        woose_allegiance_shadow = {
            title = WOOSE_SKILL_STRINGS.WOOSE_ALLEGIANCE_SHADOW_TITLE,
            desc = WOOSE_SKILL_STRINGS.WOOSE_ALLEGIANCE_SHADOW_DESC,
            icon = "woose_allegiance_shadow",
            pos = {UI_LEFT + 26, UI_BOTTOM + 185},
            group = "allegiance1",
            tags = {"allegiance","shadow","shadow_favor"},
            locks = {"woose_allegiance_count_lock_1", "woose_allegiance_lock_2", "woose_allegiance_lock_4"},

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

        woose_allegiance_lock_3 = SkillTreeFns.MakeCelestialChampionLock(
            { pos = {UI_RIGHT - 78, UI_BOTTOM + 168}, 
			  group = "allegiance2",
			}
        ),

        woose_allegiance_lock_5 = SkillTreeFns.MakeNoShadowLock(
            { pos = {UI_RIGHT - 78, UI_BOTTOM + 200},
			  group = "allegiance2",
			}
        ),

        woose_allegiance_lunar = {
		    title = WOOSE_SKILL_STRINGS.WOOSE_ALLEGIANCE_LUNAR_TITLE,
            desc = WOOSE_SKILL_STRINGS.WOOSE_ALLEGIANCE_LUNAR_DESC,
            icon = "woose_allegiance_lunar",
            pos = {UI_RIGHT - 40, UI_BOTTOM + 185},
            group = "allegiance2",
            tags = {"allegiance","lunar","lunar_favor"},
            locks = {"woose_allegiance_count_lock_2", "woose_allegiance_lock_3", "woose_allegiance_lock_5"},

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