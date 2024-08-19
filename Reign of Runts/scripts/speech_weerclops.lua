return{
	ACTIONFAIL =
	{
	    APPRAISE = 
        {
            NOTNOW = "Deerclops know how to wait...",
        },
        REPAIR =
        {
            WRONGPIECE = "If I'm going to destroy it, it might as well be correctly built...",
        },
        BUILD =
        {
            MOUNTED = "If I can't build from here, I can't destroy from here.",
            HASPET = "A Deerclops has to look after itself...",
			TICOON = "My eye chooses to follow only once.",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "It's more enticing to do when it sleeps...",
			GENERIC = "Fur isn't as destroyable...",
			NOBITS = "My claws have already ravaged its fur.",
--fallback to speech_wilson.lua             REFUSE = "PLACEHOLDER",
            SOMEONEELSESBEEFALO = "No... not yet.",
		},
		STORE =
		{
			GENERIC = "Destroying it might help...",
			NOTALLOWED = "I should try to smash it in harder.",
			INUSE = "Deerclops has something to smash in it.",
            NOTMASTERCHEF = "I can't cook, I only destroyyy...",
		},
        CONSTRUCT =
        {
            INUSE = "I'll just destroy it later.",
            NOTALLOWED = "This makes me want to wreak a havoc.",
            EMPTY = "It needs something to build with, but nothing to destroy withhh.",
            MISMATCH = "Wrong ones. I'll destroy both!",
            NOTREADY = "My claws are shaking too much with destruction...",
        },
		RUMMAGE =
		{	
			GENERIC = "I feel the urge to ravage coming on!",
			INUSE = "Deerclops like to rummage, too...",
            NOTMASTERCHEF = "I can't cook, I only destroyyy...",
		},
		UNLOCK =
        {
            WRONGKEY = "I haven't cracked the case...",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "I haven't cracked the case...",
        	KLAUS = "There's another monocular beast waiting to be torn into.",
			QUAGMIRE_WRONGKEY = "I haven't cracked the case...",
        },
		ACTIVATE = 
		{
			LOCKED_GATE = "I was made to smash through faulty trappings!",
			HOSTBUSY = "Frozen in wait.",
            CARNIVAL_HOST_HERE = "He won't mind me destroying his things while he's gone.",
            NOCARNIVAL = "Time to wreck this Cawnival...",
			EMPTY_CATCOONDEN = "I'll destroy it when it's full of things they love.",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDERS = "My eye needs more of a...challenge.",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDING_SPOTS = "I can see everything around...",
			KITCOON_HIDEANDSEEK_ONE_GAME_PER_DAY = "My eye needs to close...just once.",
            MANNEQUIN_EQUIPSWAPFAILED = "It's stuck to my claws...",
            PILLOWFIGHT_NO_HANDPILLOW = "They said my claws are too...icy.",
            NOTMYBERNIE = "We Deerclops work alone.",
            NOTMERM = "Maybe they'll listen to the sound of destruction...",
		},
		OPEN_CRAFTING = 
		{
            PROFESSIONALCHEF = "I can't cook, I only destroyyy...",
			SHADOWMAGIC = "I'll tear and shred every last page.",
			FLOODED = "My claws would stick.",
		},
        COOK =
        {
            GENERIC = "My claws are itching...",
            INUSE = "Hmppph.",
            TOOFAR = "It's too blurry down there...",
        },
	    START_CARRAT_RACE =
        {
            NO_RACERS = "Nothing to deploy, nothing to destroy...",
        },
		DISMANTLE =
		{
			COOKING = "It might sting to crushhh right now...",
			INUSE = "Not my eye's turn.",
			NOTEMPTY = "Crushing it now would make any Deerclops' hooves sticky...",
        },
        FISH_OCEAN =
		{
			TOODEEP = "I wouldn't wallow that deep either...",
		},
        OCEAN_FISHING_POND =
		{
			WRONGGEAR = "I want to snap it in two.",
		},

        GIVE =
        {
            GENERIC = "No...",
            DEAD = "Dead. I'm oddly satisfied.",
            SLEEPING = "My eye's on you.",
            BUSY = "I'll breathe heavily in your ears while I wait...",
            ABIGAILHEART = "I could never fix something. I won't even try.",
            GHOSTHEART = "Deerclops are not known to fix...",
            NOTGEM = "Something else...",
            WRONGGEM = "They all look the same to me...",
            NOTSTAFF = "I could snap it into the right shape.",
            MUSHROOMFARM_NEEDSSHROOM = "It needs more shroom room...",
            MUSHROOMFARM_NEEDSLOG = "I don't get a-log with structures.",
			MUSHROOMFARM_NOMOONALLOWED = "I'll smashhh it in if I have to...",
            SLOTFULL = "Slot full, head empty.",
            FOODFULL = "Ravage it already! Rrr!",
            NOTDISH = "I'll have what it's not.",
            DUPLICATE = "The others like it when I rid of duplicates.",
            NOTSCULPTABLE = "My claws can sculpt it better.",
            NOTATRIUMKEY = "It's not built for that. I'll crush it.",
            CANTSHADOWREVIVE = "I've heard I'm heartless, too.",
            WRONGSHADOWFORM = "Rrr! I'll destroy it, watch!",
            NOMOON = "My eye must be closed.",
			PIGKINGGAME_MESSY = "Structure crushing is never clean.",
			PIGKINGGAME_DANGER = "I have a few annoyances to destroy...",
			PIGKINGGAME_TOOLATE = "I'll strike later.",
			CARNIVALGAME_INVALID_ITEM = "Something else... why?",
			CARNIVALGAME_ALREADY_PLAYING = "That's cold.",
			SPIDERNOHAT = "It doesn't need that...",
			TERRARIUM_REFUSE = "No... I need to destroy it with something else.",
            TERRARIUM_COOLDOWN = "My claws will only make it go slower.",
            NOTAMONKEY = "We Deerclops only speak... Deerclops.",
            QUEENBUSY = "Your base will pay for this...",
			NOTMOTHER = "I have a better idea...",
        },
        GIVETOPLAYER =
        {
            FULL = "Too full? I can help with that.",
            DEAD = "Dead. I'm oddly satisfied.",
            SLEEPING = "I'll be watching you.",
            BUSY = "I'll breathe heavily in your ears while I wait...",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "Too full? I can help with that.",
            DEAD = "Dead. I'm oddly satisfied.",
            SLEEPING = "I'll be watching you.",
            BUSY = "I'll breathe heavily in your ears while I wait...",
        },
        WRITE =
        {
            GENERIC = "Nobody's stopping it from being smashed but me.",
            INUSE = "You write, I'll destroy!",
        },
        DRAW =
        {
            NOIMAGE = "Smells like a sign to smash!",
        },
        CHANGEIN =
        {
            GENERIC = "My claws are chipping away at its wood, ready.",
            BURNING = "I wanted to destroy it for myself...",
            INUSE = "Knock, knock. I'm here to destroy this structure.",
			NOTENOUGHHAIR = "Too cold, too empty.",
			NOOCCUPANT = "Something is missing...",
        },
        ATTUNE =
        {
            NOHEALTH = "My gaze is too red...",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "I get that way too.",
            INUSE = "Hrrmph!",
			SLEEPING = "Move. Before the claws come out.",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "I get that way too...",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "I'm free to tear this up.",
            CANTLEARN = "Rubbing my eye isn't making it any clearer...",

            --MapRecorder/MapExplorer
            WRONGWORLD = "This isn't my plane...",
			--MapSpotRevealer/messagebottle
			MESSAGEBOTTLEMANAGER_NOT_FOUND = "Not... here.",--Likely trying to read messagebottle treasure map in caves

			STASH_MAP_NOT_FOUND = "They knew a Deerclops would come after it...",-- Likely trying to read stash map  in world without stash
        },
        WRAPBUNDLE =
        {
            EMPTY = "I prefer to wreck, not wrap.",
        },
        PICKUP =
        {
			RESTRICTION = "It won't help me destroy...",
			INUSE = "Hrrr...",
			NOTMINE_YOTC =
            {
                "What isn't mine...I destroy.",
                "Not... mine...",
            },
            FULL_OF_CURSES = "I won't give it what it wants...",
        },
        SLAUGHTER =
        {
            TOOFAR = "Too blurrry...",
        },
        REPLATE =
        {
            MISMATCH = "Rrr! I'll smash this one then!", 
            SAMEDISH = "Take it and go.", 
        },
        SAIL =
        {
        	REPAIR = "I'd love to break it in two. Maybe more.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "Hrrrr!",
            BAD_TIMING1 = "Grk!",
            BAD_TIMING2 = "Hrrrrgk!",
        },
        LOWER_SAIL_FAIL =
        {
            "Rrk!",
            "I'll break you!",
            "I'll smash it! I'll wreak havoc!",
        },
        BATHBOMB =
        {
            GLASSED = "My claws aren't breaking throughhh.",
            ALREADY_BOMBED = "It's fizzy.",
        },
		GIVE_TACKLESKETCH =
		{
			DUPLICATE = "Urge to destroy grows...",
		},
		COMPARE_WEIGHABLE =
		{
			FISH_TOO_SMALL = "Inferior...",
            OVERSIZEDVEGGIES_TOO_SMALL = "It's not enoughhh...",
		},
		STEER_BOAT = --SWC
		{
			NOTSURFER = "I don't understand...",
		},
		PLANTREGISTRY_RESEARCH_FAIL =
        {
            GENERIC = "Nothing more to hear...",
			FERTILIZER = "Already encased in ice.",
        },
        FILL_OCEAN =
        {
            UNSUITABLE_FOR_PLANTS = "I don't like salt, either...",
        },
        POUR_WATER =
        {
            OUT_OF_WATER = "Frozen dry...",
        },
        POUR_WATER_GROUNDTILE =
        {
            OUT_OF_WATER = "Did I freeze it all...?",
        },
		USEITEMON =
        {
            --GENERIC = "I can't use this on that!",

            --construction is PREFABNAME_REASON
            BEEF_BELL_INVALID_TARGET = "It won't happen...",
            BEEF_BELL_ALREADY_USED = "Don't let it lick me. It'd be mine...",
            BEEF_BELL_HAS_BEEF_ALREADY = "I have enoughhh...",
        },
        HITCHUP =
        {
            NEEDBEEF = "I need a creature without a cold stare...",
            NEEDBEEF_CLOSER = "Come closer... Deerclops don't bite.",
            BEEF_HITCHED = "It won't break free of my ice yet.",
			INMOOD = "It needs to cool off.",
        },
        MARK = 
        {
            ALREADY_MARKED = "My claws have chosen.",
            NOT_PARTICIPANT = "Not my contest to crashhh...",
        },
        YOTB_STARTCONTEST = 
        {
            DOESNTWORK = "It's more fun to destroy when someone's in it.",
            ALREADYACTIVE = "I'll have to crashhh the next party too.",
        },
        YOTB_UNLOCKSKIN = 
        {
            ALREADYKNOWN = "Eye don't need to see it again.",
        },
        CARNIVALGAME_FEED =
        {
            TOO_LATE = "My stiff claws only move so fast...",
        },
		HERD_FOLLOWERS =
        {
            WEBBERONLY = "They'd never listen to a Deerclops...",
        },
		HARVEST =
        {
            DOER_ISNT_MODULE_OWNER = "I'll have to try swatting it out of the air next.",
        },
        PICK =
        {
            NOTHING_INSIDE = "Nothing but a cold emptiness...",
        },

        HEAL =
        {
            NOT_MERM = "You won't be saved by this.",
        },
		-- IA / SW
		REPAIRBOAT = 
		{
			GENERIC = "I'd love to break it in two. Maybe more.",
		},
		EMBARK = 
		{
			INUSE = "You can't escape your destruction forever...",
		},
		-- RUNTS
		SEW =
        {
            NOTWEARGER = "It's frozen to my claws...",
        },
	},
	ANNOUNCE_CANNOT_BUILD =
	{
		NO_INGREDIENTS = "I need to destroy more for that...",
		NO_TECH = "We Deerclops don't need to know what that is...",
		NO_STATION = "I'll find a station and destroy it. After using it...",
	},
	ACTIONFAIL_GENERIC = "Rrrr!",
	ANNOUNCE_BOAT_LEAK = "I'll destroy it, even if it sinks!",
	ANNOUNCE_BOAT_SINK = "What a satisfying way to shatter!",
	ANNOUNCE_DIG_DISEASE_WARNING = "I'll displace anything...",
	ANNOUNCE_PICK_DISEASE_WARNING = "My claws reek of havoc.",
	ANNOUNCE_ADVENTUREFAIL = "You can't contain a Deerclops' reign forever.",
    ANNOUNCE_MOUNT_LOWHEALTH = "It's worse for wear, worse for deer.",

	ANNOUNCE_BEES = "Rrr! Not my eye!",
	ANNOUNCE_BOOMERANG = "Rr! Nearly missed the eye.",
	ANNOUNCE_CHARLIE = "Another Deerclops...?",
	ANNOUNCE_CHARLIE_ATTACK = "Rahh! Structures destroyed from the inside!",
	ANNOUNCE_COLD = "Rrrr! Isn't it rejuvenating to feel this way?",
	ANNOUNCE_HOT = "The ice inside me is thawed...",
	ANNOUNCE_CRAFTING_FAIL = "Rrr! I can only destroy!",
	ANNOUNCE_DEERCLOPS = "Rr? I thought I was already here...",
	ANNOUNCE_CAVEIN = "Is a Deerclops wreaking havoc above...?",
	ANNOUNCE_ANTLION_SINKHOLE = 
	{
		"The structure below me is breaking!",
		"The ground below is being smashed, but not by me!",
		"The structure below me is cracking!",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "Take it.",
        "Leave the destroying to me.",
        "Let me destroy the next structure.",
	},
	ANNOUNCE_SACREDCHEST_YES = "Rr! I'll still have to crush it!",
	ANNOUNCE_SACREDCHEST_NO = "Rrrk! I'll destroy it!",
    ANNOUNCE_DUSK = "A fine day of destroying.",

	ANNOUNCE_EAT =
	{
		GENERIC = "Rrr!",
		PAINFUL = "My tongue is the structure being destroyed...",
		SPOILED = "Rrk... I take what I can destroy.",
		STALE = "Eye see it wasn't as fresh now...",
		INVALID = "Not destroyable!",
        YUCKY = "My teeth couldn't destroy it, even as a structure!",
    },

    ANNOUNCE_ENCUMBERED =
    {
        "I carry... just to destroy?",
        "Rrr... rrr... rrr...",
        "I wish to... destroy.",
        "All this to... not destroy...?",
        "My claws... itch to smash...",
        "Deerclops... eradicate...",
        "I'll fix it... only to destroy it...",
        "Deerclops were meant to... destroy... nothing more.",
        "Demolish... it all.",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING = 
    {
		"This structure is being destroyed!",
		"I want to stick around to watch this maze be razed!",
		"Destroy! Raze for the maze!",
	},
    ANNOUNCE_RUINS_RESET = "More monsters and buildings to maze?",
    ANNOUNCE_SNARED = "You build what I'm know to destroy!",
	ANNOUNCE_SNARED_IVY = "Rrr! Don't get stuck.",
    ANNOUNCE_REPELLED = "You can't stop a Deerclops for mayhem!",
	ANNOUNCE_ENTER_DARK = "Deerclops need that eye! We only have the one!",
	ANNOUNCE_ENTER_LIGHT = "A light is filling throughout my whole eye...",
	ANNOUNCE_FREEDOM = "I'm ready to destroy once more!",
	ANNOUNCE_HIGHRESEARCH = "Deerclops are smarter than given credit for.",
	ANNOUNCE_HOUNDS = "My ears are ringing. But no structure is falling?",
	ANNOUNCE_WORMS = "That wasn't the sound of a structure crumbling.",
    ANNOUNCE_ACIDBATS = "Rrrr! Enough of that noise!",
	ANNOUNCE_HUNGRY = "I destroy when I hunger...",
	ANNOUNCE_HUNT_BEAST_NEARBY = "It's close. But Deerclops can't see that far.",
	ANNOUNCE_HUNT_LOST_TRAIL = "Rrr! How could I lose track...",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "It's hard to cause a raze in this haze.",
    ANNOUNCE_HUNT_START_FORK = "This way to destruction!",
    ANNOUNCE_HUNT_SUCCESSFUL_FORK = "Clip, clop, clip. We see you.",
    ANNOUNCE_HUNT_WRONG_FORK = "We Deerclops always know when we're being watched. That's what we do...",
    ANNOUNCE_HUNT_AVOID_FORK = "My claws could use a simple crushhh...",
	ANNOUNCE_INV_FULL = "I'll have to destroy a bit more.",
	ANNOUNCE_KNOCKEDOUT = "My head's been wracked too...",
	ANNOUNCE_LOWRESEARCH = "Deerclops should always stick to destroying.",
	ANNOUNCE_MOSQUITOS = "Raah!",
    ANNOUNCE_NOWARDROBEONFIRE = "I can't destroy it while it's destroying itself!",
    ANNOUNCE_NODANGERGIFT = "Do monsters not get gifts too?",
    ANNOUNCE_NOMOUNTEDGIFT = "I prefer to open gifts on my own.",
	ANNOUNCE_NODANGERSLEEP = "I wouldn't be sleeping alone...",
	ANNOUNCE_NODAYSLEEP = "There's structures out there, waiting for rubble!",
	ANNOUNCE_NODAYSLEEP_CAVE = "I could be destroying so much more.",
	ANNOUNCE_NOHUNGERSLEEP = "My stomach's a bit in ruin...",
	ANNOUNCE_NOSLEEPONFIRE = "I prefer a bed of ice.",
	ANNOUNCE_NOSLEEPHASPERMANENTLIGHT = "Rrr... You're asking for me to destroy you.",
	ANNOUNCE_NODANGERSIESTA = "Deerclops likes to sleep alone.",
	ANNOUNCE_NONIGHTSIESTA = "I could sneak in a few structure beatings.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "I could sneak in a few structure beatings.",
	ANNOUNCE_NOHUNGERSIESTA = "My stomach's a bit in ruin...",
	ANNOUNCE_NODANGERAFK = "A Deerclops could never back down.",
	ANNOUNCE_NO_TRAP = "They always come running back to my claws.",
	ANNOUNCE_PECKED = "Not the eye!!",
	ANNOUNCE_QUAKE = "Is there a structure being pummelled?",
	ANNOUNCE_RESEARCH = "My eye is bright!",
	ANNOUNCE_SHELTER = "I'll spare you from my claws, for a moment...",
	ANNOUNCE_THORNS = "Rrk! I'm not a structure!",
	ANNOUNCE_BURNT = "Too hot for a Deerclops!",
	ANNOUNCE_TORCH_OUT = "Out, but not snapped in half by me.",
	ANNOUNCE_THURIBLE_OUT = "I should've crushed it sooner...",
	ANNOUNCE_FAN_OUT = "Did I instinctively smash it with my claws?",
    ANNOUNCE_COMPASS_OUT = "Did I instinctively crush it with my claws?",
	ANNOUNCE_TRAP_WENT_OFF = "I destroy even that.",
	ANNOUNCE_TREASURE = "I sense a new structure to smashhh.",
	ANNOUNCE_UNIMPLEMENTED = "Not ready to be destroyed...",
	ANNOUNCE_WORMHOLE = "Any structures ready to rumble this way...?",
	ANNOUNCE_TOWNPORTALTELEPORT = "Rrk! There's dust in my eye.",
	ANNOUNCE_CANFIX = "\nI'm going to destroy it.",
	ANNOUNCE_ACCOMPLISHMENT = "I feel like I destroyed a structure!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "Look into my glorious eye!",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "It'll need more to eat if I want to destroy it.",
	ANNOUNCE_TOOL_SLIP = "I can't destroy with wet claws!",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "RR! Is my eye that much of a target...?",
	ANNOUNCE_TOADESCAPING = "Don't escape, there's structures I haven't destroyed over there!",
	ANNOUNCE_TOADESCAPED = "I'll destroy what is left over.",

	ANNOUNCE_DAMP = "I don't mind a light drizzle... in winter.",
	ANNOUNCE_WET = "My eye is getting glossy...",
	ANNOUNCE_WETTER = "My fur is weighing me down to a halt...",
	ANNOUNCE_SOAKED = "I'm going to collapse from wetness... like a building.",

	ANNOUNCE_WASHED_ASHORE = "My eye is waterlogged...",

    ANNOUNCE_DESPAWN = "Is my eye glossing over...?",
	ANNOUNCE_BECOMEGHOST = "OoooOOOOoo!",
	ANNOUNCE_GHOSTDRAIN = "Deerclops can only take so much of this...",
	ANNOUNCE_PETRIFED_TREES = "Rrr! Trees just became all the more exciting to smash!",
	ANNOUNCE_KLAUS_ENRAGE = "My pupil is rattling!",
	ANNOUNCE_KLAUS_UNCHAINED = "It destroyed the structure around it!",
	ANNOUNCE_KLAUS_CALLFORHELP = "All the more to destroy!",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "There's a prize inside this structure!",
		GLASS_LOW = "My claws are crushing as fast as they can!",
		GLASS_REVEAL = "My duty is done!",
		IDOL_MED = "There's a prize inside this structure!",
		IDOL_LOW = "My claws are crushing as fast as they can!",
		IDOL_REVEAL = "My duty is done!",
		SEED_MED = "There's a prize inside this structure!",
		SEED_LOW = "My claws are crushing as fast as they can!",
		SEED_REVEAL = "My duty is done!",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "My eye isn't shaking, yours is!",
	ANNOUNCE_BRAVERY_POTION = "Deerclops shouldn't be afraid of trees!",
	ANNOUNCE_MOONPOTION_FAILED = "I'd rather destroy it by my own claws...",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "Hrmph. Is this not all for me?",
	ANNOUNCE_WINTERS_FEAST_BUFF = "I can feel the sparkles in my eye! Itchy...",
	ANNOUNCE_IS_FEASTING = "I'll destroy this food! With my teeth!!",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "I wish winter times never ended...",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "Destroyed a bit too much...",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "Don't make me break you myself...",
    ANNOUNCE_REVIVED_FROM_CORPSE = "I fell like a structure... But I don't break easy!",

    ANNOUNCE_FLARE_SEEN = "RRK! Why did the sky crackle!?",
	ANNOUNCE_MEGA_FLARE_SEEN = "RRR! You will regret that. I'll leave ruins in my wake.",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Did my eye get a bit blurrier...?",

	--weerclops specific
	ANNOUNCE_STRUCTURE_DESTROYED =
	{
		"What I was made for!",
	    "Nothing is more satisfying...",
	    "It feels good to destroy.",
	    "It's better this way... so am I.",
		"That's what a Deerclops does best.",
		"Rrrrhhh...!",
    },

	ANNOUNCE_CRAVE_1 = "My claws are starting to itchhh...",
	ANNOUNCE_CRAVE_2 = "A Deerclops has to destroy structures...",
	ANNOUNCE_CRAVE_3 = "My head aches... it longs to destroy.",
	ANNOUNCE_CRAVE_4 = "I am nothing without destruction... my claws must feed!",
	
    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "Deerclops don't create, we crush...",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "These claws only destroy...",
    QUAGMIRE_ANNOUNCE_LOSE = "I didn't finish breaking these buildings...",
    QUAGMIRE_ANNOUNCE_WIN = "There's structures to fall, elsewhere!",

--fallback to speech_wilson.lua     ANNOUNCE_ROYALTY =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "PLACEHOLDER",
--fallback to speech_wilson.lua         "PLACEHOLDER",
--fallback to speech_wilson.lua         "PLACEHOLDER",
--fallback to speech_wilson.lua     },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "I'll wreak havoc with static!",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "CATCH THESE CLAWS, STRUCTURES!!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "Try and fell THIS!",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "I'LL DESTROY TWICE MORE!!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "Rrr. My eye's fallen dry.",
	ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE   = "A Deerclops' eye is restless.",
    
    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "My fur's a lot less fizzled...",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "My claws could use a rest.",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "My eye feels soft and vulnerable...",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "I'll destroy a little less... for now.",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "I can feel a bit of snow coming back.",
	ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE   = "Why is my eye feeling heavy? Rrrr...",
    
	ANNOUNCE_OCEANFISHING_LINESNAP = "It was hard enough to resist doing that myself!",
	ANNOUNCE_OCEANFISHING_LINETOOLOOSE = "Come closer, you're blurry!",
	ANNOUNCE_OCEANFISHING_GOTAWAY = "...I'm more familiar with land.",
	ANNOUNCE_OCEANFISHING_BADCAST = "Do you think a Deerclops knows how to fishhh?",
	ANNOUNCE_OCEANFISHING_IDLE_QUOTE = 
	{
		"My claws are itching...",
		"I could destroy a nice, well built building.",
		"I'd rather be clawing at a creation.",
		"Urge to... wreak havoc.",
	},

	-- SHIPWRECKED / ISLAND
	ANNOUNCE_MAGIC_FAIL = "Its destruction is no match here...",
	ANNOUNCE_SHARX = "Rrrr. We Deerclops could hear you anywhere.",
	ANNOUNCE_TREASURE = "We Deerclops are good at spotting with our eye.",
	ANNOUNCE_TREASURE_DISCOVER = "A sweet treat to destroy!",
	ANNOUNCE_MORETREASURE = "My claws itch in further excitement!",
	ANNOUNCE_OTHER_WORLD_TREASURE = "I don't tread there.",
	ANNOUNCE_OTHER_WORLD_PLANT = "This would destroy itself here...",

	ANNOUNCE_IA_MESSAGEBOTTLE =
	{
		"Its message was destroyed. Good.",
	},
	ANNOUNCE_VOLCANO_ERUPT = "I can feel my eye melting...",
	ANNOUNCE_MAPWRAP_WARN = "My eye fades into the night...",
	ANNOUNCE_MAPWRAP_LOSECONTROL = "We Deerclops don't tread here...",
	ANNOUNCE_MAPWRAP_RETURN = "I set a new path of destruction.",
	ANNOUNCE_CRAB_ESCAPE = "My hooves will stomp you wherever you go.",
	ANNOUNCE_TRAWL_FULL = "I can finally destroy this net.",
	ANNOUNCE_BOAT_DAMAGED = "A tinge of destruction!",
	ANNOUNCE_BOAT_SINKING = "This creation is nearly destroyed.",
	ANNOUNCE_BOAT_SINKING_IMMINENT = "I will go down with my destruction...",
	ANNOUNCE_WAVE_BOOST = "Rrrrooo-hoo-hoo!",

	ANNOUNCE_WHALE_HUNT_BEAST_NEARBY = "I'll follow you to your end.",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL = "I hope it ended in rubble...",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL_SPRING = "Too much lashing and slashing of this place!",
	--

--	ANNOUNCE_WEIGHT = "PLACEHOLDER",
	ANNOUNCE_WEIGHT_HEAVY  = "Weight: {weight}\nEnough fish to feed an entire crew!",

	ANNOUNCE_WINCH_CLAW_MISS = "My claws wouldn't miss...",
	ANNOUNCE_WINCH_CLAW_NO_ITEM = "Claws can't freeze nothing.",

	ANNOUNCE_WEAK_RAT = "It's nearly destroyed... I could finish the job.",
    ANNOUNCE_CARRAT_START_RACE = "My eye will be watching you...",
    ANNOUNCE_CARRAT_ERROR_WRONG_WAY = {
        "Come, destroy over here not there.",
        "Even with two eyes it gets confused...",
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = "I am breathing down your neck.",    
    ANNOUNCE_CARRAT_ERROR_WALKING = "Rrr! Stomp through the snow like a Deerclops at dawn!",    
    ANNOUNCE_CARRAT_ERROR_STUNNED = "Have my claws frozen another?",

	ANNOUNCE_POCKETWATCH_PORTAL = "I didn't hear the sound of cracking ice... did I?",

	ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = "Is my mind being encased in ice...?",
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = "Every Deerclops knows this...",
    ANNOUNCE_ARCHIVE_NO_POWER = "I could still destroy it...",
    ANNOUNCE_PLANT_RESEARCHED =
    {
        "I only want to know about ice...",
    },

    ANNOUNCE_PLANT_RANDOMSEED = "Nothing... or another.",
	ANNOUNCE_FERTILIZER_RESEARCHED = "My eye has seen worse...",

	ANNOUNCE_FIRENETTLE_TOXIN = 
	{
		"Rrrrrr rrrr! Hurts!",
		"Too much, rrrr, too much!!",
	},
	ANNOUNCE_FIRENETTLE_TOXIN_DONE = "Never...again...",

	ANNOUNCE_TALK_TO_PLANTS = 
	{
        "Deerclops aren't known for talking...",
        "We Deerclops don't talk muchhh...",
		"I have nothing for you but cold stares...",
        "I will keep my eye on you.",
        "I'm still watching. Always.",
	},

	ANNOUNCE_KITCOON_HIDEANDSEEK_START = "You won't escape my gaze...",
	ANNOUNCE_KITCOON_HIDEANDSEEK_JOIN = "Any Deerclops know all the hiding spots.",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND = 
	{
		"Eye see you.",
		"I've found you.",
		"Hiding from a Deerclops?",
		"My eye saw you.",
	},
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_ONE_MORE = "I must find the last one. I have to.",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE = "I had my good eye on you the whole time.",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE_TEAM = "{name} must have the bigger eye.",
	ANNOUNCE_KITCOON_HIDANDSEEK_TIME_ALMOST_UP = "I must find the little ones. Now.",
	ANNOUNCE_KITCOON_HIDANDSEEK_LOSEGAME = "My eye is fine. It's theirs that are weak.",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR = "They're outside my vision...",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR_RETURN = "I can feel their air. Too warm.",
	ANNOUNCE_KITCOON_FOUND_IN_THE_WILD = "A Deerclops with no eye could have spotted you.",

	ANNOUNCE_TICOON_START_TRACKING	= "His eyes are looking somewhere...",
	ANNOUNCE_TICOON_NOTHING_TO_TRACK = "Your two eyes aren't as strong as my one.",
	ANNOUNCE_TICOON_WAITING_FOR_LEADER = "What do I need to find...",
	ANNOUNCE_TICOON_GET_LEADER_ATTENTION = "Don't bother a Deerclops...",
	ANNOUNCE_TICOON_NEAR_KITCOON = "What do your two eyes see...?",
	ANNOUNCE_TICOON_LOST_KITCOON = "A Deerclops never loses sight of what they want.",
	ANNOUNCE_TICOON_ABANDONED = "A Deerclops works best alone...anyway.",
	ANNOUNCE_TICOON_DEAD = "Destroyed. You're no longer in my way.",

	-- YOTB
    ANNOUNCE_CALL_BEEF = "Closer...",
    ANNOUNCE_CANTBUILDHERE_YOTB_POST = "I will destroy it no matter what sees it...",
    ANNOUNCE_YOTB_LEARN_NEW_PATTERN =  "A new coating?",

	-- AE4AE
    ANNOUNCE_EYEOFTERROR_ARRIVE = "Eye have a good feeling about this!",
    ANNOUNCE_EYEOFTERROR_FLYBACK = "I have longed for your return!",
    ANNOUNCE_EYEOFTERROR_FLYAWAY = "Rrrah! I'm tired of losing eyes!",

    -- PIRATES
    ANNOUNCE_CANT_ESCAPE_CURSE = "Deerclops are used to things freezing onto us...",
    ANNOUNCE_MONKEY_CURSE_1 = "My claws are itching with something other than destruction...",
    ANNOUNCE_MONKEY_CURSE_CHANGE = "Deerclops... Will Deerclops still recognize me...?",
    ANNOUNCE_MONKEY_CURSE_CHANGEBACK = "Switching eyes... dizzy... dizzy!",

    ANNOUNCE_PIRATES_ARRIVE = "The ringing in my ears is growing...",

    ANNOUNCE_OFF_SCRIPT = "Is my eye deceiving me...? No... it's my ears...",

    ANNOUNCE_COZY_SLEEP = "My eye will need some time to recover...",

	--
	ANNOUNCE_TOOL_TOOWEAK = "My claws aren't enoughhh...",

    ANNOUNCE_LUNAR_RIFT_MAX = "Rrrrr. Who did that. So bright.",
    ANNOUNCE_SHADOW_RIFT_MAX = "Rrrr. I didn't like that.",

    ANNOUNCE_SCRAPBOOK_FULL = "We Deerclops will never need another.",

    ANNOUNCE_CHAIR_ON_FIRE = "This is the end of me...",

    ANNOUNCE_HEALINGSALVE_ACIDBUFF_DONE = "That rain will destroy what's left of me...",

    ANNOUNCE_YOTD_NOBOATS = "My claws are too far away to destroy that tower...",
    ANNOUNCE_YOTD_NOCHECKPOINTS = "My claws are itching for a checkpoint to destroy.",
    ANNOUNCE_YOTD_NOTENOUGHBOATS = "We must destroy all around us...for a new boat...",

    ANNOUNCE_OTTERBOAT_OUTOFSHALLOWS = "My claws are itching to see this boat get torn to shreds!",
    ANNOUNCE_OTTERBOAT_DENBROKEN = "One destroyed home leads to another.",

	BATTLECRY =
	{
		GENERIC = "RRRAAhhh! Destroy!!",
		PIG = "I'll destroy all that you built!",
		PREY = "You build it, I'll take it down!",
		SPIDER = "Rrrh!",
		SPIDER_WARRIOR = "Rrrrah!",
		DEER = "One eye beats none!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "...Your structures weren't worth destroying.",
		PIG = "I'll smash your structures another time...",
		PREY = "You think you're safe?",
		SPIDER = "My eye is always watching.",
		SPIDER_WARRIOR = "My eye won't forget so easily...",
	},

	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "I'll have to find a different structure to destroy...",
        MULTIPLAYER_PORTAL_MOONROCK = "Deerclops can only dream of destroying such a structure.",
        MOONROCKIDOL = "It won't break easy...",
        CONSTRUCTION_PLANS = "Where's the destruction plans...",
		--RoR
		NESTING_WOOSE_ITEM = "A Deerclops can't resist the urge to destroy...",
        NESTING_WOOSE = {
            GENERAL = "A Deerclops can't resist the urge to destroy...",
            LOW = "It's already begun to destroy itself...",
        },
		WOOSE_CAPELET = "I hate it when they get all tingly...",
		WEARGER_HAT = "A Deerclops' own fur is enough for me.",
		WEARGER_BIN = "I think I can hear it growling...",
		WEARGER_BED = "Your rest won't be warm with a Deerclops' eye watching.",
		WEARGER_RUG = "My hooves love to stomp on it.",
		--SW
		SURFBOARD = "Must... snap.",
		BOAT_SURFBOARD = "Must... snap.",
		LUCKYHAT = "My antlers will poke holes in it...",
		LUCKYCUTLASS = "Sharpened like a Deerclops' claw.",
		WOODLEGS_BURIEDTREASURE = "I'll destroy it. No one will ever know.",
		BOAT_WOODLEGS = "Not a journey a Deerclops needs to take...",
		CANNON_WOODLEGS = "Rrrr. Too loud.",

        ANTLION =
        {
            GENERIC = "You wouldn't want a building would you?",
            VERYHAPPY = "The destroying will be left to me.",
            UNHAPPY = "Mad enough to destroy a building yet?",
        },
        ANTLIONTRINKET = "This. Is a bucket...",
        SANDSPIKE = "I like to destroy a more solid structure.",
        SANDBLOCK = "Would you mind making it out of stone?",
        GLASSSPIKE = "It pleases me how it shatters!",
        GLASSBLOCK = "It cracks from my cold claws!",
        ABIGAIL_FLOWER =
        {
            GENERIC ="I was told not to stomp this one...",
			LEVEL1 = "I can't be stopped from stomping.",
			LEVEL2 = "Do flowers always give me an eye-ache?",
			LEVEL3 = "I want to stomp on it...",

			-- deprecated
            LONG = "I can't be stopped from stomping.",
            MEDIUM = "Do flowers always give me an eye-ache?",
            SOON = "Do flowers always give me an eye-ache?",
            HAUNTED_POCKET = "It wants to kill. Don't we all.",
            HAUNTED_GROUND = "It wants to kill. Don't we all...",
        },

        BALLOONS_EMPTY = "Chewy...",
        BALLOON = "Its pop isn't as satisfying as its crack.",
		BALLOONPARTY = "I watch the ice as it freezes it whole...",
		BALLOONSPEED =
        {
            DEFLATED = "I can't pop it more than once...",
            GENERIC = "Doesn't last long. Not with a Deerclops around.",
        },
		BALLOONVEST = "It gets stuck on me...",
		BALLOONHAT = "I don't think I can fit it on my antlers...",

        BERNIE_INACTIVE =
        {
            BROKEN = "As fun as any broken building.",
            GENERIC = "Hardly a challenge to crush.",
        },

        BERNIE_ACTIVE = "I'm going to stomp it.",
        BERNIE_BIG = "Don't tell it I'm envious of its size...",

		BOOKSTATION =
		{
			GENERIC = "All neat and tidy. I know what I have to do...",
			BURNT = "Not what I had in mind for it...",
		},
        BOOK_BIRDS = "I only like snow falling from the sky.",
        BOOK_TENTACLES = "Do you have any that builds structures? No reason!",
        BOOK_GARDENING = "Do you have any that builds structures? No reason!",
		BOOK_SILVICULTURE = "I'll knock down whatever it grows...",
		BOOK_HORTICULTURE = "Do you have any that grows structures? No reason!",
        BOOK_SLEEP = "It's not fair to make my only eye heavy...",
        BOOK_BRIMSTONE = "Do you have any that builds structures? No reason!",

        BOOK_FISH = "My claws taught me everything I know.",
        BOOK_FIRE = "There's no ice sequel? Why must you hate me.",
        BOOK_WEB = "The pages stick to my claws, more than usual...",
        BOOK_TEMPERATURE = "Deerclops are not meant to be warm.",
        BOOK_LIGHT = "Rrrr. Don't let me see you use it.",
        BOOK_RAIN = "Does it snow, too...?",
        BOOK_MOON = "The big eye in the sky...",
        BOOK_BEES = "You make a Deerclops' head buzz with anger.",
        
        BOOK_HORTICULTURE_UPGRADED = "I wait in no other season than winter.",
        BOOK_RESEARCH_STATION = "We Deerclops could teach you many unconsidered things.",
        BOOK_LIGHT_UPGRADED = "Rrrr. You're blinding a Deerclops.",

        FIREPEN = "This goes against my nature. Stop it.",

        PLAYER =
        {
            GENERIC = "%s...",
            ATTACKER = "%s likes to destroy more than just structures.",
            MURDERER = "%s is wreaking havoc! Rrr!",
            REVIVER = "I'll let %s be around a little longer. For now.",
            GHOST = "%s fell like a structure...",
            FIRESTARTER = "%s is burning all the structures.",
        },
        WILSON =
        {
            GENERIC = "%s... Any new science to smash?",
            ATTACKER = "%s is taking to us like my claws to a structure.",
            MURDERER = "%s is in the smashing spirit!",
            REVIVER = "That science, it's good for smashing.",
            GHOST = "I must have mistaken you for a building.",
            FIRESTARTER = "Why use fire when you can claw at it?",
        },
        WOLFGANG =
        {
            GENERIC = "%s...",
            ATTACKER = "%s... The havoc your wreak...",
            MURDERER = "%s might be a better crusher than I...",
            REVIVER = "%s, leave all the smashing to me.",
            GHOST = "You were the size of a building. And you fell like one.",
            FIRESTARTER = "At least trample on what you burn...",
        },
        WAXWELL =
        {
            GENERIC = "%s.",
            ATTACKER = "%s is breaking bones like structures.",
            MURDERER = "%s, that havoc you're wreaking. It's... familiar.",
            REVIVER = "%s keeps staring at my eye. ...It's as big as his nose.",
            GHOST = "I kept saying the older, the easier they fall.",
            FIRESTARTER = "Make more structures for me to destroy.",
        },
        WX78 =
        {
            GENERIC = "%s... wreaking havoc without me?",
            ATTACKER = "%s like to raze and ravage.",
            MURDERER = "%s knows a thing or two about wiping out bases.",
            REVIVER = "I find %s's taste in havoc satisfying.",
            GHOST = "There's only one Deerclops here who knows how to destroy.",
            FIRESTARTER = "At least destroy the structures after lighting them...",
        },
        WILLOW =
        {
            GENERIC = "%s...",
            ATTACKER = "%s, smashing and searing...",
            MURDERER = "Your fire is affective for wiping out structures...",
            REVIVER = "%s knows how to extinguish all but fire.",
            GHOST = "This is why I destroy with only my claws.",
            FIRESTARTER = "Let me topple what you burn. I prefer the cold!",
        },
        WENDY =
        {
            GENERIC = "%s...",
            ATTACKER = "%s is making sure to eradicate...",
            MURDERER = "%s is causing ruin.",
            REVIVER = "%s knows the coldness of death.",
            GHOST = "Did you like that?",
            FIRESTARTER = "Let a Deerclops show you how to destroy with claws.",
        },
        WOODIE =
        {
            GENERIC = "%s...",
            ATTACKER = "%s causes ruin to more than forests.",
            MURDERER = "You wreak more havoc than a Deerclops. Almost.",
            REVIVER = "I'll have the structures, you, the trees.",
            GHOST = "Two eyes only gets you so far.",
            BEAVER = "Is destroying a competition now...",
            BEAVERGHOST = "I was built to destroy. You should take notice.",
            MOOSE = "I can tackle creations with my antlers too! Raa!",
            MOOSEGHOST = "You toppled over like a heavy wooden structure.",
            GOOSE = "The trees are free for me to take down now.",
            GOOSEGHOST = "It didn't take much to crush you.",
            FIRESTARTER = "Does fire satisfy your forest destruction?",
        },
        WICKERBOTTOM =
        {
            GENERIC = "%s...",
            ATTACKER = "%s is causing havoc.",
            MURDERER = "We all have a bit of havoc in us...",
            REVIVER = "I want to crush, it's what a Deerclops does.",
            GHOST = "A Deerclops always has one eye open.",
            FIRESTARTER = "I could destroy those structures, too.",
        },
        WES =
        {
            GENERIC = "%s...",
            ATTACKER = "%s knows how to ravage a base.",
            MURDERER = "%s is better at bashing than I had thought.",
            REVIVER = "Deerclops prefer to crackle and crush than to pop.",
            GHOST = "%s is floating like the creations he makes...",
            FIRESTARTER = "Let a Deerclops show you how to destroy!",
        },
        WEBBER =
        {
            GENERIC = "%s...",
            ATTACKER = "%s is wreaking as much havoc as he has eyes...",
            MURDERER = "All those limbs and eyes cause catastrophe.",
            REVIVER = "You could topple many structures if you applied yourselves.",
            GHOST = "You need to focus your eyes on destroying more than yourself...",
            FIRESTARTER = "I'll teach you how to destroy proper, %s...",
        },
        WATHGRITHR =
        {
            GENERIC = "%s... Why are you staring at my eye like that.",
            ATTACKER = "Stop swinging sticks at my eye. I need it.",
            MURDERER = "%s knows too much about wreaking havoc!",
            REVIVER = "I wish %s would stop hitting me with sticks.",
            GHOST = "Rrr! Peace!",
            FIRESTARTER = "%s causes much wracking...",
        },
        WINONA =
        {
            GENERIC = "%s... Any new structures I can trample?",
            ATTACKER = "%s is looking to demolish.",
            MURDERER = "%s knows how to tear up and down.",
            REVIVER = "%s breaks things down... but builds them back up? Rrk.",
            GHOST = "You were the one demolished this time around...",
            FIRESTARTER = "%s knows how to throw down. With fire, not claws...",
        },
        WORTOX =
        {
            GENERIC = "%s... Deface any structures yet?",
            ATTACKER = "%s enjoys the chaos.",
            MURDERER = "%s defaces and decimates.",
            REVIVER = "If only you had one eye, too...",
            GHOST = "You have a thing or two to learn about ravaging bases.",
            FIRESTARTER = "Your claws could use less fire, more destructuring.",
        },
        WORMWOOD =
        {
            GENERIC = "%s...",
            ATTACKER = "%s is growing up to destroy!",
            MURDERER = "%s enjoys mowing down too.",
            REVIVER = "You help, but can you destroy too...",
            GHOST = "You're just not cold enough.",
            FIRESTARTER = "%s might destroy himself before I do...",
        },
        WARLY =
        {
            GENERIC = "%s... My teeth want to crush too.",
            ATTACKER = "%s is hungering for havoc.",
            MURDERER = "%s craves chaos and destruction like a Deerclops.",
            REVIVER = "Why do you destroy but only with your teeth...",
            GHOST = "A Deerclops hungers too... for destruction.",
            FIRESTARTER = "Maybe %s has a taste for destruction.",
        },
        WURT =
        {
            GENERIC = "%s...",
            ATTACKER = "%s is growing a liking for destruction!",
            MURDERER = "How does destruction and havoc feel, %s.",
            REVIVER = "You've yet to feel the satisfaction of destruction!",
            GHOST = "You fell like a little scaled structure.",
            FIRESTARTER = "Use your claws to destroy, not fire.",
        },
		WALTER =
        {
            GENERIC = "%s...",
            ATTACKER = "Does my eye not scare you...?",
            MURDERER = "%s doesn't need claws and fangs for what he does...",
            REVIVER = "Do you have... anymore... jerky?",
            GHOST = "%s collapsed like structures after a clawing.",
            FIRESTARTER = "%s is burning up what I want to demolishhh.",
        },
		WANDA =
        {
            GENERIC = "%s...",
            ATTACKER = "%s couldn't wait to start her destruction.",
            MURDERER = "%s Rrr! No hesitation to destroy!",
            REVIVER = "I'll let %s be around a little longer. For now.",
            GHOST = "Nothing has stopped you from your destruction.",
            FIRESTARTER = "%s is burning things before and after I can destroy them?",
        },
        WONKEY =
        {
            GENERIC = "%s...",
            ATTACKER = "%s is learning how to destroy.",
            MURDERER = "%s is destructive, it's their nature.",
            REVIVER = "I enjoy hopping up and down on things, too.",
            GHOST = "You fell like a structure, 5s...",
            FIRESTARTER = "%s burns a base too crisply.",
        },
		WALANI =
        {
            GENERIC = "%s...",
            ATTACKER = "%s knows that destroying is fun.",
            MURDERER = "Crushing is a Deerclops' favorite form of relaxing.",
            REVIVER = "My claws have enough chill... I am a beast of winter.",
            GHOST = "%s toppled over like a structure.",
            FIRESTARTER = "I could destroy those burnt buildings.",
        },
		WOODLEGS =
        {
            GENERIC = "%s...",
            ATTACKER = "%s enjoys to ravage and wreak havoc.",
            MURDERER = "%s is more like a bloodthirsty Deerclops than others!",
            REVIVER = "A Deerclops wreaks havoc for the satisfaction of it.",
            GHOST = "There's an art to destroying. You don't have it.",
            FIRESTARTER = "%s is burning up the structures I want to demolishhh.",
        },
		WILBUR =
        {
            GENERIC = "%s...",
            ATTACKER = "%s's crown must be for crushing!",
            MURDERER = "%s knows how to overthrow and destroy.",
            REVIVER = "I enjoy hopping up and down on things, too.",
            GHOST = "You fell like a structure, 5s...",
            FIRESTARTER = "%s burns a base too crisply.",
        },
		WEARGER =
        {
            GENERIC = "%s...",
            ATTACKER = "%s is almost as destructive as a Deerclops...",
            MURDERER = "%s has good taste in chaos.",
            REVIVER = "I'd like you more if you destroyed when not starving too.",
            GHOST = "More fell than only hair this time...",
            FIRESTARTER = "%s is wreaking havoc with fire.",
        },
		WEERCLOPS =
        {
            GENERIC = "Deerclops %s... Destroy any bases lately?",
            ATTACKER = "Looks like a Deerclops that's gone without destroying.",
            MURDERER = "You've been busy destroying structures and their creators, %s.",
            REVIVER = "Together we have two eyes. And the rest have less structures!",
            GHOST = "Only structures should fall, not Deerclops!",
            FIRESTARTER = "Deerclops use their claws to destroy, not fire!",
        },
		WOOSE =
        {
            GENERIC = "%s... Built that crushable nest yet?",
            ATTACKER = "%s wants a battle of the antlers.",
            MURDERER = "I happily stomp upon your nests.",
            REVIVER = "Maybe I'll leave your nesting be... for now.",
            GHOST = "You and your antlers fell like a broken brick.",
            FIRESTARTER = "%s is burning all my stompable structures.",
        },
		WRAGONFLY =
        {
            GENERIC = "%s...",
            ATTACKER = "%s craves to crush.",
            MURDERER = "%s has a taste for corruption and chaos.",
            REVIVER = "Your two eyes are both bigger than my one... Rrrg.",
            GHOST = "One large eye is all you need.",
			ENRAGED = "%s is seeping with chaos and ruin...",
            FIRESTARTER = "Watch your walking, I could have destroyed those structures!",
        },
        GLOMMER = 
        {
            GENERIC = "A show off, with all those eyes. Hmph.",
            SLEEPING = "It's not as easy to squish like this.",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "Reeks of wreak.",
            DEAD = "I'll claw away at what's left...",
        },
        GLOMMERWINGS = "The bits of a destroyed bug...",
        GLOMMERFUEL = "I don't like it when my eye gets pink.",
        BELL = "I'd rather destroy things myself.",
        STATUEGLOMMER =
        {
            GENERIC = "My claws are shaking in excitement to destroy!",
            EMPTY = "All that's left once a Deerclops has its way.",
        },

        LAVA_POND_ROCK = "I can rustle with rocks too.",

		WEBBERSKULL = "You're best left like this.",
		WORMLIGHT = "I'll grab it while I'm here to wreak havoc.",
		WORMLIGHT_LESSER = "Has it been squeezed?",
		WORM =
		{
		    PLANT = "I'll grab it while I'm here to wreak havoc.",
		    DIRT = "Worming its way around the ground...",
		    WORM = "Do you have an eye or two?",
		},
        WORMLIGHT_PLANT = "I'll grab it while I'm here to wreak havoc.",
		MOLE =
		{
			HELD = "I could just squish you. I mean it...",
			UNDERGROUND = "There must be structures under there.",
			ABOVEGROUND = "Irresistible urge to whack.",
		},
		MOLEHILL = "I'll have to stick to breaking above ground.",
		MOLEHAT = "My eye's been turned inside out!",

		EEL = "I'll have to hold it with my teethhh.",
		EEL_COOKED = "An eel with a warm feel...",
		UNAGI = "A meal I'd love to destroy.",
		EYETURRET = "Eye like to think we see eye-to-eye.",
		EYETURRET_ITEM = "Eye see you too.",
		MINOTAURHORN = "I would've grown a few more.",
		MINOTAURCHEST = "Your horns won't save you from my favorite deed.",
		THULECITE_PIECES = "Things crumble a lot easier when they're old.",
		POND_ALGAE = "Not even a slight resistance to my hooves.",
		GREENSTAFF = "Claw-free destruction!",
		GIFT = "This couldn't be for me. Rrright?",
        GIFTWRAP = "I'll wrap up a nice meat. For me.",
		POTTEDFERN = "Plants smash much better like this.",
        SUCCULENT_POTTED = "Plants smash much better like this.",
		SUCCULENT_PLANT = "I like to hop up and down on it.",
		SUCCULENT_PICKED = "What a fun color it bleeds.",
		SENTRYWARD = "My eye isn't as scrumptiously smashable.",
        TOWNPORTAL =
        {
			GENERIC = "What a delight it is to smash it to sand!",
			ACTIVE = "Go through before my claws change their minds.",
		},
        TOWNPORTALTALISMAN = 
        {
			GENERIC = "I'll crush it to sand.",
			ACTIVE = "Don't let my claws itch.",
		},
        WETPAPER = "Not even my touch freezes it.",
        WETPOUCH = "Squishable.",
        MOONROCK_PIECES = "I love to smash it!",
        MOONBASE =
        {
            GENERIC = "Now to break it again!",
            BROKEN = "My job's already been done...",
            STAFFED = "...I'm going to break it again.",
            WRONGSTAFF = "Snap that staff!",
            MOONSTAFF = "Rrk! Why is it so bright!",
        },
        MOONDIAL = 
        {
			GENERIC = "As fun to splash as it is to smash!",
			NIGHT_NEW = "No moon. And soon, no structure.",
			NIGHT_WAX = "I only care about destroying it...",
			NIGHT_FULL = "The moon hits my eye like a big pizza pie...",
			NIGHT_WANE = "Waning. Like my resistance to break it.",
			CAVE = "A better use for it would be rubble.",
			GLASSED = "My eye isn't the only one looking...",
        },
		THULECITE = "I could smash it to pieces!",
		ARMORRUINS = "I'll be more durable, but structures won't!",
		ARMORSKELETON = "Were my bones always on the outside?",
		SKELETONHAT = "You can never have enough bones.",
		RUINS_BAT = "All the easier to break with!",
		RUINSHAT = "I just want to crush it...",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "It's calm. But I want to wreak havoc.",
            WARN = "Is my pupil dilating...?",
            WAXING = "Wreak havoc!",
            STEADY = "Steadier than my claws seeing an untouched structure.",
            WANING = "It's falling down.",
            DAWN = "Nearly gone. Any structures left to wreck?",
            NOMAGIC = "Nothing...",
		},
		BISHOP_NIGHTMARE = "No fun if you're destroying yourself.",
		ROOK_NIGHTMARE = "Let me have a go at destroying you!",
		KNIGHT_NIGHTMARE = "I'll wreck you before you do!",
		MINOTAUR = "I could learn to ram into things too...",
		SPIDER_DROPPER = "I hope you land on my antlers next time.",
		NIGHTMARELIGHT = "I'll save time by destroying it for you.",
		NIGHTSTICK = "It shouldn't be that close to my open eye.",
		GREENGEM = "I'm going to shatter it.",
		MULTITOOL_AXE_PICKAXE = "But is it any good ad destroying?",
		ORANGESTAFF = "I'll get around to more structures with this...",
		YELLOWAMULET = "To shine... or to shatter?",
		GREENAMULET = "Building can lead to... more destroying?",
		SLURPERPELT = "It left its fur as a gift...",	

		SLURPER = "I should show you the way of a Deerclops...",
		SLURPER_PELT = "It left its fur as a gift...",
		ARMORSLURPER = "I prefer to smash, not slurp.",
		ORANGEAMULET = "All the remains are coming back to me.",
		YELLOWSTAFF = "How easy does it turn to pieces...?",
		YELLOWGEM = "Shimmering shatter!",
		ORANGEGEM = "Smash or clash?",
        OPALSTAFF = "I like to hold it close...",
        OPALPRECIOUSGEM = "My favorite one to smash to bits.",
        TELEBASE = 
		{
			VALID = "Ready. To ravage.",
			GEMS = "It needs to be gutted. No? Gemmed.",
		},
		GEMSOCKET = 
		{
			VALID = "Ready. To rumble.",
			GEMS = "It needs to be gutted. No? Gemmed.",
		},
		STAFFLIGHT = "Too bright!",
        STAFFCOLDLIGHT = "Peace of mind...",

        ANCIENT_ALTAR = "Ancient enough annihilate!",

        ANCIENT_ALTAR_BROKEN = "The older, the easier!",

        ANCIENT_STATUE = "The older a structure, the easier it breaks.",

        LICHEN = "One stomp is all it needs.",
		CUTLICHEN = "It's already falling apart to my claws!",

		CAVE_BANANA = "It's fun to squish...",
		CAVE_BANANA_COOKED = "It doesn't need chewing.",
		CAVE_BANANA_TREE = "I'm going to kick it over.",
		ROCKY = "Stone? Beast? You were made to be destroyed!",
		
		COMPASS =
		{
			GENERIC="I only sense directions in winter...",
			N = "My eye looks north.",
			S = "My eye points south.",
			E = "My eye looks east...",
			W = "My eye sees west...",
			NE = "Is my eye pointing north east?",
			SE = "Ponting south east?",
			NW = "Is there structures north west?",
			SW = "Structures down south west?",
		},

        HOUNDSTOOTH = "Even beasts break into pieces!",
        ARMORSNURTLESHELL = "I like it better in pieces...",
        BAT = "Don't you dare bite my eye...",
        BATBAT = "I'll swat like a bat...",
        BATWING = "You are not immune to being broken.",
        BATWING_COOKED = "I'll crush it between my teeth.",
        BATCAVE = "I wish I was big enough to stomp it.",
        BEDROLL_FURRY = "It's not as warm as my fur during a winter's destruction.",
        BUNNYMAN = "Look away, or don't. I'll be destroying your base.",
        FLOWER_CAVE = "It doesn't need that many brightened eyes...",
        GUANO = "Not common for a Deerclops to want to avoid stomping.",
        LANTERN = "My claws are giving it frostbite.",
        LIGHTBULB = "Where's the pupil...?",
        MANRABBIT_TAIL = "Was I destined to have this?",
        MUSHROOMHAT = "Do my antlers poke through?",
        MUSHROOM_LIGHT2 =
        {
            ON = "Make it the color of a cool, unforgiving coldness.",
            OFF = "It looks so easy to snap or smash!",
            BURNT = "It's not as fun to destroy without resistance.",
        },
        MUSHROOM_LIGHT =
        {
            ON = "I light up too when I see something to destroy.",
            OFF = "My claws are shaking. Let me at it!",
            BURNT = "It's not as fun to destroy without resistance.",
        },
        SLEEPBOMB = "If I stomp on it my eye gets heavy.",
        MUSHROOMBOMB = "I'll stomp it!",
        SHROOM_SKIN = "It must have been jealous of my cold, brittle skin.",
        TOADSTOOL_CAP =
        {
            EMPTY = "There's no fun in stomping the emptiness.",
            INGROUND = "Something to crush?",
            GENERIC = "I'll claw it down!",
        },
        TOADSTOOL =
        {
            GENERIC = "I'll crush you like the pitiful structure you are!",
            RAGE = "I get like that if I don't destroy, too.",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "My claws are itching at it.",
            BURNT = "Where's the fun in an easy stomp?",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "What a fun time it is to destroy!",
            BLOOM = "I should stomp you for just smelling like that.",
            ACIDCOVERED = "That smell is enough to destroy a nose...",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "It's fun to kick and claw at.",
            BLOOM = "I should stomp you for just smelling like that.",
            ACIDCOVERED = "That smell is enough to destroy a nose...",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "Fun to smash and crash into.",
            BLOOM = "I should stomp you for just smelling like that.",
            ACIDCOVERED = "That smell is enough to destroy a nose...",
        },
        MUSHTREE_TALL_WEBBED =
        {
            GENERIC = "I think it's important to destroy too.",
            ACIDCOVERED = "That smell is enough to destroy a nose...",
        },
        SPORE_TALL =
        {
            GENERIC = "I don't need any spore eyes.",
            HELD = "Nothing can escape from my fur.",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "I don't need any spore eyes.",
            HELD = "Nothing can escape from my fur.",
        },
        SPORE_SMALL =
        {
            GENERIC = "I don't need any spore eyes.",
            HELD = "Nothing can escape from my fur.",
        },
        RABBITHOUSE =
        {
            GENERIC = "Destroying, with a snack!",
            BURNT = "I would have enjoyed destroying it myself...",
        },
        SLURTLE = "My hooves will crack right through that shell.",
        SLURTLE_SHELLPIECES = "A little reward for stomping.",
        SLURTLEHAT = "I'm going to stomp it.",
        SLURTLEHOLE = "I won't cease until it's fallen!",
        SLURTLESLIME = "My claws get enough grim from structures.",
        SNURTLE = "My claws will enjoy cracking that shell.",
        SPIDER_HIDER = "You can't hide from the all seeing eye.",
        SPIDER_SPITTER = "You spit and I'll shatter.",
        SPIDERHOLE = "I'll crush it so I don't have to gaze at it.",
        SPIDERHOLE_ROCK = "I'll crush it so I don't have to gaze at it.",
        STALAGMITE = "I'm going to kick it.",
        STALAGMITE_TALL = "I stubbed my hooves on it...",
        TREASURECHEST_TRAP = "Free structure!!",

        TURF_CARPETFLOOR = "I have an urge to tear it up from the ground.",
        TURF_CHECKERFLOOR = "My hooves crack the ground I walk on.",
        TURF_DIRT = "My hooves destroy the ground I walk on.",
        TURF_FOREST = "My hooves destroy the ground I tread on.",
        TURF_GRASS = "My hooves destroy the ground I walk on.",
        TURF_MARSH = "My hooves destroy the ground I walk on.",
        TURF_METEOR = "My hooves destroy the ground I walk on.",
        TURF_PEBBLEBEACH = "My hooves destroy the ground I walk on.",
        TURF_ROAD = "My hooves destroy the ground I walk on.",
        TURF_ROCKY = "My hooves destroy the ground I walk on.",
        TURF_SAVANNA = "My hooves destroy the ground I walk on.",
        TURF_WOODFLOOR = "My hooves destroy the weak wood I walk on.",

		TURF_CAVE="My hooves destroy the ground I walk on.",
		TURF_FUNGUS="My hooves destroy the ground I walk on.",
		TURF_SINKHOLE="My hooves destroy the ground I walk on.",
		TURF_UNDERROCK="My hooves destroy the ground I walk on.",
		TURF_MUD="My hooves destroy the ground I walk on.",

		TURF_DECIDUOUS = "My hooves destroy the ground I tread on.",
		TURF_SANDY = "My hooves destroy the ground I walk on.",
		TURF_BADLANDS = "My hooves destroy the ground I walk on.",
		TURF_DESERTDIRT = "My hooves destroy the ground I walk on.",
		TURF_FUNGUS_GREEN = "My hooves destroy the ground I walk on.",
		TURF_FUNGUS_RED = "My hooves destroy the ground I walk on.",
		TURF_DRAGONFLY = "My hooves destroy the ground I walk on.",
		TURF_SHELLBEACH = "My hooves destroy the ground I tread on.",

		TURF_RUINSBRICK = "My hooves destroy the ground I tread on.",
		TURF_RUINSBRICK_GLOW = "My hooves destroy the ground I tread on.",
		TURF_RUINSTILES = "My hooves destroy the ground I tread on.",
		TURF_RUINSTILES_GLOW = "My hooves destroy the ground I tread on.",
		TURF_RUINSTRIM = "My hooves destroy the ground I tread on.",
		TURF_RUINSTRIM_GLOW = "My hooves destroy the ground I tread on.",

		TURF_MONKEY_GROUND = "My hooves destroy the ground I walk on.",

        TURF_CARPETFLOOR2 = "I have an urge to tear it up from the ground.",
        TURF_MOSAIC_GREY = "My hooves destroy the ground I tread on.",
        TURF_MOSAIC_RED = "My hooves destroy the ground I tread on.",
        TURF_MOSAIC_BLUE = "My hooves destroy the ground I tread on.",

        TURF_BEARD_RUG = "It provides no warmth. Good.",

		POWCAKE = "It destroys a tongue like I do a structure.",
        CAVE_ENTRANCE = "I'll crack it to rubble with my claws.",
        CAVE_ENTRANCE_RUINS = "I'll crack it to rubble with my claws.",
       
       	CAVE_ENTRANCE_OPEN = 
        {
            GENERIC = "My claws aren't cutting it...",
            OPEN = "I've never destroyed the structures below!",
            FULL = "There better be structures left over...",
        },
        CAVE_EXIT = 
        {
            GENERIC = "There's structures I haven't smashed.",
            OPEN = "I've destroyed all there is down here...",
            FULL = "A Deerclops can't be kept down here!",
        },

		MAXWELLPHONOGRAPH = "Rrr! My ears can't handle that ringing! I'm smashing it!",
		BOOMERANG = "My antlers always come back too.",
		PIGGUARD = "I was made to destroy you and what you protect...",
		ABIGAIL = "You're as cold as a Deerclops' touch.",
		ADVENTURE_PORTAL = "Do I destroy this structure, or go in and destroy more...",
		AMULET = "It'll snap easier when my neck freezes it over...",
		ANIMAL_TRACK = "Hoof prints. Familiar...",
		ARMORGRASS = "Itches like my claws at the sight of a structure.",
		ARMORMARBLE = "A Deerclops' fur is heavier...",
		ARMORWOOD = "I'll burst out of it...",
		ARMOR_SANITY = "Has my fur always been this droopy...",
		ASH =
		{
			GENERIC = "I prefer my structure's remains raw and not burnt.",
			REMAINS_GLOMMERFLOWER = "I prefer my remains raw and not burnt.",
			REMAINS_EYE_BONE = "I prefer my remains raw and not burnt.",
			REMAINS_THINGIE = "I prefer my remains raw and not burnt.",
		},
		AXE = "I like to use my claws...",
		BABYBEEFALO = 
		{
			GENERIC = "Want to see a Deerclops destroy?",
		    SLEEPING = "Maybe I won't stomp... for now.",
        },
        BUNDLE = "All the better to smash.",
        BUNDLEWRAP = "Things crush better in a bundle.",
		BACKPACK = "I keep rubble with me. For the memories...",
		BACONEGGS = "I enjoy crushing them with my teeth.",
		BANDAGE = "It's better to repair me than a structure.",
		BASALT = "I can't... smash it...",
		BEARDHAIR = "Not cold enough to be my fur.",
		BEARGER = "You like to cause chaos and ruin too? No...?",
		BEARGERVEST = "I like my fur cold and brittle.",
		ICEPACK = "It's a Deerclops' stomach, for the outside.",
		BEARGER_FUR = "I like my fur cold and brittle.",
		BEDROLL_STRAW = "I'd rather sleep on rubble...",
		BEEQUEEN = "I'm known to destroy more than just structures.",
		BEEQUEENHIVE = 
		{
			GENERIC = "My hooves lose all traction on it...",
			GROWING = "I can wait for when it's fully built to destroy it.",
		},
        BEEQUEENHIVEGROWN = "What a marvel it would be to crush!",
        BEEGUARD = "You're too easy to squish.",
        HIVEHAT = "My antlers were never as hairy...",
        MINISIGN =
        {
            GENERIC = "You can't avoid my hooves for long...",
            UNDRAWN = "I'm going to enjoy stomping it.",
        },
        MINISIGN_ITEM = "A little bit to stomp on.",
		BEE =
		{
			GENERIC = "My claws love to swat it out of the air...",
			HELD = "My claws are itching to squish. ...Are you stinging my claws?",
		},
		BEEBOX =
		{
			READY = "If I destroyed it now, my hooves would be gunked up...",
			FULLHONEY = "If I destroyed it now, my hooves would be gunked up...",
			GENERIC = "It was made for me to smash!",
			NOHONEY = "I must crush it.",
			SOMEHONEY = "My claws might get a bit messy.",
			BURNT = "I like to destroy without fire...",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "Destroying it is the best way to collect.",
			LOTS = "If I smash it, I'll smash all in it.",
			SOME = "It's too easy for me to smashhh.",
			EMPTY = "Nothing but a crushable log.",
			ROTTEN = "I'll stomp it anyway.",
			BURNT = "No funnn...",
			SNOWCOVERED = "I'm snow covered too.",
		},
		BEEFALO =
		{
			FOLLOWER = "I'm not used to being followed...",
			GENERIC = "It reeks. I only wreak of havoc.",
			NAKED = "Grow a winter coat next time.",
			SLEEPING = "You're sleeping. I'll be stomping.",
            --Domesticated states:
            DOMESTICATED = "You're mine now...",
            ORNERY = "It must want to destroy something...",
            RIDER = "Faster than my hooves would carry me. Even in snow...",
            PUDGY = "Maybe it's warm enough for a cold saddle.",
			MYPARTNER = "We're connected by ice. I hope it thaws soon...",
		},

		BEEFALOHAT = "More antlers means more heat. Rrrr...",
		BEEFALOWOOL = "It's not as cold as my own.",
		BEEHAT = "I want to stomp on it, not wear it.",
        BEESWAX = "It's a pleasure to squish.",
		BEEHIVE = "The perfect candidate to crush.",
		BEEMINE = "I buzz when I shake too...",
		BEEMINE_MAXWELL = "Must resist urge to... stomp!",
		BERRIES = "It has a very satisfying squish...",
		BERRIES_COOKED = "If I stomp on them they'll get cold again.",
        BERRIES_JUICY = "They're freezing over in my claws...",
        BERRIES_JUICY_COOKED = "If I stomp on them they'll get cold again.",
		BERRYBUSH =
		{
			BARREN = "It's not as fun to stomp if it doesn't bleed.",
			WITHERED = "I prefer to stomp it when it can bleed.",
			GENERIC = "A Deerclops has its claws made to crush it!",
			PICKED = "Rrrh! I've wreaked havoc on this... bush!",
			DISEASED = "Rrrg. Smash it!",
			DISEASING = "Rrr... I'll stomp on it before it gets worse.",
			BURNING = "I would've preferred to claw at it.",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "It's not as fun to stomp if it doesn't bleed.",
			WITHERED = "I prefer to stomp it when it can bleed.",
			GENERIC = "I claw at what I can't reach.",
			PICKED = "Now it'll crush, but with less juices.",
			DISEASED = "Rrrg. Just smash it!",
			DISEASING = "Rrr... I'll stomp on it before it gets worse.",
			BURNING = "It's too late to step on now...",
		},
		BIGFOOT = "A stomp too terrifying for even a Deerclops...",
		BIRDCAGE =
		{
			GENERIC = "It's another fun structure to stomp on!",
			OCCUPIED = "I get to smash both a structure and a beast!",
			SLEEPING = "There's less squawking when I smash it now.",
			HUNGRY = "I'm hungry for destruction too.",
			STARVING = "It's starved, like me when I don't destroy.",
			DEAD = "All the easier to smash.",
			SKELETON = "I'll break a little bone if I have to.",
		},
		BIRDTRAP = "Do I stomp on it now, or when it's caught one...",
		CAVE_BANANA_BURNT = "I prefer clawed crushing.",
		BIRD_EGG = "I like to crush it in my mouth.",
		BIRD_EGG_COOKED = "The shell was its best feature...",
		BISHOP = "I bet you crush well...",
		BLOWDART_FIRE = "My lips aren't the hottest around...",
		BLOWDART_SLEEP = "A sleep you can't ignore.",
		BLOWDART_PIPE = "Sharpened claw.",
		BLOWDART_YELLOW = "It comes with a bit of a shock...",
		BLUEAMULET = "Feels like home.",
		BLUEGEM = "It's fun to chatter my teethhh on...",
		BLUEPRINT = 
		{ 
            COMMON = "I like to shred it with my claws...",
            RARE = "All the more precious to tear up.",
        },
        SKETCH = "It's like my eye is locked to it.",
		COOKINGRECIPECARD = 
		{
			GENERIC = "It's all a blur...",
		},
		BLUE_CAP = "It's a fun guy to squish.",
		BLUE_CAP_COOKED = "I like it when it's frigid.",
		BLUE_MUSHROOM =
		{
			GENERIC = "Care to take a bite...?",
			INGROUND = "I'll still stomp on it.",
			PICKED = "I've stomped once before.",
		},
		BOARDS = "Any Deerclops knows how to smash them to pieces.",
		BONESHARD = "Some of my favorite remnants.",
		BONESTEW = "You can make food from rubble and ruin?",
		BUGNET = "I'll catch little bugs or I'll snap it.",
		BUSHHAT = "I might be stomped wearing this...",
		BUTTER = "My claws squeeze it in rage...",
		BUTTERFLY =
		{
			GENERIC = "I'm going to swat you out of the air.",
			HELD = "I don't like how you fly...",
		},
		BUTTERFLYMUFFIN = "It has a crunch to it.",
		BUTTERFLYWINGS = "I prefer to crush something bigger.",
		BUZZARD = "After a Deerclops has its way, they come.",

		SHADOWDIGGER = "All the more of you to crush.",
        SHADOWDANCER = "Maybe I will close my eye. Just this once...",

		CACTUS = 
		{
			GENERIC = "It must take after a Deerclops' claw.",
			PICKED = "It clawed back.",
		},
		CACTUS_MEAT_COOKED = "I like meals that claw back.",
		CACTUS_MEAT = "Does it get any colder?",
		CACTUS_FLOWER = "I'll pull its petals off.",

		COLDFIRE =
		{
			EMBERS = "It's low, now's my time to stomp on it.",
			GENERIC = "A fire I can agree with.",
			HIGH = "I feel at home next to it.",
			LOW = "I could use a brighter breeze.",
			NORMAL = "A fire I can agree with.",
			OUT = "I should have destroyed it when I had the chance...",
		},
		CAMPFIRE =
		{
			EMBERS = "It's low, now's my time to stomp on it.",
			GENERIC = "I would've never been seen approaching.",
			HIGH = "Deerclops need a lot less fur to enjoy this...",
			LOW = "I'd like to crush it beneath my claws.",
			NORMAL = "It melts any snow around it...",
			OUT = "I should have destroyed it when I had the chance...",
		},
		CANE = "Snow won't hold back my hooves.",
		CATCOON = "I hate you, too.",
		CATCOONDEN = 
		{
			GENERIC = "It's fun to smash what's a home.",
			EMPTY = "I'll happily stomp it.",
		},
		CATCOONHAT = "I'll have more fur for my head.",
		COONTAIL = "I've never needed a tail until now...",
		CARROT = "Its crunch is satisfying.",
		CARROT_COOKED = "I prefer it crunchy.",
		CARROT_PLANTED = "Easy stomping.",
		CARROT_SEEDS = "Sprout a structure for me...",
		CARTOGRAPHYDESK =
		{
			GENERIC = "The only thing it needs is to be destroyed by me!",
			BURNING = "It's too hot to crush by now.",
			BURNT = "I'm too cold for that...",
		},
		WATERMELON_SEEDS = "Sprout a structure for me...",
		CAVE_FERN = "It crushes best cold.",
		CHARCOAL = "It makes me hooves ashen when I stomp it.",
        CHESSPIECE_PAWN = "I'm no fawn.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "I shook the rook, that's all it took.",
            STRUGGLE = "Don't let it smash itself!",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "My hooves have no problem kicking yours!",
            STRUGGLE = "Don't let it smash itself!",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "I like to bis-hop up and down on it until it cracks.",
            STRUGGLE = "Don't let it smash itself!",
        },
        CHESSPIECE_MUSE = "Its only use as a muse it to amuse me as I destroy it.",
        CHESSPIECE_FORMAL = "It's begging to be clawed out.",
        CHESSPIECE_HORNUCOPIA = "My teeth want to crush it, but only my claws can.",
        CHESSPIECE_PIPE = "I'd love to smash it.",
        CHESSPIECE_DEERCLOPS = "My eye isn't that big...",
        CHESSPIECE_BEARGER = "You're not so hungry with a stomach of stone.",
        CHESSPIECE_MOOSEGOOSE =
        {
            "Don't tell her that I'm breaking it.",
        },
        CHESSPIECE_DRAGONFLY = "She might get heated knowing I smashed it...",
		CHESSPIECE_MINOTAUR = "Cold and unfeeling, now it's a Deerclops.",
        CHESSPIECE_BUTTERFLY = "They're much more fun to crush at this size.",
        CHESSPIECE_ANCHOR = "Easier to crack than the real thing.",
        CHESSPIECE_MOON = "I'll give the moon more cracks than one.",
		CHESSPIECE_CARRAT = "I prefer to crush, not bite.",
		CHESSPIECE_MALBATROSS = "I freeze with more than just stone.",
        CHESSPIECE_CRABKING = "Frozen stiff.",
		CHESSPIECE_TOADSTOOL = "Cold, lifeless.",
        CHESSPIECE_STALKER = "It doesn't watch like my eye does.",
        CHESSPIECE_KLAUS = "Better you than me...",
        CHESSPIECE_BEEQUEEN = "Frozen stiff.",
        CHESSPIECE_ANTLION = "Did my icy stare freeze you too?",
		CHESSPIECE_BEEFALO = "This cold stare doesn't phase me.",
		CHESSPIECE_KITCOON = "It looks so easy to...topple.",
		CHESSPIECE_CATCOON = "My claws want to scratch at it.",
        CHESSPIECE_MANRABBIT = "Now I can destroy you once and for all.",
        CHESSPIECE_GUARDIANPHASE3 = "If only it were ice...",
		CHESSPIECE_EYEOFTERROR = "I can't keep my eye off it...",
        CHESSPIECE_TWINSOFTERROR = "We would have been unstoppable, you and eye.",
        CHESSPIECE_DAYWALKER = "I prefer you cold and lifeless.",
        CHESSPIECE_DEERCLOPS_MUTATED = "The original will always prevail...",
        CHESSPIECE_WARG_MUTATED = "You wont find a stare colder than a Deerclops'.",
        CHESSPIECE_BEARGER_MUTATED = "I think it suits you. It'll suit me better as rubble.",
        CHESSPIECE_SHARKBOI = "You'll enjoy being cold and lifeless.",

        CHESSJUNK1 = "Already stomped.",
        CHESSJUNK2 = "I wish I had been the one to demolish it.",
        CHESSJUNK3 = "Broken before...",
		CHESTER = "Pick up my rubble in my wake.",
		CHESTER_EYEBONE =
		{
			GENERIC = "I have only the one eye, too.",
			WAITING = "If I open my eye, you should too...",
		},
		COOKEDMANDRAKE = "There's some satisfaction in a bit of crisp.",
		COOKEDMEAT = "The crunchier, the better to crushhh.",
		COOKEDMONSTERMEAT = "It clings to my teethhh...",
		COOKEDSMALLMEAT = "A little crunch is fine.",
		COOKPOT =
		{
			COOKING_LONG = "My claws can only resist for so long.",
			COOKING_SHORT = "My claws are shaking in anticipation! ...To destroy.",
			DONE = "Now I can crush and eat.",
			EMPTY = "Nothing to eat, but all the more satisfying to destroy!",
			BURNT = "Can't I claw it instead...",
		},
		CORN = "I like to bite it into rubble.",
		CORN_COOKED = "Rubble never tasted so sweet.",
		CORN_SEEDS = "To be stomped on in the ground.",
        CANARY =
		{
			GENERIC = "Don't eye the structures I haven't smashed yet.",
			HELD = "You don't mind being squeezed, do you?",
		},
        CANARY_POISONED = "Not the type of cold I like.",

		CRITTERLAB = "I'll destroy it, creatures or not...",
        CRITTER_GLOMLING = "You have two too many eyes.",
        CRITTER_DRAGONLING = "You're warmer than I'll ever be.",
		CRITTER_LAMB = "I have my eye on ewe.",
        CRITTER_PUPPY = "I had thought I was scary enough for you.",
        CRITTER_KITTEN = "Is it not... afraid?",
        CRITTER_PERDLING = "You won't peck out my eye, will you?",
		CRITTER_LUNARMOTHLING = "It keeps my eye glowing bright...",

		CROW =
		{
			GENERIC = "I don't like how it stares into my eye.",
			HELD = "I'll show you not to peck the eye of a Deerclops.",
		},
		CUTGRASS = "A crunchy bit of ruin...",
		CUTREEDS = "I crushed it with my claws.",
		CUTSTONE = "I like it better in ruin.",
		DEADLYFEAST = "It won't sit well in a cold stomach.",
		DEER =
		{
			GENERIC = "Rrr... Maybe one eye isn't so bad.",
			ANTLER = "You're missing an eye...",
		},
        DEER_ANTLER = "I was almost convinced it was mine.",
        DEER_GEMMED = "Did you get an eye? A crackable eye...",
		DEERCLOPS = "I want to show off my destruction skills to a fellow Deerclops!",
		DEERCLOPS_EYEBALL = "Err... I finally have two eyes.",
		EYEBRELLAHAT =	"I feel a bit sick, having two eyes... Rrrg...",
		DEPLETED_GRASS =
		{
			GENERIC = "It's already in ruin.",
		},
        GOGGLESHAT = "I'm going to shatter it for looking at me.",
        DESERTHAT = "They don't make them for Deerclops...",
        ANTLIONHAT = "Nothing is safe from my claws, my hooves.",
		DIRTPILE = "A strange leftover of a stomping.",
		DIVININGROD =
		{
			COLD = "It's cold, not unlike Deerclops.",
			GENERIC = "I'll keep it around if it shows me where to ravage.",
			HOT = "I have arrived...",
			WARM = "I can feel a base coming ever closer...",
			WARMER = "My claws are itching to destroy...",
		},
		DIVININGRODBASE =
		{
			GENERIC = "I only care to destroy it...",
			READY = "ready to be razed.",
			UNLOCKED = "Now the creation is better to crush.",
		},
		DIVININGRODSTART = "I'll happily take what I may.",
		DRAGONFLY = "Rrrr... Have you tried bringing chaos in snow?",
		ARMORDRAGONFLY = "Doesn't it ever get cold...",
		DRAGON_SCALES = "Not even my touch makes it cool...",
		DRAGONFLYCHEST =
		{
			GENERIC = "My cold hooves will still have to stomp on it.",
            UPGRADED_STACKSIZE = "You've only made it more fun to stomp.",
		},
		DRAGONFLYFURNACE = 
		{
			HAMMERED = "I've had my fun!",
			GENERIC = "I'll destroy it, no matter the heat.", --no gems
			NORMAL = "Only one. Like myself...", --one gem
			HIGH = "It's hot, I'll have to smash and sear.", --two gems
		},
        
        HUTCH = "Keeps track of the rubble in my wake.",
        HUTCH_FISHBOWL =
        {
            GENERIC = "I have an urge to smash it...",
            WAITING = "I'm not the most patient. I might smash it.",
        },
		LAVASPIT = 
		{
			HOT = "Don't thaw me out...",
			COOL = "More my pace.",
		},
		LAVA_POND = "No Deerclops would want to thaw.",
		LAVAE = "I won't let you burn what I must destroy!",
		LAVAE_COCOON = "I wouldn't mind be cooled into a wintry shell too.",
		LAVAE_PET = 
		{
			STARVING = "Maybe I'll let it take on one structure...",
			HUNGRY = "I hunger for destruction too.",
			CONTENT = "Warm things tend to be easily satisfied.",
			GENERIC = "Don't burn my structures and I'll not squash you...",
		},
		LAVAE_EGG = 
		{
			GENERIC = "It's warm on the inside. Not like any Deerclops...",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "I prefer the cold.... Why don't you?",
			COMFY = "It's it warmth you want...",
		},
		LAVAE_TOOTH = "A deerclops has enough teeth of its own.",

		DRAGONFRUIT = "I'm going to squish it.",
		DRAGONFRUIT_COOKED = "i'd rather squash it cool.",
		DRAGONFRUIT_SEEDS = "Stomp it into the ground.",
		DRAGONPIE = "My teeth will enjoy destroying this...",
		DRUMSTICK = "I enjoy tearing it to shreds.",
		DRUMSTICK_COOKED = "I rip the flesh off with my own teeth and claws.",
		DUG_BERRYBUSH = "What I leave in my wake...",
		DUG_BERRYBUSH_JUICY = "What I leave in my wake...",
		DUG_GRASS = "What I leave in my wake...",
		DUG_MARSH_BUSH = "What I leave in my wake...",
		DUG_SAPLING = "What I leave in my wake...",
		DURIAN = "I'll crush it if it means its stench falls.",
		DURIAN_COOKED = "It's making my nose itchhh...",
		DURIAN_SEEDS = "Stomp it into the ground...",
		EARMUFFSHAT = "It's nose use... My frigid fur is enough...",
		EGGPLANT = "It squashes nicely. But it's no structure...",
		EGGPLANT_COOKED = "I'll have to squish it with my teethhh.",
		EGGPLANT_SEEDS = "Stomp it into the ground.",
		
		ENDTABLE = 
		{
			BURNT = "It's not as fun to destroy charrrred...",
			GENERIC = "It's a pleasure to smash it.",
			EMPTY = "A Deerclops knows something to destroy when it sees it.",
			WILTED = "I better smash the entire structure.",
			FRESHLIGHT = "It has a few new eyes...",
			OLDLIGHT = "Its light isn't worth being saved from smashing.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE = 
		{
			BURNING = "I could have clawed it.",
			BURNT = "It's too easy to destroy...",
			CHOPPED = "Not as satisfying as a structure...",
			POISON = "That only makes me want to claw at you more.",
			GENERIC = "I like it without leaves... cold... and destroyed by me.",
		},
		ACORN = "It's satisfying to crack open with claws.",
        ACORN_SAPLING = "Grow up to be destroyed.",
		ACORN_COOKED = "It has a nice crisp. Crackling...",
		BIRCHNUTDRAKE = "Meet my hooves.",
		EVERGREEN =
		{
			BURNING = "I could have clawed it...",
			BURNT = "It's not as fun to destroy it if it wants to be...",
			CHOPPED = "I happily cut it.",
			GENERIC = "A reminder of a destroyable piece of winter...",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "I can't claw it...",
			BURNT = "I prefer to claw it down myself...",
			CHOPPED = "It wasn't a building, but it toppled like one.",
			GENERIC = "It wants to be destroyed, to be toppled over.",
		},
		TWIGGYTREE = 
		{
			BURNING = "I prefer the cold.",
			BURNT = "It's easier to snap than before...",
			CHOPPED = "Show me a proper structure next time.",
			GENERIC = "You're making it too easy to snap twigs here.",			
			DISEASED = "Snapping it would be the nice thing to do...",
		},
		TWIGGY_NUT_SAPLING = "I'm going to stomp on it with my hooves.",
        TWIGGY_OLD = "Snapping made easy.",
		TWIGGY_NUT = "It's a joy to crush.",
		EYEPLANT = "Eye see you too.",
		INSPECTSELF = "Don't... blink.",
		FARMPLOT =
		{
			GENERIC = "A Deerclops would rather hit it with ice.",
			GROWING = "The more that grows, the more it's fun to stomp.",
			NEEDSFERTILIZER = "I could stomp on it... That might help.",
			BURNT = "Not as fun as a nice, crisp ice spike to it.",
		},
		FEATHERHAT = "My antlers weren't made to look like this...",
		FEATHER_CROW = "What's leftover after a powerful thump.",
		FEATHER_ROBIN = "What's leftover after a powerful thump.",
		FEATHER_ROBIN_WINTER = "It's not unlike my brittle fur.",
		FEATHER_CANARY = "What's leftover after a powerful clomp.",
		FEATHERPENCIL = "My claws just want to snap it.",
		COOKBOOK = "I'll have to write down to add extra ice...",
		FEM_PUPPET = "Rrrr...",
		FIREFLIES =
		{
			GENERIC = "It gives away a Deerclops roaming at night.",
			HELD = "Your light won't frighten anymore Deerclops.",
		},
		FIREHOUND = "Your claws could use some ice.",
		FIREPIT =
		{
			EMBERS = "I'll spit out a bit of ice to finish it off...",
			GENERIC = "I would've never been seen approaching.",
			HIGH = "Deerclops need a lot less fur to enjoy this...",
			LOW = "I'd like to crush it beneath my hooves.",
			NORMAL = "It's nothing compared to a frigid touch.",
			OUT = "My claws have an itch to smash.",
		},
		COLDFIREPIT =
		{
			EMBERS = "I wish the crisp, cold air would last forever...",
			GENERIC = "I would've never been seen approaching.",
			HIGH = "I feel at home next to it...",
			LOW = "I like brighter breezes.",
			NORMAL = "A fire I can agree with.",
			OUT = "The colder, the better it crushes.",
		},
		FIRESTAFF = "It will conflict with a Deerclops' nature...",
		FIRESUPPRESSOR = 
		{	
			ON = "Hmph... Let a Deerclops handle it!",
			OFF = "A destruction so satisfying is waiting...",
			LOWFUEL = "I will supply it with a fuel of my claws destroying it.",
		},

		FISH = "It goes down without a fight.",
		FISHINGROD = "My claws have to resist snapping it in two...",
		FISHSTICKS = "Crisper than a live one but less crunchy...",
		FISHTACOS = "It crushes like a wooden structure.",
		FISH_COOKED = "I enjoy the crunch of bone the most.",
		FLINT = "Sharpened as the ice from my claws...",
		FLOWER = 
		{
            GENERIC = "Its life was made to be trampled on by hooves.",
            ROSE = "It will never be as sharp as my frozen claws...",
        },
        FLOWER_WITHERED = "It has a crunchier crushing sound.",
		FLOWERHAT = "Deerclops aren't used to having this many colors in their fur.",
		FLOWER_EVIL = "I'll freeze it and stomp it.",
		FOLIAGE = "A simple satisfying stomp.",
		FOOTBALLHAT = "I can hear it crack like ice.",
        FOSSIL_PIECE = "Deerclops loves to crush bones into powder.",
        FOSSIL_STALKER =
        {
			GENERIC = "The more pieces, the better it fractures.",
			FUNNY = "I'm free to smash it to bits now.",
			COMPLETE = "My claws can only resist for so long...",
        },
        STALKER = "I'm used to fracturing bones. They crack better under ice...",
        STALKER_ATRIUM = "Bones on the outside only make this easier...",
        STALKER_MINION = "You make it so easy to stomp you!",
        THURIBLE = "It reeks of havoc...",
        ATRIUM_OVERGROWTH = "I only wish to destroy and leave.",
		FROG =
		{
			DEAD = "Don't hop into a Deerclops' way.",
			GENERIC = "Your tongue might get stuck.",
			SLEEPING = "They get a little colder in slumber...",
		},
		FROGGLEBUNWICH = "Encased in... something other than ice.",
		FROGLEGS = "You can't stomp without proper hooves.",
		FROGLEGS_COOKED = "I'll chew it up, bones and all.",
		FRUITMEDLEY = "It's best squashed between my claws.",
		FURTUFT = "Not brittle enough for my own.", 
		GEARS = "Deerclops have cold, frigid inner workings too.",
		GHOST = "There's no thrill in smashing what isn't solid...",
		GOLDENAXE = "I see my pupil staring back at me in its blade...",
		GOLDENPICKAXE = "I only need my claws. Ice too...",
		GOLDENPITCHFORK = "My claws will tear at the ground, not this.",
		GOLDENSHOVEL = "Breaking ground is the same, no matter the tool...",
		GOLDNUGGET = "It's soft enough to be ice.",
		GRASS =
		{
			BARREN = "I'll crush it before it's too late.",
			WITHERED = "We could all use a cool breeze.",
			BURNING = "I would have preferred to use ice...",
			GENERIC = "It's easy to crushhh...",
			PICKED = "I've ravaged all I could.",
			DISEASED = "Rrrg. Smash it!",
			DISEASING = "Rrr... I'll stomp on it before it gets worse.",
		},
		GRASSGEKKO = 
		{
			GENERIC = "I want to freeze it and crush it...",	
			DISEASED = "I'll freeze it out of my way.",
		},
		GREEN_CAP = "I will rip it to pieces.",
		GREEN_CAP_COOKED = "Squashable...",
		GREEN_MUSHROOM =
		{
			GENERIC = "It's a satisfying thing to kick.",
			INGROUND = "Not the easiest stomp...",
			PICKED = "Stomped.",
		},
		GUNPOWDER = "It's much more satisfying to destroy by your own claws.",
		HAMBAT = "A gift for a Deerclops.",
		HAMMER = "I prefer my claws.",
		HEALINGSALVE = "I crush the bowl afterwards.",
		HEATROCK =
		{
			FROZEN = "My heart given object.",
			COLD = "Comfortable enough for any Deerclops.",
			GENERIC = "It gets frigid from my touch.",
			WARM = "It's warm enough. I might freeze it over.",
			HOT = "Will it thaw me, or will I freeze it first...",
		},
		HOME = "Winter is my home...",
		HOMESIGN =
		{
			GENERIC = "My favorite choice of easy destruction...",
            UNWRITTEN = "My favorite choice of easy destruction.",
			BURNT = "I would have preferred direct action...",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "My favorite choice of easy destruction...",
            UNWRITTEN = "My favorite choice of easy destruction.",
			BURNT = "I would have preferred direct action...",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "My favorite choice of easy destruction.",
            UNWRITTEN = "My favorite choice of easy destruction.",
			BURNT = "I would have preferred direct action...",
		},
		HONEY = "Everything bleeds...",
		HONEYCOMB = "It has a fine squishhh...",
		HONEYHAM = "It's a treat to destroy it with my teeth.",
		HONEYNUGGETS = "I like it with a side of ice.",
		HORN = "Never comparable to a Deerclops'.",
		HOUND = "Your claws don't destroy like mine do.",
		HOUNDCORPSE =
		{
			GENERIC = "A Deerclops doesn't usually stick around for this.",
			BURNING = "Was ice not enough?",
			REVIVING = "Is my eye seeing something?",
		},
		HOUNDBONE = "I enjoy a bit of pummelling bones.",
		HOUNDMOUND = "My claws can't resist smashing a mound of bones.",
		ICEBOX = "If it had antlers it'd be a destroyable Deerclops.",
		ICEHAT = "Oddly comforting.",
		ICEHOUND = "You breathe like me, but you cannot destroy like me.",
		INSANITYROCK =
		{
			ACTIVE = "Is my pupil shaking or is that my claws?",
			INACTIVE = "It doesn't crush very well...",
		},
		JAMMYPRESERVES = "Pre-smashed.",

		KABOBS = "I snap the twig with my teethhh.",
		KILLERBEE =
		{
			GENERIC = "My ice stings worse than you.",
			HELD = "I could squish you. What would be upset.",
		},
		KNIGHT = "I like you best encased in an armor of ice.",
		KOALEFANT_SUMMER = "I'll have to crush you.",
		KOALEFANT_WINTER = "I prefer the winter too.",
		KOALEFANT_CARCASS = "You've fallen with a horrible, silent thud.",
		KRAMPUS = "Take what you like. I'll destroy what remains.",
		KRAMPUS_SACK = "I prefer to destroy without interference.",
		LEIF = "This isn't the first time I've had to fell a tree.",
		LEIF_SPARSE = "Deerclops are known to knock down a tree or two...",
		LIGHTER  = "My fingers are too frigid to use it...",
		LIGHTNING_ROD =
		{
			CHARGED = "It'd make all my fur stand up if I destroyed it now.",
			GENERIC = "It'd be too easy to knock it down.",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "Don't let looks deceive you... we're not related.",
			CHARGED = "Some ice will cool you.",
		},
		LIGHTNINGGOATHORN = "Deerclops don't get ringing in their antlers.",
		GOATMILK = "It turns to ice before it meets my maw.",
		LITTLE_WALRUS = "Wouldn't you like to watch your base be demolished?",
		LIVINGLOG = "Don't look at me with your wooden two eye.",
		LOG =
		{
			BURNING = "If I stomped now it'd put the fire out.",
			GENERIC = "It's satisfying to crack it in half.",
		},
		LUCY = "Are my claws too cold for you?",
		LUREPLANT = "I'm lured by the satisfaction of destruction...",
		LUREPLANTBULB = "You had too many eyes.",
		MALE_PUPPET = "Rrrr...",

		MANDRAKE_ACTIVE = "I'll freeze you shut if I have to.",
		MANDRAKE_PLANTED = "Don't be in the ground if you don't want to be trampled.",
		MANDRAKE = "My ears don't take kindly to loud noises...",

        MANDRAKESOUP = "I'll put in a few pieces of ice.",
        MANDRAKE_COOKED = "It's nice with ice...",
        MAPSCROLL = "I just want to shred it...",
        MARBLE = "I can't care about every bit of rubble...",
        MARBLEBEAN = "Does it shatter?",
        MARBLEBEAN_SAPLING = "I want to knock it over.",
        MARBLESHRUB = "I hope it cracks like any structure.",
        MARBLEPILLAR = "I'll use my antlers to carve it.",
        MARBLETREE = "It falls like any other.",
        MARSH_BUSH =
        {
			BURNT = "I could have clawed it on my own.",
            BURNING = "I could have clawed without help.",
            GENERIC = "It comes with claws of its own...",
            PICKED = "It should try a bit of ice.",
        },
        BURNT_MARSH_BUSH = "I could have clawed it on my own.",
        MARSH_PLANT = "I'll be stomping you.",
        MARSH_TREE =
        {
            BURNING = "I couldn't smash it now.",
            BURNT = "It's too charred for a proper clawing.",
            CHOPPED = "A Deerclops crushed all.",
            GENERIC = "It's not sharp enough to prevent a Deerclops' destruction.",
        },
        MAXWELL = "Hissssssss...",
        MAXWELLHEAD = "Hissssssss...",
        MAXWELLLIGHT = "Hissssssss...",
        MAXWELLLOCK = "Hissssssss...",
        MAXWELLTHRONE = "Hissssssss...",
        MEAT = "A Deerclops' chewy gift!",
        MEATBALLS = "They squash and freeze between my teeth.",
        MEATRACK =
        {
            DONE = "Now time for the destruction...",
            DRYING = "My claws are itching to destroy. My stomach, itching to eat...",
            DRYINGINRAIN = "I want to destroy this...",
            GENERIC = "My destruction could be described as dry.",
            BURNT = "I'll kick it over in a pity...",
            DONE_NOTMEAT = "Now time for the destruction...",
            DRYING_NOTMEAT = "My claws are itching to destroy. My stomach, itching to eat...",
            DRYINGINRAIN_NOTMEAT = "I want to destroy this...",
        },
        MEAT_DRIED = "A crunchier skin.",
        MERM = "You could be a bit colder...",
        MERMHEAD =
        {
            GENERIC = "I'll smash what I can.",
            BURNT = "Rrrr...",
        },
        MERMHOUSE =
        {
            GENERIC = "There's not much left of it to destroy.",
            BURNT = "I just want to destroy...",
        },
        MINERHAT = "An ever-glowing eye rests on my antlers.",
        MONKEY = "Don't destroy any structures without me.",
        MONKEYBARREL = "I'd be satisfied in crushing your creation.",
        MONSTERLASAGNA = "Destroys my stomach too.",
        FLOWERSALAD = "It's not the most satisfying crush.",
        ICECREAM = "Rrr... It's worth screaming for.",
        WATERMELONICLE = "It brings me closer to what I want to be.",
        TRAILMIX = "I smash them into rubble.",
        HOTCHILI = "I prefer it with ice.",
        GUACAMOLE = "Everything is better frozen...",
        MONSTERMEAT = "It's fun to squash it with my teeth.",
        MONSTERMEAT_DRIED = "It's not the same without the juices.",
        MOOSE = "I'll destroy any nest you build.",
        MOOSE_NESTING_GROUND = "I can't destroy what hasn't been built.",
        MOOSEEGG = "My claws scratch at it.",
        MOSSLING = "You'd be better frozen solid.",
        FEATHERFAN = "It's only a single breeze...",
        MINIFAN = "Brisk winds.",
        GOOSE_FEATHER = "Leftovers...",
        STAFF_TORNADO = "Brisk winds, but not any from winter.",
        MOSQUITO =
        {
            GENERIC = "It'll have to get through my icy exterior.",
            HELD = "My blood is too cold for you.",
        },
        MOSQUITOSACK = "It doesn't tear well.",
        MOUND =
        {
            DUG = "I've had my fun...",
            GENERIC = "My claws know how to scavenge too.",
        },
        NIGHTLIGHT = "I prefer destruction to light.",
        NIGHTMAREFUEL = "Is this what a Deerclops bleeds? It doesn't freeze well.",
        NIGHTSWORD = "It's satisfying to swing around...",
        NITRE = "It shimmers when it's touched by my claws.",
        ONEMANBAND = "My ears hate its painful sounds!",
        OASISLAKE =
		{
			GENERIC = "I could freeze it over if I tried...",
			EMPTY = "I tread on it.",
		},
        PANDORASCHEST = "I'll break you.",
        PANFLUTE = "I don't like when my only eye falls heavy...",
        PAPYRUS = "It's fun to shred...",
        WAXPAPER = "It's no fun it it doesn't shred.",
        PENGUIN = "Winter beasts are always the same.",
        PERD = "I'm known to trample those bushes you base in.",
        PEROGIES = "Wrapped, but not safe.",
        PETALS = "It's icy from my touch.",
        PETALS_EVIL = "It makes my claws itch.",
        PHLEGM = "I only spit up ice.",
        PICKAXE = "I could make a crack or more...",
        PIGGYBACK = "You'd be lucky to ride a Deerclops' back.",
        PIGHEAD =
        {
            GENERIC = "Very easy to smashhh...",
            BURNT = "Rrrr...",
        },
        PIGHOUSE =
        {
            FULL = "The fuller, the better to destroy!",
            GENERIC = "I've waited to destroy structures the likes of you!",
            LIGHTSOUT = "My claws tremble with chaotic excitement!",
            BURNT = "There goes my itchhh...",
        },
        PIGKING = "I'll freeze your pigs and crush your creations.",
        PIGMAN =
        {
            DEAD = "I shouldn't have to warn.",
            FOLLOWER = "Don't you... fear me?",
            GENERIC = "I want you to tempt my claws.",
            GUARD = "I live to destroy what you guard.",
            WEREPIG = "My claws are colder than yours...",
        },
        PIGSKIN = "It crackles when I claw at it.",
--      PIGTENT = "PLACEHOLDER",
        PIGTORCH = "It's a satisfying thing to dismantle by claw.",
        PINECONE = "It's fun to stomp on.",
        PINECONE_SAPLING = "Smashable.",
        LUMPY_SAPLING = "Crushable.",
        PITCHFORK = "Claws with a bit of an extension...",
        PLANTMEAT = "I'll squish it between my teeth and claw.",
        PLANTMEAT_COOKED = "Is it squishier?",
        PLANT_NORMAL =
        {
            GENERIC = "Crushable...",
            GROWING = "It's fun to smash it when it's fully grown.",
            READY = "I have an itch to stomp on it.",
            WITHERED = "This heat is nothing but chaos.",
        },
        POMEGRANATE = "I enjoy squashing its innards.",
        POMEGRANATE_COOKED = "It's fun to gut things...",
        POMEGRANATE_SEEDS = "Stomping grounds.",
        POND = "I love it best when frozen.",
        POOP = "Not a fun squash...",
        FERTILIZER = "I have other things to crushhh...",
        PUMPKIN = "It lives to be smashed.",
        PUMPKINCOOKIE = "It crumbles to my teethhh...",
        PUMPKIN_COOKED = "Nearly smashed.",
        PUMPKIN_LANTERN = "It was meant to be kicked in by my hooves.",
        PUMPKIN_SEEDS = "Stomping seeds.",
        PURPLEAMULET = "I can't feel my eye when I wear it...",
        PURPLEGEM = "It must be a riot to shatter.",
        RABBIT =
        {
            GENERIC = "They all flee when they're what my eye sees.",
            HELD = "Aren't you cold...?",
        },
        RABBITHOLE =
        {
            GENERIC = "They know where to hide when a Deerclops come clomping...",
            SPRING = "Stomped on by the rain.",
        },
        RAINOMETER =
        {
            GENERIC = "It won't measure how much my claws itch for its destruction.",
            BURNT = "Rains burns structures too...?",
        },
        RAINCOAT = "It keeps the cold in.",
        RAINHAT = "Do my antlers tear through it?",
        RATATOUILLE = "Edible rubble and ruin.",
        RAZOR = "Let my claws help you with that.",
        REDGEM = "My claws itch to smash it to pieces.",
        RED_CAP = "My claws give it a bit of frost.",
        RED_CAP_COOKED = "It itches my tooth when I bite into it.",
        RED_MUSHROOM =
        {
            GENERIC = "It's fun to hop on.",
            INGROUND = "Falsely stomped.",
            PICKED = "Clawed out.",
        },
        REEDS =
        {
            BURNING = "Rrr...",
            GENERIC = "It itches my claws when I claw at it...",
            PICKED = "I've clawed what I could.",
        },
        RELIC = "A relic is best in ruin.",
        RUINS_RUBBLE = "A Deerclops must have already trampled through...",
        RUBBLE = "A Deerclops must have already trampled throughhh.",
        RESEARCHLAB =
        {
            GENERIC = "Deerclops break down things into their components too.",
            BURNT = "I could have clawed it better...",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "A Deerclops lives to destroy creations.",
            BURNT = "I wish I had done it first.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "I'll destroy any structure.",
            BURNT = "It was perfect for smashing...",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "I'll smash it into well deserved pieces.",
            BURNT = "If only I had time to crush it myself...",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "A Deerclops smashes what it wants.",
            BURNT = "I could have destroyed it myself.",
        },
        RESURRECTIONSTONE = "I enjoy it best when it's in pieces.",
        ROBIN =
        {
            GENERIC = "It doesn't stop staring at my eye...",
            HELD = "Do you feel a chill...?",
        },
        ROBIN_WINTER =
        {
            GENERIC = "I'm a beast of this season too...",
            HELD = "Are my claws cold enough?",
        },
        ROBOT_PUPPET = "Rrrr... rrrr...",
        ROCK_LIGHT =
        {
            GENERIC = "Crusty crushing...",
            OUT = "I could smash it with my frozen claws.",
            LOW = "I can help it freeze over sooner...",
            NORMAL = "Too hot for my claws to crushhh.",
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "I could smash it out of my way.",
            RAISED = "I'm not the tallest Deerclops can be...",
        },
        ROCK = "My claws could carve into it...",
        PETRIFIED_TREE = "Trees all the more satisfying to smash!",
        ROCK_PETRIFIED_TREE = "Trees all the more satisfying to smash!",
        ROCK_PETRIFIED_TREE_OLD = "Trees all the more satisfying to smash!",
        ROCK_ICE =
        {
            GENERIC = "...Ice to meet you!",
            MELTED = "There's no satisfaction in warmed ice...",
        },
        ROCK_ICE_MELTED = "There's no satisfaction in warmed ice.",
        ICE = "The bits of my being.",
        ROCKS = "Leftovers of a Deerclops' wake.",
        ROOK = "A rook is not all it took.",
        ROPE = "More to destroy.",
        ROTTENEGG = "Rrrr...",
        ROYAL_JELLY = "It becomes frozen custard in my claws.",
        JELLYBEAN = "It gets stuck to each of my teethhh...",
        SADDLE_BASIC = "A Deerclops isn't made to ride.",
        SADDLE_RACE = "Quicker than hooves ravaging the winter snow...",
        SADDLE_WAR = "Deerclops are fierce.",
        SADDLEHORN = "Remove what's not needed...",
        SALTLICK = "My tongue would get stuck.",
        BRUSH = "I leave a puddle of ice where I brushhh.",
		SANITYROCK =
		{
			ACTIVE = "My claws and mind itch to destroy it.",
			INACTIVE = "There's not much left to crushhh...",
		},
		SAPLING =
		{
			BURNING = "I prefer a crackle that isn't hot.",
			WITHERED = "A Deerclops knows when coldness is needed.",
			GENERIC = "It has a satisfying snap.",
			PICKED = "I could stomp on it.",
			DISEASED = "Rrrg. Smash it!",
			DISEASING = "Rrr... I'll stomp on it before it gets worse.",
		},
   		SCARECROW = 
   		{
			GENERIC = "It's satisfying to destroy.",
			BURNING = "It doesn't make a sound...",
			BURNT = "My claws will be ashen now...",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "A Deerclops knows just what to sculpt...",
			BLOCK = "I meant sculpting by smashing it...",
			SCULPTURE = "I'll destroy, not create.",
			BURNT = "I prefer to sculpt with my claws...",
   		},
        SCULPTURE_KNIGHTHEAD = "It has already been left in ruin...",
		SCULPTURE_KNIGHTBODY = 
		{
			COVERED = "I'm going to crush it.",
			UNCOVERED = "A Deerclops does what we do best.",
			FINISHED = "I would have preferred to keep clawing at it.",
			READY = "I should have broken it...",
		},
        SCULPTURE_BISHOPHEAD = "I like to destroy a complete structure...",
		SCULPTURE_BISHOPBODY = 
		{
			COVERED = "I'll claw at it.",
			UNCOVERED = "A Deerclops does what we do best.",
			FINISHED = "I'd rather destroy.",
			READY = "I should have broken it...",
		},
        SCULPTURE_ROOKNOSE = "It's not as fun to destroy leftovers.",
		SCULPTURE_ROOKBODY = 
		{
			COVERED = "It might take a while to crush.",
			UNCOVERED = "A Deerclops does what we do best.",
			FINISHED = "Not the most satisfying finishhh...",
			READY = "I should have broken it...",
		},
        GARGOYLE_HOUND = "It cracks easier than one with fleshhh.",
        GARGOYLE_WEREPIG = "I get great satisfaction from crushing you...",
		SEEDS = "Crunchy leftovers of destruction.",
		SEEDS_COOKED = "Like eating warm ice.",
		SEWING_KIT = "Repairs what I shred...",
		SEWING_TAPE = "Repairs what I tear...",
		SHOVEL = "The ground isn't safe from destruction.",
		SILK = "It tears too easily...",
		SKELETON = "What's left unstomped after a Deerclops' wake.",
		SCORCHED_SKELETON = "Deerclops only leave frozen ones.",
        SKELETON_NOTPLAYER = "A Deerclops must have tread here long ago...",
		SKULLCHEST = "Destroyable.",
		SMALLBIRD =
		{
			GENERIC = "We meet eye-to-eye.",
			HUNGRY = "Does it hunger for chaos?",
			STARVING = "I'm starved for destruction, myself.",
			SLEEPING = "I couldn't crush one with an eye like mine...",
		},
		SMALLMEAT = "I tear at it with my teethhh...",
		SMALLMEAT_DRIED = "Crunch...",
		SPAT = "You make for a crusty crush.",
		SPEAR = "It's not as cold as my claws...",
		SPEAR_WATHGRITHR = "A Deerclops can resist your attempts at destruction.",
		WATHGRITHRHAT = "I can hear it cracking already.",
		SPIDER =
		{
			DEAD = "Squashed...",
			GENERIC = "All those eyes makes me want to destroy it.",
			SLEEPING = "I'll squash you for having that many eyes...",
		},
		SPIDERDEN = "I love to destroy dens.",
		SPIDEREGGSACK = "I could place few smashing satisfaction.",
		SPIDERGLAND = "It sticks in your fur.",
		SPIDERHAT = "A trophy from a prized squash.",
		SPIDERQUEEN = "Deerclops know how to overthrow.",
		SPIDER_WARRIOR =
		{
			DEAD = "Squashed!",
			GENERIC = "My hooves hit harder.",
			SLEEPING = "I'll squash it now.",
		},
		SPOILED_FOOD = "Rrrrgk...",
        STAGEHAND =
        {
			AWAKE = "You tempt my claws too muchhh...",
			HIDING = "No matter how much I smash, it won't fall...",
        },
        STATUE_MARBLE = 
        {
            GENERIC = "I love to knock it down with my claws.",
            TYPE1 = "It's more satisfying if I'm the one to claw off its head.",
            TYPE2 = "Deerclops love to take down statues.",
            TYPE3 = "It splashes ans smashes.", --bird bath type statue
        },
		STATUEHARP = "I could have clawed your head off myself...",
		STATUEMAXWELL = "I'll happily deface it.",
		STEELWOOL = "It's not as cold as my fur, but it scratches like my claws.",
		STINGER = "Am I missing a finger...?",
		STRAWHAT = "My antlers shred it to pieces.",
		STUFFEDEGGPLANT = "All the more satisfying to squashhh.",
		SWEATERVEST = "My fur sticks out.",
		REFLECTIVEVEST = "It's eye-catching...",
		HAWAIIANSHIRT = "I don't take winter off...",
		TAFFY = "It ravages my teethhh",
		TALLBIRD = "We don't see eye-to-eye...",
		TALLBIRDEGG = "We both have one eye, but I don't hatch eggs. I crush them.",
		TALLBIRDEGG_COOKED = "I like to crush it with the shell.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "All one-eyed creatures should love the cold.",
			GENERIC = "I don't hatch. I destroy.",
			HOT = "No one-eyed being likes the heat.",
			LONG = "I could wait, or I could crushhh.",
			SHORT = "It's all the fresher to crunchhh.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "It's satisfying to crunch.",
			PICKED = "I crush nests. It's what I do.",
		},
		TEENBIRD =
		{
			GENERIC = "I don't see its antlers growing in.",
			HUNGRY = "Don't look to me for food...",
			STARVING = "I'm starved for chaos too...",
			SLEEPING = "It might rest better if it grew antlers.",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "To destroy structures here... or there.",
			GENERIC = "To destroy structures here... or there?",
			LOCKED = "It's only missing my claws crushing it.",
			PARTIAL = "It's missing my claws crushing it...",
		},
		TELEPORTATO_BOX = "Simple structure to smash.",
		TELEPORTATO_CRANK = "I only get cranky when I'm structure-starved.",
		TELEPORTATO_POTATO = "I have to smash it into the ground.",
		TELEPORTATO_RING = "I bend it and it'll snap in two.",
		TELESTAFF = "I have structures to destroy!",
		TENT = 
		{
			GENERIC = "I want to smash it more than to sleep in it.",
			BURNT = "I prefer the cold air anyway.",
		},
		SIESTAHUT = 
		{
			GENERIC = "My ideal form of relaxation is destruction.",
			BURNT = "I prefer chillier air.",
		},
		TENTACLE = "I'll have to stomp on it before it emerges.",
		TENTACLESPIKE = "I could destroy with more...",
		TENTACLESPOTS = "It's cold to my touch.",
		TENTACLE_PILLAR = "It freezes when my claws touch.",
        TENTACLE_PILLAR_HOLE = "Rrrrr... rrr...",
		TENTACLE_PILLAR_ARM = "Stomp. Stomp.",
		TENTACLE_GARDEN = "Stomp. Stomp. Stomp!",
		TOPHAT = "Smashing!",
		TORCH = "I can't take my pupil off it...",
		TRANSISTOR = "I just want to crush it in my claws.",
		TRAP = "Too small for a Deerclops.",
		TRAP_TEETH = "A Deerclops shouldn't stomp it...",
		TRAP_TEETH_MAXWELL = "I can't stomp everything...",
		TREASURECHEST = 
		{
			GENERIC = "Rrr... How satisfying it is to crush.",
			BURNT = "I like to use my claws, not light.",
            UPGRADED_STACKSIZE = "I thought destroying these couldn't get any better!",
		},
		TREASURECHEST_TRAP = "Rrr... How satisfying it is to crush!",
        CHESTUPGRADE_STACKSIZE = "My claws are getting eager already.", -- Describes the kit upgrade item.
		COLLAPSEDCHEST = "I'm as happy as a Deerclops can be!",
		SACRED_CHEST = 
		{
			GENERIC = "It hums like a Deerclops at night.",
			LOCKED = "I'll crush it, you cannot be locked from a hoof!",
		},
		TREECLUMP = "I'll smash my way through anything.",

		TRINKET_1 = "It's easier to destroy separate.", --Melted Marbles
		TRINKET_2 = "I'll crush it under my hoof.", --Fake Kazoo
		TRINKET_3 = "It keeps my claws busy.", --Gord's Knot
		TRINKET_4 = "It's not a goblin...", --Gnome
		TRINKET_5 = "I'll stomp it.", --Toy Rocketship
		TRINKET_6 = "It falls out of structures I destroy.", --Frazzled Wires
		TRINKET_7 = "It's easy to crumble.", --Ball and Cup
		TRINKET_8 = "It doesn't squish easy...", --Rubber Bung
		TRINKET_9 = "Everything is mismatched to my eye.", --Mismatched Buttons
		TRINKET_10 = "I'll crush it with my own.", --Dentures
		TRINKET_11 = "You are not immune to my hooves.", --Lying Robot
		TRINKET_12 = "My claws make it flake off with ice...", --Dessicated Tentacle
		TRINKET_13 = "It's not an elf...", --Gnomette
		TRINKET_14 = "I'll finish the cracking job.", --Leaky Teacup
		TRINKET_15 = "A Deerclops isn't a fawn.", --Pawn
		TRINKET_16 = "A Deerclops isn't a fawn.", --Pawn
		TRINKET_17 = "I can bend it further.", --Bent Spork
		TRINKET_18 = "Crush it, to make sure.", --Trojan Horse
		TRINKET_19 = "Nothing needs to be balanced when I crush it.", --Unbalanced Top
		TRINKET_20 = "I don't like to be clawed back.", --Backscratcher
		TRINKET_21 = "Just what I like to beat.", --Egg Beater
		TRINKET_22 = "I'll fray it further.", --Frayed Yarn
		TRINKET_23 = "It's not for hooves...", --Shoehorn
		TRINKET_24 = "I'll get extra luck when I destroy it.", --Lucky Cat Jar
		TRINKET_25 = "Like a tree knocked over.", --Air Unfreshener
		TRINKET_26 = "I've squashed worse.", --Potato Cup
		TRINKET_27 = "It's easy to snap when cold.", --Coat Hanger
		TRINKET_28 = "I stomp on your leftovers.", --Rook
        TRINKET_29 = "I stomp on your leftovers.", --Rook
        TRINKET_30 = "I stomp on your leftovers.", --Knight
        TRINKET_31 = "I stomp on your leftovers.", --Knight
        TRINKET_32 = "It makes crystals when I claw it.", --Cubic Zirconia Ball
        TRINKET_33 = "I'll wear no such ring.", --Spider Ring
        TRINKET_34 = "I only need my own frigid paws.", --Monkey Paw
        TRINKET_35 = "It crumbles.", --Empty Elixir
        TRINKET_36 = "I'll crush it with my own...", --Faux fangs
        TRINKET_37 = "It's no fun to crush leftovers.", --Broken Stake
        TRINKET_38 = "It doesn't work...", -- Binoculars Griftlands trinket
        TRINKET_39 = "My claws poke through.", -- Lone Glove Griftlands trinket
        TRINKET_40 = "Scales to scratch.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "I like to destroy it fresh.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "Crushable.", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "Smashable.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "It's already broken...", -- Broken Terrarium ONI trinket
        TRINKET_45 = "Crush it.", -- Odd Radio ONI trinket
        TRINKET_46 = "Smash it.", -- Hairdryer ONI trinket

	    -- The numbers align with the trinket numbers above.
        LOST_TOY_1  = "Rrrrr. My hooves go right through it. Can't smash...",
        LOST_TOY_2  = "Rrrrr. My hooves go right through it. Can't smash...",
        LOST_TOY_7  = "Rrrrr. My hooves go right through it. Can't smash...",
        LOST_TOY_10 = "Rrrrr. My hooves go right through it. Can't smash...",
        LOST_TOY_11 = "Rrrrr. My hooves go right through it. Can't smash...",
        LOST_TOY_14 = "Rrrrr. My hooves go right through it. Can't smash...",
        LOST_TOY_18 = "Rrrrr. My hooves go right through it. Can't smash...",
        LOST_TOY_19 = "Rrrrr. My hooves go right through it. Can't smash...",
        LOST_TOY_42 = "Rrrrr. My hooves go right through it. Can't smash...",
        LOST_TOY_43 = "Rrrrr. My hooves go right through it. Can't smash...",

        HALLOWEENCANDY_1 = "For my teeth to crush.",
        HALLOWEENCANDY_2 = "I crush with my claws. But for this I'll use my teethhh.",
        HALLOWEENCANDY_3 = "Crush corn!",
        HALLOWEENCANDY_4 = "Gooier than their own fleshhh.",
        HALLOWEENCANDY_5 = "A Deerclops tooth can crack through anything.",
        HALLOWEENCANDY_6 = "Not sure if to crush...",
        HALLOWEENCANDY_7 = "I like to crush structures in my teeth.",
        HALLOWEENCANDY_8 = "I thought it was an eye.",
        HALLOWEENCANDY_9 = "It's fun to squash.",
        HALLOWEENCANDY_10 = "I hope it doesn't lick back...",
        HALLOWEENCANDY_11 = "Just as fun to squash as the ones with fleshhh.",
        HALLOWEENCANDY_12 = "Squashable like any bug.", --ONI meal lice candy
        HALLOWEENCANDY_13 = "No structure a Deerclops can't crushhh.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "I wish it were cold.", --Hot Lava pepper candy
        CANDYBAG = "It makes rubble taste sweeter than usual.",

		HALLOWEEN_ORNAMENT_1 = "I'll just stomp on it...",
		HALLOWEEN_ORNAMENT_2 = "I'll just stomp on it...",
		HALLOWEEN_ORNAMENT_3 = "I'll just stomp on it...", 
		HALLOWEEN_ORNAMENT_4 = "I'll just stomp on it...",
		HALLOWEEN_ORNAMENT_5 = "I'll just stomp on it...",
		HALLOWEEN_ORNAMENT_6 = "I'll just stomp on it...", 

		HALLOWEENPOTION_DRINKS_WEAK = "It doesn't have enough ice.",
		HALLOWEENPOTION_DRINKS_POTENT = "Not as tasteful as destruction.",
        HALLOWEENPOTION_BRAVERY = "It gives my fur a new coating.",
		HALLOWEENPOTION_MOON = "I hope it creates a crunchhh.",
		HALLOWEENPOTION_FIRE_FX = "I could make ice in a glass...", 
		MADSCIENCE_LAB = "I'll be mad too if I can't destroy it.",
		LIVINGTREE_ROOT = "I'll smash it to get it.", 
		LIVINGTREE_SAPLING = "I'll trample it when it's more worth doing...",

        DRAGONHEADHAT = "My eye will always be front and center.",
        DRAGONBODYHAT = "You shouldn't try to hide an eye like mine.",
        DRAGONTAILHAT = "Deerclops don't need more than a little tail.",
        PERDSHRINE =
        {
            GENERIC = "I live to destroy.",
            EMPTY = "It needs a bush. I need to destroy.",
            BURNT = "Rrrr...",
        },
        REDLANTERN = "It's fun to crush with my claws...",
        LUCKY_GOLDNUGGET = "Destruction doesn't need luck...",
        FIRECRACKERS = "Satisfying crackle and pops.",
        PERDFAN = "A little pocket breeze.",
        REDPOUCH = "Crack it open!",
        WARGSHRINE = 
        {
            GENERIC = "I only want to crush.",
            EMPTY = "It wants light. I want havoc.",
            BURNT = "Rrrr...",
        },
        CLAYWARG = 
        {
            GENERIC = "You're begging to be crumpled.",
            STATUE = "Too easy to crash.",
        },
        CLAYHOUND = 
        {
            GENERIC = "I'll have you crushed to pieces.",
            STATUE = "I should crush it for staring.",
        },
        HOUNDWHISTLE = "I hate its screech in my ears!",
        CHESSPIECE_CLAYHOUND = "It's more fun to destroy the real ones.",
        CHESSPIECE_CLAYWARG = "I'll smash this too.",

		PIGSHRINE =
		{
            GENERIC = "Let me smash it.",
            EMPTY = "I need meat too...",
            BURNT = "Rrrr...",
		},
		PIG_TOKEN = "It won't fit around my fur.",
		PIG_COIN = "A glitter in my eye.",
		YOTP_FOOD1 = "I enjoy crushing it with my maw.",
		YOTP_FOOD2 = "I stomp on it with my hooves.",
		YOTP_FOOD3 = "Easy twigs to snap.",

		PIGELITE1 = "I was made to destroy!", --BLUE
		PIGELITE2 = "I have crushed worse.", --RED
		PIGELITE3 = "Deerclops have ravaged worse than your base.", --WHITE
		PIGELITE4 = "You have seen my eye. Have you seen my claws?", --GREEN
		PIGELITEFIGHTER1 = "I was made to destroy!", --BLUE
		PIGELITEFIGHTER2 = "I have crushed worse.", --RED
		PIGELITEFIGHTER3 = "Deerclops have ravaged worse.", --WHITE
		PIGELITEFIGHTER4 = "You have seen my eye. Have you seen my claws?", --GREEN

		CARRAT_GHOSTRACER = "My eye sees through you...",
        YOTC_CARRAT_RACE_START = "I might start destroying it.",
        YOTC_CARRAT_RACE_CHECKPOINT = "It's so easy to destroy and confuse.",
        YOTC_CARRAT_RACE_FINISH =
        {
            GENERIC = "It's not finished until it's in ruin.",
            BURNT = "I could have better shown off how to finsih it up...",
            I_WON = "Eye won!",
            SOMEONE_ELSE_WON = "RRrrrr... {winner}.",
        },
		YOTC_CARRAT_RACE_START_ITEM = "The start of destruction.",
        YOTC_CARRAT_RACE_CHECKPOINT_ITEM = "My eye has already checked it out.",
		YOTC_CARRAT_RACE_FINISH_ITEM = "It's not an edn without chaos.",
		YOTC_SEEDPACKET = "Easy to crush within my claws.",
		YOTC_SEEDPACKET_RARE = "Easy to crush within my claws.",
		MINIBOATLANTERN = "It keeps catching my eye...",
        YOTC_CARRATSHRINE =
        {
            GENERIC = "I could destroy it.",
            EMPTY = "It needs a carrot. I need to destroy.",
            BURNT = "Rrrr...",
        },
        YOTC_CARRAT_GYM_DIRECTION = 
        {
            GENERIC = "I prefer destruction over direction.",
            RAT = "Are you ready to wreak havoc?",
            BURNT = "A Deerclops should have been the one to destroy it.",
        },
        YOTC_CARRAT_GYM_SPEED = 
        {
            GENERIC = "I'll see how fast my claws can destroy it too.",
            RAT = "My eye is watching, waiting...",
            BURNT = "A Deerclops should have been the one to destroy it.",
        },
        YOTC_CARRAT_GYM_REACTION = 
        {
            GENERIC = "How fast will my eye catch it?",
            RAT = "My eye is watching you...",
            BURNT = "A Deerclops should have been the one to destroy it.",
        },
        YOTC_CARRAT_GYM_STAMINA = 
        {
            GENERIC = "I'll show you the satmina of a Deerclops' claws.",
            RAT = "Now try it while treading through heavy snow.",
            BURNT = "A Deerclops should have been the one to destroy it.",
        }, 
        YOTC_CARRAT_GYM_DIRECTION_ITEM = "I wish to destroy it, not put it up.",
        YOTC_CARRAT_GYM_SPEED_ITEM = "I wish to destroy it, not put it up.",
        YOTC_CARRAT_GYM_STAMINA_ITEM = "I wish to destroy it, not put it up.",
        YOTC_CARRAT_GYM_REACTION_ITEM = "I wish to destroy it, not put it up.",
        YOTC_CARRAT_SCALE_ITEM = "I wish to destroy it, not put it up.",           
        YOTC_CARRAT_SCALE = 
        {
            GENERIC = "My claws will show it what to weighhh.",
            CARRAT = "You need more claws and ice, less eyes.",
            CARRAT_GOOD = "Rrr... Ready for ruin.",
            BURNT = "I destroy what's already built.",
        },
        YOTB_BEEFALOSHRINE =
        {
            GENERIC = "I should destroy it.",
            EMPTY = "It needs hair. I need to destroy.",
            BURNT = "Rrrr...",
        },

        BEEFALO_GROOMER =
        {
            GENERIC = "I have to destroy it before they style my horns...",
            OCCUPIED = "Let me give you a nice coating of ice...",
            BURNT = "Being cold is much better than being hot.",
        },
        BEEFALO_GROOMER_ITEM = "I wish to destroy it, not put it up.",

        YOTR_RABBITSHRINE =
        {
            GENERIC = "I should destroy it.",
            EMPTY = "It needs food. I need to destroy.",
            BURNT = "Rrrr...",
        },

        NIGHTCAPHAT = "My antlers will wreak havoc upon it.",

        YOTR_FOOD1 = "I'll destroy the plate if no one else will.",
        YOTR_FOOD2 = "We Deerclops look the same, on the inside.",
        YOTR_FOOD3 = "It's looking back at me.",
        YOTR_FOOD4 = "One by one, led to destruction by my maw.",

        YOTR_TOKEN = "Claw-to-claw. You cannot beat me.",

        COZY_BUNNYMAN = "It wouldn't feel me tearing at it...",

        HANDPILLOW_BEEFALOWOOL = "Deerclops don't need its warmth.",
        HANDPILLOW_KELP = "I keep freezing to it. Rrr.",
        HANDPILLOW_PETALS = "How can I destroy with this?",
        HANDPILLOW_STEELWOOL = "I hope it destroys dreams, too.",

        BODYPILLOW_BEEFALOWOOL = "Deerclops don't need its warmth.",
        BODYPILLOW_KELP = "I keep freezing to it. Rrr.",
        BODYPILLOW_PETALS = "How can I destroy with this?",
        BODYPILLOW_STEELWOOL = "I hope it destroys dreams, too.",

		BISHOP_CHARGE_HIT = "RRRrr!",
		TRUNKVEST_SUMMER = "It hides the frigid fur.",
		TRUNKVEST_WINTER = "My fur was enough.",
		TRUNK_COOKED = "Crunchhh.",
		TRUNK_SUMMER = "My nose might be crisper.",
		TRUNK_WINTER = "Winter treats.",
		TUMBLEWEED = "My hooves want to trample it.",
		TURKEYDINNER = "Satisfaction in crushing it with my teethhh.",
		TWIGS = "The perfect snap.",
		UMBRELLA = "Ice won't collect on my fur as muchhh.",
		GRASS_UMBRELLA = "Ice won't collect on my fur as muchhh...",
		UNIMPLEMENTED = "Not ready to be destroyed.",
		WAFFLES = "I'll wreak havoc... on these.",
		WALL_HAY = 
		{	
			GENERIC = "I live to destroy!",
			BURNT = "Not by my own cold claws.",
		},
		WALL_HAY_ITEM = "Place it already, my claws itch!",
		WALL_STONE = "A Deerclops' favorite structure to smash!",
		WALL_STONE_ITEM = "My claws shake in anticipation!",
		WALL_RUINS = "What a treasure it is to smashhh!",
		WALL_RUINS_ITEM = "My claws are already foaming with ice!",
		WALL_WOOD = 
		{
			GENERIC = "I live to ravage it.",
			BURNT = "I prefer to crush with ice...",
		},
		WALL_WOOD_ITEM = "I'm aching to cause havoc!",
		WALL_MOONROCK = "It glitters with my destructive ice!",
		WALL_MOONROCK_ITEM = "I can't wait much longer...",
		WALL_DREADSTONE = "We Deerclops dream of destroying such sturdy walls!",
		WALL_DREADSTONE_ITEM = "Up, up! This shall be the destruction highlight of the season!",
        WALL_SCRAP = "Destroying it is only showing it mercy...",
        WALL_SCRAP_ITEM = "I hate it when they recycle...",
		FENCE = "It's a pleasure to kick it over!",
        FENCE_ITEM = "It smashes better when placed.",
        FENCE_GATE = "How satisfying it is to crush!",
        FENCE_GATE_ITEM = "Crush, crush, crush! Trample!",
		WALRUS = "Wouldn't you like to be destroyed like your base?",
		WALRUSHAT = "Does it make my eye look big...?",
		WALRUS_CAMP =
		{
			EMPTY = "I can only destroy a base when it's made...",
			GENERIC = "All the better to destroy!",
		},
		WALRUS_TUSK = "Never mess with a Deerclops... Or do!",
		WARDROBE = 
		{
			GENERIC = "I live to smash structures like it.",
            BURNING = "My claws aren't cold enough.",
			BURNT = "I would have wanted to destroy it without fire.",
		},
		WARG = "Have you felt the touch of winter?",
		WARGLET = "Have you felt the touch of winter?",
		WASPHIVE = "My hooves might get a stung stomp in.",
		WATERBALLOON = "It's more of an ice balloon when it hits me.",
		WATERMELON = "It's fun to squeeze and crack between my hooves!",
		WATERMELON_COOKED = "My claws wouldn't cook it.",
		WATERMELONHAT = "It freezes to my head...",
		WAXWELLJOURNAL = "I'll tear and shred every last page.",
		WETGOOP = "It becomes frozen goop in my claws.",
        WHIP = "I hate its crack in my ears.",
		WINTERHAT = "I'll wear a bit of home on my head.",
		WINTEROMETER = 
		{
			GENERIC = "A Deerclops doesn't need a structure to tell it's time.",
			BURNT = "Not winter. No structures allowed.",
		},

        WINTER_TREE =
        {
            BURNT = "I'll still claw at it...",
            BURNING = "I would have used ice.",
            CANDECORATE = "For me...?",
            YOUNG = "It's more fun to destroy fully grown.",
        },
		WINTER_TREESTAND = 
		{
			GENERIC = "My favorite festivity. Destruction!",
            BURNT = "I'll still claw at it...",
		},
        WINTER_ORNAMENT = "Small and simply smashable.",
        WINTER_ORNAMENTLIGHT = "I don't like lights in my winter nights.",
        WINTER_ORNAMENTBOSS = "Rrrr...",
		WINTER_ORNAMENTFORGE = "It's good to crush between teethhh.",
		WINTER_ORNAMENTGORGE = "It's good to crush between teethhh.",

        WINTER_FOOD1 = "It crumbles in my fur.", --gingerbread cookie
        WINTER_FOOD2 = "Snowflakes leave less of a mess...", --sugar cookie
        WINTER_FOOD3 = "They keep putting these all over my antlers...", --candy cane
        WINTER_FOOD4 = "Not even my teeth can crush it.", --fruitcake
        WINTER_FOOD5 = "It doesn't taste as good as chaos.", --yule log cake
        WINTER_FOOD6 = "It doesn't taste as good as destruction.", --plum pudding
        WINTER_FOOD7 = "I'll have to crush it before it turns to ice.", --apple cider
        WINTER_FOOD8 = "I turn it cold...", --hot cocoa
        WINTER_FOOD9 = "It leaves its mark on my fur.", --eggnog

		--Dishes are not final - let these be for now
		WINTERSFEASTOVEN =
		{
			GENERIC = "I'll happily crush and cool it off.",
			COOKING = "My claws would freeze the food inside.",
			ALMOST_DONE_COOKING = "I'll crush it before it's done...",
			DISH_READY = "My maw and claw get to feast!",
		},
		BERRYSAUCE = "It doesn't freeze as fast as my other meals...",
		BIBINGKA = "Squishable.",
		CABBAGEROLLS = "To be stomped by my maw.",
		FESTIVEFISH = "I enjoy eating in winter the most.",
		GRAVY = "Does it not turn to ice for the rest of you?",
		LATKES = "My teeth will crush it.",
		LUTEFISK = "Crunch.",
		MULLEDDRINK = "I'll drown my fur in it.",
		PANETTONE = "I love to smush it back down.",
		PAVLOVA = "I must pav it.",
		PICKLEDHERRING = "To crush.",
		POLISHCOOKIE = "To smash.",
		PUMPKINPIE = "Cooold...",
		ROASTTURKEY = "My maw hungers like claws for destruction.",
		STUFFING = "I'll do nothing but keep stuffing...",
		SWEETPOTATO = "My teeth enjoy the destruction.",
		TAMALES = "My maw enjoys the destruction.",
		TOURTIERE = "Nearly as satisfying as if eating a structure...",

		TABLE_WINTERS_FEAST = 
		{
			GENERIC = "I will topple it.",
			HAS_FOOD = "I feast for destruction!",
			WRONG_TYPE = "Let me destroy that for you.",
			BURNT = "I prefer ice...",
		},

		GINGERBREADWARG = "You crumble perfectly.", 
		GINGERBREADHOUSE = "I'll destroy it and eat the remains...", 
		GINGERBREADPIG = "I won't watch out for my hooves.",
		CRUMBS = "Everything crumbles before a Deerclops.",
		WINTERSFEASTFUEL = "Deerclops are made of this and destruction.",

        KLAUS = "I think we could get along.",
        KLAUS_SACK = "I wouldn't lose an antler over it...",
		KLAUSSACKKEY = "We won't be needing my own.",
		WORMHOLE =
		{
			GENERIC = "What might I destroy this way?",
			OPEN = "I'll hop into my own maw.",
		},
		WORMHOLE_LIMITED = "Rrrkg.",
		ACCOMPLISHMENT_SHRINE = "I'll feel more satisfaction from destroying it.",        
		LIVINGTREE = "I could claw it down.",
		ICESTAFF = "I'll have more reach!",
		REVIVER = "It's not cold enough to be mine...",
		SHADOWHEART = "Is it made of ice, too?",
        ATRIUM_RUBBLE = 
        {
			LINE_1 = "I'd be starved too if I had that many remaining buildings.",
			LINE_2 = "Scratched.",
			LINE_3 = "A Deerclops must be approaching in winter.",
			LINE_4 = "Chaos is seen!",
			LINE_5 = "So many structures to destroy...",
		},
        ATRIUM_STATUE = "I'll destroy any structure.",
        ATRIUM_LIGHT = 
        {
			ON = "My eye should be the only unsettling thing here.",
			OFF = "The eye is closed.",
		},
        ATRIUM_GATE =
        {
			ON = "Working. All the better to crush.",
			OFF = "I'll have to take matters into my own claws...",
			CHARGING = "Rrrrr....",
			DESTABILIZING = "It might destroy itself before I get to it.",
			COOLDOWN = "I am an expert at cooling down...",
        },
        ATRIUM_KEY = "Old. Breakable.",
		LIFEINJECTOR = "A cold taste of claw.",
		SKELETON_PLAYER =
		{
			MALE = "%s has fallen like a structure. Clawed by %s...",
			FEMALE = "%s has fallen like a structure. Clawed by %s...",
			ROBOT = "%s has fallen like a structure. Clawed by %s...",
			DEFAULT = "%s has fallen like a structure. Its claws were %s.",
		},
        HUMANMEAT = "All fallen beasts taste the same to a Deerclops.",
        HUMANMEAT_COOKED = "Still crisp from fear...",
        HUMANMEAT_DRIED = "Still dry from fear...",
		ROCK_MOON = "Wreckage...",
		MOONROCKNUGGET = "Wreckage...",
		MOONROCKCRATER = "I have left my mark.",
		MOONROCKSEED = "I want to crush it.",

        REDMOONEYE = "My eye is enough.",
        PURPLEMOONEYE = "My eye is already watching...",
        GREENMOONEYE = "You cannot escape my eye.",
        ORANGEMOONEYE = "My own eye is all seeing.",
        YELLOWMOONEYE = "My eye is less crushable.",
        BLUEMOONEYE = "A cold and all-seeing eye. But this isn't about me.",

        --Arena Event
        LAVAARENA_BOARLORD = "You don't need two eyes to watch above.",
        BOARRIOR = "You will fall harder than any structures.",
        BOARON = "I have crushed much larger than you...",
        PEGHOOK = "It's another ball of furious fur.",
        TRAILS = "Even my hooves in snow cannot out run it.",
        TURTILLUS = "My claws were made to wreak havoc on your armor.",
        SNAPPER = "Rrrrrrr...",
		RHINODRILL = "My claws will drill farther than any nose.",
		BEETLETAUR = "My claws will take a crack at it.",

        LAVAARENA_PORTAL = 
        {
            ON = "I'll have to destroy it another winter.",
            GENERIC = "Cracks easy.",
        },
        LAVAARENA_KEYHOLE = "It won't be satisfied with my claws.",
		LAVAARENA_KEYHOLE_FULL = "My hooves will tread on...",
        LAVAARENA_BATTLESTANDARD = "Destroy!",
        LAVAARENA_SPAWNER = "More for me to crush.",

        HEALINGSTAFF = "It doesn't satisfy me like destroying does...",
        FIREBALLSTAFF = "I desire one for icy chaos.",
        HAMMER_MJOLNIR = "Deerclops do like to smashhh.",
        SPEAR_GUNGNIR = "I like my claws.",
        BLOWDART_LAVA = "I only spit ice...",
        BLOWDART_LAVA2 = "It might come out as water...",
        LAVAARENA_LUCY = "Do you like to cause havoc...?",
        WEBBER_SPIDER_MINION = "Stompable.",
        BOOK_FOSSIL = "Living structures for me to crushhh!",
		LAVAARENA_BERNIE = "I too, dance to ruin.",
		SPEAR_LANCE = "Now is my chance to lance...",
		BOOK_ELEMENTAL = "Does it build anything else?",
		LAVAARENA_ELEMENTAL = "I could use new things to crush.",

   		LAVAARENA_ARMORLIGHT = "Light as ice.",
		LAVAARENA_ARMORLIGHTSPEED = "Not as fast as my hooves through snow.",
		LAVAARENA_ARMORMEDIUM = "Brittle as my fur.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "Brittle as my fur.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "Deerclops know a thing or two about cooling down.",
		LAVAARENA_ARMORHEAVY = "One less Deerclops destroyed.",
		LAVAARENA_ARMOREXTRAHEAVY = "An encasing of ice around the fur.",

		LAVAARENA_FEATHERCROWNHAT = "My hooves will move as if they were slick with ice.",
        LAVAARENA_HEALINGFLOWERHAT = "It won't warm my heart enoughhh.",
        LAVAARENA_LIGHTDAMAGERHAT = "I will destroy even more.",
        LAVAARENA_STRONGDAMAGERHAT = "Rrrr... Prepare for destruction.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "It my freeze to my fur...",
        LAVAARENA_EYECIRCLETHAT = "My own eye sees enoughhh...",
        LAVAARENA_RECHARGERHAT = "As if Deerclops didn't cool down things enoughhh.",
        LAVAARENA_HEALINGGARLANDHAT = "My antlers won't break as easily...",
        LAVAARENA_CROWNDAMAGERHAT = "I wish to destroy more.",

		LAVAARENA_ARMOR_HP = "Nothing will destroy me.",
		LAVAARENA_FIREBOMB = "I am merely a bomb made of ice.",
		LAVAARENA_HEAVYBLADE = "To cause irreversible destruction.",

        --Quagmire
        QUAGMIRE_ALTAR = 
        {
        	GENERIC = "It won't be satisfied by ruin like me.",
        	FULL = "A Deerclops would be happy with rubble.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "My claw itches to crush it.",
		QUAGMIRE_PARK_FOUNTAIN = "I'll turn it to rubble.",
		
        QUAGMIRE_HOE = "To tread the ground without hooves.",
        
        QUAGMIRE_TURNIP = "My teeth want to gnash it.",
        QUAGMIRE_TURNIP_COOKED = "Crunchable.",
        QUAGMIRE_TURNIP_SEEDS = "Stomp it into the ground.",
        
        QUAGMIRE_GARLIC = "It tickles the nose like falling snow...",
        QUAGMIRE_GARLIC_COOKED = "Crisp.",
        QUAGMIRE_GARLIC_SEEDS = "Stomp it into the ground.",
        
        QUAGMIRE_ONION = "I want to crunch into it.",
        QUAGMIRE_ONION_COOKED = "Layered like a structure to crushhh.",
        QUAGMIRE_ONION_SEEDS = "Stomp it into the ground.",
        
        QUAGMIRE_POTATO = "I'll plunge my teeth into it.",
        QUAGMIRE_POTATO_COOKED = "It's best frozen.",
        QUAGMIRE_POTATO_SEEDS = "Stomp it into the ground.",
        
        QUAGMIRE_TOMATO = "It has a satisfying squishhh.",
        QUAGMIRE_TOMATO_COOKED = "I enjoy its blood.",
        QUAGMIRE_TOMATO_SEEDS = "Stomp it into the ground.",
        
        QUAGMIRE_FLOUR = "Covered in a rainless snow.",
        QUAGMIRE_WHEAT = "Crisp enough to crush.",
        QUAGMIRE_WHEAT_SEEDS = "Stomp it into the ground.",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "Stomp it into the ground.",
        
        QUAGMIRE_ROTTEN_CROP = "Not stomped soon enough.",
        
		QUAGMIRE_SALMON = "My eye stares deeply into it.",
		QUAGMIRE_SALMON_COOKED = "Everyone stares when I put it in my maw.",
		QUAGMIRE_CRABMEAT = "A treat. I cannot spoil it.",
		QUAGMIRE_CRABMEAT_COOKED = "Crispy...",
		QUAGMIRE_SUGARWOODTREE = 
		{
			GENERIC = "I'll claw where no Deerclops has clawed before!",
			STUMP = "Clawed.",
			TAPPED_EMPTY = "Fill it with ice.",
			TAPPED_READY = "My claws would get gooey.",
			TAPPED_BUGS = "It crunches more when it falls.",
			WOUNDED = "Deerclops know what to do to wounded trees.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB = 
		{
			GENERIC = "I could claw at it.",
			PICKED = "I have ravaged through here.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "I will crush it into powder.",
		QUAGMIRE_SPOTSPICE_GROUND = "Deerclops are good at crushing things to grain.",
		QUAGMIRE_SAPBUCKET = "Empty as my claws...",
		QUAGMIRE_SAP = "Good to thrash.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "My eye sees that it's finished...",
			GENERIC = "My claws are itching... it's not the salt.",
		},
		
		QUAGMIRE_POND_SALT = "It gazes back with a salty look...",
		QUAGMIRE_SALT_RACK_ITEM = "I have to destroy it...",

		QUAGMIRE_SAFE = 
		{
			GENERIC = "Cracked.",
			LOCKED = "I'll crack it open.",
		},

		QUAGMIRE_KEY = "My claws are the only key a Deerclops needs...",
		QUAGMIRE_KEY_PARK = "Deerclops don't need keys to get into where they don't belong.",
        QUAGMIRE_PORTAL_KEY = "I can't destroy it...",
	
		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "My hooves will stomp it.",
			PICKED = "My ruin will not end.",
		},
		QUAGMIRE_MUSHROOMS = "I have an urge to squeeze.",
        QUAGMIRE_MEALINGSTONE = "Deerclops know a thing or two about mealing.",
		QUAGMIRE_PEBBLECRAB = "My hooves will reduce it to pebbles.",

		QUAGMIRE_RUBBLE_CARRIAGE = "What a Deerclops would leave in its wake.",
        QUAGMIRE_RUBBLE_CLOCK = "What a Deerclops would leave in its wake.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "What a Deerclops would leave in its wake.",
        QUAGMIRE_RUBBLE_PUBDOOR = "What a Deerclops would leave in its wake.",
        QUAGMIRE_RUBBLE_ROOF = "What a Deerclops would leave in its wake.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "What a Deerclops would leave in its wake.",
        QUAGMIRE_RUBBLE_BIKE = "What a Deerclops would leave in its wake.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "A Deerclops had its fun.",
            "I must have missed the Deerclops.",
            "Rrr... I wasn't the first to get to it.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "What a Deerclops would leave in its wake.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "What a Deerclops would leave in its wake.",
        QUAGMIRE_MERMHOUSE = "Let a Deerclops handle the rest.",
        QUAGMIRE_SWAMPIG_HOUSE = "I'll finish up the demolishing job.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "A sight I'm satisfied to see!",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "Why not destroy your camp yourself?",
            SLEEPING = "My eye stay open.",
        },
        QUAGMIRE_SWAMPIG = "Doesn't this ruin please you too?",
        
        QUAGMIRE_PORTAL = "Destruction?",
        QUAGMIRE_SALTROCK = "My claws will crush it into the pieces we need.",
        QUAGMIRE_SALT = "My eye is not for salting...",
        --food--
        QUAGMIRE_FOOD_BURNT = "Not enough ice...?",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I would take rubble.",
            MISMATCH = "It won't satisfy.",
            MATCH = "Let this satisfy you.",
            MATCH_BUT_SNACK = "Too light. Not enough ice.",
        },
        
        QUAGMIRE_FERN = "To be stomped on.",
        QUAGMIRE_FOLIAGE_COOKED = "Its stomp has extra crunchhh.",
        QUAGMIRE_COIN1 = "Shiny...",
        QUAGMIRE_COIN2 = "It reflects into my eye...",
        QUAGMIRE_COIN3 = "I should snap it in half.",
        QUAGMIRE_COIN4 = "My claws itch to ruin it...",
        QUAGMIRE_GOATMILK = "Deerclops aren't know to...",
        QUAGMIRE_SYRUP = "It covers my fur in ruin...",
        QUAGMIRE_SAP_SPOILED = "Rrrrk...",
        QUAGMIRE_SEEDPACKET = "What does my eye spy?",
        
        QUAGMIRE_POT = "I'll crush what I may.",
        QUAGMIRE_POT_SMALL = "I'll destroy any size.",
        QUAGMIRE_POT_SYRUP = "My eye spies destruction.",
        QUAGMIRE_POT_HANGER = "Crushable.",
        QUAGMIRE_POT_HANGER_ITEM = "I'll snap it back down.",
        QUAGMIRE_GRILL = "My claws will show you a bit of winter chill.",
        QUAGMIRE_GRILL_ITEM = "My hooves stomp on it.",
        QUAGMIRE_GRILL_SMALL = "Small enough to smashhh.",
        QUAGMIRE_GRILL_SMALL_ITEM = "My eye spies destruction.",
        QUAGMIRE_OVEN = "My claws don't cook, they crushhh...",
        QUAGMIRE_OVEN_ITEM = "I will stomp on it.",
        QUAGMIRE_CASSEROLEDISH = "It will shatter to pieces.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "My eye spies destruction.",
        QUAGMIRE_PLATE_SILVER = "I love to smash it.",
        QUAGMIRE_BOWL_SILVER = "It shatters satisfyingly.",
        
        QUAGMIRE_MERM_CART1 = "I will have it smashed soon.", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I'm going to hop up and down on it.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "I'll destroy it and leave only ruin.",
        QUAGMIRE_PARK_ANGEL2 = "I'll destroy it and leave only ruin.",
        QUAGMIRE_PARK_URN = "I'll destroy it and leave only ruin.",
        QUAGMIRE_PARK_OBELISK = "I'll destroy it and leave only ruin.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "I'll still smash it.",
            LOCKED = "You cannot stop a Deerclops!",
        },
        QUAGMIRE_PARKSPIKE = "It's not ice, like a Deerclops'.",
        QUAGMIRE_CRABTRAP = "Maybe if I put in the promise of destruction...",
        QUAGMIRE_TRADER_MERM = "Wouldn't you like to destroy?",
        QUAGMIRE_TRADER_MERM2 = "Wouldn't you like to destroy?",
        
        QUAGMIRE_GOATMUM = "This place has already been destroyed...",
        QUAGMIRE_GOATKID = "Are you tired of being nice? Don't you want to destroy?",
        QUAGMIRE_PIGEON =
        {
            DEAD = "Rrr.",
            GENERIC = "It adds to the destruction.",
            SLEEPING = "I'll stomp it to add to the ruins.",
        },
        QUAGMIRE_LAMP_POST = "I will cut it short.",

        QUAGMIRE_BEEFALO = "The creatures are in just as much ruin.",
        QUAGMIRE_SLAUGHTERTOOL = "I only need my claws and the chill of winter...",

        QUAGMIRE_SAPLING = "Its growth has been destroyed.",
        QUAGMIRE_BERRYBUSH = "Its growth has been thrashed.",

        QUAGMIRE_ALTAR_STATUE2 = "Deerclops destroy, nothing more.",
        QUAGMIRE_ALTAR_QUEEN = "I'll destroy it and leave only ruin.",
        QUAGMIRE_ALTAR_BOLLARD = "Deerclops destroy, nothing more.",
        QUAGMIRE_ALTAR_IVY = "Deerclops destroy, nothing more.",

        QUAGMIRE_LAMP_SHORT = "I will cut it shorter.",

        --v2 Winona
        WINONA_CATAPULT = 
        {
        	GENERIC = "I will destroy it.",
        	OFF = "It won't fight back against my claws.",
        	BURNING = "I could have clawed it...",
        	BURNT = "It's not as fun to destroy without resistance.",
			SLEEP = "I will destroy it.",
        },
        WINONA_SPOTLIGHT = 
        {
        	GENERIC = "Hissssss!",
        	OFF = "It's easier to destroy when its gaze is off me.",
        	BURNING = "I could have clawed it...",
        	BURNT = "It's not as fun to destroy without resistance.",
			SLEEP = "Hissssss!",
        },
        WINONA_BATTERY_LOW = 
        {
        	GENERIC = "My claws are itching to scratch it.",
        	LOWPOWER = "My claws will help.",
        	OFF = "My claws are itching to scratch it.",
        	BURNING = "I could have clawed it...",
        	BURNT = "It's not as fun to destroy without resistance.",
        },
        WINONA_BATTERY_HIGH = 
        {
        	GENERIC = "All the more to shatter!",
        	LOWPOWER = "My claws will help.",
        	OFF = "I will happily trample it.",
        	BURNING = "I could have clawed it...",
        	BURNT = "It's not as fun to destroy without resistance.",
			OVERLOADED = "When will they stop building such hot things...",
        },
		--v3 Winona
		WINONA_REMOTE =
		{
			GENERIC = "You couldn't remote control a Deerclops. Don't try it.",
			OFF = "It won't fight back against my claws.",
			CHARGING = "You couldn't remote control a Deerclops. Don't try it.",
			CHARGED = "You couldn't remote control a Deerclops. Don't try it.",
		},
		WINONA_TELEBRELLA =
		{
			GENERIC = "It keeps rattling my antlers...",
			OFF = "It won't fight back against my claws.",
			CHARGING = "It keeps rattling my antlers...",
			CHARGED = "It keeps rattling my antlers...",
		},
		WINONA_TELEPORT_PAD_ITEM =
		{
			GENERIC = "We Deerclops disappear without trace on our own terms...",
			OFF = "It won't fight back against my claws.",
			BURNING = "I could have clawed it...",
			BURNT = "It's not as fun to destroy without resistance.",
		},
		WINONA_STORAGE_ROBOT =
		{
			GENERIC = "Nobody would be happy to see you destroyed...except a Deerclops.",
			OFF = "Maybe just a few scratches...",
			SLEEP = "Nobody would be happy to see you destroyed...except a Deerclops.",
			CHARGING = "Maybe just a few scratches...",
			CHARGED = "Maybe just a few scratches...",
		},
		INSPECTACLESHAT = 
        {
            GENERIC = "You have an eye for style.",
        },
		ROSEGLASSESHAT =
        {
            GENERIC = "We Deerclops don't need two eyes to see things.",
        },

        --Wormwood
        COMPOSTWRAP = "A Deerclops would prefer frozen mud and snow.",
        ARMOR_BRAMBLE = "Claws encased around my fur.",
        TRAP_BRAMBLE = "My hooves won't stomp. Just once.",

        BOATFRAGMENT03 = "Destroyed leftovers.",
        BOATFRAGMENT04 = "Satisfying!",
        BOATFRAGMENT05 = "Destroyed leftovers.",
		BOAT_LEAK = "There's nothing wrong with a little destruction.",
        MAST = "I might blow it over.",
        SEASTACK = "I'd enjoy some smashing destruction.",
