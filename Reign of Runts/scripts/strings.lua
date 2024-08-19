local STRINGS = GLOBAL.STRINGS
local require = GLOBAL.require
local general_scripts = require("play_generalscripts")
--------------------------------------------------------------------------
	-------------------------- DEERCLOPS --------------------------
--------------------------------------------------------------------------
GLOBAL.STRINGS.CHARACTER_TITLES.weerclops = "The Monocular Behemoth"
GLOBAL.STRINGS.CHARACTER_NAMES.weerclops = "Deerclops"
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.weerclops = "*Packs an icy punch\n*Has an aptitude for structure destructure\n*With an increasing itch to destroy\n*At home in the cold, but not the heat"
GLOBAL.STRINGS.CHARACTERS.WEERCLOPS = require "speech_weerclops"
GLOBAL.STRINGS.NAMES.WEERCLOPS = "Weerclops"
GLOBAL.STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.weerclops = "*Gives enemies a cold touch, lowering defenses\n\n\n\nExpertise:\nMelee, Darts"
GLOBAL.STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.weerclops = "*Food spoils 50% slower while held\n\n*Expertise:\nFarming"
GLOBAL.STRINGS.SKIN_NAMES.weerclops_none = "Deerclops"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.weerclops_none = "A cold, leathery husk of matted fur."
STRINGS.CHARACTER_ABOUTME.weerclops = "With clomps ringing in the cold winter night, a loud crash echoes throughout the forest. Deerclops will leave no structure unscathed."
STRINGS.CHARACTER_SURVIVABILITY.weerclops = "Grim"
STRINGS.CHARACTER_BIOS.weerclops = {
            { title = "Birthday", desc = "February 26" },
            { title = "Favorite Food", desc = "Melonsicle" }, }
-------------------------- SKINS --------------------------
if GetModConfigData("enable_unintelligible") == true then
GLOBAL.STRINGS.CHARACTER_QUOTES.weerclops =  "\"Grrrrhhhhhhh....\""
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_ice = "\"Hrrrr-r-r...\""
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_rose = "\"Hrrr!\""
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_magma = "\"Ghrrrrrrr...\""
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_klaus = "\"Rauh, rauh, rauh!\""
else
GLOBAL.STRINGS.CHARACTER_QUOTES.weerclops =  "\"My claws itch to destroy... It's what Deerclops do.\""
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_ice = "\"Nothing escapes my gaze...\""
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_rose = "\"Deerclops have cold, frozen thorns of their own.\""
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_magma = "\"Deerclops aren't hotheaded... we're magnanimous.\""-- let's pretend they learned it for the pun
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_klaus = "\"My eye can't be plucked if they can't find it...\""
end
STRINGS.SKIN_NAMES.weerclops_ice = "The Snowfallen"
STRINGS.SKIN_DESCRIPTIONS.weerclops_ice = "Deerclops's icy stare is one to die for."
STRINGS.SKIN_NAMES.weerclops_rose = "The Roseate"
STRINGS.SKIN_DESCRIPTIONS.weerclops_rose = "You'll never tell the difference between an ice spike and a thorned prick."
--STRINGS.SKIN_NAMES.body_weerclops_rose = "Winter Rose Husk"
--STRINGS.SKIN_DESCRIPTIONS.body_weerclops_rose = "Few roses can withstand the frigid winter months, the rest flourish in them."
STRINGS.SKIN_NAMES.weerclops_magma = "The Magmatic"
STRINGS.SKIN_DESCRIPTIONS.weerclops_magma = "Don't be fooled. Deerclops is still just as cold, inside and out."
--STRINGS.SKIN_NAMES.body_weerclops_magma = "Antipode's Chestplate"
--STRINGS.SKIN_DESCRIPTIONS.body_weerclops_magma = "Shatter your opponents with this fiery glacial chest piece."
STRINGS.SKIN_NAMES.weerclops_klaus = "Deerklaus Costume"
STRINGS.SKIN_DESCRIPTIONS.weerclops_klaus = "Deerclops is no stranger to receiving strange looks for the holidays."
-------------------------- A Little Drama - Stage play --------------------------
STRINGS.STAGEACTOR.WEERCLOPS1 = 
    {
        "The night had fallen dead 'fore the sound of destruction broke the hush...",
        "There. A stir in the underbrush...",
        "THUMP, THUMP, CLOMP, CLOMP, sound its footsteps together,",
        "Then you sight our clumped fur, our thin legs like black leather...",
        "A Deerclops' eye trains on yours,",
        "How swift might you flee through the knee-deep snow?",
    }

general_scripts.WEERCLOPS1 = {
   cast = { "weerclops" },
   lines = {
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[1]},
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[2]},
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[3]},
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[4]},
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[5]},
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[6]},
    }
}

-------------------------- MOD --------------------------
if not GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS then
	GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS = {}
end

GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS.WEERCLOPS =
{
		HUNGER = {
			FULL  = "The stomach is still destroying the remains...", 	-- >75%
			HIGH  = "There's room for more destruction with my teeth.",			-- >55%
			MID   = "I've got a craving for destruction. Or food...", 	-- >35%
			LOW   = "My stomach is in ruin.", 				-- >15%
			EMPTY = "I've let my stomach destroy me...", 			-- <15%
		},
		SANITY = {
			FULL  = "Satisfied... for now.", 			-- >75%
			HIGH  = "I can feel the itch to destroy creeping in.", 				-- >55%
			MID   = "I need to destroy... Now.", 				-- >35%
			LOW   = "My claws are trembling to destroy...", 			-- >15%
			EMPTY = "Rrrr! I MUST. DESTROY.", 	-- <15%
		},
		HEALTH = {
			FULL  = "Nothing can stop a Deerclops.", 	-- 100%
			HIGH  = "A Deerclops has seen much worse destruction.", 	-- >75%
			MID   = "My eye is seeing red...", 			-- >50%
			LOW   = "I feel... destroyed.", 	-- >25%
			EMPTY = "Another Deerclops... fallen to ruin...", 	-- <25%
		},
		WETNESS = {
			FULL  = "I'm going to collapse from wetness... like a wall.", 	-- >75%
			HIGH  = "My fur is weighing me down...",					-- >55%
			MID   = "My eye is getting glossy...", 				-- >35%
			LOW   = "I must be... melting.", 		-- >15%
			EMPTY = "Dry as ice.", 				-- <15%
		},
}
-------------------------- CHARACTER --------------------------
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "Good day to you, %s!",
            ATTACKER = "I wouldn't trust %s around anything we built.",
            MURDERER = "%s's gone berserk on our base!",
            REVIVER = "%s, destroyer of bases and ghosts!",
            GHOST = "That eye is looking more ghostly than usual, %s.",
			FIRESTARTER = "Those icy claws are dripping with fire too.",
}
STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "Hi %s!",
            ATTACKER = "I dunno what else we expected from you, %s.",
            MURDERER = "Awe, crap! Burn 'em!",
            REVIVER = "You can build up something after all, %s! A heart!",
            GHOST = "Haha, quit staring and I'll get you a heart, %s!",
			FIRESTARTER = "Burn it all down, %s! Burn every base!",
}
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "Is scary monster, %s! H-hello!",
            ATTACKER = "Wolfgang will show who is mightier!",
            MURDERER = "Scary monster %s is killer! Wolfgang is run!",
            REVIVER = "Scary monster man is nice sometimes.",
            GHOST = "%s needs big heart like big creepy eye!",
			FIRESTARTER = "Please no. Please no burnings!",
}
STRINGS.CHARACTERS.WENDY.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "How do you do, %s?",
            ATTACKER = "Only blood will quench %s.",
            MURDERER = "You've always been a terrible beast, %s.",
            REVIVER = "Abigail likes you, %s.",
            GHOST = "Even harbingers of death leave eventually...",
			FIRESTARTER = "Abigail knows what you broke.",
}
STRINGS.CHARACTERS.WX78.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "DETECTING... %s!",
            ATTACKER = "INCREASING LEVELS OF VIOLENCE DETECTED. NICE",
            MURDERER = "%s HAS BEEN DESTROYING ORGANICS AND THEIR CREATIONS",
            REVIVER = "THIS SERVANT DESTROYS BASES FOR ME",
            GHOST = "I AM STRONGER THAN YOU. HA HA",
			FIRESTARTER = "HA HA. %s IS LAYING WASTE TO THE WORLD",
}
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "Ah, greetings, dear %s!",
            ATTACKER = "You aren't causing more havoc, are you dear?",
            MURDERER = "Your chaos will end here, Laurasiatheria!",
            REVIVER = "Behind that cold exterior is still a warm heart.",
            GHOST = "All that destruction you have to try not to destroy yourself too.",
			FIRESTARTER = "Do be careful destroying, dear, ice cracks quite easy.",
}
STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "Bud, %s! Hey there!",
            ATTACKER = "Don't go staring at my trees like that, %s.",
            MURDERER = "I'll have those fancy antlers up on a mantel, eh!",
            REVIVER = "You're a pretty fine moose, eh %s?",
            GHOST = "I'll get a heart if you stop the haunting looks, eh?",
			FIRESTARTER = "You'll want to watch where you set fires, bud.",
}
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "Greetings, err, %s...",
            ATTACKER = "%s's destructive tendencies are getting out of hand.",
            MURDERER = "Just like you to be a murderous fiend!",
            REVIVER = "Your kind aren't as terrifying when they grow soft... and short.",
            GHOST = "I'll see if I have a spare...",
			FIRESTARTER = "I would have sworn they play with ice, not fire.",
}
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEERCLOPS = 
{
	        GENERIC = "Hail, frigid eye giant %s!",
	        ATTACKER = "Back! My spear will make this fight legendary!",
	        MURDERER = "Our glorious battle shall be made ballad!!",
	        REVIVER = "Believe it! A Viking allied with her greatest foe!",
	        GHOST = "%s has fallen! But its eye hasn't topped my spear!",
	        FIRESTARTER = "%'s massive eye hath been forged in flame!",
}
STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEERCLOPS = 
{
	        GENERIC = "Hey %s! Destroy anything today?",
	        ATTACKER = "Hey! We're not a building!",
	        MURDERER = "You're just a big meanie!",
	        REVIVER = "You're not as cold as you tell us!",
	        GHOST = "Oh no, %s smushed themself!",
	        FIRESTARTER = "Don't stomp with fire, %s!",
}
STRINGS.CHARACTERS.WINONA.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "Hey there, %s... Not destroying my gadgets right?",
            ATTACKER = "I won't be puttin' up with no more demolishin', %s.",
            MURDERER = "You're a no good bulldozer! Get 'em!",
            REVIVER = "Now if only you'd apply all that destruction to construction!",
            GHOST = "Don't go starin' at me with that big ol' eye now!",
			FIRESTARTER = "Now %s's startin' fires now too, huh?",
}
STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "%s! Let's go deface some funny signs! Hyuyu!",
            ATTACKER = "What cruel tricks you play! Hyuyu!",
            MURDERER = "Don't stomp the imp, hyuyu!",
            REVIVER = "That eye holds a lot of souls!",
            GHOST = "Don't look at me like that, hyuyu! Just a taste!",
            FIRESTARTER = "Hyuyu, even icy claws like a flame or two!",
}
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "Hello Branch Head!",
            ATTACKER = "Bad %s! No stomp!",
            MURDERER = "%s is bad!",
            REVIVER = "Helping. Good Branch Head.",
            GHOST = "Oh. Where legs?",
            FIRESTARTER = "Fire bad for head branches!",
}
STRINGS.CHARACTERS.WARLY.DESCRIBE.WEERCLOPS = 
{
		    GENERIC = "Bonjour, %s!",
	        ATTACKER = "%s is being much too rough lately...",
	        MURDERER = "%s has done truly abominable things.",
	        REVIVER = "%s was much scarier looming overhead!",
	        GHOST = "I can't make a soup out of a floating eyeball!",
	        FIRESTARTER = "I had taken you for more of an icy fellow.",
}
STRINGS.CHARACTERS.WURT.DESCRIBE.WEERCLOPS = 
{
		    GENERIC = "%s not look happy.",
	        ATTACKER = "Glorp! Go away!",
	        MURDERER = "Glorp!! Stay away from kingdom!",
	        REVIVER = "%s look happier.",
	        GHOST = "Eye keeps floating, florp.",
	        FIRESTARTER = "Thought you made of ice?",
}
STRINGS.CHARACTERS.WALTER.DESCRIBE.WEERCLOPS = 
{
		    GENERIC = "Hi %s!",
	        ATTACKER = "That's just nature, I guess.",
	        MURDERER = "H-hey, I have more than enough jerky to go around!",
	        REVIVER = "Ha! I knew that cyclops was a friend!",
	        GHOST = "You didn't think you were a structure yourself, did you %s?",
	        FIRESTARTER = "Uh... we need to fetch you some ice.",
}
STRINGS.CHARACTERS.WANDA.DESCRIBE.WEERCLOPS = 
{
            GENERIC = "You wouldn't happen to be the short and sweet one this time, %s?",
            ATTACKER = "I'm keeping my eye on you, %s...",
            MURDERER = "%s! You're just as destructive in all my other timelines!",
            REVIVER = "You're not as destructive as you think, %s.",
            GHOST = "I'll have you back up and freezing in no time, %s!",
            FIRESTARTER = "This must be the timeline where Deerclops use fire.",
}
--------------------------------------------------------------------------
	-------------------------- BEARGER --------------------------
