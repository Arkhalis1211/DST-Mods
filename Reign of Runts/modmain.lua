local State = GLOBAL.State
local require = GLOBAL.require
SoundEmitter = GLOBAL.SoundEmitter
local FRAMES = GLOBAL.FRAMES
local EventHandler = GLOBAL.EventHandler
local TimeEvent = GLOBAL.TimeEvent
local ActionHandler = GLOBAL.ActionHandler
local ACTIONS = GLOBAL.ACTIONS
local Vector3 = GLOBAL.Vector3
local SpawnPrefab = GLOBAL.SpawnPrefab
local TheWorld = GLOBAL.TheWorld
------------------------------------------------------------------
local _G = GLOBAL
local PREFAB_SKINS = _G.PREFAB_SKINS
local PREFAB_SKINS_IDS = _G.PREFAB_SKINS_IDS
local SKIN_AFFINITY_INFO = GLOBAL.require("skin_affinity_info")
------------------------------------------------------------------
local prefabs = {
	"weerclops",
	"wearger",
	"woose",
	"wragonfly",
	"lavae_wragonfly",
	"weerclops_none", 
	"wearger_none", 
	"woose_none", 
	"nest_woose",
	"nestbuff",
	"wragonfly_none",
	"wearger_items",
	"wearger_lunar_eyeflame",
	"wragonfly_lavaspit",
	"woose_capelet",
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
	Asset( "ATLAS", "images/woose_skilltree.xml" ),
	Asset( "IMAGE", "images/woose_skilltree.tex" ),
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
	Asset( "ATLAS", "images/wragonfly_skilltree.xml" ),
	Asset( "IMAGE", "images/wragonfly_skilltree.tex" ),
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
	Asset( "ATLAS", "images/runts_skilltree_icons.xml" ),
	Asset( "IMAGE", "images/runts_skilltree_icons.tex" ),
	Asset( "IMAGE", "images/runtsitemimages.tex" ),
	Asset( "ATLAS", "images/runtsitemimages.xml" ),
	Asset( "ATLAS_BUILD", "images/runtsitemimages.xml", 256 ),
	Asset( "IMAGE", "images/minimap_runts.tex" ),
	Asset( "ATLAS", "images/minimap_runts.xml" ),
}
-------------------------- GENERAL --------------------------
local function AddCharacterSounds(prefabsound)
	if prefabsound ~= nil then
		table.insert(Assets, Asset("SOUNDPACKAGE", "sound/"..prefabsound..".fev"))
		table.insert(Assets, Asset("SOUND", "sound/"..prefabsound..".fsb"))
		local voicenames = {"death_voice", "hurt", "talk_LP", "emote", "ghost_LP", "yawn", "pose", "carol", "eye_rub_vo", "sinking"}
		for key,sound in pairs(voicenames) do
			RemapSoundEvent( "dontstarve/characters/"..prefabsound.."/"..sound, prefabsound.."/"..prefabsound.."/"..sound)
		end
	end
end

AddCharacterSounds("weerclops")
AddCharacterSounds("wearger")
AddCharacterSounds("woose")
AddCharacterSounds("wragonfly")
------------------------------------------------------------------
local ITEMS = {
    "nest_woose_inv",
    "wearger_hat",
    "wearger_bed",
    "wearger_bin",
    "wearger_bin_open",
    "wearger_rug",
    "woose_capelet",
}
for _, item in ipairs(ITEMS) do
	RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/runtsitemimages.xml"), item..".tex")
end
GLOBAL.RUNTSINVIMAGE = MODROOT.."images/runtsitemimages.xml"
------------------------------------------------------------------
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
------------------------------------------------------------------
if GetModConfigData("enable_monstertag") == true then
	function MonsterPostInit(inst)
		inst:AddTag("playermonster")
		inst:AddTag("monster")
	end

	AddPrefabPostInit("wearger", MonsterPostInit)
	AddPrefabPostInit("weerclops", MonsterPostInit)
	AddPrefabPostInit("wragonfly", MonsterPostInit)
end

AddMinimapAtlas("images/minimap_runts.xml")

modimport("scripts/strings.lua")

modimport("modmain_actions.lua")

modimport("modmain_stategraphs.lua")
--------------------------------------------------------------------------
	-------------------------- DEERCLOPS --------------------------
