
-- !!This file is only used by Mods in Menu!!

local _G = GLOBAL
local PREFAB_SKINS = _G.PREFAB_SKINS
local PREFAB_SKINS_IDS = _G.PREFAB_SKINS_IDS
local SKIN_AFFINITY_INFO = GLOBAL.require("skin_affinity_info")

local prefabs = {
	"weerclops",
	"wearger",
	"woose",
	"wragonfly",
	"weerclops_none", 
	"wearger_none", 
	"woose_none", 
	"wragonfly_none",
	"wearger_lunar_eyeflame",
}
PrefabFiles = prefabs

Assets = 
{
	--Deerclops:
	Asset( "IMAGE", "images/avatars/avatar_weerclops.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_weerclops.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_ghost_weerclops.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_ghost_weerclops.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_weerclops.tex" ),
	Asset( "ATLAS", "images/avatars/self_inspect_weerclops.xml" ),
	Asset( "IMAGE", "bigportraits/weerclops.tex" ),
	Asset( "ATLAS", "bigportraits/weerclops.xml" ),
	Asset( "IMAGE", "bigportraits/weerclops_none.tex" ),
	Asset( "ATLAS", "bigportraits/weerclops_none.xml" ),
	Asset( "IMAGE", "bigportraits/weerclops_ice.tex" ),
	Asset( "ATLAS", "bigportraits/weerclops_ice.xml" ),
	Asset( "IMAGE", "bigportraits/weerclops_rose.tex" ),
	Asset( "ATLAS", "bigportraits/weerclops_rose.xml" ),
	Asset( "IMAGE", "bigportraits/weerclops_magma.tex" ),
	Asset( "ATLAS", "bigportraits/weerclops_magma.xml" ),
	Asset( "IMAGE", "bigportraits/weerclops_klaus.tex" ),
	Asset( "ATLAS", "bigportraits/weerclops_klaus.xml" ),
	Asset( "IMAGE", "images/crafting_menu_avatars/avatar_weerclops.tex" ),
	Asset( "ATLAS", "images/crafting_menu_avatars/avatar_weerclops.xml" ),
	Asset( "SOUNDPACKAGE", "sound/weerclops.fev" ),
	Asset( "SOUND", "sound/weerclops.fsb" ),
	--Bearger:
	Asset( "IMAGE", "images/avatars/avatar_wearger.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_wearger.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_ghost_wearger.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_ghost_wearger.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_wearger.tex" ),
	Asset( "ATLAS", "images/avatars/self_inspect_wearger.xml" ),
	Asset( "IMAGE", "bigportraits/wearger.tex" ),
	Asset( "ATLAS", "bigportraits/wearger.xml" ),
	Asset( "IMAGE", "bigportraits/wearger_none.tex" ),
	Asset( "ATLAS", "bigportraits/wearger_none.xml" ),
	Asset( "IMAGE", "bigportraits/wearger_ice.tex" ),
	Asset( "ATLAS", "bigportraits/wearger_ice.xml" ),
	Asset( "IMAGE", "bigportraits/wearger_survivor.tex" ),
	Asset( "ATLAS", "bigportraits/wearger_survivor.xml" ),
	Asset( "IMAGE", "bigportraits/wearger_teddy.tex" ),
	Asset( "ATLAS", "bigportraits/wearger_teddy.xml" ),
	Asset( "IMAGE", "bigportraits/wearger_minotaur.tex" ),
	Asset( "ATLAS", "bigportraits/wearger_minotaur.xml" ),
	Asset( "IMAGE", "bigportraits/wearger_lunar.tex" ),
	Asset( "ATLAS", "bigportraits/wearger_lunar.xml" ),
	Asset( "IMAGE", "images/crafting_menu_avatars/avatar_wearger.tex" ),
	Asset( "ATLAS", "images/crafting_menu_avatars/avatar_wearger.xml" ),
	Asset( "ATLAS", "images/wearger_skilltree.xml" ),
	Asset( "IMAGE", "images/wearger_skilltree.tex" ),
	Asset( "SOUNDPACKAGE", "sound/wearger.fev" ),
	Asset( "SOUND", "sound/wearger.fsb" ),
	--Moose/Goose:
	Asset( "IMAGE", "images/avatars/avatar_woose.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_woose.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_ghost_woose.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_ghost_woose.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_woose.tex" ),
	Asset( "ATLAS", "images/avatars/self_inspect_woose.xml" ),
	Asset( "IMAGE", "bigportraits/woose.tex" ),
	Asset( "ATLAS", "bigportraits/woose.xml" ),
	Asset( "IMAGE", "bigportraits/woose_none.tex" ),
	Asset( "ATLAS", "bigportraits/woose_none.xml" ),
	Asset( "IMAGE", "bigportraits/woose_ice.tex" ),
	Asset( "ATLAS", "bigportraits/woose_ice.xml" ),
	Asset( "IMAGE", "bigportraits/woose_young.tex" ),
	Asset( "ATLAS", "bigportraits/woose_young.xml" ),
	Asset( "IMAGE", "bigportraits/woose_victorian.tex" ),
	Asset( "ATLAS", "bigportraits/woose_victorian.xml" ),
	Asset( "IMAGE", "bigportraits/woose_malbatross.tex" ),
	Asset( "ATLAS", "bigportraits/woose_malbatross.xml" ),
	Asset( "IMAGE", "bigportraits/woose_shadow.tex" ),
	Asset( "ATLAS", "bigportraits/woose_shadow.xml" ),
	Asset( "IMAGE", "images/crafting_menu_avatars/avatar_woose.tex" ),
	Asset( "ATLAS", "images/crafting_menu_avatars/avatar_woose.xml" ),
	Asset( "SOUNDPACKAGE", "sound/woose.fev" ),
	Asset( "SOUND", "sound/woose.fsb" ),
	--Dragonfly:
	Asset( "IMAGE", "images/avatars/avatar_wragonfly.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_wragonfly.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_ghost_wragonfly.tex" ),
	Asset( "ATLAS", "images/avatars/avatar_ghost_wragonfly.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_wragonfly.tex" ),
	Asset( "ATLAS", "images/avatars/self_inspect_wragonfly.xml" ),
	Asset( "IMAGE", "bigportraits/wragonfly.tex" ),
	Asset( "ATLAS", "bigportraits/wragonfly.xml" ),
	Asset( "IMAGE", "bigportraits/wragonfly_none.tex" ),
	Asset( "ATLAS", "bigportraits/wragonfly_none.xml" ),
	Asset( "IMAGE", "bigportraits/wragonfly_ice.tex" ),
	Asset( "ATLAS", "bigportraits/wragonfly_ice.xml" ),
	Asset( "IMAGE", "bigportraits/wragonfly_shadow.tex" ),
	Asset( "ATLAS", "bigportraits/wragonfly_shadow.xml" ),
	Asset( "IMAGE", "bigportraits/wragonfly_haunted.tex" ),
	Asset( "ATLAS", "bigportraits/wragonfly_haunted.xml" ),
	Asset( "IMAGE", "bigportraits/wragonfly_antlion.tex" ),
	Asset( "ATLAS", "bigportraits/wragonfly_antlion.xml" ),
	Asset( "IMAGE", "bigportraits/wragonfly_lunar.tex" ),
	Asset( "ATLAS", "bigportraits/wragonfly_lunar.xml" ),
	Asset( "IMAGE", "images/crafting_menu_avatars/avatar_wragonfly.tex" ),
	Asset( "ATLAS", "images/crafting_menu_avatars/avatar_wragonfly.xml" ),
	Asset( "SOUNDPACKAGE", "sound/wragonfly.fev" ),
	Asset( "SOUND", "sound/wragonfly.fsb" ),
	--
	Asset( "IMAGE", "images/names_gold_weerclops.tex" ),
	Asset( "ATLAS", "images/names_gold_weerclops.xml" ),
	Asset( "IMAGE", "images/names_gold_wearger.tex" ),
	Asset( "ATLAS", "images/names_gold_wearger.xml" ),
	Asset( "IMAGE", "images/names_gold_woose.tex" ),
	Asset( "ATLAS", "images/names_gold_woose.xml" ),
	Asset( "IMAGE", "images/names_gold_wragonfly.tex" ),
	Asset( "ATLAS", "images/names_gold_wragonfly.xml" ),
	--
	Asset( "IMAGE", "images/names_weerclops.tex" ),
	Asset( "ATLAS", "images/names_weerclops.xml" ),
	Asset( "IMAGE", "images/names_wearger.tex" ),
	Asset( "ATLAS", "images/names_wearger.xml" ),
	Asset( "IMAGE", "images/names_woose.tex" ),
	Asset( "ATLAS", "images/names_woose.xml" ),
	Asset( "IMAGE", "images/names_wragonfly.tex" ),
	Asset( "ATLAS", "images/names_wragonfly.xml" ),
	--
	Asset( "IMAGE", "images/names_gold_cn_weerclops.tex" ),
	Asset( "ATLAS", "images/names_gold_cn_weerclops.xml" ),
	Asset( "IMAGE", "images/names_gold_cn_wearger.tex" ),
	Asset( "ATLAS", "images/names_gold_cn_wearger.xml" ),
	Asset( "IMAGE", "images/names_gold_cn_woose.tex" ),
	Asset( "ATLAS", "images/names_gold_cn_woose.xml" ),
	Asset( "IMAGE", "images/names_gold_cn_wragonfly.tex" ),
	Asset( "ATLAS", "images/names_gold_cn_wragonfly.xml" ),
	--
	Asset( "IMAGE", "images/saveslot_portraits/weerclops.tex" ),
	Asset( "ATLAS", "images/saveslot_portraits/weerclops.xml" ),
	Asset( "IMAGE", "images/saveslot_portraits/wearger.tex" ),
	Asset( "ATLAS", "images/saveslot_portraits/wearger.xml" ),
	Asset( "IMAGE", "images/saveslot_portraits/woose.tex" ),
	Asset( "ATLAS", "images/saveslot_portraits/woose.xml" ),
	Asset( "IMAGE", "images/saveslot_portraits/wragonfly.tex" ),
	Asset( "ATLAS", "images/saveslot_portraits/wragonfly.xml" ),
	--
	Asset( "ATLAS", "images/runts_skilltree_icons.xml" ),
	Asset( "IMAGE", "images/runts_skilltree_icons.tex" ),
	Asset( "IMAGE", "images/runtsitemimages.tex" ),
	Asset( "ATLAS", "images/runtsitemimages.xml" ),
	Asset( "ATLAS_BUILD", "images/runtsitemimages.xml", 256 ),
}

