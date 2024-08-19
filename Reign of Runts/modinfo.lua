name = "Reign of Runts"
description = "The 4 iconic Don't Starve: Reign of Giants bosses reimagined.\n\nThey're looking a little smaller than usual...?\n\n\nSkill Tree Spotlight: Moose/Goose"
author = "Goat Slice"
version = "6.2"
icon_atlas = "modicon.xml"
icon = "modicon.tex"
forumthread = ""
api_version = 10

dont_starve_compatible = false
reign_of_giants_compatible = false
dst_compatible = true
client_only_mod = false
all_clients_require_mod = true
--forge_compatible = true
--gorge_compatible = true

server_filter_tags = {"characters", "reign of runts", "runts", "deerclops", "bearger", "moose/goose", "dragonfly"}

local function Breaker(name, label, hover, options, default)
    return {name = name, label = label, hover = hover or "", options = options, default = default}
end

local function Title(title)
    return Breaker(title, title, "", {{description = "", data = 0}}, 0)
end

--
local options_health = {
	{description = "10", data = 10}, {description = "25", data = 25}, {description = "50", data = 50}, {description = "75", data = 75}, {description = "100", data = 100},
	{description = "120", data = 120}, {description = "125", data = 125}, {description = "130", data = 130}, {description = "140", data = 140}, {description = "150", data = 150},
	{description = "175", data = 175}, {description = "200", data = 200}, {description = "250", data = 250}, {description = "260", data = 260}, {description = "270", data = 270},
	{description = "300", data = 300}, {description = "375", data = 375}, {description = "400", data = 400}, {description = "500", data = 500},
}
--
local options_hunger = {
	{description = "10", data = 10}, {description = "25", data = 25}, {description = "50", data = 50}, {description = "75", data = 75}, {description = "100", data = 100},
	{description = "110", data = 110}, {description = "120", data = 120}, {description = "125", data = 125}, {description = "130", data = 130}, {description = "140", data = 140},
	{description = "150", data = 150}, {description = "170", data = 170}, {description = "200", data = 200}, {description = "230", data = 230}, {description = "250", data = 250},
	{description = "270", data = 270}, {description = "300", data = 300}, {description = "375", data = 375}, {description = "400", data = 400}, {description = "500", data = 500},
}
--
local options_sanity = {
	{description = "10", data = 10}, {description = "25", data = 25}, {description = "50", data = 50}, {description = "75", data = 75}, {description = "100", data = 100},
	{description = "120", data = 120}, {description = "125", data = 125}, {description = "130", data = 130}, {description = "140", data = 140}, {description = "150", data = 150},
	{description = "175", data = 175}, {description = "200", data = 200}, {description = "250", data = 250}, {description = "275", data = 275}, {description = "300", data = 300},
	{description = "375", data = 375}, {description = "400", data = 400}, {description = "500", data = 500},
}
--
local options_hundred = {
	{data=0,description="0"}, {data=1,description="1"}, {data=2,description="2"}, {data=3,description="3"}, {data=4,description="4"}, {data=5,description="5"},
	{data=6,description="6"}, {data=7,description="7"}, {data=8,description="8"}, {data=9,description="9"}, {data=10,description="10"},
	{data=11,description="11"}, {data=12,description="12"}, {data=13,description="13"}, {data=14,description="14"}, {data=15,description="15"},
	{data=16,description="16"}, {data=17,description="17"}, {data=18,description="18"}, {data=19,description="19"}, {data=20,description="20"},
	{data=21,description="21"}, {data=22,description="22"}, {data=23,description="23"}, {data=24,description="24"}, {data=25,description="25"},
	{data=26,description="26"}, {data=27,description="27"}, {data=28,description="28"}, {data=29,description="29"}, {data=30,description="30"},
	{data=31,description="31"}, {data=32,description="32"}, {data=33,description="33"}, {data=34,description="34"}, {data=35,description="35"},
	{data=36,description="36"}, {data=37,description="37"}, {data=38,description="38"}, {data=39,description="39"}, {data=40,description="40"},
	{data=41,description="41"}, {data=42,description="42"}, {data=43,description="43"}, {data=44,description="44"}, {data=45,description="45"},
	{data=46,description="46"}, {data=47,description="47"}, {data=48,description="48"}, {data=49,description="49"}, {data=50,description="50"},
	{data=51,description="51"}, {data=52,description="52"}, {data=53,description="53"}, {data=54,description="54"}, {data=55,description="55"},
	{data=56,description="56"}, {data=57,description="57"}, {data=58,description="58"}, {data=59,description="59"}, {data=60,description="60"},
	{data=61,description="61"}, {data=62,description="62"}, {data=63,description="63"}, {data=64,description="64"}, {data=65,description="65"},
	{data=66,description="66"}, {data=67,description="67"}, {data=68,description="68"}, {data=69,description="69"}, {data=70,description="70"},
	{data=71,description="71"}, {data=72,description="72"}, {data=73,description="73"}, {data=74,description="74"}, {data=75,description="75"},
	{data=76,description="76"}, {data=77,description="77"}, {data=78,description="78"}, {data=79,description="79"}, {data=80,description="80"},
	{data=81,description="81"}, {data=82,description="82"}, {data=83,description="83"}, {data=84,description="84"}, {data=85,description="85"},
	{data=86,description="86"}, {data=87,description="87"}, {data=88,description="88"}, {data=89,description="89"}, {data=90,description="90"},
	{data=91,description="91"}, {data=92,description="92"}, {data=93,description="93"}, {data=94,description="94"}, {data=95,description="95"},
	{data=96,description="96"}, {data=97,description="97"}, {data=98,description="98"}, {data=99,description="99"}, {data=100,description="100"},
}
--
configuration_options =
{
	--BEARGER
	Title("Bearger"),
	{
		name    = "enable_wearger",
		label   = "Enable Bearger",
        hover	= "Enables or Disables Bearger",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = true,
	},
	{
		name    = "wearger_health",
		label   = "Bearger's Health",
		options = options_health,
		default = 175,
	},
	{
		name    = "wearger_hunger",
		label   = "Bearger's Hunger",
		options = options_hunger,
		default = 230,
	},
	{
		name    = "wearger_sanity",
		label   = "Bearger's Sanity",
		options = options_sanity,
		default = 150,
	},
	{
		name    = "enable_wearger_skills",
		label   = "Enable Skill Tree",
        hover	= "Enables or Disables Bearger's skill tree.",
		options =
		{
			{description = "Enable", data = true},
			{description = "Disable", data = false},
		},
		default = true,
	},
	{
		name    = "wearger_attackstyle",
		label   = "Ground Pound Attack",
        hover	= "Have Bearger's ground pound's be an additional Right Mouse Button action or the original every fourth attack style.",
		options =
		{
			{description = "Every 4th", data = 1},
			{description = "RMB Action", data = 2},
			{description = "Neither", data = 3},
			{description = "Both", data = 4},
		},
		default = 2,
	},
	{
		name    = "wearg_gpdmg_v2",
		label   = "Ground Pound Damage",
        hover	= "Amount of AoE damage Bearger's base ground pound attack does.\nClose-range damage is the same value.",
		options = options_hundred,
		default = 25,
	},
	{
		name    = "enable_groundpcancel",
		label   = "Ground Pound Anim Cancel",
        hover	= "Allows you to cancel Bearger's ground pound animation.",
		options =
		{
			{description = "Yes", data = true,
			hover = "Only applies to the 'Every 4th' config option"},
			{description = "No", data = false},
		},
		default = true,
	},
	{
		name    = "wearger_gp_cd",
		label   = "Ground Pound Cool Down Time",
        hover	= "How long to wait, in seconds, between Bearger Ground Pounds.",
		options =
		{
		    {description = "0 sec", data = 0},
			{description = "1 sec", data = 1},
			{description = "2 sec", data = 2},
			{description = "3 sec", data = 3},
			{description = "4 sec", data = 4},
			{description = "5 sec", data = 5},
			{description = "10 sec", data = 10},
			{description = "15 sec", data = 15},
			{description = "20 sec", data = 20},
			{description = "25 sec", data = 25},
			{description = "30 sec", data = 30},
			{description = "35 sec", data = 35},
			{description = "40 sec", data = 40},
			{description = "45 sec", data = 45},
			{description = "50 sec", data = 50},
			{description = "1 min", data = 60},
			{description = "1.5 min", data = 90},
			{description = "2 min", data = 120},
			{description = "3 min", data = 150},
			{description = "4 min", data = 240},
			{description = "5 min", data = 300},
			{description = "10 min", data = 1600},
		},
		default = 3,
	},
	{
		name    = "wearger_gp_range_v2",
		label   = "Ground Pound Range",
        hover	= "How much distance the Ground Pound can affect.",
		options = options_hundred,
		default = 5,
	},
	{
		name    = "wearger_gp_pick",
		label   = "Ground Pound Pickables",
        hover	= "Whether or not the Ground Pound will pick nearby pickable objects: berrybushes, saplings, grass, etc.",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = true,
	},
	{
		name    = "wearg_hungerd",
		label   = "Hunger Drain",
        hover	= "How much faster Bearger's hunger drain is.",
		options =
		{
		    {description = "0%", data = 0},
			{description = "5%", data = 1.05},
			{description = "10%", data = 1.10},
			{description = "15%", data = 1.15},
			{description = "20%", data = 1.20},
			{description = "25%", data = 1.25},
			{description = "30%", data = 1.30},
			{description = "35%", data = 1.35},
			{description = "40%", data = 1.40},
			{description = "45%", data = 1.45},
			{description = "50%", data = 1.50},
			{description = "60%", data = 1.60},
			{description = "70%", data = 1.70},
			{description = "80%", data = 1.80},
			{description = "90%", data = 1.90},
			{description = "100%", data = 1.100},
		},
		default = 1.20,
	},
	{
		name    = "wearg_honey",
		label   = "Honey Bonus",
        hover	= "How much + sanity Bearger gets from eating honeyed food.",
		options = options_hundred,
		default = 10,
	},
	{
		name    = "wearger_beeresist",
		label   = "Bee Resistance",
        hover	= "How much reduced damage Bearger takes from Bees.",
		options =
		{
		    {description = "0%", data = 0},
			{description = "5%", data = 0.05},
			{description = "10%", data = 0.10},
			{description = "15%", data = 0.15},
			{description = "20%", data = 0.20},
			{description = "25%", data = 0.25},
			{description = "30%", data = 0.30},
			{description = "35%", data = 0.35},
			{description = "40%", data = 0.40},
			{description = "45%", data = 0.45},
			{description = "50%", data = 0.5},
			{description = "60%", data = 0.6},
			{description = "70%", data = 0.7},
			{description = "80%", data = 0.8},
			{description = "90%", data = 0.9},
			{description = "100%", data = 1},
		},
		default = 0.5,
	},
	{
		name    = "wearger_hibasorp",
		label   = "Hibearnation Absorption",
        hover	= "How much % less damage Bearger takes while in Hibearnation.",
		options =
		{
		    {description = "0%", data = 0},
			{description = "5%", data = 0.05},
			{description = "10%", data = 0.10},
			{description = "15%", data = 0.15},
			{description = "20%", data = 0.20},
			{description = "25%", data = 0.25},
			{description = "30%", data = 0.30},
			{description = "35%", data = 0.35},
			{description = "40%", data = 0.40},
			{description = "45%", data = 0.45},
			{description = "50%", data = 0.5},
			{description = "60%", data = 0.6},
			{description = "70%", data = 0.7},
			{description = "80%", data = 0.8},
			{description = "90%", data = 0.9},
			{description = "100%", data = 1},
		},
		default = 0.20,
	},
	{
		name    = "wearger_yawn",
		label   = "Yawn Chance",
        hover	= "How much % chance a yawn has to happen instead of a ground pound when in Hibearnation.",
		options =
		{
		    {description = "0%", data = 0},
			{description = "5%", data = .05},
			{description = "10%", data = .1},
			{description = "15%", data = .15},
			{description = "20%", data = .2},
			{description = "25%", data = .25},
			{description = "30%", data = .3},
			{description = "35%", data = .35},
			{description = "40%", data = .4},
			{description = "45%", data = .45},
			{description = "50%", data = .5},
			{description = "60%", data = .6},
			{description = "70%", data = .7},
			{description = "80%", data = .8},
			{description = "90%", data = .9},
			{description = "100%", data = 1},
		},
		default = .2,
	},
	--DEERCLOPS
	Title("Deerclops"),
	{
		name    = "enable_weerclops",
		label   = "Enable Deerclops",
        hover	= "Enables or Disables Deerclops",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = true,
	},
	{
		name    = "weerclops_health",
		label   = "Deerclops's Health",
		options = options_health,
		default = 150,
	},
	{
		name    = "weerclops_hunger",
		label   = "Deerclops's Hunger",
		options = options_hunger,
		default = 150,
	},
	{
		name    = "weerclops_sanity",
		label   = "Deerclop's Sanity",
		options = options_sanity,
		default = 120,
	},
	{
		name    = "weerclops_attackstyle",
		label   = "Ice Attack",
        hover	= "Whether or not Deerclops freezes enemies on hit.",
		options =
		{
			{description = "No", data = 0},
			{description = "Yes", data = 1},
		},
		default = 1,
	},
	{
		name    = "weerclops_fx",
		label   = "Ice Effects",
        hover	= "Disable or Enable Deerclops' visual/audio ice effects when attacking and destroying.",
		options =
		{
			{description = "Disable", data = 0},
			{description = "Enable", data = 1},
		},
		default = 1,
	},
	{
		name    = "weerclops_ice_range",
		label   = "Winter AoE Range",
        hover	= "How much distance Deerclops' coldness attack affects during Winter.",
		options =
		{
		    {description = "0", data = 0},
			{description = "1", data = 1},
			{description = "2", data = 2},
			{description = "3", data = 3},
			{description = "4", data = 4},
			{description = "5", data = 5},
			{description = "6", data = 6},
			{description = "7", data = 7},
			{description = "8", data = 8},
			{description = "9", data = 9},
			{description = "10", data = 10},
			{description = "15", data = 15},
			{description = "20", data = 20},
			{description = "25", data = 25},
		},
		default = 4,
	},
	{
		name    = "weer_sanitydrainstart",
		label   = "Sanity Drain Start",
        hover	= "How long, in days, it takes for the first stage of destruction-less sanity drain to start.",
		options =
		{
			{description = "Immediate", data = 0},
			{description = ".5 Day", data = .5},
			{description = "1 Day", data = 1},
			{description = "1.5 Day", data = 1.5},
			{description = "2 Days", data = 2},
			{description = "2.5 Days", data = 2.5},
			{description = "3 Days", data = 3},
			{description = "3.5 Days", data = 3.5},
			{description = "4 Days", data = 4},
			{description = "5 Days", data = 5},
			{description = "6 Days", data = 6},
			{description = "7 Days", data = 7},
			{description = "10 Days", data = 10},
			{description = "Never", data = 100000},--Cheat
		},
		default = 2,
	},
	{
		name    = "weer_sanitybonus",
		label   = "Structure Sanity",
        hover	= "How much sanity destroying a structure gives a Deerclops. (Can scale)",
		options = options_hundred,
		default = 5,
	},
	{
		name    = "weer_freezekill",
		label   = "Freezing Kill Time",
        hover	= "How much % slower it takes for freezing to kill Deerclops.",
		options =
		{
		    {description = "0%", data = 120},
		    {description = "-10%", data = 132},
		    {description = "-20%", data = 144},
		    {description = "-30%", data = 156},
		    {description = "-40%", data = 168},
		    {description = "-50%", data = 180},
			{description = "-60%", data = 192},
			{description = "-70%", data = 204},
			{description = "-80%", data = 216},
			{description = "-90%", data = 228},
			{description = "-100%", data = 240},
		},
		default = 216,
	},
	{
		name    = "weer_hotkill",
		label   = "Overheating Kill Time",
        hover	= "How much % faster it takes for overheating to kill Deerclops.",
		options =
		{
		    {description = "0%", data = 120},
		    {description = "10%", data = 108},
		    {description = "20%", data = 96},
		    {description = "30%", data = 84},
		    {description = "40%", data = 72},
		    {description = "50%", data = 60},
			{description = "60%", data = 48},
			{description = "70%", data = 36},
		},
		default = 84,
	},
	  --DRAGONFLY
	Title("Dragonfly"),
	{
		name    = "enable_wragonfly",
		label   = "Enable Dragonfly",
        hover	= "Enables or Disables Dragonfly",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = true,
	},
	{
		name    = "wragonfly_health",
		label   = "Dragonfly's Health",
		options = options_health,
		default = 200,
	},
	{
		name    = "wragonfly_hunger",
		label   = "Dragonfly's Hunger",
		options = options_hunger,
		default = 175,
	},
	{
		name    = "wragonfly_sanity",
		label   = "Dragonfly's Sanity",
		options = options_sanity,
		default = 100,
	},
	{
		name    = "enable_wragonfly_skills",
		label   = "Enable Skill Tree",
        hover	= "Enables or Disables Dragonfly's skill tree.",
		options =
		{
			{description = "Enable", data = true},
			{description = "Disable", data = false},
		},
		default = true,
	},
	{
		name    = "wfly_fireimmune",
		label   = "Fire Immunity",
        hover	= "Has Dragonfly have fire immunity even while not enraged.",
		options =
		{
			{description = "Yes", data = 0},
			{description = "No", data = 1},
		},
		default = 0,
	},
	{
		name    = "wfly_enraged_timer",
		label   = "Enraged Time",
        hover	= "How long Dragonfly stays in her enraged state form. In seconds.",
		options =
		{
		    {description = "0 seconds", data = 0},
			{description = "5 sec", data = 5},
			{description = "10 sec", data = 10},
			{description = "15 sec", data = 15},
			{description = "20 sec", data = 20},
			{description = "25 sec", data = 25},
			{description = "30 sec", data = 30},
			{description = "35 sec", data = 35},
			{description = "40 sec", data = 40},
			{description = "45 sec", data = 45},
			{description = "50 sec", data = 50},
			{description = "1 min", data = 60},
			{description = "1.5 min", data = 90},
			{description = "2 min", data = 120},
			{description = "3 min", data = 150},
			{description = "4 min", data = 240},
			{description = "5 min", data = 300},
			{description = "10 min", data = 1600},
		},
		default = 60,
	},
	{
		name    = "wfly_enraged_cd",
		label   = "Enraged Cool Down Time",
        hover	= "How long until a Dragonfly can become enraged again. In seconds.",
		options =
		{
		    {description = "0 seconds", data = 0},
			{description = "5 sec", data = 5},
			{description = "10 sec", data = 10},
			{description = "15 sec", data = 15},
			{description = "20 sec", data = 20},
			{description = "25 sec", data = 25},
			{description = "30 sec", data = 30},
			{description = "35 sec", data = 35},
			{description = "40 sec", data = 40},
			{description = "45 sec", data = 45},
			{description = "50 sec", data = 50},
			{description = "1 min", data = 60},
			{description = "1.5 min", data = 90},
			{description = "2 min", data = 120},
			{description = "3 min", data = 150},
			{description = "4 min", data = 240},
			{description = "5 min", data = 300},
			{description = "10 min", data = 1600},
		},
		default = 30,
	},
	{
		name    = "wfly_enraged_fire",
		label   = "Enraged Fire Attacks",
        hover	= "Have Dragonfly deal fire damage, akin to fighting with a torch, while enraged.",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = false,
	},
	{
		name    = "wfly_enraged_maxhp",
		label   = "Additional Enraged HP",
        hover	= "How much additional max health you get while enraged.",
		options = options_hundred,
		default = 70,
	},
	{
		name    = "wfly_atk_mult",
		label   = "Additional Enraged Damage",
        hover	= "How much more % damage Dragonfly does while enraged.",
		options =
		{
			{description = "0%", data = 1},
			{description = "5%", data = 1.05},
			{description = "10%", data = 1.1},
			{description = "15%", data = 1.15},
			{description = "20%", data = 1.2},
			{description = "30%", data = 1.3},
			{description = "40%", data = 1.4},
			{description = "50%", data = 1.5},
			{description = "60%", data = 1.6},
			{description = "70%", data = 1.7},
			{description = "80%", data = 1.8},
			{description = "90%", data = 1.9},
			{description = "100%", data = 2},
		},
		default = 1.1,
	},
	{
		name    = "wfly_enraged_burstdmg",
		label   = "Enraged Burst Damage",
        hover	= "Damage dealt by Dragonfly's additional bursts of fire when enraged. Can get multiplied by 2.5 or 5",
		options = options_hundred,
		default = 10,
	},
	{
		name    = "wfly_spd_mult",
		label   = "Additional Enraged Speed",
        hover	= "How much more % Dragonfly gains in speed while enraged.",
		options =
		{
			{description = "0%", data = 1},
			{description = "5%", data = 1.05},
			{description = "10%", data = 1.1},
			{description = "15%", data = 1.15},
			{description = "20%", data = 1.2},
			{description = "30%", data = 1.3},
			{description = "40%", data = 1.4},
			{description = "50%", data = 1.5},
			{description = "60%", data = 1.6},
			{description = "70%", data = 1.7},
			{description = "80%", data = 1.8},
			{description = "90%", data = 1.9},
			{description = "100%", data = 2},
		},
		default = 1.2,
	},
	{
		name    = "wfly_ashes",
		label   = "Ashes to Enrage",
        hover	= "How many ashes Dragonfly needs to eat to become enraged. Overeating grogginess is # + 2.",
		options =
		{
		    {description = "0", data = 0,
			hover = "0 disables eating ashes to enrage altogether. But they'll still make her groggy!"},
			{description = "1", data = 1},
			{description = "2", data = 2},
			{description = "3", data = 3},
			{description = "4", data = 4},
			{description = "5", data = 5},
			{description = "6", data = 6},
			{description = "7", data = 7},
			{description = "8", data = 8},
			{description = "9", data = 9},
			{description = "10", data = 10},
			{description = "11", data = 11},
			{description = "12", data = 12},
			{description = "13", data = 13},
			{description = "14", data = 14},
			{description = "15", data = 15},
			{description = "20", data = 20},
			{description = "25", data = 25},
			{description = "30", data = 30},
			{description = "35", data = 35},
			{description = "40", data = 40},
			{description = "45", data = 45},
			{description = "50", data = 50},
			{description = "60", data = 60},
		},
		default = 8,
	},
	{
		name    = "wfly_oheattemp",
		label   = "Overheat Temp",
        hover	= "At which temperature a Dragonfly will start to take overheat damage at. Wilson is 70.",
		options =
		{
			{description = "10", data = 10},
			{description = "20", data = 20},
			{description = "30", data = 30},
			{description = "40", data = 40},
			{description = "50", data = 50},
			{description = "60", data = 60},
			{description = "70", data = 70},
			{description = "80", data = 80},
			{description = "90", data = 90},
			{description = "99", data = 98},
		},
		default = 90,
	},
	{
		name    = "wfly_summondmg",
		label   = "Lavae Summon Penalty",
        hover	= "How much health and hunger it costs to summon a Lavae. If using ash, # is halved.",
		options = options_hundred,
		default = 20,
	},
	{
		name    = "wfly_lavaedmg",
		label   = "Lavae Damage",
        hover	= "Amount of maximum damage an attack from Dragonfly's lavae does per hit.",
		options = options_hundred,
		default = 50,
	},
	{
		name    = "wfly_lavaehp",
		label   = "Lavae Health",
        hover	= "Amount of maximum health Dragonfly's lavae has.",
		options = options_health,
		default = 500,
	},
	{
		name    = "wfly_lavaemax",
		label   = "Max Lavae",
        hover	= "How many Lavae a Dragonfly can have at once.",
		options =
		{
		    {description = "1", data = 0},--player_common inherently has it set to 1
			{description = "2", data = 1},
			{description = "3", data = 2},
			{description = "4", data = 3},
			{description = "5", data = 4},
			{description = "6", data = 5},
			{description = "7", data = 6},
			{description = "8", data = 7},
			{description = "9", data = 8},
			{description = "10", data = 9},
			{description = "11", data = 10},
			{description = "12", data = 11},
			{description = "13", data = 12},
			{description = "14", data = 13},
			{description = "15", data = 14},
			{description = "16", data = 15},
			{description = "20", data = 19},
			{description = "25", data = 24},
			{description = "30", data = 29},
			{description = "35", data = 34},
			{description = "40", data = 39},
			{description = "45", data = 44},
			{description = "50", data = 49},
			{description = "60", data = 59},
		},
		default = 9,
	},
	   --MOOSE/GOOSE
	Title("Moose/Goose"),
	{
		name    = "enable_woose",
		label   = "Enable Moose/Goose",
        hover	= "Enables or Disables Moose/Goose",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = true,
	},
	{
		name    = "woose_health",
		label   = "Moose/Goose's Health",
		options = options_health,
		default = 175,
	},
	{
		name    = "woose_hunger",
		label   = "Moose/Goose's Hunger",
		options = options_hunger,
		default = 150,
	},
	{
		name    = "woose_sanity",
		label   = "Moose/Goose's Sanity",
		options = options_sanity,
		default = 200,
	},
	{
		name    = "enable_woose_skills",
		label   = "Enable Skill Tree",
        hover	= "Enables or Disables Moose/Goose's skill tree.",
		options =
		{
			{description = "Enable", data = true},
			{description = "Disable", data = false},
		},
		default = true,
	},
	{
		name    = "enable_woose_speen",
		label   = "Enable Spin",
        hover	= "Enable or disable Goose's spin move.",
		options =
		{
			{description = "Enable", data = true},
			{description = "Disable", data = false},
		},
		default = true,
	},
	{
		name    = "woose_drownmax",
		label   = "Moisture Until Drown",
        hover	= "How much Wetness a Goose can have on the ocean until she drowns.",
		options =
		{
		    {description = "0", data = 0,
			hover = "0 disables walking on water altogether."},
			{description = "5", data = 5},
			{description = "10", data = 10},
			{description = "12", data = 12},
			{description = "15", data = 15},
			{description = "16", data = 16},
			{description = "17", data = 17},
			{description = "20", data = 20},
			{description = "25", data = 25},
			{description = "30", data = 30},
			{description = "35", data = 35},
			{description = "40", data = 40},
			{description = "45", data = 45},
			{description = "50", data = 50},
			{description = "60", data = 60},
			{description = "70", data = 70},
			{description = "80", data = 80},
			{description = "90", data = 90},
			{description = "100", data = 100},
			{description = "Never", data = 1000,
			hover = "You won't drown no matter your wetness."},
		},
		default = 100,
	},
	{
		name    = "woose_honkrange",
		label   = "Honk Range",
        hover	= "How far the reach of her honk goes.",
		options =
		{
		    {description = "0", data = 0},
			{description = "1", data = 1},
			{description = "2", data = 2},
			{description = "3", data = 3},
			{description = "4", data = 4},
			{description = "5", data = 5},
			{description = "6", data = 6},
			{description = "7", data = 7},
			{description = "8", data = 8},
			{description = "9", data = 9},
			{description = "10", data = 10},
		},
		default = 5,
	},
	{
		name    = "enable_noeggeater",
		label   = "Non-Edible Eggs",
        hover	= "Whether or not Moose/Goose will refuse to eat eggs and egg-based foods.",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = true,
	},
	{
		name    = "woose_wetdrain",
		label   = "No Wetness Sanity Drain",
        hover	= "Has Moose/Goose not take sanity drain from having wetness.",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = false,
	},
	{
		name    = "woose_wetness",
		label   = "Increased Wetness Gain",
        hover	= "How much % faster Moose gains wetness. For rain and anything that gives moisture overtime. Includes her water-walking!",
		options =
		{
		    {description = "0%", data = 1},
			{description = "5%", data = 1.05},
			{description = "10%", data = 1.1},
			{description = "20%", data = 1.2},
			{description = "33%", data = 1.33},
			{description = "40%", data = 1.4},
			{description = "50%", data = 1.5},
			{description = "60%", data = 1.6},
			{description = "70%", data = 1.7},
			{description = "80%", data = 1.8},
			{description = "90%", data = 1.9},
			{description = "100%", data = 2},
		},
		default = 1.6,
	},
	{
		name    = "woose_lightning",
		label   = "Lightning Attraction",
        hover	= "How likely it is for Lightning to strike Goose. Wilson is 30%.",
		options =
		{
			{description = "30%", data = 0.3},
			{description = "40%", data = 0.4},
			{description = "50%", data = 0.5},
			{description = "60%", data = 0.6},
			{description = "70%", data = 0.7},
			{description = "80%", data = 0.8},
			{description = "90%", data = 0.9},
			{description = "100%", data = 1},
		},
		default = 0.9,
	},
	{
		name    = "enable_nesting",
		label   = "Enable Nests",
        hover	= "Allows Moose/Goose to craft placeable nests that provide motherly buffs.",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = true,
	},
	{
		name    = "woose_nestbuff",
		label   = "Nest Buff Absorption",
        hover	= "How much % in damage absorption an active nest emits. Never stacks.",
		options =
		{
		    {description = "0%", data = 0},
			{description = "5%", data = 0.05},
			{description = "10%", data = 0.10},
			{description = "15%", data = 0.15},
			{description = "20%", data = 0.20},
			{description = "25%", data = 0.25},
			{description = "30%", data = 0.30},
			{description = "35%", data = 0.35},
			{description = "40%", data = 0.40},
			{description = "45%", data = 0.45},
			{description = "50%", data = 0.5},
			{description = "60%", data = 0.6},
			{description = "70%", data = 0.7},
			{description = "80%", data = 0.8},
			{description = "90%", data = 0.9},
			{description = "100%", data = 1},
		},
		default = 0.25,
	},
	{
		name    = "woose_nesttime",
		label   = "Nest Perish Time",
        hover	= "How long, in days, it takes for the nest to naturally perish if it's not been fueled.",
		options =
		{
			{description = ".5 Day", data = .5},
			{description = "1 Day", data = 1},
			{description = "1.5 Day", data = 1.5},
			{description = "2 Days", data = 2},
			{description = "2.5 Days", data = 2.5},
			{description = "3 Days", data = 3},
			{description = "3.5 Days", data = 3.5},
			{description = "4 Days", data = 4},
			{description = "5 Days", data = 5},
			{description = "6 Days", data = 6},
			{description = "7 Days", data = 7},
			{description = "10 Days", data = 10},
			{description = "11 Days", data = 11},
			{description = "12 Days", data = 12},
			{description = "13 Days", data = 13},
			{description = "14 Days", data = 14},
			{description = "15 Days", data = 15},
			{description = "20 Days", data = 20},
			{description = "30 Days", data = 30},
			{description = "40 Days", data = 40},
			{description = "50 Days", data = 50},
			{description = "Never", data = 100000},--Cheat
		},
		default = 7,
	},
	{
		name    = "woose_spindmg_v2",
		label   = "Spin AoE Damage",
        hover	= "How much base damage Moose's spin does in its AoE.",
		options = options_hundred,
		default = 21,
	},
	{
		name    = "woose_speen_v2",
		label   = "Spin Speed",
        hover	= "How much % faster Goose's spin goes, compared to base speed.",
		options =
		{
			{description = "0%", data = 1},
			{description = "5%", data = 1.05},
			{description = "10%", data = 1.1},
			{description = "15%", data = 1.15},
			{description = "20%", data = 1.2},
			{description = "30%", data = 1.3},
			{description = "33%", data = 1.33},
			{description = "40%", data = 1.4},
			{description = "50%", data = 1.5},
		},
		default = 1.33,
	},
	{
		name    = "woose_spin_time",
		label   = "Spin Time",
        hover	= "How long Goose's Spin lasts, relatively.",
		options =
		{
		    {description = "Shortest", data = 1},
			{description = "Short", data = 2},
			{description = "Medium", data = 3},
			{description = "Long", data = 4},
			{description = "Longest", data = 5},
		},
		default = 4,
	},
	{
		name    = "woose_grog",
		label   = "Spin Grogginess",
        hover	= "How much grogginess gets added to Moose after spinning.",
		options =
		{
		    {description = "0", data = 0,
			hover = "0 disables grogginess"},
			{description = "1", data = 1},
			{description = "2", data = 1.2},
			{description = "3", data = 1.3},
			{description = "4", data = 1.4},
			{description = "5", data = 1.5},
		},
		default = 1,
	},
	{
		name    = "woose_iframes",
		label   = "Spin Invincibility",
        hover	= "Gives Moose's spin i-frames. You'll be invincible for the duration.",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = true,
	},
	{
		name    = "woose_lightn",
		label   = "Spin Lightning Chance",
        hover	= "What % chance lightning has to strike when starting a spin.",
		options =
		{
		    {description = "0%", data = 0},
		    {description = "5%", data = 0.05},
		    {description = "10%", data = 0.1},
		    {description = "20%", data = 0.2},
		    {description = "30%", data = 0.3},
		    {description = "40%", data = 0.4},
		    {description = "50%", data = 0.5},
			{description = "60%", data = 0.6},
			{description = "70%", data = 0.7},
			{description = "80%", data = 0.8},
			{description = "90%", data = 0.9},
			{description = "100%", data = 1},
		},
		default = 0,
	},
	{
		name    = "woose_spinhammer",
		label   = "Spin Structure Hitting",
        hover	= "Allows Goose's spin to hit structures and other hammer-ables.",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = false,
	},
	--All
	Title("All"),
	{
		name    = "enable_unintelligible",
		label   = "Enable Unintelligible Speech",
        hover	= "Has all 4 runts only speak in various grunts, grumbles, and honks.",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = false,
	},
	{
		name    = "enable_monstertag",
		label   = "Enable Monster Tags",
        hover	= "Gives Bearger, Deerclops, and Dragonfly the monster tag that makes passives like Pigmen hostile.",
		options =
		{
			{description = "Yes", data = true},
			{description = "No", data = false},
		},
		default = true,
	},
}