--------------------------------------------------------------------------
GLOBAL.STRINGS.CHARACTER_TITLES.wearger = "The Hirsute"
GLOBAL.STRINGS.CHARACTER_NAMES.wearger = "Bearger"
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.wearger = "*Hibearnates in chilly weather\n*Bears an angry stomp\n*And a hankering hunger for honey"
GLOBAL.STRINGS.CHARACTERS.WEARGER = require "speech_wearger"
GLOBAL.STRINGS.NAMES.WEARGER = "Wearger"
GLOBAL.STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.wearger = "*Can slam the ground for additional damage\n\nExpertise:\nMelee"
GLOBAL.STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.wearger = "*Can slam the ground to hit multiple trees and stumps\n\n*Expertise:\nGathering"
GLOBAL.STRINGS.SKIN_NAMES.wearger_none = "Bearger"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.wearger_none = "Bearger's quintessential ever-shedding vat of hair."
STRINGS.CHARACTER_ABOUTME.wearger = "Bearger is a simple, gluttonous beast whose only goal is to feed and sleep throughout the frigid seasons."
STRINGS.CHARACTER_SURVIVABILITY.wearger = "Slim"
STRINGS.CHARACTER_BIOS.wearger = {
			{ title = "Birthday", desc = "September 1" },
			{ title = "Favorite Food", desc = "Honey Ham" }, }
-------------------------- SKINS --------------------------
STRINGS.SKIN_NAMES.wearger_ice = "The Snowfallen"
STRINGS.SKIN_NAMES.wearger_survivor = "The Survivor"
--STRINGS.SKIN_NAMES.legs_wearger_survivor = "Fur-lined Loincloth"
STRINGS.SKIN_NAMES.wearger_teddy = "The Teddy Bearger"
--STRINGS.SKIN_NAMES.body_wearger_teddy = "Plush Sweater"
STRINGS.SKIN_NAMES.wearger_minotaur = "Ancient Gearger Costume"
STRINGS.SKIN_NAMES.wearger_lunar = "The Moonbound"
if GetModConfigData("enable_unintelligible") == true then
GLOBAL.STRINGS.SKIN_QUOTES.wearger_ice = "\"Hmph. Hmph!\""
GLOBAL.STRINGS.CHARACTER_QUOTES.wearger =  "\"Grrr...\""
GLOBAL.STRINGS.SKIN_QUOTES.wearger_survivor = "\"GRRRRR!!!\""
GLOBAL.STRINGS.SKIN_QUOTES.wearger_teddy = "\"Grr-ahhaha!\""
GLOBAL.STRINGS.SKIN_QUOTES.wearger_minotaur = "\"Grrr..r...r.\""
GLOBAL.STRINGS.SKIN_QUOTES.wearger_lunar = "\"Brrr-r-r!\""
else
GLOBAL.STRINGS.CHARACTER_QUOTES.wearger =  "\"Grrr... Need to find food. Going to hibernate soon.\""
GLOBAL.STRINGS.SKIN_QUOTES.wearger_ice = "\"Blankets of snow. Good for hibernation.\""
GLOBAL.STRINGS.SKIN_QUOTES.wearger_survivor = "\"Stocking up for hibernation. ...Not going so good.\""
GLOBAL.STRINGS.SKIN_QUOTES.wearger_teddy = "\"...Can you and I be friends?\""
GLOBAL.STRINGS.SKIN_QUOTES.wearger_minotaur = "\"Will make you regret trying to take from my food stash.\""
GLOBAL.STRINGS.SKIN_QUOTES.wearger_lunar = "\"Feeling cold... Need to begin full hibernation.\""
end
STRINGS.SKIN_DESCRIPTIONS.wearger_survivor = "Beargers aren't strangers to rummaging and roughhousing."
--STRINGS.SKIN_DESCRIPTIONS.legs_wearger_survivor = "Losing that much fur surviving out in the wilderness has its uses."
STRINGS.SKIN_DESCRIPTIONS.wearger_ice = "One shouldn't disturb a Bearger within a deep-snow hibernation."
STRINGS.SKIN_DESCRIPTIONS.wearger_teddy = "Those are fresh berry juice stains, Bearger just wants a hug!"
--STRINGS.SKIN_DESCRIPTIONS.body_wearger_teddy = "Feel safe at home with this classic trick and treating clothing combo."
STRINGS.SKIN_DESCRIPTIONS.wearger_minotaur = "Beargers often find themselves deep within their hibernation chamber."
STRINGS.SKIN_DESCRIPTIONS.wearger_lunar = "Bearger has entered a more soul-bearing form of torpor during these frigid synodic seasons."
-------------------------- SKILLTREE --------------------------
STRINGS.SKILLTREE.WEARGER = {
		WEARGER_FUR_1_TITLE = "Shedding",
		WEARGER_FUR_1_DESC = "Increase the rate you naturally shed Fur Tufts.",

		WEARGER_FUR_2_TITLE = "Furrier Finery",
		WEARGER_FUR_2_DESC = "Learn how to use your Fur Tufts to craft Thick Fur more efficiently.",

		WEARGER_FUR_CRAFT1_TITLE = "Hat Crafting",
		WEARGER_FUR_CRAFT1_DESC = "Learn how to use your Fur to craft a soft Hibearnation Hat for chilly weather.",

		WEARGER_FUR_LEFT_TITLE = "Hairy Handiwork",
		WEARGER_FUR_LEFT_DESC = "Learn how to use your Fur Tufts to repair clothing.",

		WEARGER_FUR_RIGHT_TITLE = "Fur Rug Rolling",
		WEARGER_FUR_RIGHT_DESC = "Learn how to use your Fur to craft a toasty Bearger Fur Rug.",

		WEARGER_FUR_CRAFT2_TITLE = "Fur Bag Crafting",
		WEARGER_FUR_CRAFT2_DESC = "Learn how to use your Fur to craft a dutiful Bearger Bag for stashed goods.",

		WEARGER_FUR_CRAFT3_TITLE = "Fur Bed Building",
		WEARGER_FUR_CRAFT3_DESC = "Learn how to use your Fur to craft a cozy Bearger Fur Bed Roll to hibernate on.",

		WEARGER_PICK_1_TITLE = "Surplus Slamming I",
		WEARGER_PICK_1_DESC = "Chance to increase your Slam's harvest improved by 15%.",

		WEARGER_PICK_2_TITLE = "Surplus Slamming II",
		WEARGER_PICK_2_DESC = "Chance to increase your Slam's harvest improved by 50%.",

		----------------------
		WEARGER_HIBEAR_FOOD_TITLE = "Stomach Stash",
		WEARGER_HIBEAR_FOOD_DESC = "During Hibearnation season, food is 20% more filling.",

		WEARGER_HIBEAR_1_TITLE = "Well-Stocked I",
		WEARGER_HIBEAR_1_DESC = "When Hibearnating on a full stomach, gain defense against planar damage and your Ground Pound damage at close range will hit harder.",

		WEARGER_HIBEAR_2_TITLE = "Well-Stocked II",
		WEARGER_HIBEAR_2_DESC = "When Hibearnating on a full stomach, gain full knockback immunity.",

		WEARGER_HIBEAR_3_TITLE = "Well-Stocked III",
		WEARGER_HIBEAR_3_DESC = "When Hibearnating on a full stomach, carry heavy objects faster.",

		WEARGER_HIBEAR_4_TITLE = "Well-Stocked IV",
		WEARGER_HIBEAR_4_DESC = "Decrease Hibearnation's full stomach benefits threshold to 20%.",

		WEARGER_HIBEAR_LOCK_DESC = "Learn 5 Hibearnation skills to unlock.",

		WEARGER_HIBEAR_FULL_TITLE = "Calorie Champion",
		WEARGER_HIBEAR_FULL_DESC = "Gain the benefits of your Hibearnating Full Stomach outside of Hibearnation season.",

		WEARGER_YAWN_1_TITLE = "Unbadgered and Flourishing",
		WEARGER_YAWN_1_DESC = "Gain increased sleep resistance while out of Hibearnation season.",

		WEARGER_YAWN_2_TITLE = "Slumbeary I",
		WEARGER_YAWN_2_DESC = "During Hibearnation, gain increased benefits from sleeping.",

		WEARGER_YAWN_3_TITLE = "Slumbeary II",
		WEARGER_YAWN_3_DESC = "During Hibearnation, lose less hunger while sleeping.",

		WEARGER_YAWN_4_TITLE = "Slumbeary III",
		WEARGER_YAWN_4_DESC = "During Hibearnation, no longer yawn when attempting a Ground Pound.\nNatural Grogginess after sleeping is reduced.",

		----------------------
		WEARGER_ALLEGIANCE_LOCK_1_DESC = "Learn 12 skills to unlock.",

		WEARGER_ALLEGIANCE_SHADOW_TITLE = "Shadow Slammer",
		WEARGER_ALLEGIANCE_SHADOW_DESC = "The Queen will reward your loyalty by embellishing your Ground Pound.\nSummon Shadow Tentacles from your crater. Quicker, triple damage to trees and foes.",

		WEARGER_ALLEGIANCE_LUNAR_TITLE = "Lunar Epicure",
		WEARGER_ALLEGIANCE_LUNAR_DESC = "The Cryptic Founder will reward your curiosity by enhancing your Ground Pound.\nLeap at your foes to slam at a distance with devastating damage and no cool down.",
}
STRINGS.SKILLTREE.PANELS.FUR = "FUR TUFTS"
STRINGS.SKILLTREE.PANELS.HIBEARNATION = "HIBEARNATION"