--------------------------------------------------------------------------
-- Tuning --------------------------------------------------------
TUNING.WEERCLOPS_SANITYSTART = GetModConfigData("weer_sanitydrainstart")
TUNING.WEERCLOPS_FREEZING_KILL_TIME = GetModConfigData("weer_freezekill")
TUNING.WEERCLOPS_OVERHEAT_KILL_TIME = GetModConfigData("weer_hotkill")
TUNING.WEERCLOPS_STRUCTURE_SANITY = GetModConfigData("weer_sanitybonus")
TUNING.WEERCLOPS_ICE_RANGE = GetModConfigData("weerclops_ice_range")
TUNING.WEERCLOPS_OVERHEAT_TEMP = 70--GetModConfigData("weerclops_oheattemp")
------------------------------------------------------------------
if GetModConfigData("weerclops_attackstyle") == 1 then
	AddPrefabPostInit("weerclops", function(inst)
		inst:AddTag("frozenclaw")
	end)
end

if GetModConfigData("weerclops_fx") == 1 then
	AddPrefabPostInit("weerclops", function(inst)
		inst:AddTag("noisysmasher")
	end)
end
------------------------------------------------------------------
AddClassPostConstruct("widgets/heatover", function(self)
	function self:OnHeatChange()
		local temp = self.owner.components.temperature ~= nil
        and self.owner.components.temperature:GetCurrent()
        or (self.owner.player_classified ~= nil and
            self.owner.player_classified.currenttemperature or TUNING.STARTING_TEMP)

		local num_steps = 4

		local overheat_temp = (self.owner.prefab == "weerclops" and TUNING.WEERCLOPS_OVERHEAT_TEMP) or (self.owner.prefab == "wragonfly" and TUNING.WFLY_OVERHEAT_TEMP) or 70

		local all_up_thresh = {
			overheat_temp - 5,
			overheat_temp,
			overheat_temp + 5,
			overheat_temp + 10,
		}

		local heat_sounds = {
			"dontstarve_DLC001/common/HUD_hot_level1",
			"dontstarve_DLC001/common/HUD_hot_level2",
			"dontstarve_DLC001/common/HUD_hot_level3",
			"dontstarve_DLC001/common/HUD_hot_level4",
		}
		local heat_sounds_names = {
			"HUD_hot_level1",
			"HUD_hot_level2",
			"HUD_hot_level3",
			"HUD_hot_level4",
		}

		local isup = false

		while all_up_thresh[self.laststep+1] ~= nil and
			temp > all_up_thresh[self.laststep+1] and
			self.laststep < num_steps and
			(temp >= all_up_thresh[1] or GLOBAL.TheWorld.state.issummer or GetLocalTemperature(self.owner) >= all_up_thresh[1]) do

			self.laststep = self.laststep + 1
			isup = true
		end

		if isup then
		if not GLOBAL.TheFrontEnd:GetSound():PlayingSound(heat_sounds_names[self.laststep]) then
			GLOBAL.TheFrontEnd:GetSound():PlaySound(heat_sounds[self.laststep], heat_sounds_names[self.laststep])
		end
		else
		while all_up_thresh[self.laststep] ~= nil and
			temp < all_up_thresh[self.laststep] and
			self.laststep > 0 do

			self.laststep = self.laststep - 1
		end
		end

		if self.laststep == 0 then
			self.alpha_min_target = 1
		else
		local alpha_mins =
		{
			.4, .3, .1, 0
		}
		self.alpha_min_target = alpha_mins[self.laststep]
		local distortion_size =
		{
		    0.01, 0.011, 0.012, 0.013
		}
		self.effectSize_target = distortion_size[self.laststep]
		local distortion_frequency =
		{
		    10, 13, 17, 20
		}
		self.effectFrequency_target = distortion_frequency[self.laststep]
		local distortion_speed =
		{
		    7, 7, 7, 7
		}
		self.effectSpeed = distortion_speed[self.laststep]
		self:StartUpdating()
		end
	end
end)
------------------------------------------------------------------
function WeerSanityPostInit(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst:AddTag("little_smashable")
	end
end

AddPrefabPostInit("succulent_potted", WeerSanityPostInit)
AddPrefabPostInit("pottedfern", WeerSanityPostInit)
AddPrefabPostInit("wall_hay", WeerSanityPostInit)
AddPrefabPostInit("fish_box", WeerSanityPostInit)
AddPrefabPostInit("steeringwheel", WeerSanityPostInit)

function WeerBiggerSanityPostInit(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst:AddTag("larger_smashable")
	end
end

AddPrefabPostInit("dragonflyfurnace", WeerBiggerSanityPostInit)
AddPrefabPostInit("rabbithouse", WeerBiggerSanityPostInit)
AddPrefabPostInit("pighouse", WeerBiggerSanityPostInit)
AddPrefabPostInit("wall_ruins", WeerBiggerSanityPostInit)
AddPrefabPostInit("wall_ruins_2", WeerBiggerSanityPostInit)
AddPrefabPostInit("wall_moonrock", WeerBiggerSanityPostInit)
AddPrefabPostInit("wall_dreadstone", WeerBiggerSanityPostInit)
AddPrefabPostInit("support_pillar", WeerBiggerSanityPostInit)
AddPrefabPostInit("support_pillar_dreadstone", WeerBiggerSanityPostInit)
--------------------------------------------------------------------------
	-------------------------- BEARGER --------------------------
--------------------------------------------------------------------------
-- Tuning -----------------------------------------------------------
--TUNING.BEARGER_GP_DAMAGE = GetModConfigData("wearg_gpdmg")
TUNING.BEARGER_HUNGERDRAIN = GetModConfigData("wearg_hungerd")
TUNING.BEARGER_HONEYBONUS = GetModConfigData("wearg_honey")
TUNING.WEARGER_ABSORPTION = GetModConfigData("wearger_hibasorp")
TUNING.BEARGER_YAWN_CHANCE = GetModConfigData("wearger_yawn")
TUNING.WEARGER_GP_CD = GetModConfigData("wearger_gp_cd")
--TUNING.WEARGER_GP_RANGE = GetModConfigData("wearger_gp_range")
TUNING.WEARGER_GP_PICK = GetModConfigData("wearger_gp_pick")
TUNING.WEARGER_GP_RANGE = GetModConfigData("wearger_gp_range_v2")
TUNING.BEARGER_GP_DAMAGE = GetModConfigData("wearg_gpdmg_v2")
TUNING.WEARGER_BEERESIST = GetModConfigData("wearger_beeresist")
--------------------------------------------------------------------
local function onsewn(inst, target, doer)
    doer:PushEvent("repair")
end

AddPrefabPostInit("furtuft", function(inst)
	inst:AddTag("tape")-- For "PATCH"
	inst:AddTag("furtuft")

	if not GLOBAL.TheWorld.ismastersim then
		return
	end

	if inst.components.sewing == nil then
		inst:AddComponent("sewing")
		inst.components.sewing.repair_value = TUNING.SEWINGKIT_REPAIR_VALUE / 8 -- 2,400 to 300
		inst.components.sewing.onsewn = onsewn
	end
end)
------------------------------------------------------------------
AddRecipe2("wearger_bearger_fur",				{Ingredient("furtuft", 40)}, 													GLOBAL.TECH.NONE,				{builder_tag="thickfurmaker", numtogive = 3, product="bearger_fur",  description="bearger_fur",  no_deconstruction=true,},				{"CHARACTER"})
AddRecipe2("wearger_hat", 				{Ingredient("bearger_fur", 1), Ingredient("silk", 2)},				GLOBAL.TECH.NONE,				{builder_tag="hibearhatmaker"},				{"CHARACTER", "CLOTHING"})
AddRecipe2("wearger_bin",				{Ingredient("bearger_fur", 1), Ingredient("rope", 2)}, 													GLOBAL.TECH.NONE,				{builder_tag="beargerbinmaker"},				{"CHARACTER"})
AddRecipe2("wearger_bed",				{Ingredient("bearger_fur", 1), Ingredient("rope", 1)}, 													GLOBAL.TECH.NONE,				{builder_tag="beargerbedmaker"},				{"CHARACTER"})
AddRecipe2("wearger_rug",				{Ingredient("bearger_fur", 2)}, 													GLOBAL.TECH.NONE,				{builder_tag="beargerrugmaker"},				{"CHARACTER"})
------------------------------------------------------------------
local containers = require("containers")
local params = containers.params

params.wearger_bin =
{
    widget =
    {
        slotpos = {},
        slotbg  = {},
        animbank  = "ui_icepack_2x3",
        animbuild = "ui_icepack_2x3",
        pos = Vector3(75, 195, 0),
        side_align_tip = 160,
    },
    type = "chest",
}

for y = 0, 2 do
    for x = 0, 1 do
        table.insert(params.wearger_bin.widget.slotpos, Vector3(-163 + (75 * x),   -75 * y + 73,   0))
    end
end

function params.wearger_bin.itemtestfn(container, item, slot)
    return not item:HasTag("portablestorage")
end
------------------------------------------------------------------
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

AddClassPostConstruct("widgets/playerbadge", function(self)
    anim_to_inst[self.head_animstate] = self.head_anim.inst
    --
    self.inst:ListenForEvent("onremove", function()
        anim_to_inst[self.head_animstate] = nil

        if self.head_anim.inst.wearger_lunar_flame then --fx
            self.head_anim.inst.wearger_lunar_flame:Remove()
            self.head_anim.inst.wearger_lunar_flame = nil
        end
    end)
end)
--------------------------------------------------------------------------
	-------------------------- MOOSE/GOOSE --------------------------
--------------------------------------------------------------------------
-- Tuning -----------------------------------------------------------
TUNING.WOOSE_DROWNMAX = GetModConfigData("woose_drownmax")
--TUNING.WOOSE_TORNADO_DAMAGE = GetModConfigData("woose_aoedmg")
--TUNING.WOOSE_TORNADO_SPEED = GetModConfigData("woose_speen")
TUNING.WOOSE_TORNADO_GROG = GetModConfigData("woose_grog")
TUNING.WOOSE_TORNADO_INVULN = GetModConfigData("woose_iframes")
TUNING.WOOSE_TORNADO_LIGHTNING = GetModConfigData("woose_lightn")
TUNING.WOOSE_HONK_RANGE = GetModConfigData("woose_honkrange")
TUNING.WOOSE_WETNESS_GAIN = GetModConfigData("woose_wetness")
TUNING.WOOSE_NEST_BUFF = GetModConfigData("woose_nestbuff")
TUNING.WOOSE_NEST_TIME = GetModConfigData("woose_nesttime")
TUNING.WOOSE_TORNADO_HAMMER = GetModConfigData("woose_spinhammer")
TUNING.WOOSE_TORNADO_DAMAGE = GetModConfigData("woose_spindmg_v2")
TUNING.WOOSE_TORNADO_SPEED = GetModConfigData("woose_speen_v2")
TUNING.WOOSE_TORNADO_TIME = GetModConfigData("woose_spin_time")
TUNING.WOOSE_LIGHTNING_ATTRACT = GetModConfigData("woose_lightning")
------------------------------------------------------------------
if GetModConfigData("enable_nesting") == true then
	AddRecipe2("nesting_woose", 				{Ingredient("dug_sapling", 1), Ingredient("twigs", 10), Ingredient("cutgrass", 10)},				GLOBAL.TECH.NONE,				{builder_tag="woosegoose", atlas = "images/runtsitemimages.xml", image = "nest_woose_inv.tex"},				{"CHARACTER"})
end

AddRecipe2("woose_capelet",				{Ingredient("goose_feather", 15), Ingredient("rope", 3)}, 													GLOBAL.TECH.NONE,				{builder_tag="feathercapemaker", atlas = "images/runtsitemimages.xml", image = "woose_capelet.tex"},				{"CHARACTER", "CLOTHING"})
------------------------------------------------------------------
local function OnEquip_Woose(inst, data)
	if data.owner ~= nil and data.owner:HasTag("woosegoose") then
		if data.owner.components.skinner ~= nil then
			for k, v in pairs(data.owner.components.skinner:GetClothing()) do
				if data.owner.components.skinner.skin_name == "woose_victorian" then
					data.owner.AnimState:Hide("HEAD")
					data.owner.AnimState:Show("HEAD_HAT")
				else
					data.owner.AnimState:Show("HEAD")
					data.owner.AnimState:Hide("HEAD_HAT")
				end
			end
		end
	end
end

--Woose has large noticeable antlers, for hats that don't fully cover the top

local PREFABS = {
	"tophat",
	"walrushat",
	"strawhat",
	"minerhat",
	"wathgrithrhat",
	"walterhat",
	"balloonhat",
	"monkey_smallhat",
	"nightcaphat",
	"woodcarvedhat",
}

for i, v in pairs(PREFABS) do
	AddPrefabPostInit(v, function(inst)
		if not GLOBAL.TheWorld.ismastersim then
			return inst
		end
		inst:ListenForEvent("equipped", OnEquip_Woose)
	end) 
end

------------------------------------------------------------------
if GetModConfigData("woose_wetdrain") == true then
	AddPrefabPostInit("woose", 	function(inst)
		if GLOBAL.TheWorld.ismastersim then
			inst.components.sanity.no_moisture_penalty = true
		end
	end)
end
------------------------------------------------------------------
if GetModConfigData("enable_noeggeater") == true then
function EaterPostInit(comp)
	local _PrefersToEat = comp.PrefersToEat
	comp.PrefersToEat = function(self, food)
		if (food.prefab:find("egg") or food.prefab == "perogies" or food.prefab == "waffles" or food.prefab == "barnaclesushi" or food.prefab == "potatosouffle" or food.prefab == "monstertartare") and self.inst.prefab == "woose" then
			return false
		end
		return _PrefersToEat(self, food)
	end
end

AddComponentPostInit("eater", EaterPostInit)
end
------------------------------------------------------------------
local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "fan", "swap_fan")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
	if owner ~= nil and owner.components.skilltreeupdater ~= nil and owner.components.skilltreeupdater:IsActivated("woose_feather_fan_2") then
		inst.components.equippable.walkspeedmult = 1.2
	end
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
	inst.components.equippable.walkspeedmult = 1
end

local function ReticuleTargetAllowWaterFn()
	local player = GLOBAL.ThePlayer
	local ground = GLOBAL.TheWorld.Map
	local pos = Vector3()
	for r = 38, 0, 0 do
		pos.x, pos.y, pos.z = player.entity:LocalToWorldSpace(r, 0, 0)
		if ground:IsPassableAtPoint(pos.x, 0, pos.z, true) and not ground:IsGroundTargetBlocked(pos) then
			return pos
		end
	end
	return pos
end

local function SpellFn(inst, doer, pos)
	GLOBAL.TheWorld:PushEvent("ms_sendlightningstrike", pos)
	if doer ~= nil and doer.components.skilltreeupdater ~= nil and doer.components.skilltreeupdater:IsActivated("woose_feather_fan_2") then
		inst.components.rechargeable:Discharge(TUNING.WATHGRITHR_SHIELD_COOLDOWN*3) -- 30s
	else
		inst.components.rechargeable:Discharge(TUNING.WATHGRITHR_SHIELD_COOLDOWN*12) -- 2m
	end
end

local function Lightning_OnDischarged(inst)
    inst.components.aoetargeting:SetEnabled(false)
	inst.components.finiteuses:Use(1)
end

local function Lightning_OnCharged(inst)
    local owner = inst.components.inventoryitem:GetGrandOwner()

    if owner ~= nil and owner.components.skilltreeupdater ~= nil and owner.components.skilltreeupdater:IsActivated("woose_feather_fan_1") then
        inst.components.aoetargeting:SetEnabled(true)
    end
end

local function Lightning_OnUpgraded(inst, upgrader, item)
	-- Woose can upgrade one fan and give it to another Woose with the same skill and they can strike - Do I want to keep that functionality? 
    inst.components.aoetargeting:SetEnabled(true)
    if not inst.charged then
        inst.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
        inst.charged = true
    end
end

local function OnSave_Skill(inst, data)
    if inst.charged then
        data.charged = inst.charged
    end
end

local function OnLoad_Skill(inst, data)
    if data ~= nil and data.charged then
        Lightning_OnUpgraded(inst)
    end
end

AddPrefabPostInit("featherfan", function(inst)
	inst:AddTag("allow_action_on_impassable")
	inst:AddTag("rechargeable")

	if inst.components.aoetargeting == nil then
		inst:AddComponent("aoetargeting")
		inst.components.aoetargeting:SetEnabled(false)
		inst.components.aoetargeting:SetAllowWater(true)
		inst.components.aoetargeting:SetRange(25)
		inst.components.aoetargeting.reticule.reticuleprefab = "reticuleaoe_1_6"
		inst.components.aoetargeting.reticule.pingprefab = "reticuleaoeping_1_6"
		inst.components.aoetargeting.reticule.targetfn = ReticuleTargetAllowWaterFn
		inst.components.aoetargeting.reticule.validcolour = { 1, .75, 0, 1 }
		inst.components.aoetargeting.reticule.invalidcolour = { .5, 0, 0, 1 }
		inst.components.aoetargeting.reticule.ease = true
		inst.components.aoetargeting.reticule.mouseenabled = true
		inst.components.aoetargeting.reticule.twinstickmode = 1
		inst.components.aoetargeting.reticule.twinstickrange = 8
	end

	if not GLOBAL.TheWorld.ismastersim then
		return inst
	end

	if inst.components.aoespell == nil then
		inst:AddComponent("aoespell")
		inst.components.aoespell:SetSpellFn(SpellFn)
	end

	if inst.components.rechargeable == nil then
		inst:AddComponent("rechargeable")
		inst.components.rechargeable:SetOnDischargedFn(Lightning_OnDischarged)
		inst.components.rechargeable:SetOnChargedFn(Lightning_OnCharged)
	end

	if inst.components.upgradeable == nil then
		inst:AddComponent("upgradeable")
		inst.components.upgradeable.upgradetype = GLOBAL.UPGRADETYPES.SPEAR_LIGHTNING
		inst.components.upgradeable:SetOnUpgradeFn(Lightning_OnUpgraded)
	end

	if inst.components.equippable == nil then
		inst:AddComponent("equippable")
		inst.components.equippable:SetOnEquip(onequip)
		inst.components.equippable:SetOnUnequip(onunequip)
		inst.components.equippable.restrictedtag = "featherfanholder"
	end

    inst.OnSave = OnSave_Skill
    inst.OnLoad = OnLoad_Skill

end)
------------------------------------------------------------------
AddPrefabPostInitAny(function(inst)
	if inst:HasTag("oceanfish") and inst:HasTag("NOCLICK") then
		inst:RemoveTag("NOCLICK") -- This may cause potential problems, keep an eye out
	end
end)
--------------------------------------------------------------------------
	-------------------------- DRAGONFLY --------------------------
--------------------------------------------------------------------------
-- Tuning -----------------------------------------------------------
TUNING.WFLY_FIRE_IMMUNE = GetModConfigData("wfly_fireimmune")
TUNING.WFLYSUMMON_PENALTY = GetModConfigData("wfly_summondmg")
TUNING.WFLY_ENRAGE_MAXHP = GetModConfigData("wfly_enraged_maxhp")
TUNING.WFLY_ENRAGED_TIME = GetModConfigData("wfly_enraged_timer")
TUNING.WFLY_ENRAGED_CDTIME = GetModConfigData("wfly_enraged_cd")
TUNING.WFLY_MAX_ASHES = GetModConfigData("wfly_ashes")
TUNING.WFLY_LAVAE_DAMAGE = GetModConfigData("wfly_lavaedmg")
TUNING.WFLY_MAX_LAVAE = GetModConfigData("wfly_lavaemax")
TUNING.WFLY_OVERHEAT_TEMP = GetModConfigData("wfly_oheattemp")
TUNING.WFLY_ENRAGED_ATTACK_MULT = GetModConfigData("wfly_atk_mult")
TUNING.WFLY_ENRAGED_RUN_SPEED = GetModConfigData("wfly_spd_mult")
TUNING.WFLY_ENRAGED_BURSTDMG = GetModConfigData("wfly_enraged_burstdmg")
TUNING.WFLY_LAVAE_HEALTH = GetModConfigData("wfly_lavaehp")
------------------------------------------------------------------
AddPrefabPostInit("lava_pond", 	function(inst)
	if GLOBAL.TheWorld.ismastersim then
		if inst.components.magmaaction == nil then
			inst:AddComponent("magmaaction")
		end
	end
end)

--Ash Eater
local Eater = require("components/eater")

function Eater:SetCanEatBurnt()
    table.insert(self.preferseating, GLOBAL.FOODTYPE.BURNT)
    table.insert(self.caneat, GLOBAL.FOODTYPE.BURNT)
    self.inst:AddTag(GLOBAL.FOODTYPE.BURNT.."_eater")
end

function OnEatBurnt(inst, eater)
	if not eater:HasTag("wragonfly") then
		eater.components.health:DoDelta(18)--Restores values back to their original 20
		eater.components.hunger:DoDelta(17.5)
	end
end

function BurntEaterPostInit(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.edible.hungervalue = 2.5
		inst.components.edible.healthvalue = 2
		inst.components.edible:SetOnEatenFn(OnEatBurnt)
	end
end
AddPrefabPostInit("ash", BurntEaterPostInit)
AddPrefabPostInit("charcoal", BurntEaterPostInit)
------------------------------------------------------------------
local function onattack(inst, data)
	if inst:HasTag("Enraged") and not inst:HasTag("icedfly") then
		if data.weapon ~= nil then
			if data.weapon.components.projectile ~= nil then
				return
			elseif data.weapon.components.complexprojectile ~= nil then
				return
			elseif data.weapon.components.weapon:CanRangedAttack() then
				return
			end
		end

		local target = data.target
		if target ~= nil and target:IsValid() and target.components.burnable ~= nil and math.random() < TUNING.TORCH_ATTACK_IGNITE_PERCENT * target.components.burnable.flammability * 2 then
			target.components.burnable:Ignite(nil, data.attacker)
		end
	end
end

if GetModConfigData("wfly_enraged_fire") == true then
	AddPrefabPostInit("wragonfly", function(inst)
		if GLOBAL.TheWorld.ismastersim then
			inst:ListenForEvent("onattackother", onattack)
		end
	end)
end
------------------------------------------------------------------
AddPrefabPostInit("lavae_cocoon", function(inst)
	inst:AddTag("lavae_cocoon")

	if not GLOBAL.TheWorld.ismastersim then
		return
	end

	if inst.components.magmaaction == nil then
		inst:AddComponent("magmaaction")
	end
end)
-------------------------- SKINS API --------------------------
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
-------------------------- UNINTELLIGIBLE --------------------------
if GetModConfigData("enable_unintelligible") == true then
--growling
local Oooh_endings = { "", "r" }
local Oooh_punc = { ".", "?", "!" }
local function ooohstart(isstart)
    local str = isstart and "G" or "G"
    local l = math.random(2, 4)
    for i = 2, l do
        str = str..(math.random() > 0.3 and "r" or "h")
    end
    return str
end
local function ooohspace()
    local c = math.random()
    local str =
	    (c <= 1 and " ") or
        (c <= .1 and "! ") or
        (c <= .2 and ". ") or
        (c <= .3 and "? ") or
        (c <= .4 and ", ") or
		(c <= .4 and " ") or
		(c <= 0 and "! ") or
        (c <= .1 and ". ") or
        (c <= .2 and "? ") or
        (c <= .3 and ", ")
    return str, c <= .3
end

local function ooohend()
    return Oooh_endings[math.random(#Oooh_endings)]
end
local function ooohpunc()
    return Oooh_punc[math.random(#Oooh_punc)]
end

local function CraftGrowl()
    local isstart = true
    local length = math.random(6)
    local str = ""
    for i = 1, length do
        str = str..ooohstart(isstart)..ooohend()
        if i ~= length then
            local space
            space, isstart = ooohspace()
            str = str..space
        end
    end
    return str..ooohpunc()
end

local _GetSpecialCharacterString = GLOBAL.GetSpecialCharacterString
GLOBAL.GetSpecialCharacterString = function(character)
	character = character and string.lower(character)
	return (character == "weerclops" and CraftGrowl()) or _GetSpecialCharacterString(character)
end
GLOBAL.GetSpecialCharacterString = function(character)
	character = character and string.lower(character)
	return (character == "wearger" and CraftGrowl()) or _GetSpecialCharacterString(character)
end
--honking
local Honk_endings = { "nk", "k" }
local function honkstart(isstart)
    local str = isstart and "H" or "H"
    local l = math.random(2, 4)
    for i = 2, l do
        str = str..(math.random() > 0.3 and "y" or "o")
    end
    return str
end
local function honkend()
    return Honk_endings[math.random(#Honk_endings)]
end
local function honkpunc()
    return Oooh_punc[math.random(#Oooh_punc)]
end
local function CraftHonk()
    local isstart = true
    local length = math.random(6)
    local str = ""
    for i = 1, length do
        str = str..honkstart(isstart)..honkend()
        if i ~= length then
            local space
            space, isstart = ooohspace()
            str = str..space
        end
    end
    return str..honkpunc()
end

local _GetSpecialCharacterString = GLOBAL.GetSpecialCharacterString
GLOBAL.GetSpecialCharacterString = function(character)
	character = character and string.lower(character)
	return (character == "woose" and CraftHonk()) or _GetSpecialCharacterString(character)
end
--buzzing
local Bzzt_endings = { "", "t", "z" }
local function bzztstart(isstart)
    local str = isstart and "B" or "Z"
    local l = math.random(2, 4)
    for i = 2, l do
        str = str..(math.random() > 0.3 and "r" or "t")
    end
    return str
end
local function bzztend()
    return Bzzt_endings[math.random(#Bzzt_endings)]
end
local function Bzrtpunc()
    return Oooh_punc[math.random(#Oooh_punc)]
end
local function CraftBzzt()
    local isstart = true
    local length = math.random(6)
    local str = ""
    for i = 1, length do
        str = str..bzztstart(isstart)..bzztend()
        if i ~= length then
            local space
            space, isstart = ooohspace()
            str = str..space
        end
    end
    return str..Bzrtpunc()
end
local _GetSpecialCharacterString = GLOBAL.GetSpecialCharacterString
GLOBAL.GetSpecialCharacterString = function(character)
	character = character and string.lower(character)
	return (character == "wragonfly" and CraftBzzt()) or _GetSpecialCharacterString(character)
end

end
------------------------------------------------------------------
if GLOBAL.TheNet:GetServerGameMode() == "lavaarena" then
TUNING.LAVAARENA_STARTING_HEALTH.WEERCLOPS = 150
TUNING.GAMEMODE_STARTING_ITEMS.LAVAARENA.WEERCLOPS = { "forginghammer", "reedtunic" }
TUNING.LAVAARENA_STARTING_HEALTH.WEARGER = 175--200
TUNING.GAMEMODE_STARTING_ITEMS.LAVAARENA.WEARGER = { "forginghammer", "forge_woodarmor" }
TUNING.LAVAARENA_STARTING_HEALTH.WOOSE = 125
TUNING.GAMEMODE_STARTING_ITEMS.LAVAARENA.WOOSE = { "pithpike", "featheredtunic" }
TUNING.LAVAARENA_SURVIVOR_DIFFICULTY.WOOSE= 2
TUNING.LAVAARENA_STARTING_HEALTH.WRAGONFLY = 200
TUNING.GAMEMODE_STARTING_ITEMS.LAVAARENA.WRAGONFLY = { "forginghammer", "forge_woodarmor" }
end
if GLOBAL.TheNet:GetServerGameMode() == "quagmire" then
TUNING.GAMEMODE_STARTING_ITEMS.QUAGMIRE.WOOSE = { "nesting_woose" }
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["nesting_woose"] = 
{
    atlas = "images/runtsitemimages.xml",
    image = "nest_woose_inv.tex",
}
end
-------------------------- SKILLTREES --------------------------
local ICONS = {
	"wearger_fur_1",	"wearger_foods",		"wearger_allegiance_shadow",
	"wearger_fur_2",	"wearger_yawn1",		"wearger_allegiance_lunar",
	"wearger_fur_craft_1",	"wearger_yawn2",	"wearger_pick_double2",
	"wearger_fur_left",	"wearger_yawn3",	"wearger_pick_double1",
	"wearger_fur_right",	"wearger_yawn4",	"wearger_hibear_full",
	"wearger_fur_craft_2",	"wearger_hibear1",	"wearger_hibear3",
	"wearger_fur_craft_3",	"wearger_hibear2",	"wearger_hibear4",

	"wragonfly_vigor_1",	"wragonfly_lavaehealth_1",	"wragonfly_allegiance_shadow",
	"wragonfly_vigor_2",	"wragonfly_lavaehealth_2",	"wragonfly_allegiance_lunar",
	"wragonfly_damage_1",	"wragonfly_lavaehunger_1",	"wragonfly_rage_lavae_1",
	"wragonfly_damage_2",	"wragonfly_lavaehunger_2",	"wragonfly_rage_lavae_2",
	"wragonfly_damage_3",	"wragonfly_lavaedeath_1",	"wragonfly_lavae_rage_1",
	"wragonfly_damage_4",	"wragonfly_lavaedeath_2",	"wragonfly_lavae_rage_2",
	"wragonfly_hunger",	"wragonfly_lavae_hot",	"wragonfly_ash",

	"woose_spin_rain",	"woose_nest_1",	"woose_allegiance_shadow",
	"woose_spin_1",	"woose_nest_follower",	"woose_allegiance_lunar",
	"woose_spin_2",	"woose_nest_lightning",	"woose_feather_fan_2",
	"woose_spin_3",	"woose_nest_charger",	"woose_feather_fan_1",
	"woose_spin_4",	"woose_nest_smother",	"woose_nest_invest_2",
	"woose_ocean_1",	"woose_birds_1",	"woose_nest_invest_1",
	"woose_ocean_2",	"woose_birds_2",	"woose_absorber",
}
for _, icon in ipairs(ICONS) do
	RegisterSkilltreeIconsAtlas(GLOBAL.resolvefilepath("images/runts_skilltree_icons.xml"), icon..".tex")
end

RegisterSkilltreeBGForCharacter(GLOBAL.resolvefilepath("images/wearger_skilltree.xml"), "wearger")
RegisterSkilltreeBGForCharacter(GLOBAL.resolvefilepath("images/wragonfly_skilltree.xml"), "wragonfly")
RegisterSkilltreeBGForCharacter(GLOBAL.resolvefilepath("images/woose_skilltree.xml"), "woose")

if GetModConfigData("enable_weerclops") == true then
	AddModCharacter("weerclops", "ROBOT")--Gendeerclops

end

if GetModConfigData("enable_wearger") == true then
	AddModCharacter("wearger", "MALE")

	if GetModConfigData("enable_wearger_skills") == true then
		local skilltree_defs = require("prefabs/skilltree_defs")
		local BuildSkillsData = require("prefabs/skilltree_wearger")
		if BuildSkillsData then
			local data = BuildSkillsData(skilltree_defs.FN)
			
			if data then
				skilltree_defs.CreateSkillTreeFor("wearger", data.SKILLS)
				skilltree_defs.SKILLTREE_ORDERS["wearger"] = data.ORDERS
			end
		end
	end
end

if GetModConfigData("enable_woose") == true then
	AddModCharacter("woose", "FEMALE")

	if GetModConfigData("enable_woose_skills") == true then
		local skilltree_defs = require("prefabs/skilltree_defs")
		local BuildSkillsData = require("prefabs/skilltree_woose")
		if BuildSkillsData then
			local data = BuildSkillsData(skilltree_defs.FN)
			
			if data then
				skilltree_defs.CreateSkillTreeFor("woose", data.SKILLS)
				skilltree_defs.SKILLTREE_ORDERS["woose"] = data.ORDERS
			end
		end
	end
end

if GetModConfigData("enable_wragonfly") == true then
	AddModCharacter("wragonfly", "FEMALE", --Thanks, Peter!
	{
		{ type = "powerup", play_emotes = true },
		{ type = "ghost_skin", anim_bank = "ghost", idle_anim = "idle", scale = 0.75, offset = { 0, -25 } }
	}
	)

	if GetModConfigData("enable_wragonfly_skills") == true then
		local skilltree_defs = require("prefabs/skilltree_defs")
		local BuildSkillsData = require("prefabs/skilltree_wragonfly")
		if BuildSkillsData then
			local data = BuildSkillsData(skilltree_defs.FN)
			
			if data then
				skilltree_defs.CreateSkillTreeFor("wragonfly", data.SKILLS)
				skilltree_defs.SKILLTREE_ORDERS["wragonfly"] = data.ORDERS
			end
		end
	end
end