modimport("scripts/strings.lua")

--
TUNING.WEERCLOPS_HEALTH = GetModConfigData("weerclops_health")--150
TUNING.WEERCLOPS_HUNGER = GetModConfigData("weerclops_hunger")--150
TUNING.WEERCLOPS_SANITY = GetModConfigData("weerclops_sanity")--120
TUNING.WEARGER_HEALTH = GetModConfigData("wearger_health")--175
TUNING.WEARGER_HUNGER = GetModConfigData("wearger_hunger")--230
TUNING.WEARGER_SANITY = GetModConfigData("wearger_sanity")--150
TUNING.WOOSE_HEALTH = GetModConfigData("woose_health")--175
TUNING.WOOSE_HUNGER = GetModConfigData("woose_hunger")--150
TUNING.WOOSE_SANITY = GetModConfigData("woose_sanity")--200
TUNING.WRAGONFLY_HEALTH = GetModConfigData("wragonfly_health")--200
TUNING.WRAGONFLY_HUNGER = GetModConfigData("wragonfly_hunger")--175
TUNING.WRAGONFLY_SANITY = GetModConfigData("wragonfly_sanity")--100
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.WRAGONFLY = { "ash", "ash", "ash", "ash", "ash", "ash" }
--

local anim_to_inst = {} -- This code is generously provided by guest-star Hornet!!

