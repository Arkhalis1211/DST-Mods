local prefabs = {}
table.insert(prefabs, CreatePrefabSkin("wearger_none",{
	base_prefab = "wearger",
	build_name_override = "wearger",
	type = "base",
	rarity = "Character",
	skins = {
		normal_skin = "wearger",
		ghost_skin = "ghost_wearger_build",
	},
	assets = {
		Asset( "ANIM", "anim/wearger.zip" ),
		Asset( "ANIM", "anim/ghost_wearger_build.zip" ),
	},
	skin_tags = { "BASE", "WEARGER", },
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 0,
}))

table.insert(prefabs, CreatePrefabSkin("wearger_ice",
{
	base_prefab = "wearger",
	build_name_override = "wearger_ice",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 1,
	skin_tags = { "BASE", "WEARGER", "ICE"},
	skins = {
		normal_skin = "wearger_ice",
		ghost_skin = "ghost_wearger_build",
	},
	assets = {
		Asset( "ANIM", "anim/wearger_ice.zip" ),
		Asset( "ANIM", "anim/ghost_wearger_build.zip" ),
	},
}))

table.insert(prefabs, CreatePrefabSkin("wearger_survivor",
{
	base_prefab = "wearger",
	build_name_override = "wearger_survivor",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 1,
	skin_tags = { "BASE", "WEARGER", "SURVIVOR"},
	skins = {
		normal_skin = "wearger_survivor",
		ghost_skin = "ghost_wearger_build",
	},
	assets = {
		Asset( "ANIM", "anim/wearger_survivor.zip" ),
		Asset( "ANIM", "anim/ghost_wearger_build.zip" ),
	},
}))

table.insert(prefabs, CreatePrefabSkin("wearger_teddy",
{
	base_prefab = "wearger",
	build_name_override = "wearger_teddy",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 3,
	skin_tags = { "BASE", "WEARGER", "HALLOWED"},
	skins = {
		normal_skin = "wearger_teddy",
		ghost_skin = "ghost_wearger_build",
	},
	assets = {
		Asset( "ANIM", "anim/wearger_teddy.zip" ),
		Asset( "ANIM", "anim/ghost_wearger_build.zip" ),
	},
}))

table.insert(prefabs, CreatePrefabSkin("wearger_minotaur",
{
	base_prefab = "wearger",
	build_name_override = "wearger_minotaur",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 4,
	skin_tags = { "COSTUME", "BASE", "WEARGER" },
	skins = {
		normal_skin = "wearger_minotaur",
		ghost_skin = "ghost_wearger_build",
	},
	assets = {
		Asset( "ANIM", "anim/wearger_minotaur.zip" ),
		Asset( "ANIM", "anim/ghost_wearger_build.zip" ),
	},
}))

table.insert(prefabs, CreatePrefabSkin("wearger_lunar",
{
	base_prefab = "wearger",
	build_name_override = "wearger_lunar",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 5,
	skin_tags = { "LUNAR", "BASE", "WEARGER" },
	skins = {
		normal_skin = "wearger_lunar",
		ghost_skin = "ghost_wearger_build",
	},
	assets = {
		Asset( "ANIM", "anim/wearger_lunar.zip" ),
		Asset( "ANIM", "anim/ghost_wearger_build.zip" ),
		Asset( "ANIM", "anim/wearger_lunar_flame.zip" ),
	},
}))

return unpack(prefabs)