STRINGS.NAMES.WEARGER_HAT = "Hibearnation Hat"
STRINGS.RECIPE_DESC.WEARGER_HAT = "Hearty is the head that bears this hat."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEARGER_HAT = "I'll let my mind hibernate this season."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEARGER_HAT = "Great. Now my head's gonna smell like bearger-butt."
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEARGER_HAT = "Hat fit just right on Wolfgang!"
STRINGS.CHARACTERS.WENDY.DESCRIBE.WEARGER_HAT = "Your head is as empty as I..."
STRINGS.CHARACTERS.WX78.DESCRIBE.WEARGER_HAT = "HAIRY HEAD COVERING"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEARGER_HAT = "This will keep my mind at ease during those torpid seasons."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEARGER_HAT = "A real woodsman's hat, from the bear itself."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEARGER_HAT = "I suppose that brute doesn't have a taste for style."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEARGER_HAT = "See this hat, 'twas no cat!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEARGER_HAT = "We already have a head full of hair!"
STRINGS.CHARACTERS.WINONA.DESCRIBE.WEARGER_HAT = "Can't go wrong with a hat like this in the winter."
STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEARGER_HAT = "I thought I was only who was hairbrained here!"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEARGER_HAT = "Hair for head"
STRINGS.CHARACTERS.WARLY.DESCRIBE.WEARGER_HAT = "You'll keep my head nice and toasty."
STRINGS.CHARACTERS.WURT.DESCRIBE.WEARGER_HAT = "Think with a teddy's thoughts. Not many thoughts in here, florpt."
STRINGS.CHARACTERS.WALTER.DESCRIBE.WEARGER_HAT = "What do you think, Woby? Do we match?"
STRINGS.CHARACTERS.WANDA.DESCRIBE.WEARGER_HAT = "Don't you fill my head with thoughts of overwintering."
----------------------
STRINGS.NAMES.WEARGER_BIN = "Bearger Bag"
STRINGS.RECIPE_DESC.WEARGER_BIN = "No longer be badgered by excess stash."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEARGER_BIN = "I've got enough hair to share around."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEARGER_BIN = "Who would want a bag of your hair?"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEARGER_BIN = "Big bear hug for Wolfgang's things!"
STRINGS.CHARACTERS.WENDY.DESCRIBE.WEARGER_BIN = "It cradles my belongings from the outside world."
STRINGS.CHARACTERS.WX78.DESCRIBE.WEARGER_BIN = "YOU WILL CARRY MY THINGS"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEARGER_BIN = "A brilliant use for your surplus of hair."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEARGER_BIN = "My stuff's always safer surrounded by fur."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEARGER_BIN = "That brute has so much hair we're having to carry it as well."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEARGER_BIN = "I will carry your spirit on with me!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEARGER_BIN = "We'll carry a little bit of you with us!"
STRINGS.CHARACTERS.WINONA.DESCRIBE.WEARGER_BIN = "For when I need just a hair of more space."
STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEARGER_BIN = "The hair will take care!"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEARGER_BIN = "Fuzzy will carry stuff"
STRINGS.CHARACTERS.WARLY.DESCRIBE.WEARGER_BIN = "A nice prestige fur bag."
STRINGS.CHARACTERS.WURT.DESCRIBE.WEARGER_BIN = "Could carry more stuff with scales!"
STRINGS.CHARACTERS.WALTER.DESCRIBE.WEARGER_BIN = "Don't worry, Woby, I wouldn't turn you into a small bag!"
STRINGS.CHARACTERS.WANDA.DESCRIBE.WEARGER_BIN = "You'll have to bear the burden of carrying my things."
----------------------
STRINGS.NAMES.WEARGER_BED = "Bearger Fur Roll"
STRINGS.RECIPE_DESC.WEARGER_BED = "Sleep through the winter."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEARGER_BED = "All that hair makes it warmer."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEARGER_BED = "I hope that stink doesn't stick."
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEARGER_BED = "Is itchy like big bear."
STRINGS.CHARACTERS.WENDY.DESCRIBE.WEARGER_BED = "All that dead hair and it still smells of life."
STRINGS.CHARACTERS.WX78.DESCRIBE.WEARGER_BED = "YOUR DISGUSTING DROPPINGS WILL NOT WARM ME"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEARGER_BED = "I appreciate the sentiment, dear."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEARGER_BED = "Nothing like a good night's sleep on real fur, eh?"
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEARGER_BED = "I don't want even a single one of your hairs on this suit."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEARGER_BED = "Your fur makes for a true warrior's sleep!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEARGER_BED = "We'll have to hold our nose the whole night."
STRINGS.CHARACTERS.WINONA.DESCRIBE.WEARGER_BED = "It's a lot easier when we don't have to badger 'em for all this hair."
STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEARGER_BED = "From one fur to another!"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEARGER_BED = "Hairy sleepytime"
STRINGS.CHARACTERS.WARLY.DESCRIBE.WEARGER_BED = "That smell might be enough to keep me up all night."
STRINGS.CHARACTERS.WURT.DESCRIBE.WEARGER_BED = "Stripy fluff."
STRINGS.CHARACTERS.WALTER.DESCRIBE.WEARGER_BED = "I always got weird looks for saying we should just ask nicely for fur! Look at us now!"
STRINGS.CHARACTERS.WANDA.DESCRIBE.WEARGER_BED = "There's worse far worse to spend time sleeping on."
----------------------
STRINGS.NAMES.WEARGER_RUG = "Bearger Fur Rug"
STRINGS.RECIPE_DESC.WEARGER_RUG = "Made from real Bearger chest!"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEARGER_RUG = "I recognize art when I see it!"
STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEARGER_RUG = "I know a way to make it even warmer!"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEARGER_RUG = "Is good hair rug."
STRINGS.CHARACTERS.WENDY.DESCRIBE.WEARGER_RUG = "It feels like frolicking in a field of dead hair."
STRINGS.CHARACTERS.WX78.DESCRIBE.WEARGER_RUG = "STAY BENEATH ME"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEARGER_RUG = "Making allies of those we thought vicious has been quite lucrative."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEARGER_RUG = "Feels like home!"
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEARGER_RUG = "I feel quite vindicated about this one."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEARGER_RUG = "Your hide benefits us well!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEARGER_RUG = "I'm glad we didn't hurt anything for this!"
STRINGS.CHARACTERS.WINONA.DESCRIBE.WEARGER_RUG = "You make a mean rug, ya small lug."
STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEARGER_RUG = "I'm fur from head to toe to below!"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEARGER_RUG = "Scratchy"
STRINGS.CHARACTERS.WARLY.DESCRIBE.WEARGER_RUG = "It really livens up the place."
STRINGS.CHARACTERS.WURT.DESCRIBE.WEARGER_RUG = "Soft!"
STRINGS.CHARACTERS.WALTER.DESCRIBE.WEARGER_RUG = "Don't think about it, Woby!"
STRINGS.CHARACTERS.WANDA.DESCRIBE.WEARGER_RUG = "Thankfully it doesn't slow me down."
----------------------
STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.SEW = { NOTWEARGER = "This hair gets everywhere but here!", }
STRINGS.CHARACTERS.WILLOW.ACTIONFAIL.SEW = { NOTWEARGER = "Yuck! I don't that fur in my clothes!", }
STRINGS.CHARACTERS.WOLFGANG.ACTIONFAIL.SEW = { NOTWEARGER = "Big bear fur doesn't fit!", }
STRINGS.CHARACTERS.WENDY.ACTIONFAIL.SEW = { NOTWEARGER = "There's no patching things up.", }
STRINGS.CHARACTERS.WX78.ACTIONFAIL.SEW = { NOTWEARGER = "KEEP YOUR FURS AWAY FROM ME", }
STRINGS.CHARACTERS.WICKERBOTTOM.ACTIONFAIL.SEW = { NOTWEARGER = "I'm afraid I have no experience with this material.", }
STRINGS.CHARACTERS.WOODIE.ACTIONFAIL.SEW = { NOTWEARGER = "You don't know how to sew with this, do ya 'Luce?", }
STRINGS.CHARACTERS.WAXWELL.ACTIONFAIL.SEW = { NOTWEARGER = "I'm sure I can find any cut of fur better for that.", }
STRINGS.CHARACTERS.WATHGRITHR.ACTIONFAIL.SEW = { NOTWEARGER = "I shall make better use of this beast's fur.", }
STRINGS.CHARACTERS.WEBBER.ACTIONFAIL.SEW = { NOTWEARGER = "We might do better with some silk!", }
STRINGS.CHARACTERS.WINONA.ACTIONFAIL.SEW = { NOTWEARGER = "Think my tape would do ya one better.", }
STRINGS.CHARACTERS.WORTOX.ACTIONFAIL.SEW = { NOTWEARGER = "No hair will fit here nor there!", }
STRINGS.CHARACTERS.WORMWOOD.ACTIONFAIL.SEW = { NOTWEARGER = "Hmmm... Can't do", }
STRINGS.CHARACTERS.WARLY.ACTIONFAIL.SEW = { NOTWEARGER = "Not much of an ingredient I can use I'm afraid.", }
STRINGS.CHARACTERS.WURT.ACTIONFAIL.SEW = { NOTWEARGER = "Bad hair!", }
STRINGS.CHARACTERS.WALTER.ACTIONFAIL.SEW = { NOTWEARGER = "This would be easier with a needle.", }
STRINGS.CHARACTERS.WANDA.ACTIONFAIL.SEW = { NOTWEARGER = "If only sewing weren't so time consuming.", }
-------------------------- A Little Drama - Stage play --------------------------
STRINGS.STAGEACTOR.WEARGER1 = 
    {
        "Fee-fi-fo-fum.",
        "I smell the honey of a honey-maker.",
        "(sniff, sniff)",
        "Grrrr!",
        "Too hungry for this!",
		"Hibernating now. Forever.",
    }

general_scripts.WEARGER1 = {
   cast = { "wearger" },
   lines = {
		{roles = {"wearger"},	duration = 3.0, line = STRINGS.STAGEACTOR.WEARGER1[1]},
		{roles = {"wearger"},	duration = 3.0, line = STRINGS.STAGEACTOR.WEARGER1[2]},
		{roles = {"wearger"},	duration = 2.5, line = STRINGS.STAGEACTOR.WEARGER1[3], anim="idle_wearger"},
		{roles = {"wearger"},	duration = 2.0, line = STRINGS.STAGEACTOR.WEARGER1[4]},
		{roles = {"wearger"},	duration = 3.0, line = STRINGS.STAGEACTOR.WEARGER1[5]},
		{roles = {"wearger"},	duration = 3.0, line = STRINGS.STAGEACTOR.WEARGER1[6]},
    }
}
-------------------------- MODDED --------------------------
GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS.WEARGER =
{
		HUNGER = {
			FULL  = "Full enough for hibernating!", 	-- >75%
			HIGH  = "Still preparing for hibernation.",			-- >55%
			MID   = "Losing warmth from food...", 	-- >35%
			LOW   = "GRRR. Need to find stash of berries and nuts.", 				-- >15%
			EMPTY = "RRRRRRAUUUGH!! FOOOD!!!", 			-- <15%
		},
		SANITY = {
			FULL  = "Feels good.", 			-- >75%
			HIGH  = "Head has started to itch.", 				-- >55%
			MID   = "Head feels hairy. Inside too.", 				-- >35%
			LOW   = "Head feels like it's being ground pound!", 			-- >15%
			EMPTY = "GRRRAAA!! Get out of my head!!", 	-- <15%
		},
		HEALTH = {
			FULL  = "Not missing any hair.", 	-- 100%
			HIGH  = "Grrr. Little scratches. Hair grows back.", 	-- >75%
			MID   = "Honey. I need honey.", 			-- >50%
			LOW   = "Grr... I shed blood like hair.", 	-- >25%
			EMPTY = "Nearing... the last hibernation.", 	-- <25%
		},
		WETNESS = {
			FULL  = "GrrRrRr... Drowning!", 	-- >75%
			HIGH  = "Fur is a slog. Can't hibernate...",					-- >55%
			MID   = "Fur doesn't soak up much water...", 				-- >35%
			LOW   = "Fur is sprinkling.", 		-- >15%
			EMPTY = "Fur is nice and dry. Cozy.", 				-- <15%
		},
}
-------------------------- CHARACTER --------------------------
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEARGER = 
{
            GENERIC = "Good day to you, %s!",
            ATTACKER = "I can hear %s's stomach growling from here...",
            MURDERER = "%s has gone bearserk!",
            REVIVER = "%s is like a big, hungry teddy bear.",
            GHOST = "%s went into a more permanent hibernation.",
			FIRESTARTER = "Your fur's looking more ashier than usual, %s.",
}
STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEARGER = 
{
            GENERIC = "Hi %s!",
            ATTACKER = "Nice bear, nice bear! Uh oh.",
            MURDERER = "Need help losing some more hair, %s? BURN!",
            REVIVER = "It's like having a smellier life-size Bernie!",
            GHOST = "Aw. No fun if I can't burn your hair anymore!",
			FIRESTARTER = "BURN it, bear, BURN it!!",
}
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEARGER = 
{
            GENERIC = "Is little bear, %s! Hello!",
            ATTACKER = "Ah! Little bear is hungier than Wolfgang!",
            MURDERER = "Little bear is killer! Wolfgang will run!",
            REVIVER = "%s is nice bear. Has hair like on Wolfgang chest.",
            GHOST = "Wolfgang will get raw hairy heart for you!",
			FIRESTARTER = "Little bear %s is burning hair!",
}
STRINGS.CHARACTERS.WENDY.DESCRIBE.WEARGER = 
{
            GENERIC = "How do you do, %s?",
            ATTACKER = "%s's hunger is insatiable. He will devour us whole.",
            MURDERER = "Your fur still reeks of murder, %s.",
            REVIVER = "Abigail likes you, %s.",
            GHOST = "Even %s sheds a heart.",
			FIRESTARTER = "Do you wish to see the world burn?",
}
STRINGS.CHARACTERS.WX78.DESCRIBE.WEARGER = 
{
            GENERIC = "DETECTING... %s!",
            ATTACKER = "%s IS ANGRIER THAN USUAL. NICE.",
            MURDERER = "HA HA. %S IS SQUASHING THE FLESHLINGS AND EATING THEM",
            REVIVER = "%s IS A USEFUL MINION. GOOD THING I CANNOT SMELL HIM",
            GHOST = "HA HA. %s WENT INTO A PERMANENT HIBERNATION",
			FIRESTARTER = "%s LAYS WASTE TO THE WORLD",
}
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEARGER = 
{
            GENERIC = "Ah, greetings dear %s!",
            ATTACKER = "%s has quite the temper when he doesn't feed.",
            MURDERER = "Enough! Your hunger will end here!",
            REVIVER = "Now that you can form coherent words, I would like to know more about your species!",
            GHOST = "Oh dear. You shouldn't be shedding that much. Tsk.",
			FIRESTARTER = "Do be careful where you scavenge, dear.",
}
STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEARGER = 
{
            GENERIC = "Look who it is! %s!",
            ATTACKER = "Don't like how %s is treating my forests.",
            MURDERER = "You've just been waitin' on a Canadian to cut ya down to size!",
            REVIVER = "%s sure has some proper winter gear on him!",
            GHOST = "Only a true Canadian can survive harsh winters, eh?",
			FIRESTARTER = "Not only does he knock trees over, he burns 'em down too!",
}
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEARGER = 
{
            GENERIC = "Greetings, Mr. %s...",
            ATTACKER = "Just give him whatever he wants and he'll go away.",
            MURDERER = "%s has always been a bloodthirsty and messy creature.",
            REVIVER = "%s makes a better ally than I would've thought.",
            GHOST = "Perhaps we could use all that leftover hair for a nice rug.",
			FIRESTARTER = "%s's fur reeks of ash and fire.",
}
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEARGER = 
{
	        GENERIC = "Hail, beastly berserker %s!",
	        ATTACKER = "Back! Back, berserker!",
	        MURDERER = "BEAR-SERKER! Meet by spear!!",
	        REVIVER = "%s, a beastly warrior!",
	        GHOST = "Your hide is now forfeit.",
	        FIRESTARTER = "%s's hair hath been forged in flame!",
}
STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEARGER = 
{
	        GENERIC = "Hi %s! Winter coat's coming in nice!",
	        ATTACKER = "Hey! Food isn't everything!",
	        MURDERER = "Uh oh! %s might swallow us both!",
	        REVIVER = "%s is nice and hairy! Like me!",
	        GHOST = "Oh no! How much did you shed?",
	        FIRESTARTER = "Don't light fires, %s!",
}
STRINGS.CHARACTERS.WINONA.DESCRIBE.WEARGER = 
{
            GENERIC = "How you doin', ya hairy lug?",
            ATTACKER = "Hey, things don't have to get hairy!",
            MURDERER = "%s's got a mean murderous mug on 'em!",
            REVIVER = "You could use a brush once in a while, %s!",
            GHOST = "That's what all that lying about does to ya!",
			FIRESTARTER = "Quit with the fires, ya hairy lug!",
}
STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEARGER = 
{
            GENERIC = "Hello hello, hungry hangry bear!",
            ATTACKER = "%s is looking to eat! I hope it's not imp meat!",
            MURDERER = "Do not eat the imp, hyuyu!",
            REVIVER = "%s saves souls from the hibernation station!",
            GHOST = "Hyuyu, your soul is so hairy!",
            FIRESTARTER = "Your pranks sure do get hairy! Hyuyu!",
}
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEARGER = 
{
            GENERIC = "%s is hairy friend",
            ATTACKER = "No hitting, hairy!",
            MURDERER = "%s is Mad Murder Molter!",
            REVIVER = "%s is friend fixer",
            GHOST = "Not so smelly now",
            FIRESTARTER = "Fire bad, fire bad!",
}
STRINGS.CHARACTERS.WARLY.DESCRIBE.WEARGER = 
{
		    GENERIC = "Bonjour, my very hairy friend!",
	        ATTACKER = "Might a nice soup simmer you down, %s?",
	        MURDERER = "Oh dear. I don't think %s would have the patience for my cooking.",
	        REVIVER = "Hmm. I'll have to cook up a full-body hair net for you.",
	        GHOST = "It hurts to see someone go out on an empty stomach!",
	        FIRESTARTER = "Things are getting much too hairy, %s.",
}
STRINGS.CHARACTERS.WURT.DESCRIBE.WEARGER = 
{
		    GENERIC = "Hello fuzzy hairy man!",
	        ATTACKER = "Not fair, you have too much hair!",
	        MURDERER = "Grrr, you just a bear bully!",
	        REVIVER = "You is warm and fuzzy.",
	        GHOST = "Will find extra fluffy heart for you!",
	        FIRESTARTER = "Florpt! Too warm! Bad for hair!",
}
STRINGS.CHARACTERS.WALTER.DESCRIBE.WEARGER = 
{
		    GENERIC = "Hey %s!",
	        ATTACKER = "I think %s's bear hugs are getting out of control.",
	        MURDERER = "I gotta write down that this species of bear and badger are killers.",
	        REVIVER = "%s's coat is softer than it looks!",
	        GHOST = "Don't worry! Woby and I will sniff out a good heart!",
	        FIRESTARTER = "I never thought I'd be teaching a bear how to build a campfire!",
}
STRINGS.CHARACTERS.WANDA.DESCRIBE.WEARGER = 
{
            GENERIC = "Sorry, %s. No time to hibernate!",
            ATTACKER = "Acts like that don't surprise me anymore.",
            MURDERER = "Murderer! I'll have to tell you about all the timelines you've perished in.",
            REVIVER = "Never thought a Bearger would be so reliable in this timeline.",
            GHOST = "Give me a moment, %s. You won't forget the taste of honey yet!",
            FIRESTARTER = "I don't remember you burning things last timeline.",
}
--------------------------------------------------------------------------
	-------------------------- MOOSE/GOOSE --------------------------