AddPrefabPostInit("wearger", function(inst)
    anim_to_inst[inst.AnimState] = inst

    inst:ListenForEvent("onremove", function()
        anim_to_inst[inst.AnimState] = nil

        if inst.wearger_lunar_flame then --fx
            inst.wearger_lunar_flame:Remove()
            inst.wearger_lunar_flame = nil
        end
    end)
end)

AddClassPostConstruct("widgets/skinspuppet", function(self)
    anim_to_inst[self.animstate] = self.anim.inst
    --
    self.inst:ListenForEvent("onremove", function()
        anim_to_inst[self.animstate] = nil

        if self.anim.inst.wearger_lunar_flame then --fx
            self.anim.inst.wearger_lunar_flame:Remove()
            self.anim.inst.wearger_lunar_flame = nil
        end
    end)
end)

local __SetSkinsOnAnim = GLOBAL.SetSkinsOnAnim
function GLOBAL.SetSkinsOnAnim(anim_state, prefab, base_skin, clothing_names, monkey_curse, skintype, default_build, ...)
    local inst = anim_to_inst[anim_state]
    if inst then
        if inst.wearger_lunar_flame then --fx
            inst.wearger_lunar_flame:Remove()
            inst.wearger_lunar_flame = nil
        end
    end

    __SetSkinsOnAnim(anim_state, prefab, base_skin, clothing_names, monkey_curse, skintype, default_build, ...)

    if base_skin == "wearger_lunar" and inst then
        inst.wearger_lunar_flame = GLOBAL.SpawnPrefab(inst.UITransform and "wearger_lunar_eyeflame_ui" or "wearger_lunar_eyeflame")
        inst.wearger_lunar_flame:AttachToOwner(inst)
    end
