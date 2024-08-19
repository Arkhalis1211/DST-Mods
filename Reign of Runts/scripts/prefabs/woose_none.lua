local prefabs = {}
table.insert(prefabs, CreatePrefabSkin("woose_none",{
	base_prefab = "woose",
	build_name_override = "woose",
	type = "base",
	rarity = "Character",
	skins = {
		normal_skin = "woose",
		tornado_skin = "player_woose_spin",
		ghost_skin = "ghost_woose_build",
	},
	assets = {
		Asset( "ANIM", "anim/woose.zip" ),
		Asset( "ANIM", "anim/ghost_woose_build.zip" ),
	},
	skin_tags = { "BASE", "WOOSE", },
	torso_tuck_builds = { "woose", },
	torso_untuck_wide_builds = { "woose", },
	has_alternate_for_body = { "woose", },
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 0,
}))

table.insert(prefabs, CreatePrefabSkin("woose_ice",
{
	base_prefab = "woose",
	build_name_override = "woose_ice",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 1,
	skin_tags = { "BASE", "WOOSE", "ICE"},
	torso_tuck_builds = { "woose_ice", },
	torso_untuck_wide_builds = { "woose_ice", },
	has_alternate_for_body = { "woose_ice", },
	skins = {
		normal_skin = "woose_ice",
		tornado_skin = "mossling_yule_build",
		ghost_skin = "ghost_woose_build",
	},
	assets = {
		Asset( "ANIM", "anim/woose_ice.zip" ),
		Asset( "ANIM", "anim/ghost_woose_build.zip" ),
	},
}))

table.insert(prefabs, CreatePrefabSkin("woose_young",
{
	base_prefab = "woose",
	build_name_override = "woose_young",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 1,
	skin_tags = { "BASE", "WOOSE", "YOUNG"},
	torso_tuck_builds = { "woose_young", },
	torso_untuck_wide_builds = { "woose_young", },
	has_alternate_for_body = { "woose_young", },
	skins = {
		normal_skin = "woose_young",
		tornado_skin = "mossling_build",
		ghost_skin = "ghost_woose_build",
	},
	assets = {
		Asset( "ANIM", "anim/woose_young.zip" ),
		Asset( "ANIM", "anim/ghost_woose_build.zip" ),
	},
}))
table.insert(prefabs, CreatePrefabSkin("woose_victorian",
{
	base_prefab = "woose",
	build_name_override = "woose_victorian",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 2,
	skin_tags = { "VICTORIAN", "BASE", "WOOSE"},
	skins = {
		normal_skin = "woose_victorian",
		tornado_skin = "player_woose_spin",
		ghost_skin = "ghost_woose_build",
	},
	assets = {
		Asset( "ANIM", "anim/woose_victorian.zip" ),
		Asset( "ANIM", "anim/ghost_woose_build.zip" ),
	},
}))

table.insert(prefabs, CreatePrefabSkin("woose_malbatross",
{
	base_prefab = "woose",
	build_name_override = "woose_malbatross",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 4,
	skin_tags = { "COSTUME", "BASE", "WOOSE" },
	torso_tuck_builds = { "woose_malbatross", },
	torso_untuck_wide_builds = { "woose_malbatross", },
	has_alternate_for_body = { "woose_malbatross", },
	skins = {
		normal_skin = "woose_malbatross",
		tornado_skin = "player_woose_spin",
		ghost_skin = "ghost_woose_build",
	},
	assets = {
		Asset( "ANIM", "anim/woose_malbatross.zip" ),
		Asset( "ANIM", "anim/ghost_woose_build.zip" ),
	},
}))

table.insert(prefabs, CreatePrefabSkin("woose_shadow",
{
	base_prefab = "woose",
	build_name_override = "woose_shadow",
	type = "base",
	rarity = "Elegant",
	rarity_modifier = "Woven",
	skip_item_gen = true,
	skip_giftable_gen = true,
	release_group = 7,
	skin_tags = { "BASE", "WOOSE", "SHADOW" },
	skins = {
		normal_skin = "woose_shadow",
		tornado_skin = "player_woose_spin",
		ghost_skin = "ghost_woose_build",
	},
	assets = {
		Asset( "ANIM", "anim/woose_shadow.zip" ),
		Asset( "ANIM", "anim/ghost_woose_build.zip" ),
	},
}))

return unpack(prefabs)