--------------------------------------------------------------------------
GLOBAL.STRINGS.CHARACTER_TITLES.woose = "The Anserine"
GLOBAL.STRINGS.CHARACTER_NAMES.woose = "Moose or Goose"
if GetModConfigData("enable_nesting") == true then
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.woose = "*Can form a feisty whirlwind\n*Enjoys walks on the ocean\n*Has a tendency of getting wet feathers\n*Aspiring nester"
else
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.woose = "*Can form a feisty whirlwind\n*Has a tendency of wet feathers\n*Has a mean honk"
end
GLOBAL.STRINGS.CHARACTERS.WOOSE = require "speech_woose"
GLOBAL.STRINGS.NAMES.WOOSE = "Woose"
GLOBAL.STRINGS.SKIN_NAMES.woose_none = "Moose/Goose"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.woose_none = "The look of feathers frazzled by electricity."
GLOBAL.STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.woose = "*Has a motherly aura, deals 20% more healing\n\n\n\nExpertise:\nMelee, Darts, Staves"
GLOBAL.STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.woose = "*Brings her trusty nest\n*Inspects food to determine if it matches the Gnaw's craving\n\n*Expertise:\nGathering"
STRINGS.CHARACTER_ABOUTME.woose = "It's a lovely morning in the constant, and you are a motherly moose. ...or goose."
STRINGS.CHARACTER_SURVIVABILITY.woose = "Grim"
STRINGS.CHARACTER_BIOS.woose = {
			{ title = "Birthday", desc = "March 6" },
			{ title = "Favorite Food", desc = "Flower Salad" }, }
-------------------------- SKINS --------------------------
if GetModConfigData("enable_unintelligible") == true then
GLOBAL.STRINGS.CHARACTER_QUOTES.woose =  "\"Honk!? HYOOOOONK!!!\""
GLOBAL.STRINGS.SKIN_QUOTES.woose_ice = "\"HO-HO-HONK!!\""
GLOBAL.STRINGS.SKIN_QUOTES.woose_young = "\"Hrnk! Hnk! Honk!\""
GLOBAL.STRINGS.SKIN_QUOTES.woose_victorian = "\"HNK!!!\""
GLOBAL.STRINGS.SKIN_QUOTES.woose_malbatross = "\"Hooo-ooo-ooonk!\""
GLOBAL.STRINGS.SKIN_QUOTES.woose_shadow = "\"Hyooonk...\""
else
GLOBAL.STRINGS.CHARACTER_QUOTES.woose =  "\"Mother knows her nest best! HONK!!\""
GLOBAL.STRINGS.SKIN_QUOTES.woose_ice = "\"Let momma warm you underneath her wings! HONK!\""
GLOBAL.STRINGS.SKIN_QUOTES.woose_young = "\"To protect her young a mother must become her young!!\""
GLOBAL.STRINGS.SKIN_QUOTES.woose_victorian = "\"HONK! A good momma works tooth and claw on her nest!\""
GLOBAL.STRINGS.SKIN_QUOTES.woose_malbatross = "\"Momma will catch all the fish in the ocean for her young!\""
GLOBAL.STRINGS.SKIN_QUOTES.woose_shadow = "\"You could stay here with momma in her nest forever!\""
end
STRINGS.SKIN_NAMES.woose_ice = "The Snowfallen"
STRINGS.SKIN_DESCRIPTIONS.woose_ice = "This Goose would rather fix up a feast for her young than become one."
STRINGS.SKIN_NAMES.woose_young = "The Hatchling"
STRINGS.SKIN_DESCRIPTIONS.woose_young = "They always said Moose looks younger than she is."
STRINGS.SKIN_NAMES.woose_victorian = "The Victorian"
STRINGS.SKIN_DESCRIPTIONS.woose_victorian = "All that time spent grueling over a simple nest, surely it must be rewarding?"
--STRINGS.SKIN_NAMES.body_woose_victorian = "Mother Goose Dress"
--STRINGS.SKIN_DESCRIPTIONS.body_woose_victorian = "For working the double shift of attending to all the beaks in your nursery and looking good doing it."
STRINGS.SKIN_NAMES.woose_malbatross = "Moosebatroose Costume"
STRINGS.SKIN_DESCRIPTIONS.woose_malbatross = "This costume took many grueling days out at sea fishing to catch."
STRINGS.SKIN_NAMES.woose_shadow = "The Triumphant"
STRINGS.SKIN_DESCRIPTIONS.woose_shadow = "This mother's love is anything but warm and caring."
-------------------------- SKILLTREE --------------------------
STRINGS.SKILLTREE.WOOSE = {
		WOOSE_SPIN_RAIN_TITLE = "Whirlstorm",
		WOOSE_SPIN_RAIN_DESC = "Increase the speed and damage of your Spin while it's raining by 20%.",

		WOOSE_SPIN_1_TITLE = "Flight and Fight I",
		WOOSE_SPIN_1_DESC = "Your Spin will do additional damage and work at the end of its duration.",

		WOOSE_SPIN_2_TITLE = "Flight and Fight II",
		WOOSE_SPIN_2_DESC = "Enemies attacking your Spin will have damage reflected back.",

		WOOSE_SPIN_3_TITLE = "Flight and Fight III",
		WOOSE_SPIN_3_DESC = "Your Spin will do additional damage and work at the start of its duration.",

		WOOSE_SPIN_4_TITLE = "Flight and Fight IV",
		WOOSE_SPIN_4_DESC = "Triple the damage reflected back to enemies attacking your Spin.",

		----------------------
		WOOSE_OCEAN_1_TITLE = "Waterfowl I",
		WOOSE_OCEAN_1_DESC = "Get your hands wet under the ocean to catch fish with your beak/snout.",

		WOOSE_OCEAN_2_TITLE = "Waterfowl II",
		WOOSE_OCEAN_2_DESC = "Increase your speed while walking on the ocean significantly.\nBut increase the rate of your passive Wetness gain on the ocean.",

		----------------------
		WOOSE_NEST_1_TITLE = "Mother's Nesting I",
		WOOSE_NEST_1_DESC = "Restore some more sanity overtime from Motherly Nestings.",

		WOOSE_NEST_2_TITLE = "Mother's Nesting II",
		WOOSE_NEST_2_DESC = "Your Motherly Nesting will double nearby follower's damage and extend follower's loyalty a fair amount.",

		WOOSE_NEST_3_TITLE = "Live, Laugh, Lightning I",
		WOOSE_NEST_3_DESC = "Your Motherly Nesting will function similar to a lightning rod, attracting lightning strikes.",

		WOOSE_NEST_4_TITLE = "Live, Laugh, Lightning II",
		WOOSE_NEST_4_DESC = "When your Motherly Nesting is charged by lightning it will buff nearby survivors with Electrical Damage.",

		WOOSE_SMOTHER_TITLE = "Smotherly Nestling",
		WOOSE_SMOTHER_DESC = "Learn to \"comfort\" other survivors.\nSurvivors affected by Motherly Nestings will get bigger \"comfort\" boosts.",

		----------------------
		WOOSE_BONUS_LOCK_DESC = "Learn 4 Spin skills or 4 Nesting skills to unlock.",

		WOOSE_ABSORB_TITLE = "Shock Absorber",
		WOOSE_ABSORB_DESC = "On getting struck by lightning, deal Electrical Damage for a short period.\nLightning will heal you for more.",

		WOOSE_BIRDS_1_TITLE = "Galvanic Goosery",
		WOOSE_BIRDS_1_DESC = "Learn how to use your Down Feathers to craft a fanciful Migration Mantelet for a shocking boost.",

		WOOSE_BIRDS_2_TITLE = "Migratory Moose-ment",
		WOOSE_BIRDS_2_DESC = "Learn to put your arm feathers to use and migrate over to the nearest occupied Motherly Nesting.",

		----------------------
		WOOSE_NEST_INVEST_1_TITLE = "Nester Investor I",
		WOOSE_NEST_INVEST_1_DESC = "Learn to shake down trees to gain feathers, twigs, or grass.",

		WOOSE_NEST_INVEST_2_TITLE = "Nester Investor II",
		WOOSE_NEST_INVEST_2_DESC = "Learn to use a razor to preen a few of your down feathers every few days.",

		WOOSE_FEATHER_1_TITLE = "Birds of a Feather I",
		WOOSE_FEATHER_1_DESC = "Equip the Luxury Fan and upgrade it with Restrained Static.\nUpgrade it to summon lightning bolts from the sky.",

		WOOSE_FEATHER_2_TITLE = "Birds of a Feather II",
		WOOSE_FEATHER_2_DESC = "Give your Luxury Fan the luxury of a speed boost and a quicker lightning strike cooldown.",

		----------------------
		WOOSE_ALLEGIANCE_LOCK_1_DESC = "Learn 12 skills to unlock.",

		WOOSE_ALLEGIANCE_SHADOW_TITLE = "Shadow Moose",
		WOOSE_ALLEGIANCE_SHADOW_DESC = "The Queen will reward your loyalty by permitting you to incubate Pure Horror to best Lunar-aligned creatures.",

		WOOSE_ALLEGIANCE_LUNAR_TITLE = "Lunar Goose",
		WOOSE_ALLEGIANCE_LUNAR_DESC = "The Cryptic Founder will reward your curiosity by allowing you to incubate Pure Brilliance to best Shadow-aligned creatures.",
}
-------------------------- A Little Drama - Stage play --------------------------
STRINGS.STAGEACTOR.WOOSE1 = 
    {
        "Cackle, cackle, Mother Moose Goose,",
        "Have she any feathers loose?",
        "Truly Momma does, pretty fellow,",
        "Half enough to fill a pillow!",
		"Here are quills, take one or two,",
		"And down to make a bed for you!",
		"HONK!",
    }