--        FISHINGNET = "PLACEHOLDER",
--        ANTCHOVIES = "PLACEHOLDER",
        STEERINGWHEEL = "I will steer us to havoc.",
        ANCHOR = "A tool for destruction.",
        BOATPATCH = "There's no fun in fixing.",
        DRIFTWOOD_TREE = 
        {
            BURNING = "I could have clawed it...",
            BURNT = "Nothing worth clawing.",
            CHOPPED = "My claws have destroyed.",
            GENERIC = "It could use a snap.",
        },

        DRIFTWOOD_LOG = "I will crush it in my claws.",

        MOON_TREE = 
        {
            BURNING = "Too hot for claws.",
            BURNT = "I like to claw at fresh creations.",
            CHOPPED = "Clawed.",
            GENERIC = "I trample any tree my eye sees.",
        },
		MOON_TREE_BLOSSOM = "Leftovers of destruction.",

        MOONBUTTERFLY = 
        {
        	GENERIC = "My claws itch to crush it...",
        	HELD = "Have my claws frozen you over?",
        },
		MOONBUTTERFLYWINGS = "Cold to my touch.",
        MOONBUTTERFLY_SAPLING = "My hooves ache to stomp...",
        ROCK_AVOCADO_FRUIT = "Too hard for only my teeth to crack.",
        ROCK_AVOCADO_FRUIT_RIPE = "My claws can handle it.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "Clawed but not cooled.",
        ROCK_AVOCADO_FRUIT_SPROUT = "My hooves ache to stomp...",
        ROCK_AVOCADO_BUSH = 
        {
        	BARREN = "I'll crush it before it's too late.",
			WITHERED = "A Deerclops knows when coldness is needed.",
			GENERIC = "My claws itch to ruin it.",
			PICKED = "I have ravaged what I could.",
			DISEASED = "Rrrg. Smash it!",
            DISEASING = "Rrr... I'll stomp on it before it gets worse.",
			BURNING = "It's too hot to crush by now.",
		},
        DEAD_SEA_BONES = "One of the best bones hooves can stomp.",
        HOTSPRING = 
        {
        	GENERIC = "I would turn the water to ice...",
        	BOMBED = "Dipping a hoof in would cause it to freeze over.",
        	GLASS = "It won't shatter by claw or by screech.",
			EMPTY = "A hollow eye.",
        },
        MOONGLASS = "I'm known to shatter it.",
		MOONGLASS_CHARGED = "It won't last long, not if a Deerclops has anything to do with it.",
        MOONGLASS_ROCK = "A deathly glare is staring back.",
        BATHBOMB = "My hooves want to thrash it.",
        TRAP_STARFISH =
        {
            GENERIC = "A prime stomping target...",
            CLOSED = "My hooves know when to stomp.",
        },
        DUG_TRAP_STARFISH = "My hooves know when to stomp.",
        SPIDER_MOON = 
        {
        	GENERIC = "Rrrrrg...",
        	SLEEPING = "Now I strike.",
        	DEAD = "Rrrr.",
        },
        MOONSPIDERDEN = "My eye sees you...",
		FRUITDRAGON =
		{
			GENERIC = "I could crush you under my hooves.",
			RIPE = "Stomp with extra squashhh.",
			SLEEPING = "It's more fun when it's awake.",
		},
        PUFFIN =
        {
            GENERIC = "My hooves only walk on ice.",
            HELD = "Does my touch freeze you?",
            SLEEPING = "I would freeze water under me.",
        },

		MOONGLASSAXE = "I feel an urge to shatter.",
		GLASSCUTTER = "Deerclops are known to cut.",

        ICEBERG =
        {
            GENERIC = "I am happy to see you here too...",
            MELTED = "I like it a bit colder.",
        },
        ICEBERG_MELTED = "I like it a bit colder.",

        MINIFLARE = "I hate these noises it causes in the sky.",
		MEGAFLARE = "I see it and my eye starts seeing red...",

		MOON_FISSURE = 
		{
			GENERIC = "It tugs at my antlers and ears...", 
			NOLIGHT = "Hollow like a frigid winter's night...",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "You chose the wrong Deerclops.",
            GENERIC = "Your hissing is meaningless to a Deerclops...",
        },

        MOON_ALTAR_IDOL = "I only leave destruction...",
        MOON_ALTAR_GLASS = "I only leave chaos in my wake.",
        MOON_ALTAR_SEED = "If you crave destruction, then I'll carry you.",

        MOON_ALTAR_ROCK_IDOL = "I will claw you out.",
        MOON_ALTAR_ROCK_GLASS = "I will claw you out.",
        MOON_ALTAR_ROCK_SEED = "I will claw you out.",

	    MOON_ALTAR_CROWN = "I can only carry the weight of destruction.",
        MOON_ALTAR_COSMIC = "I wait for destruction, you?",

		MOON_ALTAR_ASTRAL = "This might be larger than a Deerclops...",
        MOON_ALTAR_ICON = "Why go... \"home?\"",
        MOON_ALTAR_WARD = "I will carry you. Not for long...", 

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "My claws will show what I think of the sea.",
            BURNT = "I prefer cold claw.",
        },
        BOAT_ITEM = "I could crumble it to pieces.",
        BOAT_GRASS_ITEM = "I'll have to destroy it before the ocean gets to it...",
        STEERINGWHEEL_ITEM = "To place, or to destroy.",
        ANCHOR_ITEM = "I'll destroy it better placed.",
        MAST_ITEM = "I'll destroy it better placed.",
        MUTATEDHOUND = 
        {
        	DEAD = "My destruction stays that way.",
        	GENERIC = "My claws itch to freeze you.",
        	SLEEPING = "Crushable.",
        },

        MUTATED_PENGUIN = 
        {
			DEAD = "My destruction stays that way.",
			GENERIC = "It's already frozen without me clawing it...",
			SLEEPING = "Crushable...",
		},
        CARRAT = 
        {
        	DEAD = "It's what I do.",
        	GENERIC = "Stomp!",
        	HELD = "My claws are cold to the touch.",
        	SLEEPING = "Deerclops sleep under snow, not dirt.",
        },

		BULLKELP_PLANT = 
        {
            GENERIC = "My claws can't reachhh...",
            PICKED = "My claws have clawed.",
        },
		BULLKELP_ROOT = "Now with a frozen touchhh.",
        KELPHAT = "It forms icicles on my antlers...",
		KELP = "It's easy to snap when frozen.",
		KELP_COOKED = "I will have to freeze it...",
		KELP_DRIED = "Crisp.",

		GESTALT = "Deerclops were made to destroy.",
		GESTALT_GUARD = "Deerclops bite back too if you get too close.",

		COOKIECUTTER = "My claws will show you how to cut into a structure.",
		COOKIECUTTERSHELL = "Deerclops are the only ones who cut.",
		COOKIECUTTERHAT = "An eye sore.",
		SALTSTACK =
		{
			GENERIC = "My claws itch in excitement to crushhh.",
			MINED_OUT = "All done.",
			GROWING = "I'll have to crush it again.",
		},
		SALTROCK = "It sands down the ice on my claws.",
		SALTBOX = "I will stomp it...",

		TACKLESTATION = "I'll tackle you, if you insist.",
		TACKLESKETCH = "Does it say to rip it to shreds?",

        MALBATROSS = "Your feathers will fall off in the winter.",
        MALBATROSS_FEATHER = "Your feathers snap when frozen.",
        MALBATROSS_BEAK = "I only need my own.",
        MAST_MALBATROSS_ITEM = "Snappable.",
        MAST_MALBATROSS = "It would be so easy to destroy.",
		MALBATROSS_FEATHERED_WEAVE = "Soft. I prefer brittle.",

        GNARWAIL =
        {
            GENERIC = "Rrrrhhh...",
            BROKENHORN = "My antlers never snap. Even frigid.",
            FOLLOWER = "You're following... me?",
            BROKENHORN_FOLLOWER = "I only destroy...",
        },
        GNARWAIL_HORN = "Deerclops know when to lose a horn.",

        WALKINGPLANK = "I'd snap it in half.",
        WALKINGPLANK_GRASS = "I'd snap it in half.",
        OAR = "My claws want to crush it.",
		OAR_DRIFTWOOD = "My fingers itch to snap it in two...",

		OCEANFISHINGROD = "It might snap by my claws.",
		OCEANFISHINGBOBBER_NONE = "It needs more than just ice...",
        OCEANFISHINGBOBBER_BALL = "My eye will be watching.",
        OCEANFISHINGBOBBER_OVAL = "I have my eye on you.",
		OCEANFISHINGBOBBER_CROW = "My eye will be watching.",
		OCEANFISHINGBOBBER_ROBIN = "My eye will be watching.",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "Winter will do by me right.",
		OCEANFISHINGBOBBER_CANARY = "My eye will be watching.",
		OCEANFISHINGBOBBER_GOOSE = "My eye will be watching.",
		OCEANFISHINGBOBBER_MALBATROSS = "My eye will be watching...",

		OCEANFISHINGLURE_SPINNER_RED = "You can't resist a Deerclops' gaze.",
		OCEANFISHINGLURE_SPINNER_GREEN = "You can't resist a Deerclops' gaze.",
		OCEANFISHINGLURE_SPINNER_BLUE = "You can't resist a Deerclops' gaze.",
		OCEANFISHINGLURE_SPOON_RED = "You can't resist a Deerclops' gaze.",
		OCEANFISHINGLURE_SPOON_GREEN = "You can't resist a Deerclops' gaze.",
		OCEANFISHINGLURE_SPOON_BLUE = "You can't resist a Deerclops' gaze.",
		OCEANFISHINGLURE_HERMIT_RAIN = "The fish were already wet...",
		OCEANFISHINGLURE_HERMIT_SNOW = "A lure after a Deerclops' heart...",
		OCEANFISHINGLURE_HERMIT_DROWSY = "My claws can only destroy without care...",
		OCEANFISHINGLURE_HERMIT_HEAVY = "Heavy as ice...",

		OCEANFISH_SMALL_1 = "Rrrr.",
		OCEANFISH_SMALL_2 = "A simple treat to smushhh.",
		OCEANFISH_SMALL_3 = "Not enough for proper crushing.",
		OCEANFISH_SMALL_4 = "My eye sees you...",
		OCEANFISH_SMALL_5 = "It will freeze by my claw.",
		OCEANFISH_SMALL_6 = "My claws can't help it, they want to claw into it.",
		OCEANFISH_SMALL_7 = "Too bright... must destroy.",
		OCEANFISH_SMALL_8 = "Do not thaw my claw...",
		OCEANFISH_SMALL_9 = "You spit, I freeze.",
		OCEANFISH_MEDIUM_1 = "I'll tear at it with my teethhh.",
		OCEANFISH_MEDIUM_2 = "For my maw to gnaw.",
		OCEANFISH_MEDIUM_3 = "Gnashing.",
		OCEANFISH_MEDIUM_4 = "My claws will freeze you.",
		OCEANFISH_MEDIUM_5 = "Poppable.",
		OCEANFISH_MEDIUM_6 = "The koi of my eye.",
		OCEANFISH_MEDIUM_7 = "The koi of my eye.",
		OCEANFISH_MEDIUM_8 = "Did I do that...?",
		OCEANFISH_MEDIUM_9 = "I hate sweet...",

		PONDFISH = "It goes down without a fight.",
		PONDEEL = "I'll have to hold it with my teethhh.",

        FISHMEAT = "My teeth love to tear at its fleshhh.",
        FISHMEAT_COOKED = "It grows colder in my claw.",
        FISHMEAT_SMALL = "To hop into my maw and nothing more...",
        FISHMEAT_SMALL_COOKED = "Simple to smashhh.",
		SPOILED_FISH = "Rrrrg.",

		FISH_BOX = "Cold enough?",
        POCKET_SCALE = "It's tempting to crushhh.",
		TACKLECONTAINER = "A Deerclops only sees more to destroy.",
		SUPERTACKLECONTAINER = "My claws, they itchhh...",

		TROPHYSCALE_FISH =
		{
			GENERIC = "The best trophy is one in ruin.",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\n...I might destroy it.",
			BURNING = "My claws could have done better...",
			BURNT = "My claws could have done better.",
			OWNER = "Weight: {weight}\nCaught by: {owner}\nIf it isn't mine, I'll destroy it...",
			OWNER_HEAVY = "Weight: {weight}\nCaught by: {owner}\nIt's the ice inside.",
		},

		OCEANFISHABLEFLOTSAM = "Eye see you.",

		CALIFORNIAROLL = "Destroyable.",
		SEAFOODGUMBO = "It all goes down the same.",
		SURFNTURF = "My teeth love to smash too.",

        WOBSTER_SHELLER = "My claws will catch you, frozen in your tracks.", 
        WOBSTER_DEN = "A den to destroy.",
        WOBSTER_SHELLER_DEAD = "Any colder the cause would've been my claws.",
        WOBSTER_SHELLER_DEAD_COOKED = "Hot, then cold.",

        LOBSTERBISQUE = "It freezes on the way down...",
        LOBSTERDINNER = "My teeth will crushhh all of it.",

        WOBSTER_MOONGLASS = "It wants me to smashhh it...",
        MOONGLASS_WOBSTER_DEN = "My claws are aching for it...",

		TRIDENT = "Deerclops have a cold swing.",
		
		WINCH =
		{
			GENERIC = "A claw, but not as icy as a Deerclops'.",
			RETRIEVING_ITEM = "I hope it claws up chunks of ice...",
			HOLDING_ITEM = "What have your claws caught...?",
		},

		HERMITHOUSE = {
            GENERIC = "I could finishhh the job...",
            BUILTUP = "Only built up to be destroyed again.",
        }, 
        
        SHELL_CLUSTER = "I could crack it open.",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "Rrrr... Can't stand it, must crushhh it.",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "The noise! It cracks at my ears!",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "My ears are being destroyed! RRRRHH!",
        },

        CHUM = "Easy freeze.",

        SUNKENCHEST =
        {
            GENERIC = "A Deerclops only hopes to destroy it.",
            LOCKED = "My claws will snap it.",
        },
        HERMIT_BUNDLE = "For... me? A Deerclops...?",
        HERMIT_BUNDLE_SHELLS = "My hooves, they must stomp on it.",
        RESKIN_TOOL = "And a sprinkling of ice!",
        MOON_FISSURE_PLUGGED = "More ways to destroy...",
		----------------------- ROT STRINGS GO ABOVE HERE ------------------

        WOBYBIG = 
        {
            "Rrrrr...",
            "Rrrrr...",
        },
        WOBYSMALL = 
        {
            "My claws freeze any fur it touches...",
            "My claws freeze any fur it touches...",
        },
		WALTERHAT = "Is it befitting...?",
		SLINGSHOT = "Deerclops prefer to destroy bases with claws and hooves.",
		SLINGSHOTAMMO_ROCK = "Little, little bits of hail.",		
		SLINGSHOTAMMO_MARBLE = "Little, little bits of hail.",		
		SLINGSHOTAMMO_THULECITE = "Little, little bits of hail.",	
        SLINGSHOTAMMO_GOLD = "Little, little bits of hail.",
        SLINGSHOTAMMO_SLOW = "SLittle, little bits of hail.",
        SLINGSHOTAMMO_FREEZE = "Little, little bits of hail.",
		SLINGSHOTAMMO_POOP = "Little, little bits of hail.",
        PORTABLETENT = "I want to smash it with both hooves.",
        PORTABLETENT_ITEM = "I'll only want to smash it once it's up...",

        BATTLESONG_DURABILITY = "We Deerclops don't have much to say...",
        BATTLESONG_HEALTHGAIN = "We Deerclops don't have much to say...",
        BATTLESONG_SANITYGAIN = "We Deerclops don't have much to say...",
        BATTLESONG_SANITYAURA = "We Deerclops don't have much to say...",
        BATTLESONG_FIRERESISTANCE = "We Deerclops don't have much to say...",
        BATTLESONG_INSTANT_TAUNT = "That's all she wrote...",
        BATTLESONG_INSTANT_PANIC = "That's all she wrote...",

		MUTATOR_WARRIOR = "Deerclops only hunger for destruction.",
        MUTATOR_DROPPER = "Deerclops...don't eat. Ever. Go away...",
        MUTATOR_HIDER = "Deerclops only hunger for destruction.",
        MUTATOR_SPITTER = "Deerclops...don't eat. Ever. Go away...",
        MUTATOR_MOON = "Deerclops only hunger for destruction.",
        MUTATOR_HEALER = "Deerclops...don't eat. Ever. Go away...",
        SPIDER_WHISTLE = "Like a ring of destruction!",
        SPIDERDEN_BEDAZZLER = "All the better to knock down.",
        SPIDER_HEALER = "My hooves kill quicker than you can heal...",
		SPIDER_REPELLENT = "An alternative to my hooves.",
        SPIDER_HEALER_ITEM = "Does it work on Deerclops...?",

		GHOSTLYELIXIR_SLOWREGEN = "I don't sip... I smash and destroy.",
		GHOSTLYELIXIR_FASTREGEN = "I don't sip... I smash and destroy.",
		GHOSTLYELIXIR_SHIELD = "I don't sip... I smash and destroy.",
		GHOSTLYELIXIR_ATTACK = "I don't sip... I smash and destroy.",
		GHOSTLYELIXIR_SPEED = "I don't sip... I smash and destroy.",
		GHOSTLYELIXIR_RETALIATION = "I don't sip... I smash and destroy.",
		SISTURN =
		{
			GENERIC = "My claws ache...",
			SOME_FLOWERS = "A Deerclops couldn't help... we only destroy.",
			LOTS_OF_FLOWERS = "I won't smash it... when you're looking.",
		},

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "I could trample it.",
            DONE = "If its meal isn't good, I'll destroy it.",
			COOKING_LONG = "I'll crush it between my claws...",
			COOKING_SHORT = "Crushing soon.",
			EMPTY = "My claws itch to scratch it.",
        },
        
        PORTABLEBLENDER_ITEM = "It destroys food like a Deerclops does walls.",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "Winter whirlwinds...?",
            DONE = "I have a taste for destruction.",
        },
        SPICEPACK = "Cool as my insides.",
        SPICE_GARLIC = "Like snow filling your nose.",
        SPICE_SUGAR = "As sweet as destruction.",
        SPICE_CHILI = "Spice can't beat ice.",
        SPICE_SALT = "Looks like snow, but melts it like no other.",
        MONSTERTARTARE = "My teeth enjoy tearing into it.",
        FRESHFRUITCREPES = "It smushes well in my maw.",
        FROGFISHBOWL = "A treat to gnaw on.",
        POTATOTORNADO = "My teeth pick at it.",
        DRAGONCHILISALAD = "I prefer all food cold and frozen.",
        GLOWBERRYMOUSSE = "Soft. My touch will change that.",
        VOLTGOATJELLY = "It stops jiggling down my maw.",
        NIGHTMAREPIE = "My pupil shakes when I crush it.",
        BONESOUP = "I love to gnash as much as I like to smash.",
        MASHEDPOTATOES = "I love to mashhh.",
        POTATOSOUFFLE = "Every thing's a souffle to me.",
        MOQUECA = "It drips onto my fur.",
        GAZPACHO = "Perfect...",
        ASPARAGUSSOUP = "Frozen. How a Deerclops likes it.",
        VEGSTINGER = "It turns to ice in my stomach.",
        BANANAPOP = "Frozen treats are the most satisfying.",
        CEVICHE = "Squashable.",
        SALSA = "My fur will keep being frigid.",
        PEPPERPOPPER = "It won't thaw my tongue.",

        TURNIP = "My teeth want to gnash it.",
        TURNIP_COOKED = "Crunchable.",
        TURNIP_SEEDS = "Stomp it into the ground.",
        
        GARLIC = "It tickles the nose like falling snow...",
        GARLIC_COOKED = "Crisp.",
        GARLIC_SEEDS = "Stomp it into the ground.",
        
        ONION = "I want to crunch into it.",
        ONION_COOKED = "Layered like a structure to crushhh.",
        ONION_SEEDS = "Stomp it into the ground.",
        
        POTATO = "I'll plunge my teeth into it.",
        POTATO_COOKED = "It's best frozen.",
        POTATO_SEEDS = "Stomp it into the ground.",
        
        TOMATO = "It has a satisfying squish.",
        TOMATO_COOKED = "I enjoy its blood.",
        TOMATO_SEEDS = "Stomp it into the ground.",

        ASPARAGUS = "Chewable.", 
        ASPARAGUS_COOKED = "I could crush it.",
        ASPARAGUS_SEEDS = "Stomp it into the ground.",

        PEPPER = "It thaws out a toothhh...",
        PEPPER_COOKED = "Freezing it won't help.",
        PEPPER_SEEDS = "Stomp it into the ground.",

        WEREITEM_BEAVER = "I'll chip away at it.",
        WEREITEM_GOOSE = "I'm going to stomp it.",
        WEREITEM_MOOSE = "I'll smush it for you.",

        MERMHAT = "You can't hide a single eye.",
        MERMTHRONE =
        {
            GENERIC = "Perfect smashing grounds.",
            BURNT = "I prefer frozen claws.",
        },
        MOSQUITOMUSK = "The sound of a Deerclops should be enoughhh...",
        MOSQUITOBOMB = "I wish I could throw smaller Deerclops...",
        MOSQUITOFERTILIZER = "It'll destroy the noses of those taking whiffs.",
        MOSQUITOMERMSALVE = "Cold-blooded.",

        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "I'll stomp your base when it's complete.",
            BURNT = "I would only crush with ice.",
        },        
        MERMHOUSE_CRAFTED = 
        {
            GENERIC = "It's in my nature to destroy.",
            BURNT = "I destroy, but not like that...",
        },

        MERMWATCHTOWER_REGULAR = "It must be satisfying to dismantle claw by claw.",
        MERMWATCHTOWER_NOKING = "I'll demolish it before they do.",
        MERMKING = "You have no chance in winter...",
        MERMGUARD = "This won't protect your base for long...",
        MERM_PRINCE = "My eye will not forget you.",

        SQUID = "Not the eye!",

		GHOSTFLOWER = "More to stomp!",
        SMALLGHOST = "Does my eye not scare you...?",
		
		CRABKING = 
        {
            GENERIC = "The water around you will freeze.",
            INERT = "Decoration or destruction?",
        },
		CRABKING_CLAW = "I have claws, too...",
		
		MESSAGEBOTTLE = "A Deerclops has to hold it up close.",
		MESSAGEBOTTLEEMPTY = "My eye sees nothing...",
        MEATRACK_HERMIT =
        {
            DONE = "Now time for the destruction...",
            DRYING = "My claws are itching to destroy. My stomach, itching to eat...",
            DRYINGINRAIN = "I want to destroy this...",
            GENERIC = "My destruction could be described as dry.",
            BURNT = "I'll kick it over in a pity...",
            DONE_NOTMEAT = "Now time for the destruction...",
            DRYING_NOTMEAT = "My claws are itching to destroy. My stomach, itching to eat...",
            DRYINGINRAIN_NOTMEAT = "I want to destroy this...",
        },
        BEEBOX_HERMIT =
        {
			READY = "If I destroyed it now, my hooves would be gunked up...",
			FULLHONEY = "If I destroyed it now, my hooves would be gunked up...",
			GENERIC = "It was made for me to smashhh!",
			NOHONEY = "I must crush it.",
			SOMEHONEY = "My claws might get a bit messy.",
			BURNT = "I like to destroy without fire...",
        },
		HERMITCRAB = "My claws go snip snap too...",
		HERMIT_PEARL = "A Deerclops' claws you... trust?",
        HERMIT_CRACKED_PEARL = "It's... in a Deerclops' nature.",

        -- DSEAS
        WATERPLANT = "More delicate than the ice on a Deerclops' claws.",
        WATERPLANT_BOMB = "Stomp! With your hooves!",
        WATERPLANT_BABY = "Better to stomp it while it's young...",
        WATERPLANT_PLANTER = "We... want these?",

        SHARK = "Eye-eye, captain...",

        MASTUPGRADE_LAMP_ITEM = "Too bright.",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "I'll still feel my fur tingle.",

        WATERPUMP = "The water droplets turn to hail around me...",

        BARNACLE = "Try not to get stuck to my tongue...",
        BARNACLE_COOKED = "It's not chewy... for me.",

        BARNACLEPITA = "You cannot hide under the covers from a Deerclops.",
        BARNACLESUSHI = "Cold. My favorite flavor.",
        BARNACLINGUINE = "I'll have it on ice.",
        BARNACLESTUFFEDFISHHEAD = "I like chewing on what can stare back.",

        LEAFLOAF = "My food gets encased in a block of ice anyway...",
        LEAFYMEATBURGER = "The buns are never toasty if a Deerclops is around.",
        LEAFYMEATSOUFFLE = "I'll stop it from jiggling.",
        MEATYSALAD = "Little bits of meat hide like a Deerclops on a winter's morning.",

        -- GROTTO
		MOLEBAT = "A nose the size of a Deerclops' eye.",

        BATNOSE = "I won't let my nose fall off next.",
        BATNOSE_COOKED = "Rrrr... I want to eat snow instead.",
        BATNOSEHAT = "The drinks always stay cool on my head.",

        MUSHGNOME = "The claws want to claw. I cannot help it...",

        SPORE_MOON = "If I swat it out of the air it'll get stuck to my claws...",

        MOON_CAP = "My eye is freezing over...",
        MOON_CAP_COOKED = "Is it crunchy, or is it my icy teeth?",

        MUSHTREE_MOON = "I will chip at it.",

        LIGHTFLIER = "I hope you crunchhh.",
        GROTTO_POOL_BIG = "When a Deerclops touches water we make ice, not glass...",
        GROTTO_POOL_SMALL = "It's cold, but a Deerclops is much colder...",
        DUSTMOTH = "It must enjoy snowflakes...",
        DUSTMOTHDEN = "It could use some ice destruction.",

        ARCHIVE_LOCKBOX = "My claws only know one way in...",
        ARCHIVE_CENTIPEDE = "Your husk will never be as cold as a Deerclops'.",
        ARCHIVE_CENTIPEDE_HUSK = "I'll enjoy the destruction.",

        ARCHIVE_COOKPOT =
        {
			COOKING_LONG = "My claws can only resist for so long.",
			COOKING_SHORT = "My claws are shaking in anticipation! ...To destroy.",
			DONE = "Now I can crush and eat.",
			EMPTY = "The more precious to destroy, the more satisfying.",
			BURNT = "Can't I claw it instead...",
        },

        ARCHIVE_MOON_STATUE = "It's... mocking me.",
        ARCHIVE_RUNE_STATUE = 
        {
            LINE_1 = "I only care for destroying knowledge.",
            LINE_2 = "A Deerclops leaves more than just marks...",
            LINE_3 = "I only care for destroying knowledge.",
            LINE_4 = "A Deerclops leaves more than just marks...",
            LINE_5 = "I only care for destroying knowledge.",
        },        

		ARCHIVE_RESONATOR = {
            GENERIC = "Point the way to destroy.",
            IDLE = "Now is it time to crushhh?",
        },
        ARCHIVE_RESONATOR_ITEM = "Now I can crushhh it.",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "Is it already in ruin?",
          GENERIC =  "Don't freeze on the way in, knowledge...",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "I could destroy it. But it's not worth it...",
            GENERIC = "All the more to destroy.",
        },

        ARCHIVE_SECURITY_PULSE = "Off to freeze someplace else...",

        ARCHIVE_SWITCH = {
            VALID = "Glittery. Crackling.",
            GEMS = "Empty and cold. ...Or is that me?",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "It's no fun to destroy if it's already in ruins...",
            GENERIC = "I was hoping for a live destruction...",
        },

        WALL_STONE_2 = "A Deerclops' favorite structure to smash!",
        WALL_RUINS_2 = "What a treasure it is to smashhh!",

        REFINED_DUST = "I would like to offer up some ice instead.",
        DUSTMERINGUE = "I hope it's best served cold.",

        SHROOMCAKE = "A Deerclops' tongue can only taste ice...",
        SHROOMBAIT = "Too peaceful for a Deerclops' taste.",

        NIGHTMAREGROWTH = "Was there a Deerclops here? Long ago?",

        TURFCRAFTINGSTATION = "I destroy what lies on the ground.",

        MOON_ALTAR_LINK = "Ice is being frozen...",
		-- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "Sore of my eye.",
            WET = "Don't expect a Deerclops to hug it dry.",
            DRY = "Dry, but not like a Deerclops.",
            BALANCED = "Ideal...",
            BURNT = "Not cold enough.",
        },
        COMPOST = "...Without any ice?",
        SOIL_AMENDER = 
		{ 
			GENERIC = "A Deerclops can wait many winters.",
			STALE = "A Deerclops...is still waiting.",
			SPOILED = "Deerclops only have one nose, but maybe that's too much.",
		},

		SOIL_AMENDER_FERMENTED = "Iced over and ready.",

        WATERINGCAN = 
        {
            GENERIC = "I might make it hail.",
            EMPTY = "My eye will keep watch out for ponds.",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "I would have used cold, brittle fur.",
            EMPTY = "My eye will keep watch out for water.",
        },

		FARM_PLOW = "No need to lend helping hooves.",
		FARM_PLOW_ITEM = "I'll use my eye.",
		FARM_HOE = "To tread the ground without hooves.",
		GOLDEN_FARM_HOE = "All the ground I tread on will shatter.",
		NUTRIENTSGOGGLESHAT = "Funny...",
		PLANTREGISTRYHAT = "Only one glass for one eye? This make a Deerclops happy!",

        FARM_SOIL_DEBRIS = "I make messes of gardens, too...",

		FIRENETTLES = "Rrrrr. I have to destroy it before it warms me up.",
		FORGETMELOTS = "My head is colder than usual near it...",
		SWEETTEA = "There's ice coating around my eye.",
		TILLWEED = "I like its style.",
		TILLWEEDSALVE = "Those that destroy can be good, too...",
		WEED_IVY = "You're a Deerclops' favorite vegetable.",
        IVY_SNARE = "I admire the... attempt.",

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "What does it say...?",
			HAS_ITEM = "Weight: {weight}\nHarvested on day: {day}\nI'll destroy it now...?",
            HAS_ITEM_HEAVY = "Weight: {weight}\nHarvested on day: {day}\nProud of a Deerclops yet...?",
            HAS_ITEM_LIGHT = "You must be destroyed.",
			BURNING = "Not a good sign...",
			BURNT = "Not much left to ruin...",
        },
        
        CARROT_OVERSIZED = "Cold, large, lifeless...",
        CORN_OVERSIZED = "Bit by bit...",
        PUMPKIN_OVERSIZED = "A Deerclops knows how to carve.",
        EGGPLANT_OVERSIZED = "My teethh will rip and tear into it.",
        DURIAN_OVERSIZED = "Why can't stench freeze too...",
        POMEGRANATE_OVERSIZED = "Must keep my eye on it...",
        DRAGONFRUIT_OVERSIZED = "It makes my teethhh ache...",
        WATERMELON_OVERSIZED = "I wish my hooves were bigger now...",
        TOMATO_OVERSIZED = "I will drain it of its juices...",
        POTATO_OVERSIZED = "I will spend all winter clawing at it.",
        ASPARAGUS_OVERSIZED = "My teethhh have trouble tearing into this...",
        ONION_OVERSIZED = "So many layers to destroy...",
        GARLIC_OVERSIZED = "I want to ruin it.",
        PEPPER_OVERSIZED = "It gives my claws a bad tingling...",
        
        VEGGIE_OVERSIZED_ROTTEN = "Eye hate to see it...",

		FARM_PLANT =
		{
			GENERIC = "Tell my hooves they said...squishhh.",
			SEED = "I only know destruction, not patience...",
			GROWING = "I'll destroy it later.",
			FULL = "Give it a squishhh.",
			ROTTEN = "I can swat the flies swarming it.",
			FULL_OVERSIZED = "Bigger than a Deerclops eye...",
			ROTTEN_OVERSIZED = "Eye hate to see it...",
			FULL_WEED = "Meet my hooves and claw.",

			BURNING = "I can smash it now.",
        },
        
        FRUITFLY = "My hooves know what to do to you.",
        LORDFRUITFLY = "You won't like what my claws do to you.",
        FRIENDLYFRUITFLY = "You like food too muchhh...",
        FRUITFLYFRUIT = "Time for a squishhh.",
		SEEDPOUCH = "Only a little crushhh.",
		-- Crow Carnival
		CARNIVAL_HOST = "Bringer of little things to destroy.",
		CARNIVAL_CROWKID = "I will love the look on your face as I destroy the Cawnival.",
		CARNIVAL_GAMETOKEN = "It could be mistaken for glace.",
		CARNIVAL_PRIZETICKET =
		{
			GENERIC = "There's no fun in one.",
			GENERIC_SMALLSTACK = "They don't crack very well...",
			GENERIC_LARGESTACK = "Now I can form an ice block.",
		},

		CARNIVALGAME_FEEDCHICKS_NEST = "I want in...",
		CARNIVALGAME_FEEDCHICKS_STATION =
		{
			GENERIC = "I can have my fun without tokens.",
			PLAYING = "I see no point of this still standing.",
		},
		CARNIVALGAME_FEEDCHICKS_KIT = "We Deerclops prefer to pop-down carnivals.",
		CARNIVALGAME_FEEDCHICKS_FOOD = "I always serve it cold...",

		CARNIVALGAME_MEMORY_KIT = "We Deerclops prefer to pop-down carnivals.",
		CARNIVALGAME_MEMORY_STATION =
		{
			GENERIC = "I can have my fun without tokens.",
			PLAYING = "Just make sure it's close to my eye...",
		},
		CARNIVALGAME_MEMORY_CARD =
		{
			GENERIC = "I want in...",
			PLAYING = "I'll destroy it if it's wrong.",
		},

		CARNIVALGAME_HERDING_KIT = "We Deerclops prefer to pop-down carnivals.",
		CARNIVALGAME_HERDING_STATION =
		{
			GENERIC = "I can have my fun without tokens.",
			PLAYING = "I will stomp all of you with my hooves!",
		},
		CARNIVALGAME_HERDING_CHICK = "Rrrrr!",

		CARNIVALGAME_SHOOTING_KIT = "We Deerclops prefer to pop-down carnivals.",
		CARNIVALGAME_SHOOTING_STATION =
		{
			GENERIC = "I can have my fun without tokens.",
			PLAYING = "Rrrr... I don't need this to destroy them.",
		},
		CARNIVALGAME_SHOOTING_TARGET =
		{
			GENERIC = "I want in...",
			PLAYING = "My hooves have smashed worse.",
		},

		CARNIVALGAME_SHOOTING_BUTTON =
		{
			GENERIC = "I can have my fun without tokens.",
			PLAYING = "My claws will lay waste to you.",
		},

		CARNIVALGAME_WHEELSPIN_KIT = "We Deerclops prefer to pop-down carnivals.",
		CARNIVALGAME_WHEELSPIN_STATION =
		{
			GENERIC = "I can have my fun without tokens.",
			PLAYING = "I hate when it spins...",
		},

		CARNIVALGAME_PUCKDROP_KIT = "We Deerclops prefer to pop-down carnivals.",
		CARNIVALGAME_PUCKDROP_STATION =
		{
			GENERIC = "I can have my fun without tokens.",
			PLAYING = "Rrrr... I prefer the Deerclops method. Winning with our claws.",
		},

		CARNIVAL_PRIZEBOOTH_KIT = "If someone else builds it, it's all the more satisfying to destroy.",
		CARNIVAL_PRIZEBOOTH =
		{
			GENERIC = "Your prizes won't escape my eye.",
		},

		CARNIVALCANNON_KIT = "Don't...",
		CARNIVALCANNON =
		{
			GENERIC = "I'd rather have my ears frostbitten...",
			COOLDOWN = "Never...again.",
		},

		CARNIVAL_PLAZA_KIT = "I'll shake it up.",
		CARNIVAL_PLAZA =
		{
			GENERIC = "If you ring that bell I'll destroy all of it.",
			LEVEL_2 = "I've had enoughhh of this...",
			LEVEL_3 = "No more squawking in my ears.",
		},

		CARNIVALDECOR_EGGRIDE_KIT = "It's never worthhh the price of setting it up.",
		CARNIVALDECOR_EGGRIDE = "My eye's seen enoughhh.",

		CARNIVALDECOR_LAMP_KIT = "It's never worthhh the price of setting it up...",
		CARNIVALDECOR_LAMP = "I'll use my claws for this one.",
		CARNIVALDECOR_PLANT_KIT = "It's never worthhh the price of setting it up...",
		CARNIVALDECOR_PLANT = "I always knew I had a big presence...",
		CARNIVALDECOR_BANNER_KIT = "It's never worthhh the price of setting it up...",
		CARNIVALDECOR_BANNER = "It's calm... I have to destroy it. Now.",

		CARNIVALDECOR_FIGURE =
		{
			RARE = "All the better to destroy.",
			UNCOMMON = "A few might go missing... Maybe a lot.",
			GENERIC = "There's enough of these to destroy for a month.",
		},
		CARNIVALDECOR_FIGURE_KIT = "I'm more excited to smashhh it.",

        CARNIVAL_BALL = "I hope it pops.",
		CARNIVAL_SEEDPACKET = "Time for a crunchhh.",
		CARNIVALFOOD_CORNTEA = "Needs more ice...",

        CARNIVAL_VEST_A = "How do I wear this...?",
        CARNIVAL_VEST_B = "It's getting stuck to my fur...",
        CARNIVAL_VEST_C = "Anything to keep my cool...",
		-- YOTB
        YOTB_SEWINGMACHINE = "My frozen claws are immune to little punctures.",
        YOTB_SEWINGMACHINE_ITEM = "I wish to destroy it, not put it up.",
        YOTB_STAGE = "I hope you are destroyed with your structure...",
        YOTB_POST =  "A Deerclops scratching post.",
        YOTB_STAGE_ITEM = "I wish to destroy it, not put it up.",
        YOTB_POST_ITEM =  "I wish to destroy it, not put it up.",


        YOTB_PATTERN_FRAGMENT_1 = "Like cracked ice...that's all I know.",
        YOTB_PATTERN_FRAGMENT_2 = "Like cracked ice...that's all I know.",
        YOTB_PATTERN_FRAGMENT_3 = "Like cracked ice...that's all I know.",

        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = "If I hug it... it gets stuck.",
            YOTB = "My my, what will the Judge spot with his eye.",
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = "If I hug it... it gets stuck.",
            YOTB = "My my, what will the Judge spot with his eye.",
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = "If I hug it... it gets stuck.",
            YOTB = "My my, what will the Judge spot with his eye.",
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = "If I hug it... it gets stuck.",
            YOTB = "My my, what will the Judge spot with his eye.",
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = "If I hug it... it gets stuck.",
            YOTB = "My my, what will the Judge spot with his eye.",
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = "If I hug it... it gets stuck.",
            YOTB = "My my, what will the Judge spot with his eye.",
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = "If I hug it... it gets stuck.",
            YOTB = "My my, what will the Judge spot with his eye.",
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = "If I hug it... it gets stuck.",
            YOTB = "My my, what will the Judge spot with his eye.",
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = "If I hug it... it gets stuck.",
            YOTB = "My my, what will the Judge spot with his eye.",
        },

        WAR_BLUEPRINT = "It'll be scarier at night...",
        DOLL_BLUEPRINT = "Look. Cute as my eye.",
        FESTIVE_BLUEPRINT = "Not enough to thaw my heart...",
        ROBOT_BLUEPRINT = "It's not getting any colder...",
        NATURE_BLUEPRINT = "It could use snow...",
        FORMAL_BLUEPRINT = "Not for a Deerclops.",
        VICTORIAN_BLUEPRINT = "For hair that curls.",
        ICE_BLUEPRINT = "The perfect fit for a Deerclops!",
        BEAST_BLUEPRINT = "I'm familiar with beasts...",

        BEEF_BELL = "Rrrrr. Don't ring it at me.",
		-- YOT Catcoon
		KITCOONDEN = 
		{
			GENERIC = "YMy hooves love to stomp on these.",
            BURNT = "My claws would have done it better...",
			PLAYING_HIDEANDSEEK = "I have to find them now...",
			PLAYING_HIDEANDSEEK_TIME_ALMOST_UP = "Not much longer...",
		},

		KITCOONDEN_KIT = "It's not ready to be destroyed.",

		TICOON = 
		{
			GENERIC = "How special are your eyes...?",
			ABANDONED = "Deerclops work best alone.",
			SUCCESS = "What have you seen?",
			LOST_TRACK = "Another Deerclops must have found it.",
			NEARBY = "What do you see?",
			TRACKING = "You go, I follow.",
			TRACKING_NOT_MINE = "Not my time to follow.",
			NOTHING_TO_TRACK = "Nothing more to be seen with my eye.",
			TARGET_TOO_FAR_AWAY = "I see nothing out here.",
		},
		
		YOT_CATCOONSHRINE =
        {
            GENERIC = "I live to destroy.",
            EMPTY = "It needs an offer. I need to destroy.",
            BURNT = "Rrrr...",
        },

		KITCOON_FOREST = "Your claws are small, yet to destroy.",
		KITCOON_SAVANNA = "Your claws are small, yet to destroy.",
		KITCOON_MARSH = "Your claws are small, yet to destroy.",
		KITCOON_DECIDUOUS = "Your claws are small, yet to destroy.",
		KITCOON_GRASS = "Are my claws cold, destructive. We could get along.",
		KITCOON_ROCKY = "Are my claws cold, destructive. We could get along.",
		KITCOON_DESERT = "Are my claws cold, destructive. We could get along.",
		KITCOON_MOON = "Are my claws cold, destructive. We could get along.",
		KITCOON_YOT = "Are my claws cold, destructive. We could get along.",

		-- Moon Storm
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = "I'm getting envious of its destruction...",
            DEAD = "First time?",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "If you stop destruction, you will only craves more.",
            DEAD = "Destroyed.",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "I like your spikes...",
        ALTERGUARDIAN_PHASE3 = "Cold-blodded anger.",
        ALTERGUARDIAN_PHASE3TRAP = "Freezes you in your tracks.",
        ALTERGUARDIAN_PHASE3DEADORB = "Freeze it.",
        ALTERGUARDIAN_PHASE3DEAD = "Only the dead stay cold.",

        ALTERGUARDIANHAT = "Cold words are filling throughout my eye...",
		ALTERGUARDIANHATSHARD = "I'll destroy it one way or the other...",

        MOONSTORM_GLASS = {
            GENERIC = "Eye like what my eye sees.",
            INFUSED = "My claws know the feeling."
        },

        MOONSTORM_STATIC = "You give my claws quite the tickling.",
        MOONSTORM_STATIC_ITEM = "Tickles the claws like ice.",
        MOONSTORM_SPARK = "My eye shudders near it...",

        BIRD_MUTANT = "A sight for my sore eye.",
        BIRD_MUTANT_SPITTER = "A sight for my sore eye.",

        WAGSTAFF_NPC = "Would you trust a Deerclops...?",

        WAGSTAFF_NPC_MUTATIONS = "You were watching us, weren't you...",
        WAGSTAFF_NPC_WAGPUNK = "Someone's storming off into the cold, frigid night.",

		ALTERGUARDIAN_CONTAINED = "I can see the creature's eye fading...",

        WAGSTAFF_TOOL_1 = "Is this...?",
        WAGSTAFF_TOOL_2 = "A Deerclops doesn't need to know what it does.",
        WAGSTAFF_TOOL_3 = "Nothing a Deerclops has ever seen.",
        WAGSTAFF_TOOL_4 = "Eye spy with my little eye...",
        WAGSTAFF_TOOL_5 = "This one. Take it from me.",

        MOONSTORM_GOGGLESHAT = "Is it befitting...?",

        MOON_DEVICE = {
            GENERIC = "My claws itch looking at it...",
            CONSTRUCTION1 = "It's starting... but I want to destroy it.",
            CONSTRUCTION2 = "It's all coming together... why.",
        },
		-- Wanda
        POCKETWATCH_HEAL = {
			GENERIC = "I have my own watchful eye...",
			RECHARGING = "I could wait as long as my claws itch to destroy.",
		},

        POCKETWATCH_REVIVE = {
			GENERIC = "I have my own watchful eye...",
			RECHARGING = "Us Deerclops are used to waiting.",
		},

        POCKETWATCH_WARP = {
			GENERIC = "I have my own watchful eye...",
			RECHARGING = "I could wait as long as my claws itch to destroy.",
		},

        POCKETWATCH_RECALL = {
			GENERIC = "I have my own watchful eye...",
			RECHARGING = "Us Deerclops are used to waiting.",
--fallback to speech_wilson.lua 			UNMARKED = "only_used_by_wanda",
--fallback to speech_wilson.lua 			MARKED_SAMESHARD = "only_used_by_wanda",
--fallback to speech_wilson.lua 			MARKED_DIFFERENTSHARD = "only_used_by_wanda",
		},

        POCKETWATCH_PORTAL = {
			GENERIC = "I have my own watchful eye...",
			RECHARGING = "I could wait as long as my claws itch to destroy.",
--fallback to speech_wilson.lua 			UNMARKED = "only_used_by_wanda unmarked",
--fallback to speech_wilson.lua 			MARKED_SAMESHARD = "only_used_by_wanda same shard",
--fallback to speech_wilson.lua 			MARKED_DIFFERENTSHARD = "only_used_by_wanda other shard",
		},

        POCKETWATCH_WEAPON = {
			GENERIC = "It needs to have an icy sting to it.",
--fallback to speech_wilson.lua 			DEPLETED = "only_used_by_wanda",
		},

        POCKETWATCH_PARTS = "Deerclops are made of very different things...",
        POCKETWATCH_DISMANTLER = "Look what they need to mimic a fraction of a Deerclops' power.",

        POCKETWATCH_PORTAL_ENTRANCE = 
		{
			GENERIC = "There must be things to destroy on the other side.",
			DIFFERENTSHARD = "There must be things to destroy on the other side.",
		},
        POCKETWATCH_PORTAL_EXIT = "I never look back.",
        -- Waterlog
        WATERTREE_PILLAR = "Rrr. Deerclops are bigger!",
        OCEANTREE = "The ocean won't spare you from my claws.",
        OCEANTREENUT = "I want to crushhh it.",
        WATERTREE_ROOT = "Claw sharpener.",

        OCEANTREE_PILLAR = "It will take a while to destroy this...",
        
        OCEANVINE = "I keep clawing at it, but nothing...",
        FIG = "It doesn't squishhh like I'd hoped...",
        FIG_COOKED = "Too warm for my claws. For now.",

        SPIDER_WATER = "You can't escape once the ocean freezes over.",
        MUTATOR_WATER = "Deerclops...don't eat. Ever. Go away...",
        OCEANVINE_COCOON = "I can't wait to tear it to shreds.",
        OCEANVINE_COCOON_BURNT = "Makes the claws all... ashy...",

        GRASSGATOR = "Does my eye scare you away...?",

        TREEGROWTHSOLUTION = "Why does it freeze to my claws...",

        FIGATONI = "Nothing hides from a Deerclops. Especially...this.",
        FIGKABAB = "The stick gives it an icy crunchhh...",
        KOALEFIG_TRUNK = "It doesn't involve a Deerclops' eye, for once...",
        FROGNEWTON = "Withhh a side of ice, it's edible.",

        -- The Terrorarium
        TERRARIUM = {
            GENERIC = "I hope an even tinier Deerclops destroys it.",
            CRIMSON = "My hooves are shaking in excitement...",
            ENABLED = "Don't. Stare. Directly. At it. RAUUUHG!!",
			WAITING_FOR_DARK = "I will keep watch of it. All night.",
			COOLDOWN = "More. I want more.",
			SPAWN_DISABLED = "I'll take a peek. No one will ever know.",
        },

        -- Wolfgang
        MIGHTY_GYM = 
        {
            GENERIC = "I could destroy even more...",
            BURNT = "I'll destroy it myself next time.",
        },

        DUMBBELL = "A Deerclops' gaze is heavier.",
        DUMBBELL_GOLDEN = "Another Deerclops could destroy it.",
		DUMBBELL_MARBLE = "Another Deerclops could destroy it.",
        DUMBBELL_GEM = "Another Deerclops could destroy it.",
        POTATOSACK = "A glacier of things to mashhh.",

        DUMBBELL_HEAT = "They're coating their things in Deerclops-repellent. Rrr.",
        DUMBBELL_REDGEM = "I should break it for being so warm.",
        DUMBBELL_BLUEGEM = "I'll break a sweat with this. Not good.",

        TERRARIUMCHEST = 
		{
			GENERIC = "I like the look of this.",
			BURNT = "Couldn't even smashhh it...",
			SHIMMER = "Eye like the look of this.",
		},

		EYEMASKHAT = "How do I look in it? I know. I will never take it off.",

        EYEOFTERROR = "We see things Eye-to-Eye!",
        EYEOFTERROR_MINI = "Now it's showing off...my one eye is just as fierce.",
        EYEOFTERROR_MINI_GROUNDED = "I feel snowflakes in my stomach.",

        FROZENBANANADAIQUIRI = "A treat for a Deerclops.",
        BUNNYSTEW = "Nothing can warm me up like destruction can.",
        MILKYWHITES = "It wasn't me...",

        CRITTER_EYEOFTERROR = "You are my second eye.",

        SHIELDOFTERROR ="Nobody will make fun of my eye ever again.",
        TWINOFTERROR1 = "Why do your eyes come in pairs...",
        TWINOFTERROR2 = "Why do your eyes come in pairs...",
		-- Cult of the Lamb
		COTL_TRINKET = "I like my eye just where it is...",
		TURF_COTL_GOLD = "The more hooves trample it, the better.",
		TURF_COTL_BRICK = "It could do with some more cracks.",
		COTL_TABERNACLE_LEVEL1 =
		{
			LIT = "Let me show you what my claws can do.",
			GENERIC = "Let it fall to ruin.",
		},
		COTL_TABERNACLE_LEVEL2 =
		{
			LIT = "My claws don't enjoy your warmthhh...",
			GENERIC = "Let it fall to ruin.",
		},
		COTL_TABERNACLE_LEVEL3 =
		{
			LIT = "I refuse to stare back...",
			GENERIC = "Let it fall to ruin.",
		},
        -- Year of the Catcoon
        CATTOY_MOUSE = "I'd play too rough with it.",
        KITCOON_NAMETAG = "Deerclops don't have names...",

		KITCOONDECOR1 =
        {
            GENERIC = "The fun comes with destroying it.",
            BURNT = "Not too satisfying.",
        },
		KITCOONDECOR2 =
        {
            GENERIC = "Not as fun as ruining the real thing.",
            BURNT = "Not too satisfying.",
        },

		KITCOONDECOR1_KIT = "I'm ready to destroy it.",
		KITCOONDECOR2_KIT = "I'm ready to destroy it.",
		-- WX78
        WX78MODULE_MAXHEALTH = "This was made just to be smashed by a Deerclops.",
		WX78MODULE_MAXSANITY1 = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_MAXSANITY = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_MOVESPEED = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_MOVESPEED2 = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_HEAT = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_NIGHTVISION = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_COLD = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_TASER = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_LIGHT = "This was made just to be smashed by a Deerclops.",
		WX78MODULE_MAXHUNGER1 = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_MAXHUNGER = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_MUSIC = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_BEE = "This was made just to be smashed by a Deerclops.",
        WX78MODULE_MAXHEALTH2 = "This was made just to be smashed by a Deerclops.",

        WX78_SCANNER = 
        {
            GENERIC ="You build things just to tempt my hooves...",
            HUNTING = "You build things just to tempt my hooves...",
            SCANNING = "You build things just to tempt my hooves...",
        },

        WX78_SCANNER_ITEM = "You build things just to tempt my hooves...",
        WX78_SCANNER_SUCCEEDED = "His eye blinks more than mine...",
        WX78_MODULEREMOVER = "We Deerclops know of easier ways to do this...",

        SCANDATA = "A Deerclops' eye knows all it needs.",

		-- QOL 2022
		JUSTEGGS = "There's more eggs than a Deerclops has eyes...",
		VEGGIEOMLET = "Best served cold. A Deerclops wouldn't know any other way...",
		TALLEGGS = "We Deerclops love cracking a few eggs.",
		BEEFALOFEED = "Does it come with ice...?",
		BEEFALOTREAT = "We Deerclops don't digest well enoughhh...",

        -- Pirates
        BOAT_ROTATOR = "Don't ask a Deerclops for directions.",
        BOAT_ROTATOR_KIT = "Deerclops weren't meant for this...",
        BOAT_BUMPER_KELP = "That won't stop a glacier.",
        BOAT_BUMPER_KELP_KIT = "I hope an iceberg approaches soon...",
        BOAT_BUMPER_SHELL = "That won't stop a glacier.",
        BOAT_BUMPER_SHELL_KIT = "I hope an iceberg approaches soon...",
        BOAT_BUMPER_CRABKING = "I hope it's not too tough to crack.",
        BOAT_BUMPER_CRABKING_KIT = "I hope an iceberg approaches soon...",

        BOAT_CANNON = {
            GENERIC = "It's not so loud empty.",
            AMMOLOADED = "I don't want to be around when it goes off...",
            NOAMMO = "It won't destroy without a cause...",
        },
        BOAT_CANNON_KIT = "If it helps destroy...",
        CANNONBALL_ROCK_ITEM = "I'd rather use this than an eye...",

        OCEAN_TRAWLER = {
            GENERIC = "I was told if I destroyed it I'd \"Sleep with all the fishes we didn't catch\".",
            LOWERED = "It's frozen in place.",
            CAUGHT = "Its claws have caught what it desires.",
            ESCAPED = "Something has escaped its grasp...",
            FIXED = "I'm not happy with this.",
        },
        OCEAN_TRAWLER_KIT = "It has fish it needs to destroy.",

        BOAT_MAGNET =
        {
            GENERIC = "It will be a large task to destroy...",
            ACTIVATED = "Its hum is clawing at my ears...",
        },
        BOAT_MAGNET_KIT = "They keep making me build things...",

        BOAT_MAGNET_BEACON =
        {
            GENERIC = "You shouldn't have.",
            ACTIVATED = "More to destroy.",
        },
        DOCK_KIT = "I don't want to help build! I want to destroy...",
        DOCK_WOODPOSTS_ITEM = "If I know how it's built, the easier it is to undo it.",

        MONKEYHUT =
        {
            GENERIC = "More homes to bring to ruin.",
            BURNT = "My claws are too cold for this.",
        },
        POWDER_MONKEY = "Rrr. How do I switch to their side?",
        PRIME_MATE = "Do you lead the path of destruction?",
		LIGHTCRAB = "I want to see its light fade...",
        CUTLESS = "The ice of my claws leave others in worse ruin.",
        CURSED_MONKEY_TOKEN = "It must be wet...",
        OAR_MONKEY = "More oar to destroy.",
        BANANABUSH = "It doesn't hide a Deerclops very well.",
        DUG_BANANABUSH = "It doesn't hide a Deerclops very well.",
        PALMCONETREE = "They're making Deerclops-proof tress...",
        PALMCONE_SEED = "I'll destroy it while I still can.",
        PALMCONE_SAPLING = "It's too easy to destroy like this.",
        PALMCONE_SCALE = "It has an icy edge to it...",
        MONKEYTAIL = "Which monkey do I pin this on?",
        DUG_MONKEYTAIL = "Which monkey do I pin this on?",

        MONKEY_MEDIUMHAT = "I can feel my antlers poking holes into it.",
        MONKEY_SMALLHAT = "I can only wrap it around my antlers...",
        POLLY_ROGERSHAT = "It gets caught on my antlers...",
        POLLY_ROGERS = "Do you have any final words...?",

        MONKEYISLAND_PORTAL = "Not easy to stare at...",
        MONKEYISLAND_PORTAL_DEBRIS = "A Deerclops must has already had its fun.",
        MONKEYQUEEN = "I'll destroy that throne...",
        MONKEYPILLAR = "My claws might start shaking in excitement.",
        PIRATE_FLAG_POLE = "They want me to tear it to shreds...",

        BLACKFLAG = "We Deerclops don't have our own flag...",
        PIRATE_STASH = "Time to dig in.",
        STASH_MAP = "The path to destruction.",

        BANANAJUICE = "It's a popsicle to me...",

		FENCE_ROTATOR = "Let a Deerclops show you how we \"rotate\" a fence.",

        CHARLIE_STAGE_POST = "All eyes on me...",
        CHARLIE_LECTURN = "You wouldn't cast a Deerclops... would you?",

        CHARLIE_HECKLER = "Enough squawking! You destroy us with your words...",

        PLAYBILL_THE_DOLL = "They all talk about us Deerclops, too.",
        STATUEHARP_HEDGESPAWNER = "I need to destroy it before it destroys itself...",
        HEDGEHOUND = "We'll see whose claws prick more.",
        HEDGEHOUND_BUSH = "This bush is too warm.",

        MASK_DOLLHAT = "There's too few cracks in it.",
        MASK_DOLLBROKENHAT = "My claws itch at it, awaiting its downfall.",
        MASK_DOLLREPAIREDHAT = "Its hopes have already been crushed...",
        MASK_BLACKSMITHHAT = "This one is... heartbroken?",
        MASK_MIRRORHAT = "I only want to destroy it more.",
        MASK_QUEENHAT = "Your stares are cold...",
        MASK_KINGHAT = "There's too few cracks in it.",
        MASK_TREEHAT = "There's too few cracks in it.",
        MASK_FOOLHAT = "There's too few cracks in it.",

        COSTUME_DOLL_BODY = "You'll be destroyed wearing this.",
        COSTUME_QUEEN_BODY = "You'll be destroyed wearing this.",
        COSTUME_KING_BODY = "You'll be destroyed wearing this.",
        COSTUME_BLACKSMITH_BODY = "Something that should be destroyed.",
        COSTUME_MIRROR_BODY = "You'll be destroyed wearing this.",
        COSTUME_TREE_BODY = "You'll be destroyed wearing this.",
        COSTUME_FOOL_BODY = "You'll be destroyed wearing this.",

        STAGEUSHER =
        {
            STANDING = "You tempt my claws too muchhh...",
            SITTING = "No matter how much I smash, it won't fall...",
        },
		SEWING_MANNEQUIN =
        {
            GENERIC = "Not as fun to destroy as the real thing...",
            BURNT = "It was destroyed before I had a chance...",
        },

		-- Waxwell
		MAGICIAN_CHEST = "I destroy one, I destroy them all!",
		TOPHAT_MAGICIAN = "All the more fun to smash when it belongs to someone.",

        -- Year of the Rabbit
        YOTR_FIGHTRING_KIT = "I can already feel it crumbling between my claws.",
        YOTR_FIGHTRING_BELL =
        {
            GENERIC = "Is it time to finally let loose?",
            PLAYING = "Watching them destroy each other is only half as fun...",
        },

        YOTR_DECOR_1 = {
            GENERAL = "I know just how to get that glare out of my eye.",
            OUT = "I should have already destroyed it.",
        },
        YOTR_DECOR_2 = {
            GENERAL = "I know just how to get that glare out of my eye.",
            OUT = "I should have already destroyed it.",
        },

        HAREBALL = "You make terrible ice cubes...",
        YOTR_DECOR_1_ITEM = "I can already feel it crumbling between my claws.",
        YOTR_DECOR_2_ITEM = "I can already feel it crumbling between my claws.",

		--
		DREADSTONE = "My claws shiver in new ways around it.",
		HORRORFUEL = "I'd like to think of it as cold...",
		DAYWALKER =
		{
			GENERIC = "You're more destructive than I thought...",
			IMPRISONED = "A Deerclops would have broken free.",
		},
		DAYWALKER_PILLAR =
		{
			GENERIC = "Stand close. It's a Deerclops' time to destroy.",
			EXPOSED = "I have to give it everything a Deerclops has got!",
		},
		DAYWALKER2 =
		{
			GENERIC = "Where's your rage? Let's destroy this place!",
			BURIED = "You've fallen to pieces...",
			HOSTILE = "Let the rage and destruction flow through you!",
		},
		ARMORDREADSTONE = "Cold and heartless, a piece for a Deerclops.",
		DREADSTONEHAT = "A Deerclops' antlers shouldn't shed.",

        -- Rifts 1
        LUNARRIFT_PORTAL = "All this destruction has my claws clapping!",
        LUNARRIFT_CRYSTAL = "I can't keep my eye off it.",

        LUNARTHRALL_PLANT = "Keep your eye off me.",
        LUNARTHRALL_PLANT_VINE_END = "I will teach you. I will enjoy this.",

		LUNAR_GRAZER = "What wouldn't desire the touch of cold?",

        PUREBRILLIANCE = "It's not too different from a Deerclops' heart.",
        LUNARPLANT_HUSK = "Deerclops enjoy tougher challenges.",

		LUNAR_FORGE = "You look fun. What do my claws say?",
		LUNAR_FORGE_KIT = "I'll enjoy destroying it eventually...",

		LUNARPLANT_KIT = "Only delays the inevitable.",
		ARMOR_LUNARPLANT = "If only it were colder...",
		LUNARPLANTHAT = "My head with it feels encased in ice.",
		BOMB_LUNARPLANT = "A little destruction always hurt someone.",
		STAFF_LUNARPLANT = "I can see through its eye.",
		SWORD_LUNARPLANT = "I prefer claw-to-claw.",
		PICKAXE_LUNARPLANT = "It cracks as much as it needs to for me.",
		SHOVEL_LUNARPLANT = "It has an icy charm.",

		BROKEN_FORGEDITEM = "I broke it.",

        PUNCHINGBAG = "Destruction without any of the satisfaction. I hate you.",

        -- Rifts 2
        SHADOWRIFT_PORTAL = "I love it when everything falls to pieces around me.",

		SHADOW_FORGE = "It has claws of its own...",
		SHADOW_FORGE_KIT = "Another Deerclops got to it first.",

        FUSED_SHADELING = "I'd like to see it claw at me.",
        FUSED_SHADELING_BOMB = "Are you watching me?",

		VOIDCLOTH = "I enjoy things in tatters.",
		VOIDCLOTH_KIT = "Destruction is always the first step.",
		VOIDCLOTHHAT = "My vision feels split with it...",
		ARMOR_VOIDCLOTH = "The tears in it are comforting.",

        VOIDCLOTH_UMBRELLA = "My antlers won't have to worry about destruction...",
        VOIDCLOTH_SCYTHE = "A Deerclops could get used to it.",

		SHADOWTHRALL_HANDS = "Your claws aren't as destructive as mine.",
		SHADOWTHRALL_HORNS = "You're not the first to hunger for a Deerclops.",
		SHADOWTHRALL_WINGS = "Once Deerclops develop wings it's over for you.",

        CHARLIE_NPC = "We Deerclops don't forget...",
        CHARLIE_HAND = "What do your claws itch for?",

        NITRE_FORMATION = "Lukewarm.",
        DREADSTONE_STACK = "It's all the same to me...",
        
        SCRAPBOOK_PAGE = "Someone's been having fun without me...",

        LEIF_IDOL = "Carving...? Only half destroying an object?",
        WOODCARVEDHAT = "Carve the rest of it away.",
        WALKING_STICK = "These were meant to be stepped upon by hooves.",

        IPECACSYRUP = "Ice won't save this.",
        BOMB_LUNARPLANT_WORMWOOD = "I'm not looking for competition. I destroy it.", -- Unused
        WORMWOOD_MUTANTPROXY_CARRAT =
        {
        	DEAD = "It's what I do.",
        	GENERIC = "Stomp!",
        	HELD = "My claws are cold to the touch.",
        	SLEEPING = "Deerclops sleep under snow, not dirt.",
        },
        WORMWOOD_MUTANTPROXY_LIGHTFLIER = "I hope you crunchhh.",
		WORMWOOD_MUTANTPROXY_FRUITDRAGON =
		{
			GENERIC = "I could crush you under my hooves.",
			RIPE = "Stomp with extra squashhh.",
			SLEEPING = "It's more fun when it's awake.",
		},

        SUPPORT_PILLAR_SCAFFOLD = "Hiding from me?",
        SUPPORT_PILLAR = "I hope nobody fixes that.",
        SUPPORT_PILLAR_COMPLETE = "This won't be the easiest structure I've destroyed...",
        SUPPORT_PILLAR_BROKEN = "How did I do? Impressive?",

		SUPPORT_PILLAR_DREADSTONE_SCAFFOLD = "Hiding from me?",
		SUPPORT_PILLAR_DREADSTONE = "I hope nobody fixes that.",
		SUPPORT_PILLAR_DREADSTONE_COMPLETE = "This will be my next destruction project.",
		SUPPORT_PILLAR_DREADSTONE_BROKEN = "It's a living...",

        WOLFGANG_WHISTLE = "Destroy my ears... One. More. Time.",

        -- Rifts 3

        MUTATEDDEERCLOPS = "What have we become...?",
        MUTATEDWARG = "It must be better this way...",
        MUTATEDBEARGER = "I think I like you better.",

        LUNARFROG = "Show off.",

        DEERCLOPSCORPSE =
        {
            GENERIC  = "What have they done to us...",
            BURNING  = "...",
            REVIVING = "We Deerclops don't go out without a fight! Rise!!",
        },

        WARGCORPSE =
        {
            GENERIC  = "What are we wating for? Tear into it.",
            BURNING  = "A Deerclops would have done it better...",
            REVIVING = "What is happening before my very eye?",
        },

        BEARGERCORPSE =
        {
            GENERIC  = "How far you've fallen...",
            BURNING  = "A coating of ice would have smelled better...",
            REVIVING = "What is happening before my very eye?",
        },

        BEARGERFUR_SACK = "Your fur isn't as cold as mine.",
        HOUNDSTOOTH_BLOWPIPE = "Its bite could be icier.",
        DEERCLOPSEYEBALL_SENTRYWARD =
        {
            GENERIC = "It's comforting...",    -- Enabled.
            NOEYEBALL = "Did we lose an eye again?",  -- Disabled.
        },
		DEERCLOPSEYEBALL_SENTRYWARD_KIT = "Your attempts at flattery are working...",

        SECURITY_PULSE_CAGE = "No light in that eye of yours.",
        SECURITY_PULSE_CAGE_FULL = "Your eye shines bright.",

		CARPENTRY_STATION =
        {
            GENERIC = "I don't like things that create.",
            BURNT = "I could have destroyed it better.",
        },

        WOOD_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "It's the simple pleasures that I enjoy destroying.",
            HAS_ITEM = "Now it's sentimental destruction. My favorite!",
            BURNT = "I could still destroy it...",
        },

        WOOD_CHAIR =
        {
            GENERIC = "A little treat just for my claws!",
            OCCUPIED = "I could destroy that. If you care.",
            BURNT = "Not how I would have done it...",
        },

        DECOR_CENTERPIECE = "Your sentiments only make my claws happier!",
        DECOR_LAMP = "Watch the light fade from it.",
        DECOR_FLOWERVASE =
        {
			GENERIC = "It's a pleasure to smash it.",
			EMPTY = "A Deerclops knows something to destroy when it sees it.",
			WILTED = "I better smash the rest of it.",
			FRESHLIGHT = "It has a few new eyes...",
			OLDLIGHT = "Its light isn't worth being saved from smashing.",
        },
        DECOR_PICTUREFRAME =
        {
            GENERIC = "Flavor.",
            UNDRAWN = "I can picture me tearing into it clearly.",
        },
        DECOR_PORTRAITFRAME = "I'll stare them in the eyes as I tear it to shreds.",

        PHONOGRAPH = "Rrr! My ears can't handle that ringing! I'm smashing it!",
        RECORD = "My ears don't stop ringing when it plays...",
        RECORD_CREEPYFOREST = "It's destruction to my ears.",
        RECORD_DANGER = "It leaves my ears in ruin...",
        RECORD_DAWN = "Too many noises. I hate it.",
        RECORD_DRSTYLE = "It leaves my ears in ruin...",
        RECORD_DUSK = "Too many noises. I hate it.",
        RECORD_EFS = "It's destruction to my ears.",
        RECORD_END = "It leaves my ears in ruin...",
        RECORD_MAIN = "Too many noises. I hate it.",
        RECORD_WORKTOBEDONE = "It's destruction to my ears.",

        ARCHIVE_ORCHESTRINA_MAIN = "We Deerclops prefer to brute force these.",

        WAGPUNKHAT = "It makes my antlers rattle...",
        ARMORWAGPUNK = "My fur collects enough clutter...",
        WAGSTAFF_MACHINERY = "Looks like it's my lucky day.",
        WAGPUNK_BITS = "More and more bits! My claws clap!",
        WAGPUNKBITS_KIT = "You won't have anything left to fix with me here.",

        WAGSTAFF_MUTATIONS_NOTE = "More to shred.",

        -- Meta 3

        BATTLESONG_INSTANT_REVIVE = "Things are better when left destroyed.",

        WATHGRITHR_IMPROVEDHAT = "Having more antlers doesn't impress me...",
        SPEAR_WATHGRITHR_LIGHTNING = "Don't poke me with that. I know you want to...",

        BATTLESONG_CONTAINER = "I'll kick it over. A better way of spilling your songs.",

        SADDLE_WATHGRITHR = "Don't put it on me... We Deerclops weren't meant to race.",

        WATHGRITHR_SHIELD = "Nothing a Deerclops can't claw their way throughhh...",

        BATTLESONG_SHADOWALIGNED = "We Deerclops don't have much to say...",
        BATTLESONG_LUNARALIGNED = "We Deerclops don't have much to say...",

		SHARKBOI = "Have you been chewing on ice...? I like that.",
        BOOTLEG = "The bones are the best part.",
        OCEANWHIRLPORTAL = "Even the ocean has two eyes of its own...",

        EMBERLIGHT = "I hate it when they make what I can't destroy...",

        -- Year of the Dragon
        YOTD_DRAGONSHRINE =
        {
            GENERIC = "I live to destroy, it lives to burn.",
            EMPTY = "It needs charcoal. I need to destroy.",
            BURNT = "Rrrr...",
        },

        DRAGONBOAT_KIT = "I can already hear it cracking!",
        DRAGONBOAT_PACK = "If it means there's more to destroy...",

        BOATRACE_CHECKPOINT = "There's a point to destruction.",
        BOATRACE_CHECKPOINT_THROWABLE_DEPLOYKIT = "My eye has checked it.",
        BOATRACE_START = "When does the destruction start?",
        BOATRACE_START_THROWABLE_DEPLOYKIT = "I could start destroying it now.",

        BOATRACE_PRIMEMATE = "I won't let you ruin my victory...",
        BOATRACE_SPECTATOR_DRAGONLING = "Are those cheers of pity...",

        YOTD_STEERINGWHEEL = "Where destruction goes, I follow.",
        YOTD_STEERINGWHEEL_ITEM = "It's more fun to destroy what's built.",
        YOTD_OAR = "It gets stuck to my own claws...",
        YOTD_ANCHOR = "I can hear every thud it makes...",
        YOTD_ANCHOR_ITEM = "It must leave the ocean floor in ruin.",
        MAST_YOTD = "Your sails would look better with holes.",
        MAST_YOTD_ITEM = "I'll destroy it once someone's built it.",
        BOAT_BUMPER_YOTD = "Your protective coats don't deflect ice.",
        BOAT_BUMPER_YOTD_KIT = "Your protective coats don't deflect ice.",
        BOATRACE_SEASTACK = "Let it leave all the other boats in ruin!",
        BOATRACE_SEASTACK_THROWABLE_DEPLOYKIT = "It would be a shame to see the other's boats in ruin... For them!",
        BOATRACE_SEASTACK_MONKEY = "Let it leave all the other boats in ruin!",
        BOATRACE_SEASTACK_MONKEY_THROWABLE_DEPLOYKIT = "It would be a shame to see the other's boats in ruin... For them!",
        MASTUPGRADE_LAMP_YOTD = "I don't need my eye to be filled with your light...",
        MASTUPGRADE_LAMP_ITEM_YOTD = "Too bright.",
        WALKINGPLANK_YOTD = "We Deerclops don't float...",
        CHESSPIECE_YOTD = "Your flames are best cold and lifeless.",

        -- Rifts / Meta QoL

        HEALINGSALVE_ACID = "Enough terrible things already stick to my fur...",

        BEESWAX_SPRAY = "That smell will leave you frozen in place.",
        WAXED_PLANT = "We Deerclops love all things frozen.", -- Used for all waxed plants, from farm plants to trees.

        STORAGE_ROBOT = {
            GENERIC = "You carry a heavy burden. These claws can take it away.",
            BROKEN = "You're looking better than ever.",
        },

        SCRAP_MONOCLEHAT = "Was it made for a Deerclops? ...The broken lens is a good touchhh.",
        SCRAPHAT = "Not a good look for a Deerclops...",

        FENCE_JUNK = "It's ready to crumble to bits.",
        JUNK_PILE = "My claws will enjoy digging in.",
        JUNK_PILE_BIG = "My claws have a lot of work to do...",

        ARMOR_LUNARPLANT_HUSK = "We Deerclops already have a frigid outer husk.",

        -- Meta 4 / Ocean QoL

        OTTER = "Lead me to your den. You can trust a Deerclops.",
        OTTERDEN = {
            GENERIC = "How sentimental.",
            HAS_LOOT = "I'll enjoy picking it to shreds.",
        },
        OTTERDEN_DEAD = "I like it better this way, for what it's worthhh...",

        BOAT_ANCIENT_ITEM = "The older it is the easier it cracks.",
        BOAT_ANCIENT_CONTAINER = "What are you hiding for me?",
        WALKINGPLANK_ANCIENT = "I'd snap it in half.",

        ANCIENTTREE_SEED = "I don't care what it is so long as it crunches.",

        ANCIENTTREE_GEM = {
            GENERIC = "I enjoy destroying new, interesting things.",
            STUMP = "Good!",
        },

        ANCIENTTREE_SAPLING_ITEM = "I'll let it grow until it's just right to crushhh.",

        ANCIENTTREE_SAPLING = {
            GENERIC = "It'll be more satisfying to ruin fully grown.",
            WRONG_TILE = "It'll only destroy itself here.",
            WRONG_SEASON = "Its hide isn't strong enough for harsh weather...",
        },
 
        ANCIENTTREE_NIGHTVISION = {
            GENERIC = "They're all so afraid of big, hairy, cold things...",
            STUMP = "I'm owed a favor...",
        },

        ANCIENTFRUIT_GEM = "Don't get any ideas by removing its tough outer skin.",
        ANCIENTFRUIT_NIGHTVISION = "I'd like to stomp its wriggling out.",
        ANCIENTFRUIT_NIGHTVISION_COOKED = "My hooves would have stopped its wriggling.",

        BOATPATCH_KELP = "It'd be better to have me finish it off.",

        CRABKING_MOB = "A treat for my hooves to trample.",
        CRABKING_MOB_KNIGHT = "A Deerclops' claws don't pinch.",
        CRABKING_CANNONTOWER = "What a bombshell...",
        CRABKING_ICEWALL = "It's almost too nice to destroy...",

        SALTLICK_IMPROVED = "If they won't let me taste it I'll just have to destroy it...",

        OFFERING_POT =
        {
            GENERIC = "I'll wait until it's filled with hope to destroy it.",
            SOME_KELP = "It's not too late to crumple it and start over.",
            LOTS_OF_KELP = "I'll have kelp frozen to my claws for seasons...",
        },

        OFFERING_POT_UPGRADED =
        {
            GENERIC = "I'll wait until it's filled with hope to destroy it.",
            SOME_KELP = "It's not too late to crumple it and start over.",
            LOTS_OF_KELP = "I'll have kelp frozen to my claws for seasons...",
        },

        MERM_ARMORY = "We Deerclops tread where we may...",
        MERM_ARMORY_UPGRADED = "We Deerclops tread where we may...",
        MERM_TOOLSHED = "The structure is more fun to break than the tools.",
        MERM_TOOLSHED_UPGRADED = "The structure is more fun to break than the tools.",
        MERMARMORHAT = "A Deerclops' hooves could crack it in two.",
        MERMARMORUPGRADEDHAT = "A Deerclops' hooves could crack it in two.",
        MERM_TOOL = "They won't notice me breaking a few.",
        MERM_TOOL_UPGRADED = "They won't notice me breaking a few.",

        WURT_SWAMPITEM_SHADOW = "I wish I could bring winter with me where I go...",
        WURT_SWAMPITEM_LUNAR = "I wish I could bring winter with me where I go...",

        MERM_SHADOW = "You're colder than before, aren't you?",
        MERMGUARD_SHADOW = "You're colder than before, aren't you?",

        MERM_LUNAR = "You look better without all that warmthhh...",
        MERMGUARD_LUNAR = "You look better without all that warmthhh...",
    },

    DESCRIBE_GENERIC = "Rrrr...",
    DESCRIBE_TOODARK = "My eye's fallen out!?",
    DESCRIBE_SMOLDERING = "Too hot. My finger will extinguish it.",

	DESCRIBE_PLANTHAPPY = "It's happy. Like a Deerclops destroying walls.",
    DESCRIBE_PLANTVERYSTRESSED = "Stressed. Like a Deerclops hearing too muchhh.",
    DESCRIBE_PLANTSTRESSED = "It's getting cold and bothered.",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "I need to trample the weeds with my hooves.",
    DESCRIBE_PLANTSTRESSORFAMILY = "A Deerclops likes to be alone. This plant doesn't...",
	DESCRIBE_PLANTSTRESSOROVERCROWDING = "It needs its space...",
    DESCRIBE_PLANTSTRESSORSEASON = "It won't survive this weather...",
    DESCRIBE_PLANTSTRESSORMOISTURE = "I can't give it water, only ice.",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "Needs better stomping grounds.",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "It needs to hear chattering.",

    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "My teeth do the smashing.",
		WINTERSFEASTFUEL = "The taste of my nature.",
    },
}