end

modimport("scripts/tools/skins_api")

SKIN_AFFINITY_INFO.weerclops = {
	"weerclops_ice",
	"weerclops_rose",
	"weerclops_magma",
	"weerclops_klaus",
}

PREFAB_SKINS["weerclops"] = {
	"weerclops_none", 
	"weerclops_ice",
	"weerclops_rose",
	"weerclops_magma",
	"weerclops_klaus",
}

SKIN_AFFINITY_INFO.wearger = {
	"wearger_ice",
	"wearger_survivor",
	"wearger_teddy",
	"wearger_minotaur",
	"wearger_lunar",
}

PREFAB_SKINS["wearger"] = {
	"wearger_none", 
	"wearger_ice",
	"wearger_survivor",
	"wearger_teddy",
	"wearger_minotaur",
	"wearger_lunar",
}

SKIN_AFFINITY_INFO.woose = {
	"woose_ice",
	"woose_young",
	"woose_victorian",
	"woose_malbatross",
	"woose_shadow",
}

PREFAB_SKINS["woose"] = {
	"woose_none", 
	"woose_ice",
	"woose_young",
	"woose_victorian",
	"woose_malbatross",
	"woose_shadow",
}

SKIN_AFFINITY_INFO.wragonfly = {
	"wragonfly_ice",
	"wragonfly_shadow",
	"wragonfly_haunted",
	"wragonfly_antlion",
	"wragonfly_lunar",
}

PREFAB_SKINS["wragonfly"] = {
	"wragonfly_none", 
	"wragonfly_ice",
	"wragonfly_shadow",
	"wragonfly_haunted",
	"wragonfly_antlion",
	"wragonfly_lunar",
}

AddSkinnableCharacter("weerclops")
AddSkinnableCharacter("wearger")
AddSkinnableCharacter("woose")
AddSkinnableCharacter("wragonfly")

PREFAB_SKINS_IDS = {}
for prefab,skins in pairs(PREFAB_SKINS) do
    PREFAB_SKINS_IDS[prefab] = {}
    for k,v in pairs(skins) do
      	  PREFAB_SKINS_IDS[prefab][v] = k
    end
end

--
if GetModConfigData("enable_weerclops") == true then
AddModCharacter("weerclops", "NEUTRAL")
end
if GetModConfigData("enable_wearger") == true then
AddModCharacter("wearger", "MALE")
end
if GetModConfigData("enable_woose") == true then
AddModCharacter("woose", "FEMALE")
end
if GetModConfigData("enable_wragonfly") == true then
AddModCharacter("wragonfly", "FEMALE",
{
{ type = "powerup", play_emotes = true },
{ type = "ghost_skin", anim_bank = "ghost", idle_anim = "idle", scale = 0.75, offset = { 0, -25 } }
}
)
end