general_scripts.WOOSE1 = {
   cast = { "woose" },
   lines = {
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[1]},
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[2]},
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[3]},
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[4]},
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[5]},
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[6]},
		{roles = {"woose"},	duration = 1.0, line = STRINGS.STAGEACTOR.WOOSE1[7]},
    }
}
-------------------------- MODDED --------------------------
GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS.WOOSE =
{
		HUNGER = {
			FULL  = "Stuffed!", 	-- >75%
			HIGH  = "Enough food for the whole nest!",			-- >55%
			MID   = "Need to feed! Honk!!", 	-- >35%
			LOW   = "Hynk! Momma has to skip feeding her young tonight!", 				-- >15%
			EMPTY = "Momma fed all her young, but not herself! HYNK!", 			-- <15%
		},
		SANITY = {
			FULL  = "Honk! My young keeps momma happy!", 			-- >75%
			HIGH  = "Took a little bonk on the antlers! HOOONK!", 				-- >55%
			MID   = "Hearing lots of honking!! HYONK!", 				-- >35%
			LOW   = "Momma's eyes are spinning!!", 			-- >15%
			EMPTY = "HYYOOOONNK!!!", 	-- <15%
		},
		HEALTH = {
			FULL  = "The healthiest momma in the whole flock!", 	-- 100%
			HIGH  = "Hynk! Momma's got a few plucked feathers!", 	-- >75%
			MID   = "Momma's not feeling so good... hyoonk.", 			-- >50%
			LOW   = "Younglings! Momma needs your help!", 	-- >25%
			EMPTY = "Momma has fallen out of her own nest! Hynnnk...", 	-- <25%
		},
		WETNESS = {
			FULL  = "HYNK! Feathers are full of water! Too heavy to swim!!", 	-- >75%
			HIGH  = "Feathers are filled with water! Too much, honnk!",					-- >55%
			MID   = "Feathers getting heavy!! Hynk!", 				-- >35%
			LOW   = "Refreshing feathers!", 		-- >15%
			EMPTY = "Dry with frizzy, fluffy feathers!", 				-- <15%
		},
}
-------------------------- CHARACTER --------------------------
STRINGS.NAMES.NEST_WOOSE = "Motherly Nesting"
STRINGS.NAMES.NESTING_WOOSE = "Motherly Nesting"
STRINGS.RECIPE_DESC.NESTING_WOOSE = "Show off your all natural maternal potential."

STRINGS.CHARACTERS.GENERIC.DESCRIBE.NESTING_WOOSE_ITEM = "I'm not ready for the commitment."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.NESTING_WOOSE_ITEM = "Just a bunch of useless sticks."
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.NESTING_WOOSE_ITEM = "Made with love!"
STRINGS.CHARACTERS.WENDY.DESCRIBE.NESTING_WOOSE_ITEM = "It's a fabrication of life."
STRINGS.CHARACTERS.WX78.DESCRIBE.NESTING_WOOSE_ITEM = "AMASSING OF GROSS STICKS"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.NESTING_WOOSE_ITEM = "Despite the new height, Alces canadensis are still maternal at heart."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.NESTING_WOOSE_ITEM = "Could use a chopping there, bud."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.NESTING_WOOSE_ITEM = "Keep its stench away from me and we have a deal."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.NESTING_WOOSE_ITEM = "An uproarious audience of twigs and dirt!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.NESTING_WOOSE_ITEM = "Wow! You make a really good den!"
STRINGS.CHARACTERS.WINONA.DESCRIBE.NESTING_WOOSE_ITEM = "Ya got gusto, I'll give you that."
STRINGS.CHARACTERS.WORTOX.DESCRIBE.NESTING_WOOSE_ITEM = "A nest that fits a monstrous mother best!"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.NESTING_WOOSE_ITEM = "Friends cuddling"
STRINGS.CHARACTERS.WARLY.DESCRIBE.NESTING_WOOSE_ITEM = "Like a stick soup."
STRINGS.CHARACTERS.WURT.DESCRIBE.NESTING_WOOSE_ITEM = "Not good enough seat for a king, florp!"
STRINGS.CHARACTERS.WALTER.DESCRIBE.NESTING_WOOSE_ITEM = "Sticks and dirt! I hope there's some bugs in there still!"
STRINGS.CHARACTERS.WANDA.DESCRIBE.NESTING_WOOSE_ITEM = "I couldn't fathom waiting around for that."
----------------------
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.NESTING_WOOSE = { GENERAL = "I'm not ready for the commitment.",	LOW = "Empty nest syndrome must be setting in.", }
GLOBAL.STRINGS.CHARACTERS.WILLOW.DESCRIBE.NESTING_WOOSE = { GENERAL = "I can show you my love with a little fire! What'dya say, birdbutt?",	LOW = "Can I put it out of its misery already?", }
GLOBAL.STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.NESTING_WOOSE = { GENERAL = "Is little bird baby bed!",	LOW = "Little bird baby bed is weaker than usual.", }
GLOBAL.STRINGS.CHARACTERS.WENDY.DESCRIBE.NESTING_WOOSE = { GENERAL = "It's a fabrication of life.",	LOW = "It, too, will die.", }
GLOBAL.STRINGS.CHARACTERS.WX78.DESCRIBE.NESTING_WOOSE = { GENERAL = "AMASSING OF GROSS STICKS",	LOW = "EXPIRY DATE APPROACHING. GOOD", }
GLOBAL.STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.NESTING_WOOSE = { GENERAL = "Despite the new height, Alces canadensis are still maternal at heart.",	LOW = "Perhaps I could lend a helping hand, she would be grateful.", }
GLOBAL.STRINGS.CHARACTERS.WOODIE.DESCRIBE.NESTING_WOOSE = { GENERAL = "Could use a chopping there, bud.",	LOW = "Your home's looking pretty worse for wear.", }
GLOBAL.STRINGS.CHARACTERS.WAXWELL.DESCRIBE.NESTING_WOOSE = { GENERAL = "Filthy.",	LOW = "If you're going to walk like us, you could do with cleaning up your filth.", }
GLOBAL.STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.NESTING_WOOSE = { GENERAL = "If it's important to my ally, it's important to us all!",	LOW = "Beauty fades. Glory is forever.", }
GLOBAL.STRINGS.CHARACTERS.WEBBER.DESCRIBE.NESTING_WOOSE = { GENERAL = "Wow! You make a really good den!",	LOW = "Aw, we should help her with her den!", }
GLOBAL.STRINGS.CHARACTERS.WINONA.DESCRIBE.NESTING_WOOSE = { GENERAL = "Ya got gusto, I'll give you that.",	LOW = "That's not gonna last much longer.", }
GLOBAL.STRINGS.CHARACTERS.WORTOX.DESCRIBE.NESTING_WOOSE = { GENERAL = "A nest that fits a monstrous mother best!",	LOW = "This nest is soon to be laid to rest!", }
GLOBAL.STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.NESTING_WOOSE = { GENERAL = "Friends cuddling",	LOW = "Sick, Friend?", }
GLOBAL.STRINGS.CHARACTERS.WARLY.DESCRIBE.NESTING_WOOSE = { GENERAL = "Like a stick soup.",	LOW = "I fear its expiry date is soon.", }
GLOBAL.STRINGS.CHARACTERS.WURT.DESCRIBE.NESTING_WOOSE = { GENERAL = "Not good enough seat for a king, florp!",	LOW = "Fish wouldn't get wilty like this, florp.", }
GLOBAL.STRINGS.CHARACTERS.WALTER.DESCRIBE.NESTING_WOOSE = { GENERAL = "I've always wanted to ask a waterfowl about its nest!",	LOW = "Do you think she'll let us build her a bird house, Woby?", }
GLOBAL.STRINGS.CHARACTERS.WANDA.DESCRIBE.NESTING_WOOSE = { GENERAL = "I won't be spending any amount of time attending to that.",	LOW = "Its age is starting to show.", }
----------------------
GLOBAL.STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.GIVE = { NOTMOTHER = "I, uh, don't study in that field.", }
GLOBAL.STRINGS.CHARACTERS.WILLOW.ACTIONFAIL.GIVE = { NOTMOTHER = "Yuck! I'm not touching THAT!", }
GLOBAL.STRINGS.CHARACTERS.WOLFGANG.ACTIONFAIL.GIVE = { NOTMOTHER = "Wolfgang is not mightiest mother!", }
GLOBAL.STRINGS.CHARACTERS.WENDY.ACTIONFAIL.GIVE = { NOTMOTHER = "I won't cradle you from the horrors of this world.", }
GLOBAL.STRINGS.CHARACTERS.WX78.ACTIONFAIL.GIVE = { NOTMOTHER = "I REFUSE", }
GLOBAL.STRINGS.CHARACTERS.WICKERBOTTOM.ACTIONFAIL.GIVE = { NOTMOTHER = "I'm afraid, even with all her effort, eggs still won't incubate here.", }
GLOBAL.STRINGS.CHARACTERS.WOODIE.ACTIONFAIL.GIVE = { NOTMOTHER = "I don't think 'Luce is ready to settle down.", }
GLOBAL.STRINGS.CHARACTERS.WAXWELL.ACTIONFAIL.GIVE = { NOTMOTHER = "Perhaps I'll put this to much better use myself.", }
GLOBAL.STRINGS.CHARACTERS.WATHGRITHR.ACTIONFAIL.GIVE = { NOTMOTHER = "I shall interfere not with your rituals!", }
GLOBAL.STRINGS.CHARACTERS.WEBBER.ACTIONFAIL.GIVE = { NOTMOTHER = "We wouldn't want to ruin her nest!", }
GLOBAL.STRINGS.CHARACTERS.WINONA.ACTIONFAIL.GIVE = { NOTMOTHER = "Not much I can do here for ya, girl.", }
GLOBAL.STRINGS.CHARACTERS.WARLY.ACTIONFAIL.GIVE = { NOTMOTHER = "Not quite my area of expertise, I'm afraid.", }
GLOBAL.STRINGS.CHARACTERS.WORTOX.ACTIONFAIL.GIVE = { NOTMOTHER = "Hoohoo, I jest! We imps simply don't nest!", }
GLOBAL.STRINGS.CHARACTERS.WURT.ACTIONFAIL.GIVE = { NOTMOTHER = "Glorp? Don't fit.", }
GLOBAL.STRINGS.CHARACTERS.WORMWOOD.ACTIONFAIL.GIVE = { NOTMOTHER = "Friend doesn't want", }
GLOBAL.STRINGS.CHARACTERS.WALTER.ACTIONFAIL.GIVE = { NOTMOTHER = "I'll check my handbook! I know there's some great bird nest handling guides, but...Moose...Goose nests?", }
GLOBAL.STRINGS.CHARACTERS.WANDA.ACTIONFAIL.GIVE = { NOTMOTHER = "I'm not even going to consider giving that the time and day.", }
----------------------
STRINGS.NAMES.WOOSE_CAPELET = "Migration Mantelet"
STRINGS.RECIPE_DESC.WOOSE_CAPELET = "Shed your current coat of feathers for this much more in-season style."

