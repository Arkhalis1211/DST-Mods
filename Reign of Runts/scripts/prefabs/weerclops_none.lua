local prefabs = {}
table.insert(prefabs, CreatePrefabSkin("weerclops_none",{
	base_prefab = "weerclops",
	build_name_override = "weerclops",
	type = "base",
	rarity = "Character",
	skins = {
		normal_skin = "weerclops",
		ghost_skin = "ghost_weerclops_build",
	},
	assets = {
		Asset( "ANIM", "anim/weerclops.zip" ),
		Asset( "ANIM", "anim/ghost_weerclops_build.zip" ),
	},
	skin_tags = { "BASE", "WEERCLOPS", },
	torso_tuck_builds = { "weerclops", },
	torso_untuck_wide_builds = { "weerclops", },
	has_alternate_for_body = { "weerclops", },
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 0,
}))

table.insert(prefabs, CreatePrefabSkin("weerclops_ice",
{
	base_prefab = "weerclops",
	build_name_override = "weerclops_ice",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 1,
	skin_tags = { "BASE", "WEERCLOPS", "ICE"},
	torso_tuck_builds = { "weerclops_ice", },
	torso_untuck_wide_builds = { "weerclops_ice", },
	has_alternate_for_body = { "weerclops_ice", },
	skins = {
		normal_skin = "weerclops_ice",
		ghost_skin = "ghost_weerclops_build",
	},
	assets = {
		Asset( "ANIM", "anim/weerclops_ice.zip" ),
		Asset( "ANIM", "anim/ghost_weerclops_build.zip" ),
	},

}))

table.insert(prefabs, CreatePrefabSkin("weerclops_rose",
{
	base_prefab = "weerclops",
	build_name_override = "weerclops_rose",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 1,
	skin_tags = { "BASE", "WEERCLOPS", "ROSE"},
	torso_tuck_builds = { "weerclops_rose", },
	torso_untuck_wide_builds = { "weerclops_rose", },
	has_alternate_for_body = { "weerclops_rose", },
	skins = {
		normal_skin = "weerclops_rose",
		ghost_skin = "ghost_weerclops_build",
	},
	assets = {
		Asset( "ANIM", "anim/weerclops_rose.zip" ),
		Asset( "ANIM", "anim/ghost_weerclops_build.zip" ),
	},

}))

table.insert(prefabs, CreatePrefabSkin("weerclops_magma",
{
	base_prefab = "weerclops",
	build_name_override = "weerclops_magma",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 2,
	skin_tags = { "BASE", "WEERCLOPS", "LAVA"},
	torso_tuck_builds = { "weerclops_magma", },
	torso_untuck_wide_builds = { "weerclops_magma", },
	has_alternate_for_body = { "weerclops_magma", },
	skins = {
		normal_skin = "weerclops_magma",
		ghost_skin = "ghost_weerclops_build",
	},
	assets = {
		Asset( "ANIM", "anim/weerclops_magma.zip" ),
		Asset( "ANIM", "anim/ghost_weerclops_build.zip" ),
	},
}))

table.insert(prefabs, CreatePrefabSkin("weerclops_klaus",
{
	base_prefab = "weerclops",
	build_name_override = "weerclops_klaus",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 4,
	skin_tags = { "COSTUME", "BASE", "WEERCLOPS" },
	torso_tuck_builds = { "weerclops_klaus", },
	torso_untuck_wide_builds = { "weerclops_klaus", },
	has_alternate_for_body = { "weerclops_klaus", },
	skins = {
		normal_skin = "weerclops_klaus",
		ghost_skin = "ghost_weerclops_build",
	},
	assets = {
		Asset( "ANIM", "anim/weerclops_klaus.zip" ),
		Asset( "ANIM", "anim/ghost_weerclops_build.zip" ),
	},
}))
return unpack(prefabs)