STRINGS.CHARACTERS.GENERIC.DESCRIBE.WOOSE_CAPELET = "It's giving me all sorts of goosebumps."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.WOOSE_CAPELET = "Just don't wear that too close to an open flame. Or do... heh heh."
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WOOSE_CAPELET = "Always thought cape would look good on Wolfgang."
STRINGS.CHARACTERS.WENDY.DESCRIBE.WOOSE_CAPELET = "May these quills make my final resting place."
STRINGS.CHARACTERS.WX78.DESCRIBE.WOOSE_CAPELET = "THIS DISGUSTING ORGANIC MATTER HAS PROVEN ITSELF USEFUL FOR CHARGES"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WOOSE_CAPELET = "It seems this Alces canadensis has learned to fabricate more than just nesting."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.WOOSE_CAPELET = "No thanks. I get enough of those growin' on my back."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WOOSE_CAPELET = "A devastating combination of oils and scorch marks left on my suit."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WOOSE_CAPELET = "'Tis not unlike the garb of a forest nymph."
STRINGS.CHARACTERS.WEBBER.DESCRIBE.WOOSE_CAPELET = "It makes swooshing sounds when we run!"
STRINGS.CHARACTERS.WINONA.DESCRIBE.WOOSE_CAPELET = "She's surprisingly good at making goods with all-natural materials."
STRINGS.CHARACTERS.WORTOX.DESCRIBE.WOOSE_CAPELET = "Short and sweet, hyuyu!"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WOOSE_CAPELET = "Friend hair tickles"
STRINGS.CHARACTERS.WARLY.DESCRIBE.WOOSE_CAPELET = "You've got quite the shocking style."
STRINGS.CHARACTERS.WURT.DESCRIBE.WOOSE_CAPELET = "Look just like Birdfolk."
STRINGS.CHARACTERS.WALTER.DESCRIBE.WOOSE_CAPELET = "It's like we're part of the family!"
STRINGS.CHARACTERS.WANDA.DESCRIBE.WOOSE_CAPELET = "Quite the afternoonified capelet!"
----------------------
GLOBAL.STRINGS.ACTIONS.CASTAOE = {
	GENERIC = type(GLOBAL.STRINGS.ACTIONS.CASTAOE) == "string" and GLOBAL.STRINGS.ACTIONS.CASTAOE or nil,
	FEATHERFAN = "Strike Lightning",
}
----------------------
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WOOSE = 
{
            GENERIC = "Good day, %s!",
            ATTACKER = "You're giving me goosebumps, %s.",
            MURDERER = "Your goose is cooked, %s! Your moose too!",
            REVIVER = "Your goose really hangs high, %s!",
            GHOST = "%s is more ghoost than goose!",
			FIRESTARTER = "Trying to cook your own goose, %s?",
}
STRINGS.CHARACTERS.WILLOW.DESCRIBE.WOOSE = 
{
            GENERIC = "Hi %s!",
            ATTACKER = "Hey, featherbrain! Wanna see how feathers catch fire?",
            MURDERER = "I've never wanted to cook someone's goose so bad! Well, maybe I have.",
            REVIVER = "%s is a big snuggly softie!",
            GHOST = "You look even dumber as a ghost, %s!",
			FIRESTARTER = "Yes! I knew you had it in you, %s!",
}
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WOOSE = 
{
            GENERIC = "Is birdlady, %s! Hello!",
            ATTACKER = "Watch Wolfgang lift birdlady's mighty egg and eat!",
            MURDERER = "%s is killer bird!",
            REVIVER = "%s is nice birdlady.",
            GHOST = "Wolfgang will get heart for birdlady's nest!",
			FIRESTARTER = "Why starting fires, birdlady? For nest?",
}
STRINGS.CHARACTERS.WENDY.DESCRIBE.WOOSE = 
{
            GENERIC = "How do you do, %s?",
            ATTACKER = "She was merely luring us under her vicious wings!",
            MURDERER = "Such an expression of murder in her eyes!",
            REVIVER = "%s cradles life...",
            GHOST = "You could always fly away from this place, %s...",
			FIRESTARTER = "Do wish to build a nest of flame, %s?",
}
STRINGS.CHARACTERS.WX78.DESCRIBE.WOOSE = 
{
            GENERIC = "DETECTING... %s!",
            ATTACKER = "IS THAT WHY YOU WANT FLESHLING UNDER YOUR WINGS? TO BEAT THEM?",
            MURDERER = "%s's SOUL IS AS EMPTY AS HER NEST. HA HA",
            REVIVER = "I HAVE THE UGLY ORGANIC BEAST AS MY MINION",
            GHOST = "YOU ARE MORE USELESS THAN I GAVE CREDIT FOR",
			FIRESTARTER = "HA HA. THIS ORGANIC HAS BEEN BURNING THINGS",
}
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WOOSE = 
{
            GENERIC = "Ah, greetings dear %s!",
            ATTACKER = "It appears the Alces canadensis are just as protective short.",
            MURDERER = "You can speak, but you honk just as loud as your predecessor!",
            REVIVER = "You'll make a fine mother one day, %s.",
            GHOST = "You don't need to live and die by a nest, dear!",
			FIRESTARTER = "Careful, %s. What's sauce for the goose, is sauce for the moose!",
}
STRINGS.CHARACTERS.WOODIE.DESCRIBE.WOOSE = 
{
            GENERIC = "You too, eh?",
            ATTACKER = "Canada's got the most ferocious mothers, eh?",
            MURDERER = "I'll have that goose of yours cooked, eh!",
            REVIVER = "I'd be proud to call ya Canada's mother, %s!",
            GHOST = "Wouldn't happen to have a heart in that nest of yours, %s?",
			FIRESTARTER = "All that bird must make ya an enemy of the forest!",
}
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WOOSE = 
{
            GENERIC = "Greetings, Ms. %s.",
            ATTACKER = "There's still a few screws loose in that moose.",
            MURDERER = "Looks like we'll have to kill the goose without golden eggs.",
            REVIVER = "%s is quite the mother, for beasts that is.",
            GHOST = "You're a candidate for a second pair of wings, %s.",
			FIRESTARTER = "%s seems more firefowl than waterfowl.",
}
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WOOSE = 
{
	        GENERIC = "Greetings, feathery beast %s!",
	        ATTACKER = "Is it a glorious battle of wits and wings you want?",
	        MURDERER = "You will be felled, fowl beast! Our battle, glorious!",
	        REVIVER = "Your heart shines as bright as your electric egg!",
	        GHOST = "It was a honor to fight thee, motherly beast!",
	        FIRESTARTER = "Don't singe thy wings, %s!",
}
STRINGS.CHARACTERS.WEBBER.DESCRIBE.WOOSE = 
{
	        GENERIC = "Hi %s! How's the nest?",
	        ATTACKER = "Hey, we thought you were motherly!",
	        MURDERER = "We don't wanna snuggle under those wings!",
	        REVIVER = "%s's nest isn't like a spider den, but her wings are soft!",
	        GHOST = "We'll find a heart for you, %s!",
	        FIRESTARTER = "Uh-oh! Does %s know fire is dangerous to us?",
}
STRINGS.CHARACTERS.WINONA.DESCRIBE.WOOSE = 
{
            GENERIC = "How are ya, mama!",
            ATTACKER = "%s is hollerin' up a storm!",
            MURDERER = "%s's sending us on a wild killer goose chase!",
            REVIVER = "You know, I oughta show you how to build a REAL nest!",
            GHOST = "Need a wing there, mama moose?",
		    FIRESTARTER = "Fire? Thought you were more of the water type, mama!",
}
STRINGS.CHARACTERS.WORTOX.DESCRIBE.WOOSE = 
{
            GENERIC = "Hello, hello my motherly moose-y friend!",
            ATTACKER = "Who set the moose loose!",
            MURDERER = "Hyuyu! Don't honk at the imp!",
            REVIVER = "We've established a soulful goose truce!",
            GHOST = "I'd love a taste, %s!",
            FIRESTARTER = "She sure seems down with fire! Hyuyu!",
}
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WOOSE = 
{
            GENERIC = "Hello branch head tweeter!",
            ATTACKER = "Hurt too much! Tweet too much!",
            MURDERER = "Don't sit on friends! Bad!",
            REVIVER = "Good helper friend",
            GHOST = "Branch head tweeter is floaty!",
            FIRESTARTER = "Agh! Tweet maker is fire maker!",
}
STRINGS.CHARACTERS.WARLY.DESCRIBE.WOOSE = 
{
		    GENERIC = "Bonjour, my feathered friend!",
	        ATTACKER = "%s is giving me quite the goosebumps. Or is it moosebumps?",
	        MURDERER = "I bet you roast nicely with some cranberry sauce!",
	        REVIVER = "%s is a kind, caring mother.",
	        GHOST = "%'s goose was cooked!",
	        FIRESTARTER = "I don't suppose you could cook your own eggs too?",
}
STRINGS.CHARACTERS.WURT.DESCRIBE.WOOSE = 
{
		    GENERIC = "Hello \"Mother Goose\"!",
	        ATTACKER = "\"Mother Goose\" honk too loud!",
	        MURDERER = "No, that hurt! Feathers sharp!",
	        REVIVER = "You good mother, with funny face!",
	        GHOST = "Will get heart, %s!",
	        FIRESTARTER = "That not how nest is made!",
}
STRINGS.CHARACTERS.WALTER.DESCRIBE.WOOSE = 
{
		    GENERIC = "Hi %s!",
	        ATTACKER = "I don't think having a bird as a mom is a good idea.",
	        MURDERER = "Steer clear, Woby! She's a killer mom!",
	        REVIVER = "You really make me miss my actual mom.",
	        GHOST = "Woby and I will get you a real nice heart, mom!",
	        FIRESTARTER = "If you can make a nest, you can make a campfire!",
}
STRINGS.CHARACTERS.WANDA.DESCRIBE.WOOSE = 
{
            GENERIC = "Sorry %s, no time to honk about!",
            ATTACKER = "%s! That was not necessary for whatever nest you've made.",
            MURDERER = "Murderer! That is not an example you want to set for your eggs!",
            REVIVER = "You're a lot, but I've found you do keep your word.",
            GHOST = "Your eggs won't be growing up without you this time, %s!",
            FIRESTARTER = "You're much too overbearing this time around, %s.",
}
--------------------------------------------------------------------------
	-------------------------- DRAGONFLY --------------------------
--------------------------------------------------------------------------
GLOBAL.STRINGS.CHARACTER_TITLES.wragonfly = "The Entomo-Firedrake"
GLOBAL.STRINGS.CHARACTER_NAMES.wragonfly = "Dragonfly"
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.wragonfly = "*Has a short fuse\n*And a fiery attitude\n*A dragon heat barely beats\n*Can enkindle life"
GLOBAL.STRINGS.CHARACTERS.WRAGONFLY = require "speech_wragonfly"
GLOBAL.STRINGS.NAMES.WRAGONFLY = "Wragonfly"
GLOBAL.STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.wragonfly = "*Becomes Enraged when health is low, increasing attack power, health, and movement speed for 60 seconds\n*Rage has a 30 second cooldown\n\nExpertise:\nMelee, Staves"
GLOBAL.STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.wragonfly = "*Becomes Enraged while the Gnaw is Hangry, increasing speed\n\n*Expertise:\nGathering"
GLOBAL.STRINGS.SKIN_NAMES.wragonfly_none = "Dragonfly"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.wragonfly_none = "Dragonfly's favorite pair of scales."
STRINGS.CHARACTER_ABOUTME.wragonfly = "With her draconic temperamental roots, Dragonfly finds her new situation to be that of one to surmount with riches."
STRINGS.CHARACTER_SURVIVABILITY.wragonfly = "Slim"
STRINGS.CHARACTER_BIOS.wragonfly = {
			{ title = "Birthday", desc = "November 30" },
			{ title = "Favorite Food", desc = "Hot Dragon Chili Salad" }, }
-------------------------- SKINS --------------------------
if GetModConfigData("enable_unintelligible") == true then
GLOBAL.STRINGS.CHARACTER_QUOTES.wragonfly =  "\"Grrr...! Bzrrrt, zrt zrt!\""
GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_ice = "\"Zrrh-rh-zrht!\""
GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_shadow = "\"ZRRRT..! Bzzzzrrt!\""
GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_haunted = "\"BzzRrRrRrRrt...!\""
GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_antlion = "\"...Bzrt?\""
GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_lunar = "\"Bzzrt! Bzrt! Bzrt!\""
else
GLOBAL.STRINGS.CHARACTER_QUOTES.wragonfly =  "\"What better than a hoard of gold and a bit of ash...!\""
GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_ice = "\"A frigid exterior to compliment the roaring flames within!\""
GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_shadow = "\"Only riches most sweet for my queenly shadow's keep!\""
GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_haunted = "\"A queen desires gold, even in death...! BZrRrRt!\""
GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_antlion = "\"I desire only your finest of tributes and prized possessions!\""
GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_lunar = "\"It's always my time to shine! ...See how I sparkle!\""
end
STRINGS.SKIN_NAMES.wragonfly_ice = "The Snowfallen"
STRINGS.SKIN_DESCRIPTIONS.wragonfly_ice = "Whilst lava burns hot in the cold winter night, Dragonfly takes wing in a most fervid flight." --Klei quote
STRINGS.SKIN_NAMES.wragonfly_shadow = "The Triumphant"
STRINGS.SKIN_DESCRIPTIONS.wragonfly_shadow = "Never mess with an evil dragon queen's hoard."
STRINGS.SKIN_NAMES.wragonfly_haunted = "The Haunted"
STRINGS.SKIN_DESCRIPTIONS.wragonfly_haunted = "There's nothing left but rage and fury behind those wistful green globes."
STRINGS.SKIN_NAMES.wragonfly_antlion = "Dragantlion Costume"
STRINGS.SKIN_DESCRIPTIONS.wragonfly_antlion = "There's little Dragonfly hates more than a cool breeze on a simmering summer day."
STRINGS.SKIN_NAMES.wragonfly_lunar = "The Lucky Beast"
STRINGS.SKIN_DESCRIPTIONS.wragonfly_lunar = "There's no other festivity Dragonfly loves more than one that's all about her."
-------------------------- SKILLTREE --------------------------
STRINGS.SKILLTREE.WRAGONFLY = {
		WRAGONFLY_VIGOR_1_TITLE = "Invigorated I",
		WRAGONFLY_VIGOR_1_DESC = "On enrage, regain health based on your current sanity.",

		WRAGONFLY_VIGOR_2_TITLE = "Invigorated II",
		WRAGONFLY_VIGOR_2_DESC = "Increase your speed and damage while enraged even further the closer you are to rage ending.",

		WRAGONFLY_DAMAGE_1_TITLE = "Dragon's Ire",
		WRAGONFLY_DAMAGE_1_DESC = "Make your rage's damage bursts consistent every other hit.",

		WRAGONFLY_DAMAGE_2_TITLE = "Draconian Desolation",
		WRAGONFLY_DAMAGE_2_DESC = "While enraged, enemies attacking you have the chance to take additional damage.",

		WRAGONFLY_DAMAGE_3_TITLE = "Dragon Spell",
		WRAGONFLY_DAMAGE_3_DESC = "While enraged, mark your enemies with a debuff that causes enemies to innately take damage bursts for 20 seconds on hit.",

		WRAGONFLY_DAMAGE_4_TITLE = "Death Breath",
		WRAGONFLY_DAMAGE_4_DESC = "Gain the ability to eat ash and spit fiery pools of lava while enraged.",

		WRAGONFLY_RAGE_HUNGER_LOCK_DESC = "Learn 3 Rage skills to unlock.",

		WRAGONFLY_HUNGER_TITLE = "Lord of Cinder",
		WRAGONFLY_HUNGER_DESC = "Eating charcoal while enraged will increase your rage by 20 seconds.\nLose a little less sanity overtime from being enraged.",

		WRAGONFLY_RAGE_LAVAE_LOCK_DESC = "Learn 4 Lavae skills to unlock.",

		WRAGONFLY_RAGE_LAVAE_1_TITLE = "Valiant Soldier I",
		WRAGONFLY_RAGE_LAVAE_1_DESC = "Deal 15% more damage to the targets of your Lavae.",

		WRAGONFLY_RAGE_LAVAE_2_TITLE = "Valiant Soldier II",
		WRAGONFLY_RAGE_LAVAE_2_DESC = "Gain the ability to consume your Lavae, returning some of its current health & hunger to yours, at the cost of sanity.",

		----------------------

		WRAGONFLY_ASH_LOCK_DESC = "Eat 8 ashes and become enraged to unlock.",

		WRAGONFLY_ASH_TITLE = "Ashen One",
		WRAGONFLY_ASH_DESC = "Gain the ability to spit on certain burnable tinder to quickly convert it to ash.",

		----------------------

		WRAGONFLY_LAVAEHEALTH_1_TITLE = "Larval Love I",
		WRAGONFLY_LAVAEHEALTH_1_DESC = "Lavae will heal more from eating ash & charcoal.",

		WRAGONFLY_LAVAEHEALTH_2_TITLE = "Larval Love II",
		WRAGONFLY_LAVAEHEALTH_2_DESC = "Lavae will slowly regenerate health if not starving.",

		WRAGONFLY_LAVAEHUNGER_1_TITLE = "Very Hungry Lavae I",
		WRAGONFLY_LAVAEHUNGER_1_DESC = "Lavae are a little less hungry and food a little more filling.",

		WRAGONFLY_LAVAEHUNGER_2_TITLE = "Very Hungry Lavae II",
		WRAGONFLY_LAVAEHUNGER_2_DESC = "Lavae will feed off the life-force of its enemies, half of its damage dealt is returned as hunger.",

		WRAGONFLY_LAVAEDEATH_1_TITLE = "Everlasting Lavae I",
		WRAGONFLY_LAVAEDEATH_1_DESC = "Lavae will pop on death causing splash damage to enemies.",

		WRAGONFLY_LAVAEDEATH_2_TITLE = "Everlasting Lavae II",
		WRAGONFLY_LAVAEDEATH_2_DESC = "Lavae no longer die when you do and will follow you as a ghost.",

		WRAGONFLY_HOT_TITLE = "Molten Lavae",
		WRAGONFLY_HOT_DESC = "Lavae will deal 30% more damage to burning targets.",

		WRAGONFLY_LAVAE_RAGE_LOCK_DESC = "Learn 4 Rage skills to unlock.",

		WRAGONFLY_LAVAE_RAGE_1_TITLE = "Broodling Bond I",
		WRAGONFLY_LAVAE_RAGE_1_DESC = "While you're enraged, your Lavae will take 25% less damage.",

		WRAGONFLY_LAVAE_RAGE_2_TITLE = "Broodling Bond II",
		WRAGONFLY_LAVAE_RAGE_2_DESC = "While you're enraged, your Lavae will be quicker to attack and crawl.",

		----------------------
		WRAGONFLY_ALLEGIANCE_LOCK_1_DESC = "Learn 12 skills to unlock.",

		WRAGONFLY_ALLEGIANCE_SHADOW_TITLE = "Shadow Consort",
		WRAGONFLY_ALLEGIANCE_SHADOW_DESC = "The Queen will reward your loyalty by summoning lavae allies on rage.\nOn enraging, spontaneously gain a few lavae at no cost.",

		WRAGONFLY_ALLEGIANCE_LUNAR_TITLE = "Lunar Regent",
		WRAGONFLY_ALLEGIANCE_LUNAR_DESC = "The Cryptic Founder will reward your curiosity by providing the secrets to Lavae resurrection.\nYour Lavae will become cocooned on death, and can be re-summoned from it.",
}
STRINGS.SKILLTREE.PANELS.RAGE = "RAGE"
STRINGS.SKILLTREE.PANELS.LAVAE = "LAVAE"
-------------------------- A Little Drama - Stage play --------------------------
STRINGS.STAGEACTOR.WRAGONFLY1 = 
    {
        "I am strong...! My armor is like tenfold shields!",
        "My teeth are swords, my claws spears!",
        "The shock of my tail a thunderbolt, my wings a hurricane!",
        "...And my breath death!",
    }

general_scripts.WRAGONFLY1 = {
   cast = { "wragonfly" },
   lines = {
		{roles = {"wragonfly"}, duration = 3.0, line = STRINGS.STAGEACTOR.WRAGONFLY1[1], anim="emote_fistshake"},
		{roles = {"wragonfly"},        duration = 3.0, line = STRINGS.STAGEACTOR.WRAGONFLY1[2]},
		{roles = {"wragonfly"},        duration = 3.0, line = STRINGS.STAGEACTOR.WRAGONFLY1[3]},
		{roles = {"wragonfly"},        duration = 3.0, line = STRINGS.STAGEACTOR.WRAGONFLY1[4], anim="emote_flex"},
    }
}
-------------------------- MODDED --------------------------
GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS.WRAGONFLY =
{
		HUNGER = {
			FULL  = "I am well-fed! As any regal dragon ruler!", 	-- >75%
			HIGH  = "My hunger, satisfied! My hunger for wealth on the other claw...",			-- >55%
			MID   = "O' Woe is me! For I hunger for more!", 	-- >35%
			LOW   = "Zrt. No queen should go without cake!", 				-- >15%
			EMPTY = "The fire within has been quenched...!", 			-- <15%
		},
		SANITY = {
			FULL  = "I might start singing a dragon's tune!", 			-- >75%
			HIGH  = "This conscious is clear and o' so innocent! I fear nothing!", 				-- >55%
			MID   = "My mind is is cracking at the seams, like an old silver chalice...!", 				-- >35%
			LOW   = "My thoughts are like liquid gold pouring out of my precious head!", 			-- >15%
			EMPTY = "My temper has caught up to me! I command thee to halt, beast of shadow!!", 	-- <15%
		},
		HEALTH = {
			FULL  = "My claws, luxurious! My scales, piercing! My riches, flourishing!", 	-- 100%
			HIGH  = "Nothing a polishing of the scales cannot fix!", 	-- >75%
			MID   = "This queen falters too much at the seams...", 			-- >50%
			LOW   = "The lava leaks from my veins...!", 	-- >25%
			EMPTY = "ZRT!! No more play, this queen you shalt not slay...!", 	-- <25%
		},
		WETNESS = {
			FULL  = "My fire is drenched, my claws dripping! Free me from this prison!", 	-- >75%
			HIGH  = "My scales have begun to soak and simmer my light!",					-- >55%
			MID   = "The air around me is steamed ablaze!", 				-- >35%
			LOW   = "I can hear the sizzling of steam off my scales.", 		-- >15%
			EMPTY = "Dry and arid, how I must stay!", 				-- <15%
		},
}
-------------------------- CHARACTER --------------------------
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WRAGONFLY = 
{
            GENERIC = "Greetings to you, %s!",
            ATTACKER = "%s's claws are glowing brighter than usual...",
            MURDERER = "Murderer! You can't trust what used to kill us!",
            REVIVER = "Thanks for lending a helping claw, %s.",
            GHOST = "It looks like we didn't get any loot this time.",
			ENRAGED = "%s is really heated right now.",
			FIRESTARTER = "Haven't you burnt enough bridges, %s?",
}
STRINGS.CHARACTERS.WILLOW.DESCRIBE.WRAGONFLY = 
{
            GENERIC = "Hi %s!",
            ATTACKER = "That passion!! A little rough though, %s!",
            MURDERER = "Murderer! I knew I couldn't trust a bug!",
            REVIVER = "Ha, %s!! You care more about us than you lead on, huh!",
            GHOST = "Your fire get extinguished, %s?",
			ENRAGED = "I hope this doesn't awaken anything in me.",
			FIRESTARTER = "%s! YES, burn it all!! Let me join in!!",
}
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WRAGONFLY = 
{
            GENERIC = "Big fiery killbeast is now tiny?",
            ATTACKER = "Wolfgang is mightier than mighty beast!",
            MURDERER = "Is still fiery killbeast, but tiny! Attack!",
            REVIVER = "%s is nicer than bigger killbeast.",
            GHOST = "Wolfgang will get raw killbeast heart for you!",
			ENRAGED = "Fiery killbeast is full of angry fire!",
			FIRESTARTER = "Please no burnings, killbeast!",
}
STRINGS.CHARACTERS.WENDY.DESCRIBE.WRAGONFLY = 
{
            GENERIC = "How do you do, %s?",
            ATTACKER = "%s has a taste for blood. She always gets what she wants...",
            MURDERER = "You are not above death... villain!",
            REVIVER = "What big eyes you have... %s.",
            GHOST = "Flies never live too long, %s...",
			ENRAGED = "Is something upsetting you, %s...?",
			FIRESTARTER = "%s dons a wreath of flame, and guilt.",
}
STRINGS.CHARACTERS.WX78.DESCRIBE.WRAGONFLY = 
{
            GENERIC = "DETECTING... %s!",
            ATTACKER = "THIS IS A STRICT NO GROSS FLY FLESHING ZONE",
            MURDERER = "DON'T DESTROY TOO MANY OF MY MINIONS, %s",
            REVIVER = "YOU SERVE ME, NOT THE OTHER WAY AROUND",
            GHOST = "HA HA. YOU DIED. WHAT DID YOU SAY ABOUT SCALES AGAIN?",
			ENRAGED = "%s CAN HANDLE EXTREMELY HIGH TEMPERATURES",
			FIRESTARTER = "YOUR TEMPERATURE IS TOO HIGH FOR A FLESHLING. STOP IT.",
}
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WRAGONFLY = 
{
            GENERIC = "Ah, greetings, dear %s!",
            ATTACKER = "We don't tolerate such behavior here, %s!",
            MURDERER = "If you kill like your predecessor, we shall murder you like one!",
            REVIVER = "You're a much kinder variant of mythical Diptera, %s!",
            GHOST = "Tsk. I see those scales of yours were all talk, %s.",
			ENRAGED = "Tsk! Go clear you head, dear, before the camp burns down.",
			FIRESTARTER = "I'm aware it's in your nature, but we can't be tolerating your fires here, dear.",
}
STRINGS.CHARACTERS.WOODIE.DESCRIBE.WRAGONFLY = 
{
            GENERIC = "%s! Hey buggy bud!",
            ATTACKER = "Think we haven't chopped yer kin's scales off before, %s?",
            MURDERER = "Enough of your forest fires, you're getting the axe!",
            REVIVER = "Guess we got you all sorts of wrong, %s!",
            GHOST = "Your fire's looking a little pale, %s.",
			ENRAGED = "Don't go walking into the forest like that, %s!",
			FIRESTARTER = "She's burning my trees before I can chop them!",
}
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WRAGONFLY = 
{
            GENERIC = "Greetings, Ms. %s...",
            ATTACKER = "Don't leave a scratch and fly away from it, %s!",
            MURDERER = "What surprise! The fly continues to thrive on killing us!",
            REVIVER = "You give a beast a proper mind and heart and they're bound to care. Scoff.",
            GHOST = "You never stood a chance, even when you towered over us.",
			ENRAGED = "Ms. %s's mere presence is a hazard to us.",
			FIRESTARTER = "Ms. %s's and her army of annoying firebugs create quite the scene.",
}
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WRAGONFLY = 
{
	        GENERIC = "Ah, dragon! I had hoped you'd be a bigger foe!",
	        ATTACKER = "Your terrible deeds reach every edge of the land! Spear to scale shall we fight!",
	        MURDERER = "I've felled many a dragon! This battle shall be glorious!",
	        REVIVER = "%s is a great and merciful beast!",
	        GHOST = "It irks me to have to revive a slain beast!",
			ENRAGED = "%s stews within Hel's flames!",
	        FIRESTARTER = "%s summons Hel's flames ruthlessly!",
}
STRINGS.CHARACTERS.WEBBER.DESCRIBE.WRAGONFLY = 
{
	        GENERIC = "Hey %s! Your scales look sharp!",
	        ATTACKER = "%s, stop! Your claws are scaring us!",
	        MURDERER = "Murderer! Why can't bugs play nice!",
	        REVIVER = "%s isn't as scary as she looks!",
	        GHOST = "Wow! Even your ghost looks sort of scary!",
			ENRAGED = "%s! Does being on fire like that hurt?",
	        FIRESTARTER = "Hey! Bugs aren't supposed to spit fire!",
}
STRINGS.CHARACTERS.WINONA.DESCRIBE.WRAGONFLY =
{
            GENERIC = "Hey, %s, ya snootiest of snoots!",
            ATTACKER = "Keep them \"callous\" claws to yourself, how about!?",
            MURDERER = "Watch out! She's got a built-in welding torch!",
            REVIVER = "You're a bit showy, hey?",
            GHOST = "Those scales are all for show, aren't they %s?",
			ENRAGED = "A bit hot in the head this one, ya?",
		    FIRESTARTER = "How many fires can one fly hold?",
}
STRINGS.CHARACTERS.WORTOX.DESCRIBE.WRAGONFLY = 
{
            GENERIC = "Hello, hello, my hot-headed friend!",
            ATTACKER = "I don't like your use of claws, not one bit!",
            MURDERER = "%s! You're just as bad as my old partner!",
            REVIVER = "What a warm soul hiding behind all that ego, hyuyu!",
            GHOST = "Bye bye, dear dragonfly!",
			ENRAGED = "Ooh! Quiet down, I love this part! Hyuyu!",
            FIRESTARTER = "What funny pranks you do, hyuyu!",
}
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WRAGONFLY = 
{
            GENERIC = "Oh. %s is fire",
            ATTACKER = "Patuey fly, don't hurt!",
            MURDERER = "Agh, too much hurt! Too much fire!!",
            REVIVER = "Patuey fly is friend",
            GHOST = "Oh. Is fire gone?",
			ENRAGED = "Too much fire! Too much!!",
            FIRESTARTER = "Why make so much fire?!",
}
STRINGS.CHARACTERS.WARLY.DESCRIBE.WRAGONFLY = 
{
		    GENERIC = "Salut, my buggy-eyed friend!",
	        ATTACKER = "Mon dieu! You could cook me from raw to well-done!",
	        MURDERER = "You'll not broil me alive!",
	        REVIVER = "You truly have a heart of gold, %s!",
	        GHOST = "Non, this will not do! Who else can sear steak with such ease!",
			ENRAGED = "Might you give me a quick claw in this meal I'm making?",
	        FIRESTARTER = "%s is quite the firefly!",
}
STRINGS.CHARACTERS.WURT.DESCRIBE.WRAGONFLY = 
{
		    GENERIC = "Hello, big scaled-folk!",
	        ATTACKER = "No! Scaled-folk shouldn't fight, florp!",
	        MURDERER = "Why scaled-folk fight! Don't trust buggy-eyed scaled-folk!",
	        REVIVER = "Scaled-folk stick together, florp!!",
	        GHOST = "Will get help! Scaled-folk stick together, florpt!",
			ENRAGED = "Why scales so hot?",
	        FIRESTARTER = "%s is very weird scaled-folk.",
}
STRINGS.CHARACTERS.WALTER.DESCRIBE.WRAGONFLY = 
{
		    GENERIC = "Hey %s!",
	        ATTACKER = "Okay, okay! I won't collect anymore of your scales!",
	        MURDERER = "%s has some fierce claws on her! So cool!",
	        REVIVER = "Can you tell me what it's like being a bug AND a dragon!?",
	        GHOST = "Trade a heart for gold? No? Okay, okay, I'll go get a heart!",
			ENRAGED = "Woah! She has lava in her veins!",
	        FIRESTARTER = "I know you're pretty much made of fire but-",
}
STRINGS.CHARACTERS.WANDA.DESCRIBE.WRAGONFLY = 
{
            GENERIC = "Sorry %s, no time for curtsy!",
            ATTACKER = "How long will it take until we find all our gold missing this time?",
            MURDERER = "Killer! This time it's you who'll be eating cake!",
            REVIVER = "Relieved to find this timeline doesn't involve my clocks on top a dragon's hoard.",
            GHOST = "If you would only give me a second, I'd have you back!",
			ENRAGED = "This happens all the time with her.",
            FIRESTARTER = "You're a little too predictable, %s.",
}
-------------------------- SHIPWRECKED --------------------------
    if GLOBAL.STRINGS.CHARACTERS.WALANI then
GLOBAL.STRINGS.CHARACTERS.WALANI.DESCRIBE.WEERCLOPS = 
{
	        GENERIC = "Hang ten, %s!",
	        ATTACKER = "Chill out! Y'know, like the sitting back and relaxing kind!",
	        MURDERER = "Way too chill. Never thought I'd say that... Brr.",
	        REVIVER = "%s knows real chill.",
	        GHOST = "What'cha lookin' at me like that for?",
	        FIRESTARTER = "You need to chill out. More so than usual.",
}
GLOBAL.STRINGS.CHARACTERS.WALANI.DESCRIBE.WEARGER = 
{
	        GENERIC = "Aloha, %s!",
	        ATTACKER = "Things don't have to get hairy, dude!",
	        MURDERER = "Not even I get that fussy when I'm hungry.",
	        REVIVER = "%s knows how to hang ten in a cool breeze.",
	        GHOST = "Bummer about your death, beargy-bud.",
	        FIRESTARTER = "All that hair's a fire hazard, I guess.",
}
GLOBAL.STRINGS.CHARACTERS.WALANI.DESCRIBE.WOOSE = 
{
	        GENERIC = "Hang ten, %s!",
	        ATTACKER = "Kick back and lay loose, moose!",
	        MURDERER = "Yeesh! That's no mom of mine!",
	        REVIVER = "Mom's got the biggest heart and honks around.",
	        GHOST = "Sorry about your death, moo... goo... %s.",
	        FIRESTARTER = "You need a serious bird bath, bud.",
}
GLOBAL.STRINGS.CHARACTERS.WALANI.DESCRIBE.WRAGONFLY = 
{
	        GENERIC = "Aloha, %s!",
	        ATTACKER = "Yeesh, cool off a bit will you?",
	        MURDERER = "You could use a chill pill and a bucket of ice.",
	        REVIVER = "Hey, your heart's still burning hot!",
	        GHOST = "Being like that must bug you, huh.",
			ENRAGED = "Chill out, fly!",
	        FIRESTARTER = "Those fires weren't very fly, guy.",
}
STRINGS.CHARACTERS.WALANI.DESCRIBE.NESTING_WOOSE_ITEM = "That's a whole lotta busywork. Not for me."
STRINGS.CHARACTERS.WALANI.DESCRIBE.NESTING_WOOSE = { GENERAL = "That's a whole lotta busywork. Not for me.",	LOW = "It's a little sad all left alone like that.", }
STRINGS.CHARACTERS.WALANI.ACTIONFAIL.GIVE = { NOTMOTHER = "On second thought, I probably have commitment issues.", }
STRINGS.CHARACTERS.WALANI.DESCRIBE.WOOSE_CAPELET = "These feathers look good on you! And off you!"

STRINGS.CHARACTERS.WALANI.DESCRIBE.WEARGER_HAT = "It's hibernation season for my head."
STRINGS.CHARACTERS.WALANI.DESCRIBE.WEARGER_BIN = "My things are about to get a lot hairier."
STRINGS.CHARACTERS.WALANI.DESCRIBE.WEARGER_BED = "Sweet hairy, hairy dreams."
STRINGS.CHARACTERS.WALANI.DESCRIBE.WEARGER_RUG = "It's like digging your toes in a hairy beach."
STRINGS.CHARACTERS.WALANI.ACTIONFAIL.SEW = { NOTWEARGER = "I don't think I can freestyle with these clumps.", }
end
    if GLOBAL.STRINGS.CHARACTERS.WOODLEGS then
GLOBAL.STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEERCLOPS = 
{
	        GENERIC = "Ahoy, ye one-eyed devil!",
	        ATTACKER = "Just don't go destroyin' me boat now, matey!",
	        MURDERER = "%s be cutthroat! Like me blade ta it! Yarrr!",
	        REVIVER = "Ye deserve an eye-patch!",
	        GHOST = "Ye ain't too terrible dead! Yarr!",
	        FIRESTARTER = "Don't be givin' me legs cracks!",
}
GLOBAL.STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEARGER = 
{
	        GENERIC = "Ahoy, ye badgerin' devil!",
	        ATTACKER = "Ye won't be gettin' me golden honey thet easy!",
	        MURDERER = "Arrr! Let Woodlegs give ye a nice haircut!",
	        REVIVER = "All thet hair ye could be a captain!",
	        GHOST = "Snorin' in th'snow ain't seem so bad now! Yarr!",
	        FIRESTARTER = "Keep yer fiery hairs away from me pegs!",
}
GLOBAL.STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WOOSE = 
{
	        GENERIC = "Ahoy, ye moosey-matey!",
	        ATTACKER = "Ye'll not be nestin' wit' me gold! Th'seas b'mine!",
	        MURDERER = "I'll 'ave yer horns on a mantle, matey!",
	        REVIVER = "Ye'd make a fine feathered captain!",
	        GHOST = "Ye ain't as big as ye used ta be!",
	        FIRESTARTER = "Keep yer fiery feathers away!",
}
GLOBAL.STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WRAGONFLY = 
{
	        GENERIC = "Ahoy, ye treasure-keeping beast!",
	        ATTACKER = "Ye'll not be havin' me treasure!!",
	        MURDERER = "Ol'Woodlegs knows how ta fell any ol'treasure keepin' beast!",
	        REVIVER = "Ye got a heart o'gold, an' I be wantin' it!",
	        GHOST = "Yer treasure be mine! Yarrr!",
			ENRAGED = "Gettin' a boat load o'treasure was ne'er easy!",
	        FIRESTARTER = "Away from me pegs, infernal beast!",
}
STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.NESTING_WOOSE_ITEM = "A nest o'th'land!"
STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.NESTING_WOOSE = { GENERAL = "A nest o'th'land!",	LOW = "Th'nest be missin' 'er cap'n!", }
STRINGS.CHARACTERS.WOODLEGS.ACTIONFAIL.GIVE = { NOTMOTHER = "Bah! This be no crow's nest!", }
STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WOOSE_CAPELET = "Me cape o'feather."

STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEARGER_HAT = "Me furry cap o'finery!"
STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEARGER_BIN = "Thet be one hairy haul!"
STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEARGER_BED = "Prefer me a bed at sea!"
STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEARGER_RUG = "A rug o'fur. A hairy'un at thet!"
STRINGS.CHARACTERS.WOODLEGS.ACTIONFAIL.SEW = { NOTWEARGER = "Gots enough hair on me chest!", }
end
-------------------------- WORLDGEN --------------------------
STRINGS.UI.WORLDGEN_ROR = { NOUNS = {"Deerclops's eye...", "Bearger's hair...", "Dragonfly's lavae...", "Moose's nest...", "Goose's nest..."}}
for _,v in pairs(STRINGS.UI.WORLDGEN_ROR.NOUNS) do
	table.insert(STRINGS.UI.WORLDGEN.NOUNS, v)
end

local tip_string_runts = "In a miraculous modification experiment of unknown proportions the once ferocious species of Bearger, Deerclops, Dragonfly, and Moose/Goose have sprung anew with thoughts and feelings of their own. Lacking their kin's looming stature, now dubbed as runts."
AddLoadingTip(GLOBAL.STRINGS.UI.LOADING_SCREEN_LORE_TIPS, "TIP_RUNTS", tip_string_runts)