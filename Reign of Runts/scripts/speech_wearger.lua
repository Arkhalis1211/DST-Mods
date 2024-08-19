return{
	ACTIONFAIL =
	{
	    APPRAISE = 
        {
            NOTNOW = "Grrr... busy.",
        },
        REPAIR =
        {
            WRONGPIECE = "This is nothing.",
        },
        BUILD =
        {
            MOUNTED = "Must reach ground to pound.",
            HASPET = "Enough.",
			TICOON = "Already chasing another.",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "Hair sheds better asleep.",
			GENERIC = "No time for shedding.",
			NOBITS = "There is no hair left to shed.",
            REFUSE = "Hair already sheds itself.",
            SOMEONEELSESBEEFALO = "Hmph. Not my hair to shed.",
		},
		STORE =
		{
			GENERIC = "Rrggg. Too full.",
			NOTALLOWED = "Grrrh. Not there.",
			INUSE = "(sniff) Aren't hiding food, are you?",
            NOTMASTERCHEF = "Where is the food?",
		},
        CONSTRUCT =
        {
            INUSE = "Already pounding. Or grounding.",
            NOTALLOWED = "This is doing nothing.",
            EMPTY = "Nothing to pound. Or ground.",
            MISMATCH = "This is... wrong?",
            NOTREADY = "Not now. Bad time.",
        },
		RUMMAGE =
		{	
			GENERIC = "Rrggg. Too full.",
			INUSE = "(sniff) Aren't hiding food, are you?",
            NOTMASTERCHEF = "Where is the food?",
		},
		UNLOCK =
        {
            WRONGKEY = "This is... nothing.",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "This is not good key.",
        	KLAUS = "Grrrh... Someone isn't hibernating.",
			QUAGMIRE_WRONGKEY = "Key won't pound the lock.",
        },
		ACTIVATE = 
		{
			LOCKED_GATE = "I'll break in. For food.",
			HOSTBUSY = "I am known to wait. Hpmf.",
            CARNIVAL_HOST_HERE = "Where...?",
            NOCARNIVAL = "Must be off to hibernate.",
			EMPTY_CATCOONDEN = "(sniff sniff) Nothing.",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDERS = "Need more.",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDING_SPOTS = "Too easy to sniff out.",
			KITCOON_HIDEANDSEEK_ONE_GAME_PER_DAY = "No more play. Only sleep.",
            MANNEQUIN_EQUIPSWAPFAILED = "Not stashed here.",
            PILLOWFIGHT_NO_HANDPILLOW = "Not letting me play. Grrr.",
            NOTMYBERNIE = "GrrrrRRR! Need to assert dominance!",
            NOTMERM = "Hmm. Not dinner bell.",
		},
		OPEN_CRAFTING = 
		{
            PROFESSIONALCHEF = "Where is the food?",
			SHADOWMAGIC = "Grrr!!! Head splitting!",
			FLOODED = "Needs to sit in the sun a while. Good idea.",
		},
        COOK =
        {
            GENERIC = "Food is not appearing! Grrrg!",
            INUSE = "GRRrrrr...",
            TOOFAR = "Food, closer!",
        },
	    START_CARRAT_RACE =
        {
            NO_RACERS = "There is... no rat.",
        },
		DISMANTLE =
		{
			COOKING = "Need to eat the food first.",
			INUSE = "Hibernating?",
			NOTEMPTY = "(sniff sniff) Still leftovers.",
        },
        FISH_OCEAN =
		{
			TOODEEP = "Rod is not enough.",
		},
        OCEAN_FISHING_POND =
		{
			WRONGGEAR = "I'll dive in with my teeth.",
		},

        GIVE =
        {
            GENERIC = "Grrrr...",
            DEAD = "Need to stock up better next season.",
            SLEEPING = "Too late. Already hibernating.",
            BUSY = "Grrrg. Take this. Now.",
            ABIGAILHEART = "Not hungry for heart?",
            GHOSTHEART = "Not hungry enough.",
            NOTGEM = "Hrmphf. Not here.",
            WRONGGEM = "All gems look the same?",
            NOTSTAFF = "Grrrrhg... Not fitting.",
            MUSHROOMFARM_NEEDSSHROOM = "Needs mushroom. Me too.",
            MUSHROOMFARM_NEEDSLOG = "Needs log. Hrmph.",
			MUSHROOMFARM_NOMOONALLOWED = "(snifff) No. Not here.",
            SLOTFULL = "No room.",
            FOODFULL = "Ready to hibernate.",
            NOTDISH = "I will eat what it doesn't.",
            DUPLICATE = "Do not need another.",
            NOTSCULPTABLE = "Grrr...? Why not?",
            NOTATRIUMKEY = "No...? This one?",
            CANTSHADOWREVIVE = "Heart isn't pounding.",
            WRONGSHADOWFORM = "Wrong bones.",
            NOMOON = "Nothing above.",
			PIGKINGGAME_MESSY = "Too much shedding left on ground.",
			PIGKINGGAME_DANGER = "Grrrh!",
			PIGKINGGAME_TOOLATE = "Ready to sleep.",
			CARNIVALGAME_INVALID_ITEM = "Not it.",
			CARNIVALGAME_ALREADY_PLAYING = "Busy bears.",
			SPIDERNOHAT = "Need to pack food, not fancy.",
			TERRARIUM_REFUSE = "Need...not this.",
            TERRARIUM_COOLDOWN = "(sniff) No tree yet.",
            NOTAMONKEY = "Grrr... Growling contest?",
            QUEENBUSY = "Waiting. Good time to hibernate.",
			NOTMOTHER = "Must not be hungry. Will try next life.",
        },
        GIVETOPLAYER =
        {
            FULL = "Has enough for hibernation.",
            DEAD = "Need to stock up better next season.",
            SLEEPING = "Too late. Already hibernating.",
            BUSY = "Grrrg. Take this. Now.",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "Has enough for hibernation.",
            DEAD = "Need to stock up better next season...",
            SLEEPING = "Too late. Already hibernating.",
            BUSY = "Grrr... Take these. Now.",
        },
        WRITE =
        {
            GENERIC = "Cannot write.",
            INUSE = "Use my claws?",
        },
        DRAW =
        {
            NOIMAGE = "Nothing.",
        },
        CHANGEIN =
        {
            GENERIC = "Hair is always shedding anyway.",
            BURNING = "Too hot.",
            INUSE = "Shedding clothes for new ones?",
			NOTENOUGHHAIR = "Needs to shed less.",
			NOOCCUPANT = "There is... nothing here.",
        },
        ATTUNE =
        {
            NOHEALTH = "Grr... I shed blood like hair.",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "Grrr. I get that way when my stomach is empty.",
            INUSE = "You. Get down. Now.",
			SLEEPING = "Hibernation over.",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "Angry. It needs to eat.",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "Head full. Thoughts many.",
            CANTLEARN = "Can't. Don't care.",

            --MapRecorder/MapExplorer
            WRONGWORLD = "Not from here.",
			--MapSpotRevealer/messagebottle
			MESSAGEBOTTLEMANAGER_NOT_FOUND = "(sniff) Not for here.",--Likely trying to read messagebottle treasure map in caves

			STASH_MAP_NOT_FOUND = "No hibernation spot.",-- Likely trying to read stash map  in world without stash
        },
        WRAPBUNDLE =
        {
            EMPTY = "Need something for hibernation.",
        },
        PICKUP =
        {
			RESTRICTION = "Grrrr. Not for me.",
			INUSE = "Yours? Grrrrg.",
		    NOTMINE_YOTC =
            {
                "(sniff) ...Not mine.",
                "(sniff sniff) Doesn't smell like mine.",
            },
            FULL_OF_CURSES = "(sniff) I'm full.",
        },
        SLAUGHTER =
        {
            TOOFAR = "Claws can't reach.",
        },
        REPLATE =
        {
            MISMATCH = "Grrrh. Picky.", 
            SAMEDISH = "But I always take many for hibernation?", 
        },
        SAIL =
        {
        	REPAIR = "Fine.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "I catch droplets in my mouth.",
            BAD_TIMING1 = "Grrr...",
            BAD_TIMING2 = "Grr. Making sparkles on fur.",
        },
        LOWER_SAIL_FAIL =
        {
            "Come, closer!",
            "Grrrrrr!",
            "Graauhg!",
        },
        BATHBOMB =
        {
            GLASSED = "Too hard?",
            ALREADY_BOMBED = "Already slammed.",
        },
		GIVE_TACKLESKETCH =
		{
			DUPLICATE = "Grr! Never complain about too many things!",
		},
		COMPARE_WEIGHABLE =
		{
			FISH_TOO_SMALL = "Not big enough for hibernating.",
            OVERSIZEDVEGGIES_TOO_SMALL = "Not heavy.",
		},
		STEER_BOAT = --SWC
		{
			NOTSURFER = "I hear a... creaking?",
		},
		PLANTREGISTRY_RESEARCH_FAIL =
        {
            GENERIC = "Already hibernating in the... mind.",
			FERTILIZER = "No more sniffing.",
        },
        FILL_OCEAN =
        {
            UNSUITABLE_FOR_PLANTS = "Too salty. Hmphf.",
        },
        POUR_WATER =
        {
            OUT_OF_WATER = "Out of stock.",
        },
        POUR_WATER_GROUNDTILE =
        {
            OUT_OF_WATER = "No more water in stock.",
        },
		USEITEMON =
        {
            --GENERIC = "I can't use this on that!",

            --construction is PREFABNAME_REASON
            BEEF_BELL_INVALID_TARGET = "Hmpf. No.",
            BEEF_BELL_ALREADY_USED = "(sniff sniff) Not mine.",
            BEEF_BELL_HAS_BEEF_ALREADY = "Too much hair.",
        },
        HITCHUP =
        {
            NEEDBEEF = "Won't fit me. Needs something else.",
            NEEDBEEF_CLOSER = "Needs to come closer.",
            BEEF_HITCHED = "It is...already there.",
			INMOOD = "Too awake. Hungry?",
        },
        MARK = 
        {
            ALREADY_MARKED = "Not moving.",
            NOT_PARTICIPANT = "Not my spot.",
        },
        YOTB_STARTCONTEST = 
        {
            DOESNTWORK = "(sniff sniff) Nobody's home.",
            ALREADYACTIVE = "Not hibernating here this season.",
        },
        YOTB_UNLOCKSKIN = 
        {
            ALREADYKNOWN = "No more head-splitting thoughts!",
        },
        CARNIVALGAME_FEED =
        {
            TOO_LATE = "Grr. Open up! Must eat before winter!",
        },
		HERD_FOLLOWERS =
        {
            WEBBERONLY = "Not for me.",
        },
		HARVEST =
        {
            DOER_ISNT_MODULE_OWNER = "Not one of many words.",
        },
        PICK =
        {
            NOTHING_INSIDE = "Empty. Like head.",
        },

        HEAL =
        {
            NOT_MERM = "(sniff) For merm. Not Bearger.",
        },
		-- IA / SW
		REPAIRBOAT = 
		{
			GENERIC = "Fine.",
		},
		EMBARK = 
		{
			INUSE = "GRRRR. Will not forget this.",
		},
		-- RUNTS
		SEW =
        {
            NOTWEARGER = "Grrr...Need to think more on this...will take a long time.",
        },
	},
	ANNOUNCE_CANNOT_BUILD =
	{
		NO_INGREDIENTS = "Grrr... Not enough stashed away to make.",
		NO_TECH = "Haven't made room in head for that.",
		NO_STATION = "Need... hibernation station.",
	},
	ACTIONFAIL_GENERIC = "Grrrr!!",
	ANNOUNCE_BOAT_LEAK = "Boat is being slammed. Not me!",
	ANNOUNCE_BOAT_SINK = "Grrr! Too heavy, too much!",
	ANNOUNCE_DIG_DISEASE_WARNING = "Will slam ground for you.",
	ANNOUNCE_PICK_DISEASE_WARNING = "(sniff sniff) Grrrhk!",
	ANNOUNCE_ADVENTUREFAIL = "Work, slammed like claws onto ground.",
    ANNOUNCE_MOUNT_LOWHEALTH = "You are hurt?",

	ANNOUNCE_BEES = "HONEY!!",
	ANNOUNCE_BOOMERANG = "Grhk!",
	ANNOUNCE_CHARLIE = "There is a... (sniff) flower.",
	ANNOUNCE_CHARLIE_ATTACK = "RAAHGG! Bearger are not the FOOD!",
	ANNOUNCE_COLD = "Grr-r-r... Should be... hibernating.",
	ANNOUNCE_HOT = "Need to shed more hair...",
	ANNOUNCE_CRAFTING_FAIL = "Grrr... Not good.",
	ANNOUNCE_DEERCLOPS = "Ground is being slammed... Not by me?",
	ANNOUNCE_CAVEIN = "Bearger is angry pummeling above?",
	ANNOUNCE_ANTLION_SINKHOLE = 
	{
		"Wasn't me?",
		"My claws didn't slam!",
		"Didn't beat ground. This time.",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "For hibernation. Leave.",
        "Take this. Hibernate.",
        "Take and hibernate.",
	},
	ANNOUNCE_SACREDCHEST_YES = "Rrr? Me?",
	ANNOUNCE_SACREDCHEST_NO = "Grrrrh! Will just smash in!",
    ANNOUNCE_DUSK = "Enough food for sleeping yet?",

	ANNOUNCE_EAT =
	{
		GENERIC = "Mmm...mm...MM!",
		PAINFUL = "Mm... hurt.",
		SPOILED = "Food wasn't so good...",
		STALE = "Tastes... different.",
		INVALID = "Can't chew? Crunch?",
        YUCKY = "Grrk!! Don't like that!",
    },
    
    ANNOUNCE_ENCUMBERED =
    {
        "Hair is... falling out...",
        "For... hibernation!",
        "Must keep... for hibernation.",
        "Hibernation... not easy.",
        "Must be full for... hibernation.",
        "Must work for... winter...",
        "Ground cracks at each step...",
        "Grrr... hrrr... hrr.",
        "Grr... Rarrgh...",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING = 
    {
		"Hair is not only thing falling out...",
		"Entire world is crumbling like Bearger's ground pound!",
		"Shedding... everything.",
	},
    ANNOUNCE_RUINS_RESET = "Everything is back from hibernation.",
    ANNOUNCE_SNARED = "Raaaahg!!",
	ANNOUNCE_SNARED_IVY = "RRAHH! Must...get...FOOD!!",
    ANNOUNCE_REPELLED = "Claws can't slam!",
	ANNOUNCE_ENTER_DARK = "Grr. Can't see, can't eat.",
	ANNOUNCE_ENTER_LIGHT = "Can see again. Good for eating.",
	ANNOUNCE_FREEDOM = "Back from... hibernating?",
	ANNOUNCE_HIGHRESEARCH = "Head is FULL!",
	ANNOUNCE_HOUNDS = "Growling. Will growl back!",
	ANNOUNCE_WORMS = "Grr! I will smash the ground!",
    ANNOUNCE_ACIDBATS = "Must growl louder! GRRRRR.",
	ANNOUNCE_HUNGRY = "Grrrr... Fooooood....!",
	ANNOUNCE_HUNT_BEAST_NEARBY = "RAAHHH! Found!",
	ANNOUNCE_HUNT_LOST_TRAIL = "(sniff sniff) ...Nothing.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "Not good in hibernating seasons...",
    ANNOUNCE_HUNT_START_FORK = "Hmph. Claw marks are... not mine.",
    ANNOUNCE_HUNT_SUCCESSFUL_FORK = "I have you now...Grrrr.",
    ANNOUNCE_HUNT_WRONG_FORK = "Grrrr. Something is rumbling near me.",
    ANNOUNCE_HUNT_AVOID_FORK = "(sniffff) This way. Easier prey.",
	ANNOUNCE_INV_FULL = "Stocked up for hibernation.",
	ANNOUNCE_KNOCKEDOUT = "Wasn't a hibernation... grrrg.",
	ANNOUNCE_LOWRESEARCH = "Head empty.",
	ANNOUNCE_MOSQUITOS = "Grrr...!?",
    ANNOUNCE_NOWARDROBEONFIRE = "Will wait for it to cool off.",
    ANNOUNCE_NODANGERGIFT = "GRRrrr.",
    ANNOUNCE_NOMOUNTEDGIFT = "One beast too many. Grr.",
	ANNOUNCE_NODANGERSLEEP = "RAAHHG! Disturbing sleep!",
	ANNOUNCE_NODAYSLEEP = "Must collect first.",
	ANNOUNCE_NODAYSLEEP_CAVE = "Too early.",
	ANNOUNCE_NOHUNGERSLEEP = "Can't sleep on empty stomach...",
	ANNOUNCE_NOSLEEPONFIRE = "Fur is warm enough...",
	ANNOUNCE_NOSLEEPHASPERMANENTLIGHT = "Should hibernate under ground next time...",
	ANNOUNCE_NODANGERSIESTA = "RAAHHG! Disturbing sleep!",
	ANNOUNCE_NONIGHTSIESTA = "Need proper hibernating spot.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "Need proper hibernating spot.",
	ANNOUNCE_NOHUNGERSIESTA = "Need... FOOD! GRRrr...",
	ANNOUNCE_NODANGERAFK = "RAHHG... Not yet!",
	ANNOUNCE_NO_TRAP = "(sniff sniff) Food!",
	ANNOUNCE_PECKED = "GrrrRrrRr...",
	ANNOUNCE_QUAKE = "Ground is slamming itself.",
	ANNOUNCE_RESEARCH = "Head FULL like a hibernating stomach.",
	ANNOUNCE_SHELTER = "Good spot.",
	ANNOUNCE_THORNS = "Grrr...",
	ANNOUNCE_BURNT = "Claws too toasted.",
	ANNOUNCE_TORCH_OUT = "Light stick? GRRrr...",
	ANNOUNCE_THURIBLE_OUT = "Grrr! Gone!",
	ANNOUNCE_FAN_OUT = "Fan shed all hairs.",
    ANNOUNCE_COMPASS_OUT = "Are claws too sharp?",
	ANNOUNCE_TRAP_WENT_OFF = "Grr!",
	ANNOUNCE_TREASURE = "(sniff sniff) ...Treasure?",
	ANNOUNCE_UNIMPLEMENTED = "GRR! Can't touch!",
	ANNOUNCE_WORMHOLE = "Is that what food feels like...?",
	ANNOUNCE_TOWNPORTALTELEPORT = "All over fur and in nose. Grrhk.",
	ANNOUNCE_CANFIX = "\nClaws can... fix?",
	ANNOUNCE_ACCOMPLISHMENT = "Grr-rh-rh-rh!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "Slammed!",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Not enough food for hibernating.",
	ANNOUNCE_TOOL_SLIP = "GRRR.",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "All hairs are standing up.",
	ANNOUNCE_TOADESCAPING = "RAHG! No escaping!",
	ANNOUNCE_TOADESCAPED = "Won't let it escape next time.",

	ANNOUNCE_DAMP = "Fur is sprinkling.",
	ANNOUNCE_WET = "Fur doesn't soak up much water...",
	ANNOUNCE_WETTER = "Fur is slog. Can't hibernate...",
	ANNOUNCE_SOAKED = "GrrRrRr... Too wet!",

	ANNOUNCE_WASHED_ASHORE = "...Catch any fish in mouth?",

    ANNOUNCE_DESPAWN = "Is this... hibernating for good?",
	ANNOUNCE_BECOMEGHOST = "OoOoooo!!",
	ANNOUNCE_GHOSTDRAIN = "There is a splitting... head is splitting.",
	ANNOUNCE_PETRIFED_TREES = "Trees afraid of me...?",
	ANNOUNCE_KLAUS_ENRAGE = "RAAH! Its food stash must have been eaten!",
	ANNOUNCE_KLAUS_UNCHAINED = "It's shedding too!",
	ANNOUNCE_KLAUS_CALLFORHELP = "Bearger can scream too! GRRR!",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "Inside it. Food?",
		GLASS_LOW = "Almost out. Close.",
		GLASS_REVEAL = "(sniff) ...Wasn't food.",
		IDOL_MED = "Inside it. Food?",
		IDOL_LOW = "Almost out. Close.",
		IDOL_REVEAL = "(sniff) ...Wasn't food.",
		SEED_MED = "Inside it. Food?",
		SEED_LOW = "Almost out. Close.",
		SEED_REVEAL = "(sniff) ...Wasn't food.",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "What was...?",
	ANNOUNCE_BRAVERY_POTION = "Trees will fear ME! Not other way around!",
	ANNOUNCE_MOONPOTION_FAILED = "That was... nothing.",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "GRRrrRrR! Back off my food!",
	ANNOUNCE_WINTERS_FEAST_BUFF = "Food makes a Bearger happy. Mm.",
	ANNOUNCE_IS_FEASTING = "Gr-rh-rh-rh!!",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "Need to eat more...",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "Grrr... get back up.",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "No more hibernating in fights.",
    ANNOUNCE_REVIVED_FROM_CORPSE = "Wasn't ready to hibernate. Hrmph.",

    ANNOUNCE_FLARE_SEEN = "Sky is growling.",
	ANNOUNCE_MEGA_FLARE_SEEN = "GRRRRR. Do not bother me.",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Grrrr....",

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "Should just eat food separate.",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "GRR!!",
    QUAGMIRE_ANNOUNCE_LOSE = "(sniff) ...Fish?",
    QUAGMIRE_ANNOUNCE_WIN = "Time to hibernate.",

--fallback to speech_wilson.lua     ANNOUNCE_ROYALTY =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "PLACEHOLDER",
--fallback to speech_wilson.lua         "PLACEHOLDER",
--fallback to speech_wilson.lua         "PLACEHOLDER",
--fallback to speech_wilson.lua     },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "Hair is tingling!",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "GRAAAAHW!!!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "Can take on anything! Fur is fierce!",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "Claws feeling more urge to ground pound. Must get on that.",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "Hair is dry and stiff. This is fine.",
	ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE   = "No more hibernating, time for scavenging.",
    
    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "Hair is back to shedding, no tingles.",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "Not as angry now.",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "Soft and pudgy again...",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "Could use a long sleep...",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "Hair feels not so dry.",
	ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE   = "Good time for hibernation...",
    
	ANNOUNCE_OCEANFISHING_LINESNAP = "GRRR!!!",
	ANNOUNCE_OCEANFISHING_LINETOOLOOSE = "Needs to stiffen. Like teeth.",
	ANNOUNCE_OCEANFISHING_GOTAWAY = "Grrrrrrr... Using claws and teeth is better.",
	ANNOUNCE_OCEANFISHING_BADCAST = "...Was used to just using mouth.",
	ANNOUNCE_OCEANFISHING_IDLE_QUOTE = 
	{
		"Could be hibernating...",
		"How much hair has shed...?",
		"Grr... Should go get honey.",
		"Hop into mouth. For me.",
	},

	ANNOUNCE_HIBEARNATION = "Time for hibernation.", --wearger specific

	-- SHIPWRECKED / ISLAND
	ANNOUNCE_MAGIC_FAIL = "No, not here.",
	ANNOUNCE_SHARX = "Grrr. Hunger hounds.",
	ANNOUNCE_TREASURE = "(sniff, sniff) Goes somewhere. Sure of it.",
	ANNOUNCE_TREASURE_DISCOVER = "Got you!",
	ANNOUNCE_MORETREASURE = "More, more, more!",
	ANNOUNCE_OTHER_WORLD_TREASURE = "Doesn't smell like here.",
	ANNOUNCE_OTHER_WORLD_PLANT = "Doesn't hibernate here.",

	ANNOUNCE_IA_MESSAGEBOTTLE =
	{
		"No scent. Sad.",
	},
	ANNOUNCE_VOLCANO_ERUPT = "Smell of... burnt fur. Gruh-oh.",
	ANNOUNCE_MAPWRAP_WARN = "Grrrrrrr....",
	ANNOUNCE_MAPWRAP_LOSECONTROL = "Grrr. Going somewhere else.",
	ANNOUNCE_MAPWRAP_RETURN = "New smells over here.",
	ANNOUNCE_CRAB_ESCAPE = "Grrr! Will just sniff you out again!",
	ANNOUNCE_TRAWL_FULL = "Mmm. Smells like good slop.",
	ANNOUNCE_BOAT_DAMAGED = "GRRR. Don't do that again.",
	ANNOUNCE_BOAT_SINKING = "Fur is getting heavier. Not good.",
	ANNOUNCE_BOAT_SINKING_IMMINENT = "Too heavy, too heavy!",
	ANNOUNCE_WAVE_BOOST = "RAAAAUUUGH!",

	ANNOUNCE_WHALE_HUNT_BEAST_NEARBY = "Following this scent. (snifffff)",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL = "Grah. Lost scent.",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL_SPRING = "Can't get its scent like this.",
	--

--	ANNOUNCE_WEIGHT = "PLACEHOLDER",
	ANNOUNCE_WEIGHT_HEAVY  = "Weight: {weight}\nAll you need for hibernation.",

	ANNOUNCE_WINCH_CLAW_MISS = "Grrrr... Should use own claws for this.",
	ANNOUNCE_WINCH_CLAW_NO_ITEM = "Nothing. (sniff) Still nothing.",

	ANNOUNCE_WEAK_RAT = "(sniff) Wouldn't survive the winter.",
    ANNOUNCE_CARRAT_START_RACE = "Graaaahh! Win lots of honey!",
    ANNOUNCE_CARRAT_ERROR_WRONG_WAY = {
        "That is...the wrong way?",
        "Grrrr. Backwards.",
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = "...Must be hibernation season?",    
    ANNOUNCE_CARRAT_ERROR_WALKING = "Grrrrr... Walking wrong.",    
    ANNOUNCE_CARRAT_ERROR_STUNNED = "(sniff) It is...not moving.",

	ANNOUNCE_POCKETWATCH_PORTAL = "HRMPF! Not a good way to slam ground.",

	ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = "GRRRR!! My head is... BUZZING! Like honey-makers?",
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = "Head only has room for nuts and berries.",
    ANNOUNCE_ARCHIVE_NO_POWER = "Hibernating. Leave it alone.",

    ANNOUNCE_PLANT_RESEARCHED =
    {
        "Plants are growing in my head. Get them out!",
    },

    ANNOUNCE_PLANT_RANDOMSEED = "(sniff sniff) ...Not sure.",
	ANNOUNCE_FERTILIZER_RESEARCHED = "Know now not to sniff it.",

	ANNOUNCE_FIRENETTLE_TOXIN = 
	{
		"RRAAAAAHHHGG!!",
		"RAAAAAAHH!!",
	},
	ANNOUNCE_FIRENETTLE_TOXIN_DONE = "Need to count how much fur is left...",

	ANNOUNCE_TALK_TO_PLANTS = 
	{
        "(sniff sniff sniff sniff sniff)",
        "You are... alive?",
		"You smell... like food. No! Like good.",
        "Do you have... pollen? For bees?",
        "I will hibernate with you.",
	},

	ANNOUNCE_KITCOON_HIDEANDSEEK_START = "Fee-fi-fo-fum, I smell the fur of a little one.",
	ANNOUNCE_KITCOON_HIDEANDSEEK_JOIN = "My nose is good. I will sniff them out too.",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND = 
	{
		"Sniffed you out.",
		"Don't hide from me.",
		"Hmph. Good spot.",
		"Your scent is strong.",
	},
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_ONE_MORE = "We are missing...one?",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE = "(sniff sniff) You are...found.",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE_TEAM = "No more scents left. Finished.",
	ANNOUNCE_KITCOON_HIDANDSEEK_TIME_ALMOST_UP = "Grrrr. Don't make me start charging.",
	ANNOUNCE_KITCOON_HIDANDSEEK_LOSEGAME = "Lost. Glad food doesn't hide from me.",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR = "No good hiding spots this way.",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR_RETURN = "They're this way. (sniff)",
	ANNOUNCE_KITCOON_FOUND_IN_THE_WILD = "I could smell you!",

	ANNOUNCE_TICOON_START_TRACKING	= "You do the sniffing now.",
	ANNOUNCE_TICOON_NOTHING_TO_TRACK = "Lost the scent.",
	ANNOUNCE_TICOON_WAITING_FOR_LEADER = "I will follow.",
	ANNOUNCE_TICOON_GET_LEADER_ATTENTION = "You? Where? Now?",
	ANNOUNCE_TICOON_NEAR_KITCOON = "His nose is clear!",
	ANNOUNCE_TICOON_LOST_KITCOON = "Hmph. Something happened, but not to us.",
	ANNOUNCE_TICOON_ABANDONED = "My nose is strong, it can handle this alone.",
	ANNOUNCE_TICOON_DEAD = "Should have shared some extra food with you... maybe.",

	-- YOTB
    ANNOUNCE_CALL_BEEF = "Come. Now.",
    ANNOUNCE_CANTBUILDHERE_YOTB_POST = "Needs to be seen. Hmph.",
    ANNOUNCE_YOTB_LEARN_NEW_PATTERN =  "(sniff sniff) New.",

    -- AE4AE
    ANNOUNCE_EYEOFTERROR_ARRIVE = "Hmphf! Not liking what I see.",
    ANNOUNCE_EYEOFTERROR_FLYBACK = "RAAAHG!! Back for more?",
    ANNOUNCE_EYEOFTERROR_FLYAWAY = "Grrrrr... Next time I will bite.",

    -- PIRATES
    ANNOUNCE_CANT_ESCAPE_CURSE = "Grrrrr. Let. Go!",
    ANNOUNCE_MONKEY_CURSE_1 = "(Sniff) Smelling different than usual.",
    ANNOUNCE_MONKEY_CURSE_CHANGE = "Feels... cold. Brrrr...",
    ANNOUNCE_MONKEY_CURSE_CHANGEBACK = "Shed a lot of hair this time.",

    ANNOUNCE_PIRATES_ARRIVE = "GRRRR. MY SHIP. NOT YOURS.",

    ANNOUNCE_OFF_SCRIPT = "Those words are... wrong?",

    ANNOUNCE_COZY_SLEEP = "Graaaahhh... Very good at that.",

	ANNOUNCE_TOOL_TOOWEAK = "Grrrrrr. Bad.",

    ANNOUNCE_LUNAR_RIFT_MAX = "That wasn't the season. Hmph.",
    ANNOUNCE_SHADOW_RIFT_MAX = "The hairs on my back. It raised.",

    ANNOUNCE_SCRAPBOOK_FULL = "Scrapbook is ready for hibernation.",

    ANNOUNCE_CHAIR_ON_FIRE = "This is fine.",

    ANNOUNCE_HEALINGSALVE_ACIDBUFF_DONE = "Fur doesn't feel safe from hot rain anymore. Not good.",

    ANNOUNCE_YOTD_NOBOATS = "Too far. Can't sniff from here.",
    ANNOUNCE_YOTD_NOCHECKPOINTS = "Doesn't smell like checkpoints.",
    ANNOUNCE_YOTD_NOTENOUGHBOATS = "Hmph. Too full. Not of food.",

    ANNOUNCE_OTTERBOAT_OUTOFSHALLOWS = "Hmm. Miss home already.",
    ANNOUNCE_OTTERBOAT_DENBROKEN = "Never. Ever. Mess with a den.",

	BATTLECRY =
	{
		GENERIC = "RAAAAAHGG!!",
		PIG = "GrAAAHWR!",
		PREY = "RAAAAHHH!!",
		SPIDER = "GRAAAAAW!",
		SPIDER_WARRIOR = "RAWWWWWH!!",
		DEER = "RAAAAAHHG!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "Do not mess with food. Mine.",
		PIG = "Will be back. Always hungry.",
		PREY = "Grrrrrr...",
		SPIDER = "Grrr...",
		SPIDER_WARRIOR = "GRRRrrr...",
	},

	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "(sniff sniff) ...Wouldn't hibernate under it.",
        MULTIPLAYER_PORTAL_MOONROCK = "Grrr... Still not a good hibernation spot.",
        MOONROCKIDOL = "(sniff) Not food. Not good for stashing.",
        CONSTRUCTION_PLANS = "Mine? Keep?",

		--ROR
		NESTING_WOOSE_ITEM = "(sniff sniff) ...Won't sniff again.",
        NESTING_WOOSE = {
            GENERAL = "(sniff sniff) ...Won't sniff again.",
            LOW = "Not looking very good. Can smell it.",
        },
		WOOSE_CAPELET = "(sniff) Smells...burnt.",
		WEARGER_HAT = "Will keep myself warm with myself!",
		WEARGER_BIN = "A little bit of me everywhere I go!",
		WEARGER_BED = "Always sleep better in my own fur.",
		WEARGER_RUG = "Makes any den look better. No arguing this.",
		--SW
		SURFBOARD = "(sniff) Mm. Wood.",
		BOAT_SURFBOARD = "Not safe. Hmph.",
		LUCKYHAT = "Full of snow white hairs.",
		LUCKYCUTLASS = "Hmph. Sharp.",
		WOODLEGS_BURIEDTREASURE = "Hibernating treasure?",
		BOAT_WOODLEGS = "Boat for a Bearger.",
		CANNON_WOODLEGS = "Good splashes.",

        ANTLION =
        {
            GENERIC = "Fend for yourself. Grrr.",
            VERYHAPPY = "Ready to hibernate?",
            UNHAPPY = "It wants to slam ground. Like Bearger.",
        },
        ANTLIONTRINKET = "It is... chewable.",
        SANDSPIKE = "Try not to lick it.",
        SANDBLOCK = "Doesn't taste good.",
        GLASSSPIKE = "It is smaller than before?",
        GLASSBLOCK = "Smaller than before!",
        ABIGAIL_FLOWER =
        {
            GENERIC ="This is a... flower?",
			LEVEL1 = "Hairs are standing up near it.",
			LEVEL2 = "Still hibernating...",
			LEVEL3 = "(sniff) Ready.",

			-- deprecated
            LONG = "Hairs are standing up near it.",
            MEDIUM = "Hairs are standing up near it.",
            SOON = "(sniff) Ready.",
            HAUNTED_POCKET = "Get it out of hair!",
            HAUNTED_GROUND = "Hungry?",
        },

        BALLOONS_EMPTY = "Not good food.",
        BALLOON = "Teeth are too sharp on it. Makes it loud.",
		BALLOONPARTY = "Snacks inside?",
		BALLOONSPEED =
        {
            DEFLATED = "(sniff sniff) No more air.",
            GENERIC = "Feels... floaty.",
        },
		BALLOONVEST = "Makes every hair stand up.",
		BALLOONHAT = "Claws keep shocking others with this?",

        BERNIE_INACTIVE =
        {
            BROKEN = "Beaten bear.",
            GENERIC = "Hair shouldn't be so scorched.",
        },

        BERNIE_ACTIVE = "Little me.... I can dance too.",
        BERNIE_BIG = "RHHG! Bearger! Where's your claws?",

		BOOKSTATION =
		{
			GENERIC = "Books hibernate here.",
			BURNT = "Not good place for books to hibernate anymore.",
		},
        BOOK_BIRDS = "Sky sheds feathers.",
        BOOK_TENTACLES = "Ground pounds back.",
        BOOK_GARDENING = "Reed? Read? I don't need...this.",
		BOOK_SILVICULTURE = "For sticks.",
		BOOK_HORTICULTURE = "Reed? Read? I don't need...this.",
        BOOK_SLEEP = "Mandatory hibernation.",
        BOOK_BRIMSTONE = "Grrr. It makes the sky growl.",

        BOOK_FISH = "(sniff sniff) Where's the fish? Not smelling any?",
        BOOK_FIRE = "Smells? (sniff) Smokey. Hint of oak.",
        BOOK_WEB = "Grrrr. Sticky pages.",
        BOOK_TEMPERATURE = "Warm to the touch. Mmm.",
        BOOK_LIGHT = "Shouldn't sleep near it.",
        BOOK_RAIN = "Is this why the sky rains? Hmphf.",
        BOOK_MOON = "Night time. Or not time?",
        BOOK_BEES = "No time for reading. Bad for your health.",

        BOOK_HORTICULTURE_UPGRADED = "Books to hibernate to.",
        BOOK_RESEARCH_STATION = "Too. Much. Knowledge!",
        BOOK_LIGHT_UPGRADED = "Sun is supposed to go down. Keep it down!",

        FIREPEN = "Was told words don't hurt?",

        PLAYER =
        {
            GENERIC = "You are... %s?",
            ATTACKER = "Grrr... %s.",
            MURDERER = "GRRRH! %s! Murder!",
            REVIVER = "Would hibernate with %s.",
            GHOST = "%s did not survive the winter.",
            FIRESTARTER = "Grr... %s is burning hairs.",
        },
        WILSON =
        {
            GENERIC = "You are... %s?",
            ATTACKER = "Grrrr... %s.",
            MURDERER = "RAAAAHG! Will kill!",
            REVIVER = "Would hibernate with %s.",
            GHOST = "%s did not stock up enough food.",
            FIRESTARTER = "%s hair smells like ash.",
        },
        WOLFGANG =
        {
            GENERIC = "Bulking up for winter too? %s.",
            ATTACKER = "GRRrrrRr... %s is taking all the food.",
            MURDERER = "RAAAAAWH!! FIGHT %s!!",
            REVIVER = "%s already knows how to stock up for hibernating.",
            GHOST = "Not enough fat. Didn't survive.",
            FIRESTARTER = "You smell like... fire.",
        },
        WAXWELL =
        {
            GENERIC = "Not enough hair or meat. %s needs hibernation help.",
            ATTACKER = "GRRrr... %s is testing me.",
            MURDERER = "GRAAAHG! KILL %s!",
            REVIVER = "%s needs to learn how to hibernate.",
            GHOST = "Not enough meat on bones, frail.",
            FIRESTARTER = "%s is smelling like... (sniff) fire.",
        },
        WX78 =
        {
            GENERIC = "%s. No hair? Meat?",
            ATTACKER = "Grrrr... %s is taking food.",
            MURDERER = "GRAAAH! CLAW %s!",
            REVIVER = "%s is cold... but warm?",
            GHOST = "%s needs more hair and meat.",
            FIRESTARTER = "Smells like... burning metal?",
        },
        WILLOW =
        {
            GENERIC = "You are... %s?",
            ATTACKER = "%s... GrrrRrr.",
            MURDERER = "RAAAAHG!! KILL!!",
            REVIVER = "%s knows warmth",
            GHOST = "Too warm, needs better fur to regulate heat.",
            FIRESTARTER = "%s smells like... ash. Not new.",
        },
        WENDY =
        {
            GENERIC = "You are... %s?",
            ATTACKER = "GrrRR... %s is clawing at hairs.",
            MURDERER = "RAAAH!! FIGHT!",
            REVIVER = "Your fur coat will grow in... soon?",
            GHOST = "Too little, not enough warmth.",
            FIRESTARTER = "%s needs more inner-warmth. Not fire.",
        },
        WOODIE =
        {
            GENERIC = "%s. Growing winter coating out?",
            ATTACKER = "GrrrrrR... %s is pounding grounds.",
            MURDERER = "RAAAAHGG!! Will show you MY claws!",
            REVIVER = "Would hibernate with %s. Good a growing coats.",
            GHOST = "Didn't grow hair thick enough?",
            BEAVER = "Good coat of hair. Ready for winter?",
            BEAVERGHOST = "%s didn't last the winter...",
            MOOSE = "See. You do grow a full coat of hair.",
            MOOSEGHOST = "No match for Beargers.",
            GOOSE = "Hrmph. %s. What happened to full coat of hair, and fat?",
            GOOSEGHOST = "Not strong enough.",
            FIRESTARTER = "(sniff) %s is smelling like... charcoal.",
        },
        WICKERBOTTOM =
        {
            GENERIC = "You are... \"Ms.\"?",
            ATTACKER = "Grrrrr! %s is a bother.",
            MURDERER = "GRAAAAWW! Will claw at %s!",
            REVIVER = "%s keeps mouthing \"words\" at me. I do not follow.",
            GHOST = "%s did not learn how to hibernate.",
            FIRESTARTER = "You smell... (sniff) like ash.",
        },
        WES =
        {
            GENERIC = "You are... %s?",
            ATTACKER = "GrrRR... %s is showing claw.",
            MURDERER = "RAAAAHG!! Will pound %s into ground!!",
            REVIVER = "%s needs more meat and hair for warmth.",
            GHOST = "Knew %s would not last.",
            FIRESTARTER = "%s is smelling like fire.",
        },
        WEBBER =
        {
            GENERIC = "Your winter coat growing in?",
            ATTACKER = "GrrRRrr. %s is bugging me.",
            MURDERER = "RAAAAHG!! SQUASH!",
            REVIVER = "Your hair is too thin to hibernate in.",
            GHOST = "Hair wasn't enough.",
            FIRESTARTER = "%s is burning.",
        },
        WATHGRITHR =
        {
            GENERIC = "You are... %s? Why giving me looks?",
            ATTACKER = "GRRR! %s keeps picking fights and stealing meats!",
            MURDERER = "RRAAAHH! CLAW AT %s!!",
            REVIVER = "%s keeps mouthing how many Beargers she's felled.",
            GHOST = "%s's spears are still not claws.",
            FIRESTARTER = "%s smells of burnt meat. Mmm.",
        },
        WINONA =
        {
            GENERIC = "You are... %s?",
            ATTACKER = "Grrrrr. %s is coming too close to my food.",
            MURDERER = "GRAAAAAHH!! ATTACK %s!!",
            REVIVER = "%s knows what to make for hibernating.",
            GHOST = "Not strong enough to survive. %s.",
            FIRESTARTER = "%s smells like... (sniff) burning.",
        },
        WORTOX =
        {
            GENERIC = "%s. Coat is growing out yet?",
            ATTACKER = "GrrRRRrr. %s's claws are showing.",
            MURDERER = "GRAAAAHH! SMASH!!",
            REVIVER = "Would hibernate with %s. Warm.",
            GHOST = "%s didn't have enough hair to hibernate.",
            FIRESTARTER = "Your hair... (sniff) fire.",
        },
        WORMWOOD =
        {
            GENERIC = "You are... %s?",
            ATTACKER = "GrrRrrr.. %s is looking like food.",
            MURDERER = "RAAAAAAHGG! Slammed many plants before!",
            REVIVER = "How do you hibernate in winter? Spring?",
            GHOST = "No hair, didn't last long.",
            FIRESTARTER = "(sniff sniff) Burnt wood.",
        },
        WARLY =
        {
            GENERIC = "Food? %s. Food!",
            ATTACKER = "GrrRrrr... %s isn't making enough food.",
            MURDERER = "RAAAAHG!! %s is now food!!",
            REVIVER = "%s fills me up well. Plump for winter!",
            GHOST = "Save some food for yourself when hibernating. Hmph.",
            FIRESTARTER = "(sniff) Fire. ...Was hoping for food.",
        },
        WURT =
        {
            GENERIC = "You are... %s? With no hair?",
            ATTACKER = "GrrrRRrr... %s has little claws.",
            MURDERER = "GRAAAAAHHH!! Small scales must be crushed!",
            REVIVER = "%s keeps telling me her winter coat won't grow in?",
            GHOST = "Too many scales, too little hairs.",
            FIRESTARTER = "%s smells like fire? Thought you were wetter.",
        },
		WALTER =
        {
            GENERIC = "You are... %s?",
            ATTACKER = "GRRRrrr. %s doesn't run when I bear teeth.",
            MURDERER = "RAAAHH! No more jerky!!",
            REVIVER = "Hmph. %s keeps feeding me jerky for winter.",
            GHOST = "%s shed all his hair.",
            FIRESTARTER = "(sniff sniff) Smells like... fire.",
        },
		WANDA =
        {
            GENERIC = "You are... %s?",
            ATTACKER = "Grrr... %s.",
            MURDERER = "No more! Time to KILL!!",
            REVIVER = "Will help %s gather more food for the winter.",
            GHOST = "%s should spend more time gathering nuts and berries.",
            FIRESTARTER = "You smell like fire. A lot of fire.",
        },
        WONKEY =
        {
            GENERIC = "%s. Hair is thin.",
            ATTACKER = "GrrrRRR. %s is too close to my food.",
            MURDERER = "RAAAAHHHGG!! CHARGE!!",
            REVIVER = "%s could hibernate.",
            GHOST = "%s hair was too thin.",
            FIRESTARTER = "(sniff) Smells like... Grrhk!",
        },
        WALANI =
        {
            GENERIC = "You are... %s?",
            ATTACKER = "Grr... Taking my food, %s.",
            MURDERER = "RAAAAHGG!! FIGHT %s!",
            REVIVER = "%s knows hibernation chills.",
            GHOST = "Wouldn't survive hibernation season.",
            FIRESTARTER = "%s smells like fire? Not ocean?",
        },
        WOODLEGS =
        {
            GENERIC = "You are... %s?",
            ATTACKER = "GrRRRrr... %s.",
            MURDERER = "GRAAAAAAHGG!! CLAW %s!!",
            REVIVER = "Is that your winter coat? %s.",
            GHOST = "%s's coat is white like snow.",
            FIRESTARTER = "(sniff) Burnt salt?",
        },
        WILBUR =
        {
            GENERIC = "%s. Hair is thin.",
            ATTACKER = "GrrrRRR. %s is too close to my food.",
            MURDERER = "RAAAAHHHGG!! CHARGE!!",
            REVIVER = "%s could hibernate.",
            GHOST = "%s hair was too thin.",
            FIRESTARTER = "(sniff) Smells like... Grrhk!",
        },
		WEARGER =
        {
            GENERIC = "You are... Bearger?",
            ATTACKER = "GRRRR! Food is mine.",
            MURDERER = "RAAAAHGG!! My territory!!",
            REVIVER = "It is better to not hibernate alone... sometimes.",
            GHOST = "Only strong Bearger survive the winter.",
            FIRESTARTER = "(sniff sniff) Rampaging for food too? With fire?",
        },
		WEERCLOPS =
        {
            GENERIC = "Good coat. %s.",
            ATTACKER = "Grrrr... %s is eyeing my food.",
            MURDERER = "RAAAAHG!! TERRITORY! FOOD!",
            REVIVER = "%s could hibernate outside of winter? I don't understand.",
            GHOST = "%s doesn't know how to hibernate.",
            FIRESTARTER = "%s likes to pound and slam. With fire.",
        },
		WOOSE =
        {
            GENERIC = "You hibernate in that fur? ...Feathers?",
            ATTACKER = "Grrrrrr... %s is taking away food.",
            MURDERER = "GRRAAHH! SLAM!!!",
            REVIVER = "Hibernate in nest? No?",
            GHOST = "%s couldn't find a good hibernating spot for nest.",
            FIRESTARTER = "(sniff snorf) Ashes?",
        },
		WRAGONFLY =
        {
            GENERIC = "No hair? ...%s?",
            ATTACKER = "Grrr... %s is using claws.",
            MURDERER = "RAAAGGH! Fight with CLAW!!",
            REVIVER = "%s knows warmth. Too much warmth.",
            GHOST = "%s's coating is too cold. Always need warmth.",
			ENRAGED = "%s would melt any snow touched. Good hibernator.",
            FIRESTARTER = "%s (sniff) ...Fire? More?",
        },

        GLOMMER = 
        {
            GENERIC = "Enough fur to hibernate.",
            SLEEPING = "Maybe I will hibernate next to you.",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "(sniff) Grrk.",
            DEAD = "(sniff) GRRK!",
        },
        GLOMMERWINGS = "Mm. Not food.",
        GLOMMERFUEL = "Grr... Don't like stepping in it.",
        BELL = "My ears always ring. Rrrrrg.",
        STATUEGLOMMER =
        {
            GENERIC = "Might fall over.",
            EMPTY = "Slammed. Like ground.",
        },

        LAVA_POND_ROCK = "Rock? (sniff) Rock.",

		WEBBERSKULL = "Never mess with Beargers.",
		WORMLIGHT = "MM! Will take it!",
		WORMLIGHT_LESSER = "Will take any food!",
		WORM =
		{
		    PLANT = "Mmm! Must take it. It wants me to.",
		    DIRT = "Dirt! Will slam!",
		    WORM = "Grrrr! Give glowing food!",
		},
        WORMLIGHT_PLANT = "Mmm! Must take it. It wants me to.",
		MOLE =
		{
			HELD = "Do my teeth scare you?",
			UNDERGROUND = "Dirt! Will slam!",
			ABOVEGROUND = "Sniffing dirt too?",
		},
		MOLEHILL = "Hibernation stations.",
		MOLEHAT = "Can see through snow? No?",

		EEL = "Grrr. Leaves stings in the mouth.",
		EEL_COOKED = "Mmm. Crunch.",
		UNAGI = "Mmm! Mm!! Good taste!",
		EYETURRET = "Watches over my stash of food.",
		EYETURRET_ITEM = "Hibernating?",
		MINOTAURHORN = "Horn no mourn.",
		MINOTAURCHEST = "Any food?",
		THULECITE_PIECES = "Mm! Honey! Hardened honey?",
		POND_ALGAE = "Food...?",
		GREENSTAFF = "Slam with staff.",
		GIFT = "Hope it's honey!",
        GIFTWRAP = "For winter wrap-ups.",
		POTTEDFERN = "It's hi-fern-ating.",
        SUCCULENT_POTTED = "Waiting to be food.",
		SUCCULENT_PLANT = "Mmm. Food?",
		SUCCULENT_PICKED = "(sniff sniff) Maybe food.",
		SENTRYWARD = "Will it show prime hibernating spots?",
        TOWNPORTAL =
        {
			GENERIC = "Head splits like sand when near it.",
			ACTIVE = "Get roaming. Head is splitting.",
		},
        TOWNPORTALTALISMAN = 
        {
			GENERIC = "Head splits like sand when near it.",
			ACTIVE = "Get roaring. Head is splitting.",
		},
        WETPAPER = "Grr... Like wet hair.",
        WETPOUCH = "Grrr. Food inside?",
        MOONROCK_PIECES = "Slammed into ground.",
        MOONBASE =
        {
            GENERIC = "Hibernation hole? No.",
            BROKEN = "Ground has already been slammed.",
            STAFFED = "Hmphff.",
            WRONGSTAFF = "Grrr.",
            MOONSTAFF = "Is shining, like winter.",
        },
        MOONDIAL = 
        {
			GENERIC = "Moon? Is it... food?",
			NIGHT_NEW = "Moon is in hibernation.",
			NIGHT_WAX = "Moon is waking up from hibernating.",
			NIGHT_FULL = "Moon is out.",
			NIGHT_WANE = "Moon is preparing for hibernation.",
			CAVE = "No moon? Grrrh.",
--fallback to speech_wilson.lua 			WEREBEAVER = "PLACEHOLDER", --woodie specific
            GLASSED = "Feeling of... being watched.",
        },
		THULECITE = "Looks like honey! Does not taste like honey...",
		ARMORRUINS = "Honey-coated armor.",
		ARMORSKELETON = "Bones from inside out.",
		SKELETONHAT = "Know not to mess with a Bearger!",
		RUINS_BAT = "Honey-glazed hammer.",
		RUINSHAT = "Feels like wearing honey.",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "It is... calm.",
            WARN = "Grr. Approaching.",
            WAXING = "Hairs and standing up.",
            STEADY = "Rumble.",
            WANING = "Hairs no longer splitting.",
            DAWN = "Growls are fading.",
            NOMAGIC = "There is... nothing.",
		},
		BISHOP_NIGHTMARE = "Grrrrr. It is shedding.",
		ROOK_NIGHTMARE = "Shedding... metal?",
		KNIGHT_NIGHTMARE = "Metal shedding? GRRrr.",
		MINOTAUR = "GrrrrrAA! FIGHT!!",
		SPIDER_DROPPER = "Grrr... No hiding in hairs.",
		NIGHTMARELIGHT = "Shouldn't hibernate near...this.",
		NIGHTSTICK = "Makes hairs stand up.",
		GREENGEM = "All look the same.",
		MULTITOOL_AXE_PICKAXE = "Many uses. But will not use all.",
		ORANGESTAFF = "Which gem is it? All are the same.",
		YELLOWAMULET = "Won't get lost in snow now.",
		GREENAMULET = "Head is full. Claws fast.",
		SLURPERPELT = "Shed hair. And all its flesh.",

		SLURPER = "Only I should be that hairy and hungry. GRR!",
		SLURPER_PELT = "Shed hair. And all its flesh.",
		ARMORSLURPER = "Hmph... Hibernation help!",
		ORANGEAMULET = "Food won't escape!",
		YELLOWSTAFF = "Keeps warmth with me! Ghhrr!",
		YELLOWGEM = "Gem? Which one?",
		ORANGEGEM = "Too many gems.",
        OPALSTAFF = "Feel the need to hibernate touching it.",
        OPALPRECIOUSGEM = "Sparkly like hibernation seasons.",
        TELEBASE = 
		{
			VALID = "Ready? Grrr. Ready.",
			GEMS = "Needs gems? Certain ones.",
		},
		GEMSOCKET = 
		{
			VALID = "Ready? Grrr. Ready.",
			GEMS = "Needs gems.",
		},
		STAFFLIGHT = "Warmth of love!",
        STAFFCOLDLIGHT = "Is it time to hibernate?",

        ANCIENT_ALTAR = "Head feels like it's being ground pound.",

        ANCIENT_ALTAR_BROKEN = "Pound into dust.",

        ANCIENT_STATUE = "Does not taste like honey. Need to remember that.",

        LICHEN = "Food?",
		CUTLICHEN = "Mmm! Filling.",

		CAVE_BANANA = "Mmm. Like honey.",
		CAVE_BANANA_COOKED = "Eat with a shell or without?",
		CAVE_BANANA_TREE = "Grows little honey-berries.",
		ROCKY = "Hardened hair and claw.",
		
		COMPASS =
		{
			GENERIC="I do not get the... point?",
			N = "Grr... Up.",
			S = "Grr... Down.",
			E = "No. This way.",
			W = "This way.",
			NE = "Hibernate... here?",
			SE = "I sleep over here?",
			NW = "Food up here?",
			SW = "Warmth down here too?",
		},

        HOUNDSTOOTH = "Hmph. Not mine.",
        ARMORSNURTLESHELL = "Tugs on hair. Don't need help shedding...",
        BAT = "GrrRrrRRr...",
        BATBAT = "Crunchy. For me now.",
        BATWING = "Good for teeth to gnash with.",
        BATWING_COOKED = "Crunchy. Filling!",
        BATCAVE = "Hibernating with food...?",
        BEDROLL_FURRY = "Have enough hair already for good bedding.",
        BUNNYMAN = "Lots of hair. Do you shed?",
        FLOWER_CAVE = "For eating? Mmm.",
        GUANO = "GrrHK!",
        LANTERN = "Won't get lost, it's too bright.",
        LIGHTBULB = "Light snack.",
        MANRABBIT_TAIL = "You do shed! Ghr!",
        MUSHROOMHAT = "Keep smelling it on my head. Stomach keeps growling.",
        MUSHROOM_LIGHT2 =
        {
            ON = "Warmth. Food. Loving it.",
            OFF = "Food? No? Yes.",
            BURNT = "Grrr... Not as edible.",
        },
        MUSHROOM_LIGHT =
        {
            ON = "Warmth. Food. Loving it.",
            OFF = "Food? No? Yes.",
            BURNT = "Grrrr.",
        },
        SLEEPBOMB = "Don't sniff. Don't sniff!",
        MUSHROOMBOMB = "(sniff) GRHK!",
        SHROOM_SKIN = "(sniff sniff) Probably not food.",
        TOADSTOOL_CAP =
        {
            EMPTY = "Hrmph. Nothing.",
            INGROUND = "(sniff) Mm!",
            GENERIC = "Slam into the ground for food. Grr!",
        },
        TOADSTOOL =
        {
            GENERIC = "(sniff) GRRRHK!",
            RAGE = "GRAAH! Not enough to eat too?",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "Not a good... smell.",
            BURNT = "Ghrk.",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "Good for knocking down.",
            BLOOM = "(sniff) Mmmm. Ripe.",
            ACIDCOVERED = "(sniff sniff) Ghrk! Don't sniff that.",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "Mmm. Mushy! Food!",
            BLOOM = "(sniff) Mmm. Ripe.",
            ACIDCOVERED = "(sniff sniff) Ghrk! Don't sniff that.",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "Knock down. Then chew on it.",
            BLOOM = "(sniff) Mm. Ripe.",
            ACIDCOVERED = "(sniff sniff) Ghrk! Don't sniff that.",
        },
        MUSHTREE_TALL_WEBBED =
        {
            GENERIC = "Hibernation spot is taken.",
            ACIDCOVERED = "It's covered in acid.",
        },
        SPORE_TALL =
        {
            GENERIC = "Can't take eyes off it.",
            HELD = "Tickles hairs. Grh-hr!",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "Floating? Claws want to swipe at it.",
            HELD = "Tickles hairs. Grh-hr!",
        },
        SPORE_SMALL =
        {
            GENERIC = "Claws wants to swipe at it!",
            HELD = "Tickles hairs. Grh-hr!",
        },
        RABBITHOUSE =
        {
            GENERIC = "Mmmm... Tasty hibernation.",
            BURNT = "(sniff) No food...",
        },
        SLURTLE = "Grrrrr.",
        SLURTLE_SHELLPIECES = "Sticky. Grrr.",
        SLURTLEHAT = "Sticks to hair. Have to shed it to take off.",
        SLURTLEHOLE = "No hibernation den that's mine.",
        SLURTLESLIME = "Gets caught in hair. Grrhk.",
        SNURTLE = "What does it sniff?",
        SPIDER_HIDER = "It was in hidernation",
        SPIDER_SPITTER = "Beargers hit harder.",
        SPIDERHOLE = "Not my place to hibernate.",
        SPIDERHOLE_ROCK = "Not my place to hibernate.",
        STALAGMITE = "Easy to pound.",
        STALAGMITE_TALL = "Rocks. Easy to crumble.",
        TREASURECHEST_TRAP = "Fooood...?",

        TURF_CARPETFLOOR = "Soft, like Bearger hair.",
        TURF_CHECKERFLOOR = "Matches coating.",
        TURF_DIRT = "Love to sniff it.",
        TURF_FOREST = "Love the smell.",
        TURF_GRASS = "Mm. Smell it.",
        TURF_MARSH = "Love to pound and slam it.",
        TURF_METEOR = "Hmph. Not good ground for hibernation.",
        TURF_PEBBLEBEACH = "Hmph. Not good ground for hibernation.",
        TURF_ROAD = "Hmph. Not good ground for hibernation.",
        TURF_ROCKY = "Love to pound and slam it.",
        TURF_SAVANNA = "Love to pound and slam it.",
        TURF_WOODFLOOR = "Claws growl with each step.",

		TURF_CAVE="Love to pound and slam it.",
		TURF_FUNGUS="Hmph. Not good ground for hibernation.",
		TURF_SINKHOLE="Hmph. Not good ground for hibernation.",
		TURF_UNDERROCK="Hmph. Not good ground for hibernation.",
		TURF_MUD="Love to pound and slam it.",

		TURF_DECIDUOUS = "Cozy. Like home.",
		TURF_SANDY = "Love to pound and slam it.",
		TURF_BADLANDS = "Love to pound and slam it.",
		TURF_DESERTDIRT = "Love to pound and slam it.",
		TURF_FUNGUS_GREEN = "Love to pound and slam it.",
		TURF_FUNGUS_RED = "Love to pound and slam it.",
		TURF_DRAGONFLY = "Hmph. Not good ground for hibernation.",
		TURF_SHELLBEACH = "Love to pound and slam it.",

		TURF_RUINSBRICK = "Hmph. Not good ground for hibernation.",
		TURF_RUINSBRICK_GLOW = "Hmph. Not good ground for hibernation.",
		TURF_RUINSTILES = "Hmph. Not good ground for hibernation.",
		TURF_RUINSTILES_GLOW = "Hmph. Not good ground for hibernation.",
		TURF_RUINSTRIM = "Hmph. Not good ground for hibernation.",
		TURF_RUINSTRIM_GLOW = "Hmph. Not good ground for hibernation.",

		TURF_MONKEY_GROUND = "Love to pound and slam it.",

        TURF_CARPETFLOOR2 = "Softer than Bearger hair.",
        TURF_MOSAIC_GREY = "Love to pound and slam it.",
        TURF_MOSAIC_RED = "Love to pound and slam it.",
        TURF_MOSAIC_BLUE = "Love to pound and slam it.",

        TURF_BEARD_RUG = "Bearger rug! Of me? No? For me...?",

		POWCAKE = "(sniff sniff) MMM! Lasts entire hibernation season.",
        CAVE_ENTRANCE = "Will slam it out of the way.",
        CAVE_ENTRANCE_RUINS = "GrrrRrrr!",
       
       	CAVE_ENTRANCE_OPEN = 
        {
            GENERIC = "Ground won't cave-in.",
            OPEN = "Hairs feels a chilly air coming from below.",
            FULL = "Too many hibernators.",
        },
        CAVE_EXIT = 
        {
            GENERIC = "Will have to hibernate down here...",
            OPEN = "Too cold down here. Need more warmth.",
            FULL = "Too many hibernators.",
        },

		MAXWELLPHONOGRAPH = "It gives a splitting feeling... to head.",
		BOOMERANG = "Can't get away from it.",
		PIGGUARD = "GRRR!! Will slam my way through!",
		ABIGAIL = "Cold. Need some hair?",
		ADVENTURE_PORTAL = "Food's in there?",
		AMULET = "Warm around fur.",
		ANIMAL_TRACK = "Not mine. (sniff sniff) Still not mine.",
		ARMORGRASS = "Any bugs hidden? Could use a snack.",
		ARMORMARBLE = "Like having many seasons worth of coats.",
		ARMORWOOD = "Hardens the hair around me.",
		ARMOR_SANITY = "Grrrr. Hair's not supposed to hurt.",
		ASH =
		{
			GENERIC = "Not good for sniffing. Hmph.",
			REMAINS_GLOMMERFLOWER = "Not good for sniffing. Hmph.",
			REMAINS_EYE_BONE = "Not good for sniffing. Hmph.",
			REMAINS_THINGIE = "Wasn't good for sniffing... Hmph.",
		},
		AXE = "Would rather slam ground.",
		BABYBEEFALO = 
		{
			GENERIC = "Your coat is growing in!",
		    SLEEPING = "Little hibernation.",
        },
        BUNDLE = "(sniff) Food!?",
        BUNDLEWRAP = "Don't hide food from me!",
		BACKPACK = "To keep all the extra hair.",
		BACONEGGS = "GHRRR! MMM!",
		BANDAGE = "It just pulls hairs out...",
		BASALT = "Grrr.... Stopped.",
		BEARDHAIR = "(sniff sniff) ...Not my shedding.",
		BEARGER = "...We aren't the same size? GrrrRRRR.",
		BEARGERVEST = "Don't need more than one coat...?",
		ICEPACK = "Chills my split hairs.",
		BEARGER_FUR = "It gets everywhere. Hmphf.",
		BEDROLL_STRAW = "Itchier than hair.",
		BEEQUEEN = "GrrRRRRR! YOUR HONEY. HAND IT OVER.",
		BEEQUEENHIVE = 
		{
			GENERIC = "Mmm! Will enjoy slamming this!",
			GROWING = "More! RAAAHG!",
		},
        BEEQUEENHIVEGROWN = "RAAAHG! MMmmm!",
        BEEGUARD = "Make honey! Not fight!",
        HIVEHAT = "Maybe a Bearger will make the honey...",
        MINISIGN =
        {
            GENERIC = "It is...?",
            UNDRAWN = "There is... nothing.",
        },
        MINISIGN_ITEM = "For ground? Grrr...",
		BEE =
		{
			GENERIC = "Honey-maker! Bring honey!",
			HELD = "Love you. Only for honey!",
		},
		BEEBOX =
		{
			READY = "Ghrr-hrr! Time to eat!!",
			FULLHONEY = "GHAWR! What I love to see!!",
			GENERIC = "Ghrrr... Nobody touch it.",
			NOHONEY = "Grrrr... no honey.",
			SOMEHONEY = "(sniff) MMM!! Honey!",
			BURNT = "GHRAAAAAAHG!!",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "Mm-mmm!",
			LOTS = "Ghr! More, more!",
			SOME = "(sniff sniff) Mmhhm! Shroom!",
			EMPTY = "Hmph. No mush.",
			ROTTEN = "(sniff) Ghrrrk.",
			BURNT = "Grrr...no more snacks this way.",
			SNOWCOVERED = "Needs to hibernate.",
		},
		BEEFALO =
		{
			FOLLOWER = "Grrrr. Eyes off my food.",
			GENERIC = "(sniff) Hrmphf. Familiar.",
			NAKED = "Shed too much.",
			SLEEPING = "In hibernation.",
            --Domesticated states:
            DOMESTICATED = "Like being full of food? Me too.",
            ORNERY = "I get angry on empty stomachs too.",
            RIDER = "Want to charge and knock down forests too?",
            PUDGY = "Hrmph. Me too. You will hibernate better.",
			MYPARTNER = "Will let you hibernate with me. Once.",
		},

		BEEFALOHAT = "Bear-falo?",
		BEEFALOWOOL = "Hmpf... Not my hair.",
		BEEHAT = "Good for honey. Good for tummy.",
        BEESWAX = "Not as tasty as raw honey.",
		BEEHIVE = "Home for honey!",
		BEEMINE = "Grrrrrh... (sniff) Honey?",
		BEEMINE_MAXWELL = "Hmmmmf... (sniff) Honey?",
		BERRIES = "Ghhrrrr! Hr-Hr! Good to eat.",
		BERRIES_COOKED = "Will eat these and be quiet.",
        BERRIES_JUICY = "Mmm. Juice gets all over hair!",
        BERRIES_JUICY_COOKED = "Won't last until hibernation. Must eat them. NOW!",
		BERRYBUSH =
		{
			BARREN = "GRR! Too late for food!",
			WITHERED = "Too hot for food...",
			GENERIC = "Mmm. Will take these.",
			PICKED = "Stashed away.",
			DISEASED = "(sniff sniff) GrrrHK. Not right!",
			DISEASING = "Grrhk!",
			BURNING = "Grrrrrr...",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "Grrr! Not soon enough!",
			WITHERED = "Too hot... Grrrrr!",
			GENERIC = "Mmm! Will take these for food stashing.",
			PICKED = "Only plant is left.",
			DISEASED = "(sniff sniff) GrrrHK. Not right!",
			DISEASING = "(sniff) Grhk!",
			BURNING = "GRRR!",
		},
		BIGFOOT = "My foot has been out-slammed...",
		BIRDCAGE =
		{
			GENERIC = "Not big enough for me.",
			OCCUPIED = "Make me eggs for the winter!",
			SLEEPING = "Not producing...",
			HUNGRY = "Grrrr. Hungerrr.",
			STARVING = "It's starving. But not angry?",
			DEAD = "Hrmpf. Didn't feed it.",
			SKELETON = "Others need... food?",
		},
		BIRDTRAP = "Food! Come! Now!",
		CAVE_BANANA_BURNT = "Grrr. Not edible now.",
		BIRD_EGG = "Mmm! Crunch!",
		BIRD_EGG_COOKED = "MMMmm! Full stomach!",
		BISHOP = "GgRRRR!",
		BLOWDART_FIRE = "Smallest, littlest warmth.",
		BLOWDART_SLEEP = "You must hibernate! Hmph.",
		BLOWDART_PIPE = "Spitting honey-covered claws.",
		BLOWDART_YELLOW = "Stings hairs.",
		BLUEAMULET = "Frosts the fur.",
		BLUEGEM = "Which one is it?",
		BLUEPRINT = 
		{ 
            COMMON = "It is just... paper?",
            RARE = "It is... special?",
        },
        SKETCH = "Is this...? No. Got nothing.",
		COOKINGRECIPECARD = 
		{
			GENERIC = "Hmph. No idea. Nothing.",
		},
		BLUE_CAP = "Mmm! Mm! Food.",
		BLUE_CAP_COOKED = "Time to crunch with teeth.",
		BLUE_MUSHROOM =
		{
			GENERIC = "Mmm. Will take this.",
			INGROUND = "Hibernating?",
			PICKED = "Hole.",
		},
		BOARDS = "Claws go click-clack. Boards go crack-snap.",
		BONESHARD = "Meal leftovers. Hrmpf.",
		BONESTEW = "Perfect for hibernation.",
		BUGNET = "Into my net. Now!",
		BUSHHAT = "Just how I like to think. Hrmph!",
		BUTTER = "Mmmm! Gets all over my hair.",
		BUTTERFLY =
		{
			GENERIC = "Mmm. Want to catch. To crunch.",
			HELD = "Ready to be eaten?",
		},
		BUTTERFLYMUFFIN = "Will eat it.",
		BUTTERFLYWINGS = "Mmm... Not much bone.",
		BUZZARD = "GRRRrrr! My food!",

		SHADOWDIGGER = "GrrRRR. No more splitting!",
        SHADOWDANCER = "Grrrrr... Not a friend.",

		CACTUS = 
		{
			GENERIC = "Mmmh. Sharp!",
			PICKED = "Should not fight back.",
		},
		CACTUS_MEAT_COOKED = "Grrhk. Crunchy!",
		CACTUS_MEAT = "Like eating hairs but... not.",
		CACTUS_FLOWER = "Does it match my fur?",

		COLDFIRE =
		{
			EMBERS = "Season is almost over.",
			GENERIC = "Like it better warm.",
			HIGH = "Feel like hibernating...",
			LOW = "It is... fading.",
			NORMAL = "Like it better warmer.",
			OUT = "Over.",
		},
		CAMPFIRE =
		{
			EMBERS = "Grrr. Warmth is all gone...",
			GENERIC = "Loves warmth.",
			HIGH = "Can feel the heat all throughout hair.",
			LOW = "It is... fading.",
			NORMAL = "Mmmm.... Warmth.",
			OUT = "Gone.",
		},
		CANE = "Graah! Charging through forests!",
		CATCOON = "Ghrrrrr!!",
		CATCOONDEN = 
		{
			GENERIC = "Will not hibernate in it.",
			EMPTY = "Nothing is hibernating.",
		},
		CATCOONHAT = "Have enough hair on my head.",
		COONTAIL = "Shed more than hair.",
		CARROT = "Into my maw. Nowhere else.",
		CARROT_COOKED = "Now mushy and warm. Mmm!",
		CARROT_PLANTED = "Vegetates in ground. Like hibernation.",
		CARROT_SEEDS = "Pound into ground.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "...Where to hibernate again?",
			BURNING = "GRRR!",
			BURNT = "Grrrrrr...",
		},
		WATERMELON_SEEDS = "Pound for ground.",
		CAVE_FERN = "It goes into hifernation.",
		CHARCOAL = "Dusty like fur.",
        CHESSPIECE_PAWN = "Makes me want to yawn.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "Can't eat stone.",
            STRUGGLE = "Grrrrr. Is growling...",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "Not bothered.",
            STRUGGLE = "Grrrrr. Is growling...",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "It's... stone.",
            STRUGGLE = "Grrrrr. Is growling...",
        },
        CHESSPIECE_MUSE = "It is... stone?",
        CHESSPIECE_FORMAL = "Good for pounding into the ground.",
        CHESSPIECE_HORNUCOPIA = "GRRR! Almost chipped a tooth.",
        CHESSPIECE_PIPE = "Food...? No? Grrr...",
        CHESSPIECE_DEERCLOPS = "Why are you staring? ...No? Not real?",
        CHESSPIECE_BEARGER = "They never get my nose right. Grrr...",
        CHESSPIECE_MOOSEGOOSE =
        {
            "Still yelling? Grrh!",
        },
        CHESSPIECE_DRAGONFLY = "Not so hot now.",
		CHESSPIECE_MINOTAUR = "Found you a better hibernating spot.",
        CHESSPIECE_BUTTERFLY = "Not food.",
        CHESSPIECE_ANCHOR = "Heavy like winter coating.",
        CHESSPIECE_MOON = "Stone. Not food.",
		CHESSPIECE_CARRAT = "Stone. Not food.",
		CHESSPIECE_MALBATROSS = "(sniff) ...Not alive.",
        CHESSPIECE_CRABKING = "Hmph. Easy.",
		CHESSPIECE_TOADSTOOL = "Hrmph. Not food, not edible.",
        CHESSPIECE_STALKER = "(sniff sniff) ...Will still chew on it.",
        CHESSPIECE_KLAUS = "Should take it as a sign to hibernate.",
        CHESSPIECE_BEEQUEEN = "Why is honey not golden...?",
        CHESSPIECE_ANTLION = "Hmph. I shake the ground the best.",
		CHESSPIECE_BEEFALO = "Hmphf. Doesn't smell.",
		CHESSPIECE_KITCOON = "Doesn't smell as strong.",
		CHESSPIECE_CATCOON = "Very hairy, or no hair at all?",
        CHESSPIECE_MANRABBIT = "Not as heavy anymore.",
        CHESSPIECE_GUARDIANPHASE3 = "Don't need to stare at it anymore.",
		CHESSPIECE_EYEOFTERROR = "Hmph. Not so scary.",
        CHESSPIECE_TWINSOFTERROR = "Don't need to look at you anymore.",
        CHESSPIECE_DAYWALKER = "Means nothing to me now.",
        CHESSPIECE_DEERCLOPS_MUTATED = "Different than before. Hmph.",
        CHESSPIECE_WARG_MUTATED = "Had enough of your staring!",
        CHESSPIECE_BEARGER_MUTATED = "Don't remember looking like that. Do better.",
        CHESSPIECE_SHARKBOI = "Still need to eat? No?",

        CHESSJUNK1 = "Pounded.",
        CHESSJUNK2 = "Ground up.",
        CHESSJUNK3 = "Already slammed.",
		CHESTER = "Little and hairy!",
		CHESTER_EYEBONE =
		{
			GENERIC = "Don't look at my food.",
			WAITING = "Hibernating...?",
		},
		COOKEDMANDRAKE = "It echoes when I crunch.",
		COOKEDMEAT = "Mmmhm. Good for eating.",
		COOKEDMONSTERMEAT = "Grrhk. Better for eating.",
		COOKEDSMALLMEAT = "Little treat for me-at!",
		COOKPOT =
		{
			COOKING_LONG = "Stomach is GROWLING!",
			COOKING_SHORT = "(sniff sniff) Grrrrr...",
			DONE = "GRAAAUH! FOOD!!",
			EMPTY = "Ghrrrr... Empty.",
			BURNT = "(sniff) RAAAAHG!!",
		},
		CORN = "(sniff sniff) ...Food?",
		CORN_COOKED = "Gets stuck between every tooth.",
		CORN_SEEDS = "For ground to pound.",
        CANARY =
		{
			GENERIC = "Hmphf. Not a honey-maker.",
			HELD = "My stomach is growling.",
		},
        CANARY_POISONED = "(sniff) GrHK!",

		CRITTERLAB = "GRRrrrrr...",
        CRITTER_GLOMLING = "Not afraid of being slammed out of air...?",
        CRITTER_DRAGONLING = "Makes me shed faster. Too warm.",
		CRITTER_LAMB = "Scruffy coat of hair!",
        CRITTER_PUPPY = "Grrrr. My food is mine.",
        CRITTER_KITTEN = "GRRrrr. Food's for me, not you.",
        CRITTER_PERDLING = "(sniff) Mmm...",
		CRITTER_LUNARMOTHLING = "Keeps night bright like hibernation seasons.",

		CROW =
		{
			GENERIC = "GrrrrRRRR.",
			HELD = "(sniff) Mmm. Might take a bite.",
		},
		CUTGRASS = "Shed like hair.",
		CUTREEDS = "Good for sleeping on.",
		CUTSTONE = "Cut like trees when I get hungry.",
		DEADLYFEAST = "(sniff) GrrHHHk!!",
		DEER =
		{
			GENERIC = "Winter coat is covering its eyes?",
			ANTLER = "Could I grow claws on my head too?",
		},
        DEER_ANTLER = "Not too unfamiliar to shedding.",
        DEER_GEMMED = "GRAAAAHR!",
		DEERCLOPS = "Can't trust what doesn't hibernate. Grr...",
		DEERCLOPS_EYEBALL = "(sniff) Mmmm! Edible!",
		EYEBRELLAHAT =	"What is above? Hmphf.",
		DEPLETED_GRASS =
		{
			GENERIC = "(sniff) Hmphf...",
		},
        GOGGLESHAT = "Tickles ears.",
        DESERTHAT = "Keeps the hairs out of the eyes.",
        ANTLIONHAT = "RAAHHH! THE GROUND IS MINE TO POUND!!",
--fallback to speech_wilson.lua 		DEVTOOL = "PLACEHOLDER",
--fallback to speech_wilson.lua 		DEVTOOL_NODEV = "PLACEHOLDER",
		DIRTPILE = "(sniff snorf) Mmm. Dirt.",
		DIVININGROD =
		{
			COLD = "Cold. Would still need to hibernate.",
			GENERIC = "An extra pair of sniffers.",
			HOT = "GRAAAAAHH!!",
			WARM = "Starting to sniff it. Ear is twitching!",
			WARMER = "Can smell it close! Grrr... (sniff!)",
		},
		DIVININGRODBASE =
		{
			GENERIC = "It is...sitting there?",
			READY = "(sniff) Missing a part.",
			UNLOCKED = "Hmpf!",
		},
		DIVININGRODSTART = "It is...sitting there? Mine?",
		DRAGONFLY = "More heat is inside than any Bearger's hibernation...",
		ARMORDRAGONFLY = "Makes me look a little less hairy. Hmphf.",
		DRAGON_SCALES = "I shed too!",
		DRAGONFLYCHEST =
		{
			GENERIC = "Still can't save the food from my mouth.",
            UPGRADED_STACKSIZE = "All the food this could have stashed...mmm!",
		},
		DRAGONFLYFURNACE = 
		{
			HAMMERED = "Slammed and pounded.",
			GENERIC = "Mm. Makes me feel like hibernating.", --no gems
			NORMAL = "Hmpf. Very warm.", --one gem
			HIGH = "Too hot to hibernate under.", --two gems
		},
        
        HUTCH = "Grrr. Just don't eat my food.",
        HUTCH_FISHBOWL =
        {
            GENERIC = "I get a lot of hair in it.",
            WAITING = "Hibernating... in water?",
        },
		LAVASPIT = 
		{
			HOT = "(sniff) HMphf! Hot!",
			COOL = "It's readying for hibernation.",
		},
		LAVA_POND = "Will not take a dip...",
		LAVAE = "GRRRR! Hot, hot!",
		LAVAE_COCOON = "Hibernation!",
		LAVAE_PET = 
		{
			STARVING = "It looks like honey, but doesn't eat any.",
			HUNGRY = "A little growler are you?",
			CONTENT = "Easy to care for when I get to keep all the food.",
			GENERIC = "Keeps burning hairs off.",
		},
		LAVAE_EGG = 
		{
			GENERIC = "Must be hibernating in it.",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "Not enough fat to survive the winter.",
			COMFY = "Warm and safe.",
		},
		LAVAE_TOOTH = "It is... not my tooth.",

		DRAGONFRUIT = "(sniff) Mm. Good to eat.",
		DRAGONFRUIT_COOKED = "MmmmMM! Juicy!",
		DRAGONFRUIT_SEEDS = "Ground to pound.",
		DRAGONPIE = "Graah! Will eat it all!",
		DRUMSTICK = "(sniff) Perfect for eating.",
		DRUMSTICK_COOKED = "Mmmm! Love to eat it.",
		DUG_BERRYBUSH = "Hmpf. Did I knock it over while angry?",
		DUG_BERRYBUSH_JUICY = "Hmpf. Did I knock it over while angry?",
		DUG_GRASS = "Hmpf. Did I knock it over while angry?",
		DUG_MARSH_BUSH = "Hmpf. Did I knock it over while angry?",
		DUG_SAPLING = "Hmpf. Did I knock it over while angry?",
		DURIAN = "Doesn't smell good... it must still taste good.",
		DURIAN_COOKED = "(sniff) Grrhk! Will still eat.",
		DURIAN_SEEDS = "Slam into the ground.",
		EARMUFFSHAT = "My ears weren't fuzzy enough...?",
		EGGPLANT = "(sniff) Going to bite it.",
		EGGPLANT_COOKED = "Good to eat. Mmm.",
		EGGPLANT_SEEDS = "For ground then to pound.",
		
		ENDTABLE = 
		{
			BURNT = "Ghrrrr!",
			GENERIC = "(sniff sniff) Mmm. Edible flower.",
			EMPTY = "(sniff sniff) There is... nothing?",
			WILTED = "GhrrrrRR. Not being taken care of.",
			FRESHLIGHT = "Keep getting told not to eat it... but.",
			OLDLIGHT = "Light is... fading. Grrr...", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE = 
		{
			BURNING = "Too many leaves?",
			BURNT = "(sniff) Grrrr.",
			CHOPPED = "Must have knocked it over.",
			POISON = "RAAAAHG! Will take as many birchnuts as wanted!!",
			GENERIC = "Leaves, it's time to scavenge. Branches, time to hibernate.",
		},
		ACORN = "Put my ear next to it and shook it. It rattles.",
        ACORN_SAPLING = "Will be fully grown when hibernation is done.",
		ACORN_COOKED = "Mmm. Crunch!",
		BIRCHNUTDRAKE = "GhrrrrRR!",
		EVERGREEN =
		{
			BURNING = "Hmpf. Not good for leaves.",
			BURNT = "Only you...can prevent these.",
			CHOPPED = "Slamming the ground must have knocked it down.",
			GENERIC = "I have a lot of fir too.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "Warmer than before.",
			BURNT = "GRRR!",
			CHOPPED = "Ground pounded a little much.",
			GENERIC = "Gets in the way when I'm hungry.",--It won't like me when I'm angry.
		},
		TWIGGYTREE = 
		{
			BURNING = "Warmer than before.",
			BURNT = "Stomping will knock it over.",
			CHOPPED = "Easy to knock down.",
			GENERIC = "Can't warn it that I'll knock it over.",			
			DISEASED = "GrrrHK. Not right!",
		},
		TWIGGY_NUT_SAPLING = "Will grow before hibernation.",
        TWIGGY_OLD = "Slamming the ground would uproot it.",
		TWIGGY_NUT = "Needs to be ground pounded.",
		EYEPLANT = "Grrrrrrrr...",
		INSPECTSELF = "How's the winter coat growing in...?",
		FARMPLOT =
		{
			GENERIC = "No food. Ghrrrr...",
			GROWING = "Want to eat it already...",
			NEEDSFERTILIZER = "Hungry!",
			BURNT = "Too crisp. Grrrr.",
		},
		FEATHERHAT = "Had enough hair. Now feathers.",
		FEATHER_CROW = "I only shed hair.",
		FEATHER_ROBIN = "(sniff) Not berries.",
		FEATHER_ROBIN_WINTER = "Shedding winter coat already?",
		FEATHER_CANARY = "(sniff) Not honey.",
		FEATHERPENCIL = "Not sure what is write or wrong.",
		COOKBOOK = "Food just tastes like paper. Not very good.",
		FEM_PUPPET = "Hibernating...? No.",
		FIREFLIES =
		{
			GENERIC = "Snowfall given light.",
			HELD = "Mfph. Like to watch light flicker in fall nights.",
		},
		FIREHOUND = "Winter coat is a little too hot.",
		FIREPIT =
		{
			EMBERS = "Grrr. Warmth is all gone...",
			GENERIC = "Warmth is good.",
			HIGH = "Can feel the heat all throughout hair.",
			LOW = "It is... fading.",
			NORMAL = "Mmmm.... Warmth.",
			OUT = "Good for warmth.",
		},
		COLDFIREPIT =
		{
			EMBERS = "Season is almost over.",
			GENERIC = "Like it better warm.",
			HIGH = "Feel like hibernating...",
			LOW = "It is... fading.",
			NORMAL = "My hair still keeps me warm.",
			OUT = "Grrr. Makes me want to hibernate.",
		},
		FIRESTAFF = "I get heated too if I don't eat.",
		FIRESUPPRESSOR = 
		{	
			ON = "There's still snow even when not hibernating...?",
			OFF = "For when it's too hot and hairy.",
			LOWFUEL = "(sniff) ...Empty.",
		},

		FISH = "Like to dive in and catch with my own teeth.",
		FISHINGROD = "Claws do it better.",
		FISHSTICKS = "Grmpf! Crunch!",
		FISHTACOS = "Good crunching!",
		FISH_COOKED = "Favorite treat! ...After honey.",
		FLINT = "Sharp as teeth.",
		FLOWER = 
		{
            GENERIC = "Good to chew on.",
            ROSE = "Not so good to chew on...",
        },
        FLOWER_WITHERED = "Should have been hibernating.",
		FLOWERHAT = "Warm around the ears.",
		FLOWER_EVIL = "(sniff) Ghrrrrrr.",
		FOLIAGE = "Plants shed too.",
		FOOTBALLHAT = "Makes things easier to tackle and slam.",
        FOSSIL_PIECE = "Keep? Keep.",
        FOSSIL_STALKER =
        {
			GENERIC = "Not enough meat.",
			FUNNY = "This is... humerus?",
			COMPLETE = "Now to eat?",
        },
        STALKER = "GrrrrRRR!!",
        STALKER_ATRIUM = "Will chew on leftover bones! GRRAA!",
        STALKER_MINION = "Slam!!",
        THURIBLE = "(sniff sniff) GhhRK! Not a good smell.",
        ATRIUM_OVERGROWTH = "Not food. Not bothered. Grrr.",
		FROG =
		{
			DEAD = "Mmm. Meal.",
			GENERIC = "Does it like mouthfuls of... hair?",
			SLEEPING = "I wouldn't hibernate there. Hmpf.",
		},
		FROGGLEBUNWICH = "(sniff) Mm-mm!",
		FROGLEGS = "Not big enough to do a good ground slam.",
		FROGLEGS_COOKED = "Mmm! Good eating!",
		FRUITMEDLEY = "Will eat it. Good enough.",
		FURTUFT = "Shedding...", 
		GEARS = "Not used to metal shedding.",
		GHOST = "Can't hear any pounding. Hmpf.",
		GOLDENAXE = "Claws weren't shiny enough...?",
		GOLDENPICKAXE = "Mmmm. Honey crackers...",
		GOLDENPITCHFORK = "No need to shine for ground pounding. Hmph.",
		GOLDENSHOVEL = "Almost chipped a tooth. Wasn't honey-glazed.",
		GOLDNUGGET = "Mmmm... Honey...",
		GRASS =
		{
			BARREN = "Will have to sit on it for a while...",
			WITHERED = "Needs to shed off a winter coat.",
			BURNING = "Hmpf. Still not tasty.",
			GENERIC = "Gets in the way when I'm hungry.",
			PICKED = "Will get better food...",
			DISEASED = "GrrrHK. Not right!",
			DISEASING = "(sniff) Grhk!",
		},
		GRASSGEKKO = 
		{
			GENERIC = "Mmmm. Grass looks tasty now.",	
			DISEASED = "GrrrHK. Not right!",
		},
		GREEN_CAP = "(sniff) Why does it make head feel... split?",
		GREEN_CAP_COOKED = "(sniff snorf) MMm. Head feels better about it.",
		GREEN_MUSHROOM =
		{
			GENERIC = "(sniff sniff) Mmmm...ushroom.",
			INGROUND = "Hibernating in there?",
			PICKED = "Mphf. Already got it.",
		},
		GUNPOWDER = "Too hot and spicy to eat. Hmpf.",
		HAMBAT = "Mmmm-Mmmm! Never mess with my food!",
		HAMMER = "Can pound more than just the ground.",
		HEALINGSALVE = "Mmm. Feels nice going down.",
		HEATROCK =
		{
			FROZEN = "Should be hibernating!",
			COLD = "Need to get to hibernation. Getting cold...",
			GENERIC = "Good rock to know when to hibernate.",
			WARM = "Mmm! Should take to hibernation with me.",
			HOT = "Hot. Many winter coats.",
		},
		HOME = "Hmphf. Not enough honey.",
		HOMESIGN =
		{
			GENERIC = "Could make better scratches with my own claws.",
            UNWRITTEN = "Grrr. It says... nothing.",
			BURNT = "Ghrrr.",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "Could make better scratches with my own claws.",
            UNWRITTEN = "Grrr. It says... nothing.",
			BURNT = "Ghrrr.",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "Could make better scratches with my own claws.",
            UNWRITTEN = "Grrr. It says... nothing.",
			BURNT = "Ghrrr.",
		},
		HONEY = "GRAAah! Makes life worth living and eating!!",
		HONEYCOMB = "Ghrrrh. Don't mess with my honey.",
		HONEYHAM = "Bearger's favorite treat to eat! Graaa!",
		HONEYNUGGETS = "Mhmmm!! Love to eat it!",
		HORN = "Shed more than just hair.",
		HOUND = "GhrrrRRRR! RRR!! Rr...",
		HOUNDCORPSE =
		{
			GENERIC = "Taken enough meat from any bones...?",
			BURNING = "Don't sniff...",
			REVIVING = "GHRRRR!!",
		},
		HOUNDBONE = "(sniff) ...All taken.",
		HOUNDMOUND = "GRRrr... Won't be hibernating in that.",
		ICEBOX = "(sniff sniff) Food!!",
		ICEHAT = "Makes ears floppy.",
		ICEHOUND = "A winter coat taken too far.",
		INSANITYROCK =
		{
			ACTIVE = "There is a splitting!!",
			INACTIVE = "It is... stone?",
		},
		JAMMYPRESERVES = "Gets stuck in hair. Becomes a snack for later.",

		KABOBS = "Mmmm! Perfect twig treat!",
		KILLERBEE =
		{
			GENERIC = "GRR. Not the best honey-maker around.",
			HELD = "Will have to make you give honey.",
		},
		KNIGHT = "Grrrrr. No metal meat.",
		KOALEFANT_SUMMER = "Stocking up for winter? Will help myself.",
		KOALEFANT_WINTER = "Mmmm. Should have been hibernating.",
		KOALEFANT_CARCASS = "Reminder to stock up for winter.",
		KRAMPUS = "GRAAAAAH!!",
		KRAMPUS_SACK = "My food stash stays mine.",
		LEIF = "Won't like me when I'm angry...",
		LEIF_SPARSE = "Grrr... Have knocked down enough trees before.",
		LIGHTER  = "Lighter snack than I'm used to.",
		LIGHTNING_ROD =
		{
			CHARGED = "It tingles my claws when I touch it.",
			GENERIC = "Hairs stand up when next to it.",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "Graaaah. Hmpf.",
			CHARGED = "Grrr. Must have had its food taken in front of it.",
		},
		LIGHTNINGGOATHORN = "Shed more than you wanted?",
		GOATMILK = "Mmmm. Leaves muzzle foamy.",
		LITTLE_WALRUS = "You'll get your winter hairs in. Eventually.",
		LIVINGLOG = "Grrrraa! Growl back!",
		LOG =
		{
			BURNING = "(sniff) Mm? Smoky.",
			GENERIC = "Slams knock down many trees. Hmpf.",
		},
		LUCY = "(sniff snorf) Grrrr.",
		LUREPLANT = "Ghrrrrr! Food!",
		LUREPLANTBULB = "(sniff) Hmm. Might eat it.",
		MALE_PUPPET = "Not a good hibernation spot.",

		MANDRAKE_ACTIVE = "Why can't my ears go into hibernation...",
		MANDRAKE_PLANTED = "(sniff sniff) Mmm. Chomp!",
		MANDRAKE = "Go into hibernation in my stomach! Grhh!",

        MANDRAKESOUP = "Chug it all down! Warm!",
        MANDRAKE_COOKED = "Good to crunch. Good to munch.",
        MAPSCROLL = "(sniff) Hmpf. Not smelling any words.",
        MARBLE = "Is this... stone?",
        MARBLEBEAN = "Not good for crunching with my teeth.",
        MARBLEBEAN_SAPLING = "Grow in time for next fall.",
        MARBLESHRUB = "(sniff snorf) ...So no food?",
        MARBLEPILLAR = "Hmpf. Not food. Not interested.",
        MARBLETREE = "Doesn't fall down as easy as other trees.",
        MARSH_BUSH =
        {
			BURNT = "Grrrr...",
            BURNING = "Needed more berries.",
            GENERIC = "(sniff) Hmphf! No berries.",
            PICKED = "Its bites don't hurt a full hairy coat.",
        },
        BURNT_MARSH_BUSH = "Grrrr...",
        MARSH_PLANT = "(sniff sniff) Couldn't chew on it... unless.",
        MARSH_TREE =
        {
            BURNING = "Grrrr...",
            BURNT = "Not good for back scratches anymore.",
            CHOPPED = "Knocked over. Hmpf.",
            GENERIC = "Good for back scratches.",
        },
        MAXWELL = "GhrRRrrRrRrrR...",
        MAXWELLHEAD = "I will bite your nose.",
        MAXWELLLIGHT = "There is a fire behind the eyes. Splitting, splitting!",
        MAXWELLLOCK = "Grrr... Only one thing.",
        MAXWELLTHRONE = "Wouldn't hibernate on it.",
        MEAT = "Mmmm. Stocks you up for winter.",
        MEATBALLS = "Just the warmth needed for hibernation. Grrh!",
        MEATRACK =
        {
            DONE = "(sniff) MM!",
            DRYING = "GRR. I want to eat it already!",
            DRYINGINRAIN = "Grrrr. Too wet.",
            GENERIC = "Grrr. Needs food.",
            BURNT = "GRRRA!",
            DONE_NOTMEAT = "(sniff) MM!",
            DRYING_NOTMEAT = "GRR. I want to eat it already!",
            DRYINGINRAIN_NOTMEAT = "Grrrr. Too wet.",
        },
        MEAT_DRIED = "Grrr. Won't let others take it away.",
        MERM = "(sniff) Hrmpf. Edible.",
        MERMHEAD =
        {
            GENERIC = "(sniff) GRRRk!",
            BURNT = "Grrr. Could have eaten it.",
        },
        MERMHOUSE =
        {
            GENERIC = "(sniff) GRRRhh.",
            BURNT = "Bad hibernation spot. Hmpf.",
        },
        MINERHAT = "Head is full of light and hair.",
        MONKEY = "GrrrRRR... Don't take my food.",
        MONKEYBARREL = "Food stash? (sniff) GrrHK!",
        MONSTERLASAGNA = "Mmm! Love to eat!",
        FLOWERSALAD = "Crunchy! Not filling.",
        ICECREAM = "Shouldn't eat it before hibernating.",
        WATERMELONICLE = "My hairs get all over it.",
        TRAILMIX = "Mmm! Berries with toasted crunch!",
        HOTCHILI = "Mm. Tastes like waking up from hibernation.",
        GUACAMOLE = "Ghraah! Mine to eat!",
        MONSTERMEAT = "Mmm! (sniff) Grrr...",
        MONSTERMEAT_DRIED = "Grrrr. To crunch by me.",
        MOOSE = "Makes hair stand up. GrrrRRR.",
        MOOSE_NESTING_GROUND = "Knows where to hibernate.",
        MOOSEEGG = "(sniff) Hibernators inside.",
        MOSSLING = "Its hairs stand up on all ends to no end.",
        FEATHERFAN = "Cold fall breeze. Feels good on hair.",
        MINIFAN = "Little breeze. (sniff)",
        GOOSE_FEATHER = "I'm not the only one shedding. Hmphf.",
        STAFF_TORNADO = "Twists my stomach into knots. Hrmpf.",
        MOSQUITO =
        {
            GENERIC = "GRRRRrrr...",
            HELD = "Must like a lot of hair with blood.",
        },
        MOSQUITOSACK = "Hrmph. Not as filling.",
        MOUND =
        {
            DUG = "Anything else left in there to eat...?",
            GENERIC = "(sniff snorf) Mmm. Dirt.",
        },
        NIGHTLIGHT = "There is a fire behind the eyes. Splitting, splitting?",
        NIGHTMAREFUEL = "It's splitting minds... and hairs. GRR!",
        NIGHTSWORD = "Sharp enough to split Bearger hairs.",
        NITRE = "(sniff) It is...a rock.",
        ONEMANBAND = "GrrrrrrrRRRR... Rumble.",
        OASISLAKE =
		{
			GENERIC = "Might dip a claw. Sniff for fish.",
			EMPTY = "Stomping grounds.",
		},
        PANDORASCHEST = "Graaah! Smash for food!",
        PANFLUTE = "For when I have trouble hibernating.",
        PAPYRUS = "Feels like stiff hairs.",
        WAXPAPER = "(sniff) Mmm... Honey-scented.",
        PENGUIN = "Grrrrr. Eggs. Now.",
        PERD = "GRAAAAAGH!!",
        PEROGIES = "Love to be stuffed as much as it.",
        PETALS = "Good for teeth crunching.",
        PETALS_EVIL = "Good for teeth crunching.",
        PHLEGM = "Ghrrrk. (sniff) Not...food.",
        PICKAXE = "Crack into rocks. Like claws into food chests.",
        PIGGYBACK = "Hair feels a little heavier.",
        PIGHEAD =
        {
            GENERIC = "GrrRrrrRr.",
            BURNT = "Ghrrr. Too crunchy.",
        },
        PIGHOUSE =
        {
            FULL = "Wish I were bigger. Could eat it all whole.",
            GENERIC = "Don't need it to hibernate.",
            LIGHTSOUT = "Light ...snout?",
            BURNT = "Bad smell. Grrr.",
        },
        PIGKING = "You are... (sniff) Grrrhk!",
        PIGMAN =
        {
            DEAD = "Never get between me and food.",
            FOLLOWER = "Follow. Don't look at my food.",
            GENERIC = "Grrrrr. Don't look at me while I'm eating.",
            GUARD = "GhRRRRaaah!",
            WEREPIG = "RAAAAAAHG!!",
        },
        PIGSKIN = "(sniff) Hmpf! Not the best side.",
--      PIGTENT = "PLACEHOLDER",
        PIGTORCH = "Grrr. Can't defend food from me forever.",
        PINECONE = "Likes to be ground pounded.",
        PINECONE_SAPLING = "(sniff) ...Growing.",
        LUMPY_SAPLING = "(sniff) ...Growing.",
        PITCHFORK = "Extra claws for ground pounding.",
        PLANTMEAT = "Meat? Hmpf. Will eat anyway.",
        PLANTMEAT_COOKED = "Crunchy Meat? Hmpf. Will eat anyway.",
        PLANT_NORMAL =
        {
            GENERIC = "(sniff sniff sniff)",
            GROWING = "Grrr. Good to eat yet?",
            READY = "GRAAHH! Food!",
            WITHERED = "Ghrrr... Too early to eat. Too late to hibernate.",
        },
        POMEGRANATE = "Mmm. Juice!",
        POMEGRANATE_COOKED = "Love to shove muzzle into it.",
        POMEGRANATE_SEEDS = "Many for ground pounding.",
        POND = "(sniff) Mmmm... Fish.",
        POOP = "Don't need to sniff to know what it is. Hmpf.",
        FERTILIZER = "Must've been back up. Ghrmpf.",
        PUMPKIN = "Good to smash and eat.",
        PUMPKINCOOKIE = "Too busy eating to look at it. Grr!",
        PUMPKIN_COOKED = "Good to smash and eat.",
        PUMPKIN_LANTERN = "Is it staring back?",
        PUMPKIN_SEEDS = "Mmmm!",
        PURPLEAMULET = "Splits head... splits head!",
        PURPLEGEM = "Looks the same as the others?",
        RABBIT =
        {
            GENERIC = "GrrRrrRrrR!! Time to chase!",
            HELD = "Can't run faster than my hunger.",
        },
        RABBITHOLE =
        {
            GENERIC = "Where the little ones go to hibernate.",
            SPRING = "In hibernation.",
        },
        RAINOMETER =
        {
            GENERIC = "Shows how long to sleep in a day.",
            BURNT = "Raining... fire?",
        },
        RAINCOAT = "Wasn't made with a full coat of hair in mind...",
        RAINHAT = "Tickles the ears when it pours.",
        RATATOUILLE = "Mmmm! Warming food!",
        RAZOR = "Would snap trying to shave Bearger fur.",
        REDGEM = "Another? Which one is it?",
        RED_CAP = "Smells good to eat. Will eat!",
        RED_CAP_COOKED = "Good crisp. Hmpf!",
        RED_MUSHROOM =
        {
            GENERIC = "(sniff) Mphf. Eat it.",
            INGROUND = "Hibernating?",
            PICKED = "Hrmhf. Already eaten.",
        },
        REEDS =
        {
            BURNING = "(sniff) ...Too hot.",
            GENERIC = "Might be stomped on when I get hungry.",
            PICKED = "Hmpf. Got enough.",
        },
        RELIC = "Not made for Bearger sitting.",
        RUINS_RUBBLE = "(sniff) ...Fixable.",
        RUBBLE = "Have enough rocks of my own.",
        RESEARCHLAB =
        {
            GENERIC = "Will never understand this. Ghrrr.",
            BURNT = "It is... no more?",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "Makes my head feel... empty. GRR. No thoughts?",
            BURNT = "(sniff) Hmpf. Burnt.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "It is splitting minds. GrrRrrRRr...",
            BURNT = "(sniff) Hmpf. Burnt.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "Why does it need so many words. Are they... food?",
            BURNT = "(sniff) Hmpf. Burnt.",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "(sniff) Hmpf. Not hairy enough.",
            BURNT = "(sniff sniff) ...Burnt.",
        },
        RESURRECTIONSTONE = "Hairs stand up next to it. (sniff sniff).",
        ROBIN =
        {
            GENERIC = "Grrrrr...",
            HELD = "Will show you my teeth.",
        },
        ROBIN_WINTER =
        {
            GENERIC = "Should be hibernating...",
            HELD = "Good winter coat. Now you need meat on bones.",
        },
        ROBOT_PUPPET = "Bad spot for hibernating.",
        ROCK_LIGHT =
        {
            GENERIC = "(sniff) Something is already hibernating in there.",
            OUT = "Sign to hibernate.",
            LOW = "Getting colder. Like the seasons.",
            NORMAL = "Mmm. Warmth.",
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "Will slam and pound.",
            RAISED = "Can't claw it. Only sniff.",
        },
        ROCK = "Grrrr. (sniff sniff) No food here.",
        PETRIFIED_TREE = "Tree's tired of me knocking them down.",
        ROCK_PETRIFIED_TREE = "Tree's tired of me knocking them down.",
        ROCK_PETRIFIED_TREE_OLD = "Tree's tired of me knocking them down.",
        ROCK_ICE =
        {
            GENERIC = "Cold. ...Need to hibernate soon.",
            MELTED = "No hibernating yet. Find food.",
        },
        ROCK_ICE_MELTED = "No hibernating yet. Find food.",
        ICE = "Cold. ...Need to hibernate soon.",
        ROCKS = "Ground pounded. Hmpf.",
        ROOK = "RAAAAHG!! Rumble!",
        ROPE = "Feels like matted hair. Hmph.",
        ROTTENEGG = "(sniff) GRRRHK!!",
        ROYAL_JELLY = "Mmm! Makes mess, but feels good in my maw.",
        JELLYBEAN = "Will eat the whole jar. Then will eat the jar.",
        SADDLE_BASIC = "Not for Beargers.",
        SADDLE_RACE = "Charge. Now.",
        SADDLE_WAR = "Like me when my stomach rumbles.",
        SADDLEHORN = "Not food. Only saddles eat it.",
        SALTLICK = "Will have to lick it for a while.",
        BRUSH = "Good for Bearger hair. Gets tangles out.",
		SANITYROCK =
		{
			ACTIVE = "Taller than other rocks. Hmpf.",
			INACTIVE = "It is... gone?",
		},
		SAPLING =
		{
			BURNING = "Feeling too hot. Much too hot. Hmpf.",
			WITHERED = "Feeling too hot...",
			GENERIC = "(sniff sniff) Mmm. Sticks.",
			PICKED = "It's mine...now.",
			DISEASED = "(sniff sniff) GrrrHK. Not right!",
			DISEASING = "(sniff) Grhk!",
		},
   		SCARECROW = 
   		{
			GENERIC = "GrrRRRRRR!! No looking!",
			BURNING = "Hibernated too hard.",
			BURNT = "Huff.",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "Hmpf. Won't make food.",
			BLOCK = "Can use claws? ...No? Grrr.",
			SCULPTURE = "(sniff) Hmpfh.",
			BURNT = "Not good.",
   		},
        SCULPTURE_KNIGHTHEAD = "It is... missing part?",
		SCULPTURE_KNIGHTBODY = 
		{
			COVERED = "(sniff) ...Not to trust.",
			UNCOVERED = "Slammed?",
			FINISHED = "Done. Can hibernate now.",
			READY = "Ready to come out?",
		},
        SCULPTURE_BISHOPHEAD = "Split head?",
		SCULPTURE_BISHOPBODY = 
		{
			COVERED = "(sniff) Hmph?",
			UNCOVERED = "Needs parts. Hmpf.",
			FINISHED = "Done. Can hibernate now.",
			READY = "Ready to come out?",
		},
        SCULPTURE_ROOKNOSE = "Will sniff nose with my own nose. (sniff)",
		SCULPTURE_ROOKBODY = 
		{
			COVERED = "(sniff sniff) ...Will eat foliage.",
			UNCOVERED = "Pounded?",
			FINISHED = "Done. Can hibernate now.",
			READY = "Ready to come out?",
		},
        GARGOYLE_HOUND = "GrrrRRRrrRRR. Growl back!",
        GARGOYLE_WEREPIG = "Grrr! Rrr!",
		SEEDS = "Mm. Mm. Not filling enough.",
		SEEDS_COOKED = "Gets stuck in teeth.",
		SEWING_KIT = "For putting shedding back on.",
		SEWING_TAPE = "Gets shedding all over it.",
		SHOVEL = "Won't have to only use nose and claws for dirt.",
		SILK = "Gets lost in all my hair.",
		SKELETON = "(sniff) Mmm... Could chew on these.",
		SCORCHED_SKELETON = "(sniff sniff) Mmm. Cooked.",
        SKELETON_NOTPLAYER = "Might take one of those bones. Not using them.",
		SKULLCHEST = "Foooood??",
		SMALLBIRD =
		{
			GENERIC = "Will always feed myself first. Hmphf.",
			HUNGRY = "Baby wants snack.",
			STARVING = "Baby needs snack.",
			SLEEPING = "Little hibernator.",
		},
		SMALLMEAT = "(sniff) Mm. Good treat.",
		SMALLMEAT_DRIED = "Teeth love to crunch on it.",
		SPAT = "Someone with hair crustier than mine. Grrr.",
		SPEAR = "Extended claws and teeth.",
		SPEAR_WATHGRITHR = "Grrrrrr!",
		WATHGRITHRHAT = "(sniff) Grrrr. Used.",
		SPIDER =
		{
			DEAD = "Bearger hair is better. Grrh!",
			GENERIC = "GhrrRrrRrRrRr!!",
			SLEEPING = "Bad hibernator. Will perish.",
		},
		SPIDERDEN = "Hairy den. Never my den.",
		SPIDEREGGSACK = "Wouldn't want to hibernate here...",
		SPIDERGLAND = "Mphf. Chewy.",
		SPIDERHAT = "Now I will shed more than Bearger hair.",
		SPIDERQUEEN = "GhRRRAAAAAH!",
		SPIDER_WARRIOR =
		{
			DEAD = "Hmph!",
			GENERIC = "Grrrrrrr. Will have to use claws.",
			SLEEPING = "Now is time to stomp.",
		},
		SPOILED_FOOD = "(sniff) GRRRR!! BAD.",
        STAGEHAND =
        {
			AWAKE = "RAAAAHG! Knew I smelt you!",
			HIDING = "(sniff sniff) GrrRrrrRrrr.",
        },
        STATUE_MARBLE = 
        {
            GENERIC = "Hard not to claw at.",
            TYPE1 = "Hard not to claw at.",
            TYPE2 = "Ghrrrh.",
            TYPE3 = "Too small for Beargers.", --bird bath type statue
        },
		STATUEHARP = "Hard not to claw at.",
		STATUEMAXWELL = "Must destroy it in the search for food.",
		STEELWOOL = "Scratchier hair than mine.",
		STINGER = "Beargers don't lose their claws.",
		STRAWHAT = "Ears should poke out.",
		STUFFEDEGGPLANT = "Loved to be stuffed with food!",
		SWEATERVEST = "Matches fur!",
		REFLECTIVEVEST = "Keeps catching eyes.",
		HAWAIIANSHIRT = "Still hard to cover all my hair.",
		TAFFY = "Mmm! Won't leave teeth alone.",
		TALLBIRD = "Grrrrrr. Won't keep food away from me.",
		TALLBIRDEGG = "Mmphf! Mine!",
		TALLBIRDEGG_COOKED = "(sniff) Mm-mphf!",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Too cold!",
			GENERIC = "Can't... resist... eating...",
			HOT = "Too hot!",
			LONG = "Taking too long... better to eat.",
			SHORT = "Can only hold off eating much longer...",
		},
		TALLBIRDNEST =
		{
			GENERIC = "Graah! Food!",
			PICKED = "Keep eyes on it for more food.",
		},
		TEENBIRD =
		{
			GENERIC = "Don't stare at my food. GrrRrrr.",
			HUNGRY = "Needs food. Grrr...me too.",
			STARVING = "Need to teach it how to scavenge...",
			SLEEPING = "Hibernating already?",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "Now go.",
			GENERIC = "It is... sleeping.",
			LOCKED = "Need to search for parts. And food.",
			PARTIAL = "Need to search for more parts. And more food.",
		},
		TELEPORTATO_BOX = "Too small to hibernate in.",
		TELEPORTATO_CRANK = "I get cranky too when I'm hungry.",
		TELEPORTATO_POTATO = "(sniff) Grrr. Not food.",
		TELEPORTATO_RING = "Tingles when chewed on.",
		TELESTAFF = "Leaves a pile of hair where I leave.",
		TENT = 
		{
			GENERIC = "Hibernation station.",
			BURNT = "Grrrr. Will hibernate elsewhere.",
		},
		SIESTAHUT = 
		{
			GENERIC = "Mmhpf! Love to nap!",
			BURNT = "Grr! No longer good for hibernating.",
		},
		TENTACLE = "(sniff) Grrrr...",
		TENTACLESPIKE = "Claws without hair.",
		TENTACLESPOTS = "(sniff sniff) Grrr. Not edible.",
		TENTACLE_PILLAR = "Mm. Won't lick again. ...Unless.",
        TENTACLE_PILLAR_HOLE = "(sniff sniff) Hrmpf. Smells of hibernating holes.",
		TENTACLE_PILLAR_ARM = "Little, little hairless food.",
		TENTACLE_GARDEN = "Little, little hairless food.",
		TOPHAT = "Will call it... ha-bear-dashery.",
		TORCH = "I will light this... torch.",
		TRANSISTOR = "Buzzing. But no honey...?",
		TRAP = "Any food in it yet?",
		TRAP_TEETH = "Like my own maw.",
		TRAP_TEETH_MAXWELL = "No stepping allowed.",
		TREASURECHEST = 
		{
			GENERIC = "(sniff) ...Foooood?",
			BURNT = "Grrrrrr. No food.",
            UPGRADED_STACKSIZE = "All stocked up for winter!",
		},
		TREASURECHEST_TRAP = "(sniff sniff) Suspicious.",
        CHESTUPGRADE_STACKSIZE = "Will be good for big winter stashes. So many berries...Mmmm", -- Describes the kit upgrade item.
		COLLAPSEDCHEST = "Ran out of food.",
		SACRED_CHEST = 
		{
			GENERIC = "Sniff around for food.",
			LOCKED = "GRAAA!",
		},
		TREECLUMP = "Will have to storm through!",
		
		TRINKET_1 = "Not food. Grr.", --Melted Marbles
		TRINKET_2 = "Ears aren't hearing anything.", --Fake Kazoo
		TRINKET_3 = "Good for claws.", --Gord's Knot
		TRINKET_4 = "Hoo!", --Gnome
		TRINKET_5 = "Not food. Not good food at least.", --Toy Rocketship
		TRINKET_6 = "Should know better than to chew on it.", --Frazzled Wires
		TRINKET_7 = "So no food?", --Ball and Cup
		TRINKET_8 = "I'm not a bung-er.", --Rubber Bung
		TRINKET_9 = "Falls out like fur.", --Mismatched Buttons
		TRINKET_10 = "Bearger teeth gnash better.", --Dentures
		TRINKET_11 = "Will have to listen.", --Lying Robot
		TRINKET_12 = "Can chew it on.", --Dessicated Tentacle
		TRINKET_13 = "Hooh!", --Gnomette
		TRINKET_14 = "Water keeps falling out. Ghrrr!", --Leaky Teacup
		TRINKET_15 = "Urge to yawn.", --Pawn
		TRINKET_16 = "Might want to yawn.", --Pawn
		TRINKET_17 = "I'm gpod at bending it.", --Bent Spork
		TRINKET_18 = "Food inside...?", --Trojan Horse
		TRINKET_19 = "Might get stomped on.", --Unbalanced Top
		TRINKET_20 = "Good shed-helper.", --Backscratcher
		TRINKET_21 = "My teeth beat enough eggs. Mmm.", --Egg Beater
		TRINKET_22 = "Good clawing fun.", --Frayed Yarn
		TRINKET_23 = "For... toes?", --Shoehorn
		TRINKET_24 = "Was told food goes in it. Hmpf!", --Lucky Cat Jar
		TRINKET_25 = "Smells like hair.", --Air Unfreshener
		TRINKET_26 = "...Not edible??", --Potato Cup
		TRINKET_27 = "Can't hang up hair.", --Coat Hanger
		TRINKET_28 = "Who took?", --Rook
        TRINKET_29 = "Was it took?", --Rook
        TRINKET_30 = "Unmatched knight.", --Knight
        TRINKET_31 = "Unmatched knight.", --Knight
        TRINKET_32 = "Claws give it a tap.", --Cubic Zirconia Ball
        TRINKET_33 = "Slides off claws.", --Spider Ring
        TRINKET_34 = "Bearger don't loose paws.", --Monkey Paw
        TRINKET_35 = "(sniff) Hrmpf. Empty!", --Empty Elixir
        TRINKET_36 = "Don't need any more.", --Faux fangs
        TRINKET_37 = "Pounded.", --Broken Stake
        TRINKET_38 = "Snout's too big to see through.", -- Binoculars Griftlands trinket
        TRINKET_39 = "Claws would rip it into pieces.", -- Lone Glove Griftlands trinket
        TRINKET_40 = "Not food? Hmph.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "Not food? Hmph.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "Not food? Hmph.", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "Not food? Hmph.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "Already slammed and pounded.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "(snif) Hmpf. Not right.", -- Odd Radio ONI trinket
        TRINKET_46 = "Hair is already very dry.", -- Hairdryer ONI trinket

        LOST_TOY_1  = "(sniff, sniff) ...No smell.",
        LOST_TOY_2  = "(sniff, sniff) ...No smell.",
        LOST_TOY_7  = "(sniff, sniff) ...No smell.",
        LOST_TOY_10 = "(sniff, sniff) ...No smell.",
        LOST_TOY_11 = "(sniff, sniff) ...No smell.",
        LOST_TOY_14 = "(sniff, sniff) ...No smell.",
        LOST_TOY_18 = "(sniff, sniff) ...No smell.",
        LOST_TOY_19 = "(sniff, sniff) ...No smell.",
        LOST_TOY_42 = "(sniff, sniff) ...No smell.",
        LOST_TOY_43 = "(sniff, sniff) ...No smell.",
        
        HALLOWEENCANDY_1 = "Mmhpf! Busy eating!",
        HALLOWEENCANDY_2 = "Into maw! Teeth will help!",
        HALLOWEENCANDY_3 = "(sniff) Not a treat. But still good to eat!",
        HALLOWEENCANDY_4 = "Squishes just like real ones!",
        HALLOWEENCANDY_5 = "Crunch for maw.",
        HALLOWEENCANDY_6 = "(sniff) Hmphf. Not so sure.",
        HALLOWEENCANDY_7 = "Toss all into maw!",
        HALLOWEENCANDY_8 = "Tastes more solid than usual.",
        HALLOWEENCANDY_9 = "Good fun to squish and gnash.",
        HALLOWEENCANDY_10 = "Will just eat it whole.",
        HALLOWEENCANDY_11 = "Tastes sweeter than the real one.",
        HALLOWEENCANDY_12 = "Mmm! Love to eat!", --ONI meal lice candy
        HALLOWEENCANDY_13 = "Crunchy. Like eating bones.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "Gives tongue whiplash.", --Hot Lava pepper candy
        CANDYBAG = "Good to scrounge through. Mm!",

		HALLOWEEN_ORNAMENT_1 = "Will still end up knocking trees down.",
		HALLOWEEN_ORNAMENT_2 = "Will still end up knocking trees down.",
		HALLOWEEN_ORNAMENT_3 = "Will still end up knocking trees down.", 
		HALLOWEEN_ORNAMENT_4 = "Will still end up knocking trees down.",
		HALLOWEEN_ORNAMENT_5 = "Grrrrrr. Will still knock trees down.",
		HALLOWEEN_ORNAMENT_6 = "Will still end up knocking trees down.", 

		HALLOWEENPOTION_DRINKS_WEAK = "Grrr. Not strong enough!",
		HALLOWEENPOTION_DRINKS_POTENT = "Mmmph! Grows extra hair back!",
        HALLOWEENPOTION_BRAVERY = "Stiffens hairs. Hmph.",
		HALLOWEENPOTION_MOON = "Only interested if it makes food.",
		HALLOWEENPOTION_FIRE_FX = "Shiny. But not food.", 
		MADSCIENCE_LAB = "Only mad when I'm hungry.",
		LIVINGTREE_ROOT = "Will root for it.", 
		LIVINGTREE_SAPLING = "To be knocked down?",

        DRAGONHEADHAT = "More gnarled teeth to show.",
        DRAGONBODYHAT = "Not like Beargers to be the ones in the belly.",
        DRAGONTAILHAT = "Doesn't smell like usual ends.",
        PERDSHRINE =
        {
            GENERIC = "Does it make... food?",
            EMPTY = "Needs bush. For hibernating?",
            BURNT = "Grrr. Burnt.",
        },
        REDLANTERN = "Makes hair look but not feel warm.",
        LUCKY_GOLDNUGGET = "Good to chew on.",
        FIRECRACKERS = "Tears at the ears when it crackles.",
        PERDFAN = "Can smell the wind from here.",
        REDPOUCH = "(sniff) Food?",
        WARGSHRINE = 
        {
            GENERIC = "Does it make... food?",
            EMPTY = "Wants a light snack.",
            BURNT = "Grrr. Burnt.",
        },
        CLAYWARG = 
        {
            GENERIC = "RAAAAUHHG!",
            STATUE = "Grrrrrrr!",
        },
        CLAYHOUND = 
        {
            GENERIC = "Will SLAM into GROUND!",
            STATUE = "GrrrrRRRR!",
        },
        HOUNDWHISTLE = "Tugs at the ears. GRRR!",
        CHESSPIECE_CLAYHOUND = "Slammed to stone.",
        CHESSPIECE_CLAYWARG = "Slammed to stone.",

		PIGSHRINE =
		{
            GENERIC = "Tempted to bite...",
            EMPTY = "Needs meat. But so do I.",
            BURNT = "Grrr. Burnt.",
		},
		PIG_TOKEN = "Doesn't fit around large masses of hair.",
		PIG_COIN = "Bite for good luck.",
		YOTP_FOOD1 = "Perfect meal! Hibernation awaits!",
		YOTP_FOOD2 = "Might like it.",
		YOTP_FOOD3 = "(sniff) Mmm. Good food.",

		PIGELITE1 = "GrrrrAH!", --BLUE
		PIGELITE2 = "RAAAAH!", --RED
		PIGELITE3 = "Coins are mine! Grrr!", --WHITE
		PIGELITE4 = "Grrr...rrr!", --GREEN

		PIGELITEFIGHTER1 = "GrrrrAH!", --BLUE
		PIGELITEFIGHTER2 = "RAAAAH!", --RED
		PIGELITEFIGHTER3 = "Graaa!", --WHITE
		PIGELITEFIGHTER4 = "Grrr...rrr!", --GREEN

		CARRAT_GHOSTRACER = "(sniff sniff) Not for eating.",

        YOTC_CARRAT_RACE_START = "My growl always gets creatures running.",
        YOTC_CARRAT_RACE_CHECKPOINT = "I already leave trails of hairs.",
        YOTC_CARRAT_RACE_FINISH =
        {
            GENERIC = "I hope winning tastes like honey.",
            BURNT = "(sniff) No more running.",
            I_WON = "GrAAAAHh! Where's my victory honey?",
            SOMEONE_ELSE_WON = "(sniff sniff) Wasn't mine. {winner}'s.",
        },

		YOTC_CARRAT_RACE_START_ITEM = "(sniff) Needs placing.",
        YOTC_CARRAT_RACE_CHECKPOINT_ITEM = "(sniff) Needs placing.",
		YOTC_CARRAT_RACE_FINISH_ITEM = "(sniff) Needs placing.",

		YOTC_SEEDPACKET = "(sniff) Mmm...seeds.",
		YOTC_SEEDPACKET_RARE = "(sniff) Mmm...better seeds.",

		MINIBOATLANTERN = "I want to chase it around.",

        YOTC_CARRATSHRINE =
        {
            GENERIC = "Tempted to bite...",
            EMPTY = "Grrr... I'm hungry too.",
            BURNT = "Grrr. Burnt.",
        },

        YOTC_CARRAT_GYM_DIRECTION = 
        {
            GENERIC = "Good for knowing how to find hibernation spots.",
            RAT = "Beef up for hibernation.",
            BURNT = "Grrr. Burnt.",
        },
        YOTC_CARRAT_GYM_SPEED = 
        {
            GENERIC = "Not big enough for me.",
            RAT = "I get like that if my food is taken...",
            BURNT = "Grrr. Burnt.",
        },
        YOTC_CARRAT_GYM_REACTION = 
        {
            GENERIC = "Too easy!",
            RAT = "Have to hold back my own claws on this one.",
            BURNT = "Grrr. Burnt.",
        },
        YOTC_CARRAT_GYM_STAMINA = 
        {
            GENERIC = "Good hibernation training.",
            RAT = "Nothing will take its food at this rate.",
            BURNT = "Grrr. Burnt.",
        }, 

        YOTC_CARRAT_GYM_DIRECTION_ITEM = "Need to set it up.",
        YOTC_CARRAT_GYM_SPEED_ITEM = "Hibernation training?",
        YOTC_CARRAT_GYM_STAMINA_ITEM = "Will be good...for rats.",
        YOTC_CARRAT_GYM_REACTION_ITEM = "Needs to be set up.",

        YOTC_CARRAT_SCALE_ITEM = "If I sit on it it makes cracking noises.",           
        YOTC_CARRAT_SCALE = 
        {
            GENERIC = "If I sit on it it makes cracking noises.",
            CARRAT = "Not ready for hibernation.",
            CARRAT_GOOD = "Grrrreat!",
            BURNT = "Grrrrrr...",
        },
        YOTB_BEEFALOSHRINE =
        {
            GENERIC = "Tempted to bite...",
            EMPTY = "Grrr... won't accept my shedding.",
            BURNT = "Grrr. Burnt.",
        },

        BEEFALO_GROOMER =
        {
            GENERIC = "GrrrRrrrR...",
            OCCUPIED = "You will have the fanciest hair.",
            BURNT = "Hmph. Not so good at style.",
        },
        BEEFALO_GROOMER_ITEM = "Need to set it up.",

        YOTR_RABBITSHRINE =
        {
            GENERIC = "Tempted to bite...",
            EMPTY = "Not the only hungry one here.",
            BURNT = "Grrr. Burnt.",
        },

        NIGHTCAPHAT = "Already good at sleeping. How can it get better?",

        YOTR_FOOD1 = "(sniff) Mmmm. Less talk. More... eat!",
        YOTR_FOOD2 = "Could taste this in my thoughts. No, would rather start eating!",
        YOTR_FOOD3 = "My belly jiggles too. Come join inside it!",
        YOTR_FOOD4 = "All for me!",

        YOTR_TOKEN = "All stuffed up like me.",

        COZY_BUNNYMAN = "You won't survive the winter in that coat.",

        HANDPILLOW_BEEFALOWOOL = "Just right.",
        HANDPILLOW_KELP = "Too soggy.",
        HANDPILLOW_PETALS = "Too skinny.",
        HANDPILLOW_STEELWOOL = "Too itchy.",

        BODYPILLOW_BEEFALOWOOL = "Just right.",
        BODYPILLOW_KELP = "Too soggy.",
        BODYPILLOW_PETALS = "Too skinny.",
        BODYPILLOW_STEELWOOL = "Too itchy.",

		BISHOP_CHARGE_HIT = "GRR!!",
		TRUNKVEST_SUMMER = "Lots of hair sticks out.",
		TRUNKVEST_WINTER = "Hibernation gear.",
		TRUNK_COOKED = "(sniff) Mmm. Won't sniff back!",
		TRUNK_SUMMER = "(sniff) Won't sniff back!",
		TRUNK_WINTER = "Good for hibernation. Mm.",
		TUMBLEWEED = "(sniff snorf) Any food?",
		TURKEYDINNER = "Gra-ha! Love to eat!",
		TWIGS = "Picks out leftover food in teeth.",
		UMBRELLA = "Rain taps like claws when it rains.",
		GRASS_UMBRELLA = "Rain taps like claws when it rains.",
		UNIMPLEMENTED = "(sniff sniff) Grrrr...not ready.",
		WAFFLES = "Love them! With extra honey! Graah!!",
		WALL_HAY = 
		{	
			GENERIC = "Was told not to huff or puff near it...",
			BURNT = "Bearger don't burn.",
		},
		WALL_HAY_ITEM = "Was told not to huff or puff near it.",
		WALL_STONE = "Won't stop me from getting to food.",
		WALL_STONE_ITEM = "Slam onto ground. Now.",
		WALL_RUINS = "Smells old. Gold?",
		WALL_RUINS_ITEM = "(sniff) For ground.",
		WALL_WOOD = 
		{
			GENERIC = "Could slam through it if I'm hungry.",
			BURNT = "Wasn't food. Didn't cook.",
		},
		WALL_WOOD_ITEM = "For ground.",
		WALL_MOONROCK = "Might slam into it!",
		WALL_MOONROCK_ITEM = "Needs the ground.",
		WALL_DREADSTONE = "Keeps others away. Good.",
		WALL_DREADSTONE_ITEM = "For ground.",
        WALL_SCRAP = "Good for scratching. Not sure about others.",
        WALL_SCRAP_ITEM = "No food in there. Already checked.",
		FENCE = "Can't contain an angry Bearger.",
        FENCE_ITEM = "Grrr. Contain me and see how it goes!",
        FENCE_GATE = "Beargers know how to let themselves out or in.",
        FENCE_GATE_ITEM = "Grrr. Contain me and see what happens!",
		WALRUS = "No winter coat. But lots of fat. Mmmm!",
		WALRUSHAT = "Still extra hairs left inside.",
		WALRUS_CAMP =
		{
			EMPTY = "Not the season to hibernate in yet.",
			GENERIC = "Not my own hibernation station.",
		},
		WALRUS_TUSK = "Lost its tooth. Won't eat well without one.",
		WARDROBE = 
		{
			GENERIC = "Always changing coats already.",
            BURNING = "(sniff) Not good.",
			BURNT = "Grrr.",
		},
		WARG = "Too big to slam. Will still TRY! RAAAA!",
		WARGLET = "Will growl back. GrrrRRRrrrr...",
		WASPHIVE = "Rogue honey-makers. Grrrrrrr.",
		WATERBALLOON = "Would rather fill my stomach instead.",
		WATERMELON = "Will slam it and eat it.",
		WATERMELON_COOKED = "Juicy but dry. Mm.",
		WATERMELONHAT = "Would rather eat it...really!",
		WAXWELLJOURNAL = "Grrr!!! Head splitting!",
		WETGOOP = "(sniff sniff) Grruahg!",
        WHIP = "Bad noises!",
		WINTERHAT = "Cozy hairs for hibernating.",
		WINTEROMETER = 
		{
			GENERIC = "Beargers know when to hibernate.",
			BURNT = "Not winter?",
		},
        WINTER_TREE =
        {
            BURNT = "Should have been hibernating.",
            BURNING = "Hmpf. Should have been hibernating.",
            CANDECORATE = "Would rather be hibernating.",
            YOUNG = "Celebrating? Not... hibernating?",
        },
		WINTER_TREESTAND = 
		{
			GENERIC = "Doesn't smell like pinecones yet. Hmphf.",
            BURNT = "Ghrrrr.",
		},
        WINTER_ORNAMENT = "It is for... trees?",
        WINTER_ORNAMENTLIGHT = "Don't like light when hibernating.",
        WINTER_ORNAMENTBOSS = "(sniff) ...Hmphf.",
		WINTER_ORNAMENTFORGE = "Smells like meat... but isn't. Grrr.",
		WINTER_ORNAMENTGORGE = "Smells like food... but isn't. Grrr.",

        WINTER_FOOD1 = "Good practice for eating little creatures.", --gingerbread cookie
        WINTER_FOOD2 = "Feels good to get powder all over hair.", --sugar cookie
        WINTER_FOOD3 = "I cane eat it!", --candy cane
        WINTER_FOOD4 = "Would eat it...later.", --fruitcake
        WINTER_FOOD5 = "Mmhf! Trees never tasted so good!", --yule log cake
        WINTER_FOOD6 = "Pudding it all into my mouth.", --plum pudding
        WINTER_FOOD7 = "Eat in one bite! Mmf!", --apple cider
        WINTER_FOOD8 = "Perfect warmth for hibernating.", --hot cocoa
        WINTER_FOOD9 = "Mmf. Cream keeps covering nose and fur.", --eggnog

		--Dishes are not final - let these be for now
		WINTERSFEASTOVEN =
		{
			GENERIC = "Needs food in it. Now.",
			COOKING = "Food! Graaaaahg!",
			ALMOST_DONE_COOKING = "(SNIFF) Fooood! Now!!",
			DISH_READY = "FOOOOOOOOD!!!",
		},
		BERRYSAUCE = "Gets all over hair. Love it!",
		BIBINGKA = "Spongy and soft, like stomach!",
		CABBAGEROLLS = "Can smell you wrapped up in hibernation, meat!",
		FESTIVEFISH = "Fish! Ones not needed to be caught!",
		GRAVY = "Pour it all down my maw.",
		LATKES = "(sniff) Graaah!",
		LUTEFISK = "Graa-ha-ha!",
		MULLEDDRINK = "Pour it all over! Mostly just in the mouth.",
		PANETTONE = "Love to pound and slam into maw!",
		PAVLOVA = "Graa! You pav to lova it!",
		PICKLEDHERRING = "(sniff) Mm-mm! Love!",
		POLISHCOOKIE = "Snap with teeth! Treat!",
		PUMPKINPIE = "Will devour this like Beargers trampling trees!",
		ROASTTURKEY = "Graaahh! (snIIIFFF) LOVE!",
		STUFFING = "Love to do nothing but stuffing my stomach!",
		SWEETPOTATO = "Hibernation won't know what hit it.",
		TAMALES = "Raaah-a-ha! Food!!",
		TOURTIERE = "Meat treat to eat! Graa-hr-hr!",

		TABLE_WINTERS_FEAST = 
		{
			GENERIC = "GRRrrr. Looks better with food.",
			HAS_FOOD = "GRAAAAHG!!",
			WRONG_TYPE = "Would still eat it.",
			BURNT = "RAAAAAHG!",
		},

		GINGERBREADWARG = "Will have no trouble clawing and eating you.", 
		GINGERBREADHOUSE = "Will eat it. For a good cause. My hunger!", 
		GINGERBREADPIG = "Easy to pick up and eat.",
		CRUMBS = "Would like the full thing.",
		WINTERSFEASTFUEL = "makes tummy happy. Grah!",

        KLAUS = "GRRRR!! Sniffing?",
        KLAUS_SACK = "Hoping for food, hoping for food!",
		KLAUSSACKKEY = "Key to a good diet?",
		WORMHOLE =
		{
			GENERIC = "Can feel it sniffing.",
			OPEN = "...Food hole?",
		},
		WORMHOLE_LIMITED = "Grrr... Gross.",
		ACCOMPLISHMENT_SHRINE = "Grah! Life is good.",
		LIVINGTREE = "Knock over any tree. All the same to me.",
		ICESTAFF = "Would rather hold warmth and food.",
		REVIVER = "Pounds like I do grounds.",
		SHADOWHEART = "(sniff sniff) Hrmpf. Won't eat it.",
        ATRIUM_RUBBLE = 
        {
			LINE_1 = "(sniff) Hmpf. Hungry too?",
			LINE_2 = "Too clawed at.",
			LINE_3 = "Should go into hibernation. Looks cold and dark.",
			LINE_4 = "Shedding... more than hair.",
			LINE_5 = "Hmphf! Shiny looking.",
		},
        ATRIUM_STATUE = "It is... real? No...?",
        ATRIUM_LIGHT = 
        {
			ON = "Now it's bright and alight. Grrr.",
			OFF = "Needs power. Like I do food.",
		},
        ATRIUM_GATE =
        {
			ON = "Hmpf. Done.",
			OFF = "Just needs to hibernate.",
			CHARGING = "Storing up power for hibernation.",
			DESTABILIZING = "It's... hibernating? Not familiar.",
			COOLDOWN = "Settling down to hibernate.",
        },
        ATRIUM_KEY = "Key. (sniff) Probably.",
		LIFEINJECTOR = "Have to find skin through all this hair.",
		SKELETON_PLAYER =
		{
			MALE = "Grrr. %s was mauled. %s had a feast!",
			FEMALE = "Grrr. %s was mauled. %s feasted!",
			ROBOT = "Grrr. %s was mauled. %s had the feast!",
			DEFAULT = "Grrr. %s was mauled. %s feasted!",
		},
        HUMANMEAT = "Have to eat for hibernation. What Beargers do.",
        HUMANMEAT_COOKED = "Don't stare. Beargers must eat.",
        HUMANMEAT_DRIED = "Good to eat. (sniff) Grrk.",
		ROCK_MOON = "(sniff) No... not food. Grr.",
		MOONROCKNUGGET = "(sniff) No... not food. Grr.",
		MOONROCKCRATER = "Needs...not food. Grr.",
		MOONROCKSEED = "Not... edible seed.",

        REDMOONEYE = "My eyes are not as shiny.",
        PURPLEMOONEYE = "My eyes are not as shiny.",
        GREENMOONEYE = "My eyes are not as shiny.",
        ORANGEMOONEYE = "My eyes are not as shiny?",
        YELLOWMOONEYE = "My eyes are not as shiny.",
        BLUEMOONEYE = "My eyes are not as shiny!",

        --Arena Event
        LAVAARENA_BOARLORD = "Must have a lot of food stored up.",
        BOARRIOR = "RAAAAAUHG!",
        BOARON = "Will crush you between all my teeth!",
        PEGHOOK = "Spit is making me shed hair faster...",
        TRAILS = "Doesn't leave a trail of hair like I do.",
        TURTILLUS = "Don't need shell. Have enough hair!",
        SNAPPER = "Take a bite full of hair?",
		RHINODRILL = "Hairless but stocked up.",
		BEETLETAUR = "(sniff) Could use a meal.",

        LAVAARENA_PORTAL = 
        {
            ON = "Hmpf. Food's better elsewhere.",
            GENERIC = "Grrr. Better be good food in here.",
        },
        LAVAARENA_KEYHOLE = "Grrr. No key?",
		LAVAARENA_KEYHOLE_FULL = "Has enough keys.",
        LAVAARENA_BATTLESTANDARD = "GrrRRR. Shouldn't be standing.",
        LAVAARENA_SPAWNER = "Hibernation grounds.",

        HEALINGSTAFF = "(sniff) Mm. Feels good.",
        FIREBALLSTAFF = "Hot weather.",
        HAMMER_MJOLNIR = "Love to pound the ground!",
        SPEAR_GUNGNIR = "Sudden burst of rage.",
        BLOWDART_LAVA = "Not used to eating in reverse.",
        BLOWDART_LAVA2 = "Not used to eating in reverse",
        LAVAARENA_LUCY = "Mine to throw?",
        WEBBER_SPIDER_MINION = "Watch your steps.",
        BOOK_FOSSIL = "Hpmh. Words.",
		LAVAARENA_BERNIE = "Watch out. Might get slammed.",
		SPEAR_LANCE = "Like claws into the ground.",
		BOOK_ELEMENTAL = "It has a lot of... words.",
		LAVAARENA_ELEMENTAL = "Hot rock likes to slam.",
		GAUNTLET = "Good for pounding.", --Reforged

   		LAVAARENA_ARMORLIGHT = "More hair to shed...",
		LAVAARENA_ARMORLIGHTSPEED = "Hair is feeling breezy.",
		LAVAARENA_ARMORMEDIUM = "Double the coat.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "Claws can feel the rage.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "Can smell faster than usual.",
		LAVAARENA_ARMORHEAVY = "Hair's feeling heavy.",
		LAVAARENA_ARMOREXTRAHEAVY = "Hair's feeling heavier.",

		LAVAARENA_FEATHERCROWNHAT = "Fur feels lighter than summer time.",
        LAVAARENA_HEALINGFLOWERHAT = "Matches fur?",
        LAVAARENA_LIGHTDAMAGERHAT = "Pointy ears, pointy claws.",
        LAVAARENA_STRONGDAMAGERHAT = "Claws feel sharper.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "Ear tickler.",
        LAVAARENA_EYECIRCLETHAT = "(sniff) ...Ashy.",
        LAVAARENA_RECHARGERHAT = "Light. But no glow?",
        LAVAARENA_HEALINGGARLANDHAT = "Should use this when in hibernation.",
        LAVAARENA_CROWNDAMAGERHAT = "Claws are growing!",

		LAVAARENA_ARMOR_HP = "Golden hairs.",
		LAVAARENA_FIREBOMB = "Slam the heat of fur and sun!",
		LAVAARENA_HEAVYBLADE = "Already good at slamming!",

        --Quagmire
        QUAGMIRE_ALTAR = 
        {
        	GENERIC = "(sniff) Don't smell any food yet.",
        	FULL = "Grrrr. Wish I were full too.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "Easy to push over.",
		QUAGMIRE_PARK_FOUNTAIN = "Can't sip any water.",
		
        QUAGMIRE_HOE = "For ground pounding?",
        
        QUAGMIRE_TURNIP = "Will eat anything!",
        QUAGMIRE_TURNIP_COOKED = "Good for eating.",
        QUAGMIRE_TURNIP_SEEDS = "Better to pound into ground than to eat.",
        
        QUAGMIRE_GARLIC = "(sniff) Strong!",
        QUAGMIRE_GARLIC_COOKED = "(sniiiff) Even stronger!",
        QUAGMIRE_GARLIC_SEEDS = "Better to pound into ground than to eat.",
        
        QUAGMIRE_ONION = "More layers to eat!",
        QUAGMIRE_ONION_COOKED = "(sniff) MM!",
        QUAGMIRE_ONION_SEEDS = "Better to pound into ground than to eat.",
        
        QUAGMIRE_POTATO = "Eating it whole!",
        QUAGMIRE_POTATO_COOKED = "Fun to mash with teeth!",
        QUAGMIRE_POTATO_SEEDS = "Slam it into the ground.",
        
        QUAGMIRE_TOMATO = "Makes hair get all juicy when bitten!",
        QUAGMIRE_TOMATO_COOKED = "Mmm. Love eating.",
        QUAGMIRE_TOMATO_SEEDS = "Ground needs it.",
        
        QUAGMIRE_FLOUR = "Snow but no need to hibernate!",
        QUAGMIRE_WHEAT = "Wheat to eat?",
        QUAGMIRE_WHEAT_SEEDS = "Better to pound into ground than to eat.",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "Better to pound into ground than to eat.",
        
        QUAGMIRE_ROTTEN_CROP = "GRRR!!",
        
		QUAGMIRE_SALMON = "Love to catch these with maw.",
		QUAGMIRE_SALMON_COOKED = "Wish I could eat it.",
		QUAGMIRE_CRABMEAT = "Little meat treat.",
		QUAGMIRE_CRABMEAT_COOKED = "(sniffff) Why can't I eat...",
		QUAGMIRE_SUGARWOODTREE = 
		{
			GENERIC = "Almost smells like honey.",
			STUMP = "Slammed?",
			TAPPED_EMPTY = "Can wait all winter.",
			TAPPED_READY = "Mmmmm!",
			TAPPED_BUGS = "Eat the bugs, fast!",
			WOUNDED = "Hurting. Grrrr! Who hurt it?",
		},
		QUAGMIRE_SPOTSPICE_SHRUB = 
		{
			GENERIC = "Feeling the need to attack it.",
			PICKED = "(sniff) Hmph. No more.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "Beargers know how to pound it into food.",
		QUAGMIRE_SPOTSPICE_GROUND = "Pounded and grounded.",
		QUAGMIRE_SAPBUCKET = "Needs more. Mmm.",
		QUAGMIRE_SAP = "Mmm. Sticky fur.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Ready. Now.",
			GENERIC = "Not smelling any salt. (sniifff)",
		},
		
		QUAGMIRE_POND_SALT = "Fur could use a soak.",
		QUAGMIRE_SALT_RACK_ITEM = "For fish?",

		QUAGMIRE_SAFE = 
		{
			GENERIC = "Hmpf. Wasn't food for once.",
			LOCKED = "Grrr! open for food!",
		},

		QUAGMIRE_KEY = "No food is safe from me!",
		QUAGMIRE_KEY_PARK = "Can't hide your food now.",
        QUAGMIRE_PORTAL_KEY = "Should go hibernate elsewhere.",
		
		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "Mmm! (sniff)",
			PICKED = "No more. Just stump.",
		},
		QUAGMIRE_MUSHROOMS = "Mmm. Mushy.",
        QUAGMIRE_MEALINGSTONE = "I know how to pound things into dust well.",
		QUAGMIRE_PEBBLECRAB = "I always smash pebbles. (sniff sniff)",
		
		QUAGMIRE_RUBBLE_CARRIAGE = "Was I hungry here before?",
        QUAGMIRE_RUBBLE_CLOCK = "No more.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Wasn't me... was it?",
        QUAGMIRE_RUBBLE_PUBDOOR = "Wasn't me... was it?",
        QUAGMIRE_RUBBLE_ROOF = "Wasn't me... was it?",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "Wasn't me... was it?",
        QUAGMIRE_RUBBLE_BIKE = "Wasn't me... was it?",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "Pounded. Grounded.",
            "Ground. Pounded.",
            "Grounded and pounded.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Wasn't me... was it?",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Wasn't me... was it?",
        QUAGMIRE_MERMHOUSE = "Have seen better spots to hibernate under.",
        QUAGMIRE_SWAMPIG_HOUSE = "Have seen better spots to hibernate under.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "Pounded and grounded.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "You sniff too?",
            SLEEPING = "Not a safe place to hibernaste.",
        },
        QUAGMIRE_SWAMPIG = "Not much food left to scavenge for.",
        
        QUAGMIRE_PORTAL = "Hmph. Strange place?",
        QUAGMIRE_SALTROCK = "Tempted to eat it.",
        QUAGMIRE_SALT = "Could pour it all over my tongue...",
        --food--
        QUAGMIRE_FOOD_BURNT = "(sniff) GrrrK!",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "GrrRrr! Wish I was the one gnawing on it.",
            MISMATCH = "Grrrrr. No!",
            MATCH = "Mmm. Good fit.",
            MATCH_BUT_SNACK = "Too light for stocking up.",
        },
        
        QUAGMIRE_FERN = "Not stomped to bits. Yet.",
        QUAGMIRE_FOLIAGE_COOKED = "Tastier?",
        QUAGMIRE_COIN1 = "Was told to bite it? No?",
        QUAGMIRE_COIN2 = "Doesn't taste very good",
        QUAGMIRE_COIN3 = "Shiny. Tempted to bite.",
        QUAGMIRE_COIN4 = "Shouldn't eat this one. Yet.",
        QUAGMIRE_GOATMILK = "Mmmm. Needs honey.",
        QUAGMIRE_SYRUP = "Not as good as honey. Still good.",
        QUAGMIRE_SAP_SPOILED = "No sniffing it!",
        QUAGMIRE_SEEDPACKET = "Seeds are busy hibernating.",
        
        QUAGMIRE_POT = "Needs food!",
        QUAGMIRE_POT_SMALL = "Give it food. Now!",
        QUAGMIRE_POT_SYRUP = "Honey? Honey??",
        QUAGMIRE_POT_HANGER = "Not sure how to set up.",
        QUAGMIRE_POT_HANGER_ITEM = "Hibernating. But it's not time!",
        QUAGMIRE_GRILL = "Better with food.",
        QUAGMIRE_GRILL_ITEM = "Hibernating. But it's not time!",
        QUAGMIRE_GRILL_SMALL = "Better with food.",
        QUAGMIRE_GRILL_SMALL_ITEM = "Hibernating. But it's not time!",
        QUAGMIRE_OVEN = "Better with food.",
        QUAGMIRE_OVEN_ITEM = "Hibernating. But it's not time!",
        QUAGMIRE_CASSEROLEDISH = "Better with food.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "Better with food.",
        QUAGMIRE_PLATE_SILVER = "Better with food.",
        QUAGMIRE_BOWL_SILVER = "Better with food.",
        
        QUAGMIRE_MERM_CART1 = "How much food you got?", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "Enough food to hibernate in here? (sniff)", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Will rub back up against this.",
        QUAGMIRE_PARK_ANGEL2 = "Will rub back up against this.",
        QUAGMIRE_PARK_URN = "(snorf) Hrrk. Ash.",
        QUAGMIRE_PARK_OBELISK = "Doesn't scratch well.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Hmph. Could of broken in.",
            LOCKED = "(sniff) You can't keep me from food.",
        },
        QUAGMIRE_PARKSPIKE = "Grounded claws.",
        QUAGMIRE_CRABTRAP = "Waiting to smell food.",
        QUAGMIRE_TRADER_MERM = "Do you have... honey? Berries?",
        QUAGMIRE_TRADER_MERM2 = "Do you have... honey? Berries?",
        
        QUAGMIRE_GOATMUM = "Know where any food is? Hmpf.",
        QUAGMIRE_GOATKID = "Do you hibernate anytime soon...?",
        QUAGMIRE_PIGEON =
        {
            DEAD = "Time to eat.",
            GENERIC = "Food.",
            SLEEPING = "(sniff sniff)",
        },
        QUAGMIRE_LAMP_POST = "Light, but heavy?",

        QUAGMIRE_BEEFALO = "(sniff) Wouldn't survive the winter.",
        QUAGMIRE_SLAUGHTERTOOL = "Have my own claws and teeth for that.",

        QUAGMIRE_SAPLING = "Grrrr. No growth.",
        QUAGMIRE_BERRYBUSH = "GRRR! Not growing!",

        QUAGMIRE_ALTAR_STATUE2 = "Don't stare at me while eating!",
        QUAGMIRE_ALTAR_QUEEN = "Grrrr...",
        QUAGMIRE_ALTAR_BOLLARD = "Gets in my way.",
        QUAGMIRE_ALTAR_IVY = "Tangled like fur.",

        QUAGMIRE_LAMP_SHORT = "Hmph. Little light.",

        --v2 Winona
        WINONA_CATAPULT = 
        {
        	GENERIC = "Pounds rocks. Slams them too.",
        	OFF = "In hibernation.",
        	BURNING = "Working?",
        	BURNT = "GRRR!",
			SLEEP = "Pounds rocks. Slams them too.",
        },
        WINONA_SPOTLIGHT = 
        {
        	GENERIC = "Makes hairs feel hot.",
        	OFF = "Not shining yet.",
        	BURNING = "Warmer than before.",
        	BURNT = "GRRR!",
			SLEEP = "Makes hairs feel hot.",
        },
        WINONA_BATTERY_LOW = 
        {
        	GENERIC = "(sniff) Tingly.",
        	LOWPOWER = "Weaker than before?",
        	OFF = "In its off season.",
        	BURNING = "Too hot.",
        	BURNT = "GRRR!",
        },
        WINONA_BATTERY_HIGH = 
        {
        	GENERIC = "Not too edible...",
        	LOWPOWER = "It is... fading.",
        	OFF = "Put into hibernation.",
        	BURNING = "Worked too much. Hmphf.",
        	BURNT = "GRRR!",
			OVERLOADED = "(sniff) Hm. Must have overslept.",
        },
		--v3 Winona
		WINONA_REMOTE =
		{
			GENERIC = "Button should bring food. Good idea to me.",
			OFF = "In its off season.",
			CHARGING = "Button should bring food. Good idea to me.",
			CHARGED = "Button should bring food. Good idea to me.",
		},
		WINONA_TELEBRELLA =
		{
			GENERIC = "Hope all hairs come with.",
			OFF = "In its off season.",
			CHARGING = "Hope all hairs come with.",
			CHARGED = "Hope all hairs come with.",
		},
		WINONA_TELEPORT_PAD_ITEM =
		{
			GENERIC = "Lose any hairs on way here?",
			OFF = "In its off season.",
			BURNING = "Worked too much. Hmphf.",
			BURNT = "GRRR!",
		},
		WINONA_STORAGE_ROBOT =
		{
			GENERIC = "Do not touch my den.",
			OFF = "You hibernate, too?",
			SLEEP = "Do not touch my den.",
			CHARGING = "You hibernate, too?",
			CHARGED = "You hibernate, too?",
		},
		INSPECTACLESHAT = 
        {
            GENERIC = "(sniff sniff) Smells old. Smells new, too.",
        },
		ROSEGLASSESHAT =
        {
            GENERIC = "Nice smell and style.",
        },

        --Wormwood
        COMPOSTWRAP = "(sniff) GrrK! No, will not eat that.",
        ARMOR_BRAMBLE = "Sharpened hairs for hair.",
        TRAP_BRAMBLE = "Ground is pounding back.",

        BOATFRAGMENT03 = "It is... broke.",
        BOATFRAGMENT04 = "It is... broke.",
        BOATFRAGMENT05 = "It is... broke.",
		BOAT_LEAK = "Only a little water. I am fine.",
        MAST = "Makes wind flow through all my hairs.",
        SEASTACK = "Grrrr!! In my way!",
        FISHINGNET = "Better at catching fish with claws.",
--        ANTCHOVIES = "PLACEHOLDER",
        STEERINGWHEEL = "Won't know where to go. But I will go.",
        ANCHOR = "Sinks like full stomachs.",
        BOATPATCH = "Good for boats. Like food for Beargers.",
        DRIFTWOOD_TREE = 
        {
            BURNING = "Hot, hot, hot.",
            BURNT = "Grrr. No other use now.",
            CHOPPED = "Maybe that was me.",
            GENERIC = "Already knocked over before.",
        },
        DRIFTWOOD_LOG = "It is... afloat. Hmphf.",

        MOON_TREE = 
        {
            BURNING = "Grr...not safe.",
            BURNT = "Too hot in the end.",
            CHOPPED = "Could've been me. Will never tell!",
            GENERIC = "Might knock it over when angry.",
        },
		MOON_TREE_BLOSSOM = "Mmm. Leftovers to eat.",

        MOONBUTTERFLY = 
        {
        	GENERIC = "Will catch it with my mouth.",
        	HELD = "(sniff) Could eat you whole.",
        },
		MOONBUTTERFLYWINGS = "Little eating.",
        MOONBUTTERFLY_SAPLING = "It's... growing?",
        ROCK_AVOCADO_FRUIT = "Grrrr. Teeth can't crack it.",
        ROCK_AVOCADO_FRUIT_RIPE = "Now will eat!",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "Softer to eat. Still good.",
        ROCK_AVOCADO_FRUIT_SPROUT = "Still want to eat it...",
        ROCK_AVOCADO_BUSH = 
        {
        	BARREN = "Needs help for food.",
			WITHERED = "Grrrr! Can't eat it like this.",
			GENERIC = "(sniff sniff) Mmm. Food?",
			PICKED = "Scavenged for food here.",
			DISEASED = "(sniff sniff) GrrrHK. Not right!",
            DISEASING = "(sniff) Grhk!",
			BURNING = "GrrrrRR!",
		},
        DEAD_SEA_BONES = "Don't usually eat the bones... but!",
        HOTSPRING = 
        {
        	GENERIC = "Might take a sip. Mmmhm.",
        	BOMBED = "Graaa! Fizzling!",
        	GLASS = "Pounding won't do it in.",
			EMPTY = "Empty...?",
        },
        MOONGLASS = "Sharp. Like Bearger claw.",
		MOONGLASS_CHARGED = "(sniff) No... not food. Not yet.",
        MOONGLASS_ROCK = "Grrrr. Don't look back!",
        BATHBOMB = "Why is it not food?",
        TRAP_STARFISH =
        {
            GENERIC = "(snif sniff sniff)",
            CLOSED = "Shouldn't stick my nose in it.",
        },
        DUG_TRAP_STARFISH = "Taking it away.",
        SPIDER_MOON = 
        {
        	GENERIC = "RAAAAHG! WILL SHATTER!",
        	SLEEPING = "GrrRRrrrRrr!",
        	DEAD = "Better look on you.",
        },
        MOONSPIDERDEN = "Not a den for me to sleep in.",
		FRUITDRAGON =
		{
			GENERIC = "Might wait to eat it. (sniff sniff)",
			RIPE = "(sniiiiff) Good to eat.",
			SLEEPING = "Might wait to eat it still.",
		},
        PUFFIN =
        {
            GENERIC = "GrrrrRr. No looking at my food.",
            HELD = "Want to see my teeth?",
            SLEEPING = "Hibernation. On water?",
        },

		MOONGLASSAXE = "Cuts trees sharper than claws.",
		GLASSCUTTER = "Splits hairs.",

        ICEBERG =
        {
            GENERIC = "Hibrrrrrrnation.",
            MELTED = "Not time to hibernate yet!",
        },
        ICEBERG_MELTED = "Not time to hibernate yet!",

        MINIFLARE = "Lights up skies. Hopefully not hairs.",
		MEGAFLARE = "Hmph. Don't like a crowd.",

		MOON_FISSURE = 
		{
			GENERIC = "I feel a... splitting!!", 
			NOLIGHT = "Echoes my growling.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "Wants to be finished. Like my stomach wants food.",
            GENERIC = "Growling at me? Grrrrrr!",
        },

        MOON_ALTAR_IDOL = "Grrr...",
        MOON_ALTAR_GLASS = "Grrrrr.",
        MOON_ALTAR_SEED = "Me? Wants me?",

        MOON_ALTAR_ROCK_IDOL = "(sniff) Something's inside.",
        MOON_ALTAR_ROCK_GLASS = "(sniff) Something's inside.",
        MOON_ALTAR_ROCK_SEED = "(sniff) Something's inside.",

		MOON_ALTAR_CROWN = "Makes head... ring?",
        MOON_ALTAR_COSMIC = "Is it... waiting for winter?",

        MOON_ALTAR_ASTRAL = "Enough for hibernation. Fully stocked.",
        MOON_ALTAR_ICON = "Need extra berries?",
        MOON_ALTAR_WARD = "Stocking up?", 

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "I will be a Sea-rger.",
            BURNT = "Wasn't wet enough?",
        },
        BOAT_ITEM = "Will be the first Bearger at sea!",
        BOAT_GRASS_ITEM = "Might sink if I step onto it.",
        STEERINGWHEEL_ITEM = "Don't know where, but I will find food!",
        ANCHOR_ITEM = "Heavy.",
        MAST_ITEM = "For sea.",
        MUTATEDHOUND = 
        {
        	DEAD = "Grah.",
        	GENERIC = "GrrRrrrRRRR!!!",
        	SLEEPING = "Needs a permanent hibernation.",
        },
        MUTATED_PENGUIN = 
        {
			DEAD = "Better look on you.",
			GENERIC = "Grrrr...",
			SLEEPING = "Needs a permanent hibernation.",
		},
        CARRAT = 
        {
        	DEAD = "Good to eat!",
        	GENERIC = "(snif sniiif) Mmm. Good for eating.",
        	HELD = "Have you seen my teeth...?",
        	SLEEPING = "(sniff) You need to hibernate in my stomach.",
        },

		BULLKELP_PLANT = 
        {
            GENERIC = "(sniff sniff) Edible sea.",
            PICKED = "Scavenged enough of it.",
        },
		BULLKELP_ROOT = "For later eating.",
        KELPHAT = "Not nice around the ears.",
		KELP = "(sniff) Eaten before?",
		KELP_COOKED = "Mm. Cud.",
		KELP_DRIED = "Crunch is good for my teeth.",

		GESTALT = "No talking to me, I'm angry.",
		GESTALT_GUARD = "No need to sniff.",

		COOKIECUTTER = "(sniff) Edible. Not made of bread.",
		COOKIECUTTERSHELL = "Any meat left?",
		COOKIECUTTERHAT = "Hmphf. Good enough.",
		SALTSTACK =
		{
			GENERIC = "Is it... (sniff sniff) food?",
			MINED_OUT = "More. NOW!",
			GROWING = "Need more. More.",
		},
		SALTROCK = "Licking it makes me hungrier.",
		SALTBOX = "Food hibernator.",

		TACKLESTATION = "Grr! Will it help my hunger?",
		TACKLESKETCH = "It says... food?",

        MALBATROSS = "Grrrrrrr. Won't hold back food from me!",
        MALBATROSS_FEATHER = "Shed!",
        MALBATROSS_BEAK = "Not used to eaten with more than my own mouth.",
        MAST_MALBATROSS_ITEM = "Hmphf. Would Bearger hair fly as fast?",
        MAST_MALBATROSS = "Hmphf. Would Bearger hair fly as fast?",
		MALBATROSS_FEATHERED_WEAVE = "Could hibernate in it. Mmm.",

        GNARWAIL =
        {
            GENERIC = "Grrrr. Gnarled.",
            BROKENHORN = "Bearger teeth are gnarled too.",
            FOLLOWER = "Following...? Me? Not food?",
            BROKENHORN_FOLLOWER = "Grrrr. Hurt.",
        },
        GNARWAIL_HORN = "Would shed it too if I had one.",

        WALKINGPLANK = "It might snap under my weight.",
        WALKINGPLANK_GRASS = "It might snap under my weight.",
        OAR = "Makes sure hair doesn't get too wet.",
		OAR_DRIFTWOOD = "Light snack for the sea.",

		OCEANFISHINGROD = "Btter than teeth and claws?",
		OCEANFISHINGBOBBER_NONE = "Needs food like me.",
        OCEANFISHINGBOBBER_BALL = "Food for sea.",
        OCEANFISHINGBOBBER_OVAL = "Food for sea.",
		OCEANFISHINGBOBBER_CROW = "Could use my own hair too?",
		OCEANFISHINGBOBBER_ROBIN = "Could use my own hair too?",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "Could use my own hair too?",
		OCEANFISHINGBOBBER_CANARY = "Could use my own hair too?",
		OCEANFISHINGBOBBER_GOOSE = "Could use my own hair too?",
		OCEANFISHINGBOBBER_MALBATROSS = "Could use my own hair too?",

		OCEANFISHINGLURE_SPINNER_RED = "If it had food I'd be attracted too.",
		OCEANFISHINGLURE_SPINNER_GREEN = "If it had food I'd be attracted too.",
		OCEANFISHINGLURE_SPINNER_BLUE = "If it had food I'd be attracted too.",
		OCEANFISHINGLURE_SPOON_RED = "If it had food I'd be attracted too.",
		OCEANFISHINGLURE_SPOON_GREEN = "If it had food I'd be attracted too.",
		OCEANFISHINGLURE_SPOON_BLUE = "If it had food I'd be attracted too.",
		OCEANFISHINGLURE_HERMIT_RAIN = "Smells like wet fur. ...Just me?",
		OCEANFISHINGLURE_HERMIT_SNOW = "For fish in hibernation.",
		OCEANFISHINGLURE_HERMIT_DROWSY = "Not known for being careful.",
		OCEANFISHINGLURE_HERMIT_HEAVY = "Not as heavy as hibernating fur. Hmphf.",

		OCEANFISH_SMALL_1 = "Mmm! Small, but good treat.",
		OCEANFISH_SMALL_2 = "Treat for me. Treats me well.",
		OCEANFISH_SMALL_3 = "Treats me well!",
		OCEANFISH_SMALL_4 = "Good snack.",
		OCEANFISH_SMALL_5 = "Mmm! (sniff sniff)",
		OCEANFISH_SMALL_6 = "Mmm. (sniff)",
		OCEANFISH_SMALL_7 = "Good coat... Good taste.",
		OCEANFISH_SMALL_8 = "(sniff) Mmm. Hot.",
		OCEANFISH_SMALL_9 = "(sniff) ...Not actual spit?",
		OCEANFISH_MEDIUM_1 = "Good for crushing with teeth.",
		OCEANFISH_MEDIUM_2 = "Will eat this.",
		OCEANFISH_MEDIUM_3 = "Mmm. Food!",
		OCEANFISH_MEDIUM_4 = "Sea DOES have food!",
		OCEANFISH_MEDIUM_5 = "Food for me from the sea!",
		OCEANFISH_MEDIUM_6 = "Mmm. Shiny snack!",
		OCEANFISH_MEDIUM_7 = "Mmm. Shiny snack!",
		OCEANFISH_MEDIUM_8 = "Didn't survive hibernating...",
		OCEANFISH_MEDIUM_9 = "Not sweet as honey. Hmph.",

		PONDFISH = "Like to dive in and catch with my own teeth.",
		PONDEEL = "Grrr. Leaves stings in my mouth.",

        FISHMEAT = "Treat of meat for me...at!",
        FISHMEAT_COOKED = "Mmm. (sniff) MM!!",
        FISHMEAT_SMALL = "Not enough to hibernate with, but good start.",
        FISHMEAT_SMALL_COOKED = "Crunch. Crush.",
		SPOILED_FISH = "Grrrrhk! Bad.",

		FISH_BOX = "Feasting paradise!",
        POCKET_SCALE = "Pocket sniffing.",
		TACKLECONTAINER = "Stocking up for fish hibernation.",
		SUPERTACKLECONTAINER = "Stocking up for fish hibernation.",

		TROPHYSCALE_FISH =
		{
			GENERIC = "If it goes missing. Wasn't me eating it... (sniff)",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\nHeaviest.",
			BURNING = "Grrr. (sniff sniff) Mmmm...",
			BURNT = "Grrr...",
			OWNER = "Weight: {weight}\nCaught by: {owner}\nMine to eat!",
			OWNER_HEAVY = "Weight: {weight}\nCaught by: {owner}\nHeavy as my coat.",
		},

		OCEANFISHABLEFLOTSAM = "(sniff sniff)",

		CALIFORNIAROLL = "Will eat and will not bargain.",
		SEAFOODGUMBO = "Gumbo for a jumbo belly.",
		SURFNTURF = "Love to gnaw on it!",

        WOBSTER_SHELLER = "Strange coating.", 
        WOBSTER_DEN = "(sniff) Hibernating in there?",
        WOBSTER_SHELLER_DEAD = "Mmm. Coats nicely.",
        WOBSTER_SHELLER_DEAD_COOKED = "No more looking, more eating!",

        LOBSTERBISQUE = "(sniff sniff) Mmm! Can't wait!",
        LOBSTERDINNER = "My hibernation will be thankful for this. Hmph!",

        WOBSTER_MOONGLASS = "New coat?",
        MOONGLASS_WOBSTER_DEN = "(sniff) Hibernating in there?",

		TRIDENT = "Will makes waves on more than just dirt!",
		
		WINCH =
		{
			GENERIC = "I claw at the ground too.",
			RETRIEVING_ITEM = "Coming up.",
			HOLDING_ITEM = "(sniff sniff) Hmph. Not sure yet.",
		},

		HERMITHOUSE = {
            GENERIC = "Wouldn't hibernate there.",
            BUILTUP = "Good to hibernate in.",
        }, 
        
        SHELL_CLUSTER = "Shells hibernating hiding away.",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "Would be smashed in a rage.",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "My claws go click-clack on it.",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "Wish ears could go into hibernation...",
        },

        CHUM = "(sniff) Hmph. No.",

        SUNKENCHEST =
        {
            GENERIC = "(sniff) Good treasure.",
            LOCKED = "In Hibernation.",
        },
        HERMIT_BUNDLE = "Hibernation gift?",
        HERMIT_BUNDLE_SHELLS = "(sniff) Waiting for food.",
        RESKIN_TOOL = "Gives a new coat.",
        MOON_FISSURE_PLUGGED = "(sniff) Hrnk! Plug nose next!",
		----------------------- ROT STRINGS GO ABOVE HERE ------------------

        WOBYBIG = 
        {
            "Do you shed as much as I do?",
            "Do you shed as much as I do?",
        },
        WOBYSMALL = 
        {
            "Little shedder.",
            "Little shedder.",
        },
		WALTERHAT = "Which ear does it fit on?",
		SLINGSHOT = "Claws are too big for this...",
		SLINGSHOTAMMO_ROCK = "If I sniff it, it gets stuck in my nose.",		
		SLINGSHOTAMMO_MARBLE = "If I sniff it, it gets stuck in my nose.",		
		SLINGSHOTAMMO_THULECITE = "If I sniff it, it gets stuck in my nose.",	
        SLINGSHOTAMMO_GOLD = "If I sniff it, it gets stuck in my nose.",
        SLINGSHOTAMMO_SLOW = "If I sniff it, it gets stuck in my nose.",
        SLINGSHOTAMMO_FREEZE = "If I sniff it, it gets stuck in my nose.",
		SLINGSHOTAMMO_POOP = "If I sniff it, it gets stuck in my nose.",
        PORTABLETENT = "(sniff) Better than a tree stump.",
        PORTABLETENT_ITEM = "I already choose where to hibernate.",

        BATTLESONG_DURABILITY = "Got a good growl.",
        BATTLESONG_HEALTHGAIN = "Got a good growl.",
        BATTLESONG_SANITYGAIN = "Got a good growl.",
        BATTLESONG_SANITYAURA = "Got a good growl.",
        BATTLESONG_FIRERESISTANCE = "Got a good growl.",
        BATTLESONG_INSTANT_TAUNT = "(sniff sniff) Words, words, words.",
        BATTLESONG_INSTANT_PANIC = "(sniff sniff) Words, words, words.",

		MUTATOR_WARRIOR = "(sniff sniff) Hmphf. Could eat it.",
        MUTATOR_DROPPER = "(sniff) Is for me?",
        MUTATOR_HIDER = "(sniff sniff) Hmphf. Could eat it.",
        MUTATOR_SPITTER = "(sniff) Is for me?",
        MUTATOR_MOON = "(sniff sniff) Hmphf. Could eat it.",
        MUTATOR_HEALER = "(sniff) Is for me?",
        SPIDER_WHISTLE = "Food gatherer.",
        SPIDERDEN_BEDAZZLER = "For nice dens. Good for sleeping.",
        SPIDER_HEALER = "GrrrrAAAA!!",
		SPIDER_REPELLENT = "Send spiders to hibernation.",
        SPIDER_HEALER_ITEM = "Not for eating... Maybe just a bite.",

		GHOSTLYELIXIR_SLOWREGEN = "(sniff) Grr! Not a fresh drink.",
		GHOSTLYELIXIR_FASTREGEN = "(sniff) Grr! Not a fresh drink.",
		GHOSTLYELIXIR_SHIELD = "(sniff) Grr! Not a fresh drink.",
		GHOSTLYELIXIR_ATTACK = "(sniff) Grr! Not a fresh drink.",
		GHOSTLYELIXIR_SPEED = "(sniff) Grr! Not a fresh drink.",
		GHOSTLYELIXIR_RETALIATION = "(sniff) Grr! Not a fresh drink.",
		SISTURN =
		{
			GENERIC = "Will show you how to stock up for hibernation.",
			SOME_FLOWERS = "Needs a few nuts and berries...",
			LOTS_OF_FLOWERS = "Ready for hibernation yet?",
		},

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Looks better with food in it.",
            DONE = "GRAAAAUH!!",

			COOKING_LONG = "Can hardly wait... need food.",
			COOKING_SHORT = "(sniiifff) Fooood! Graa!",
			EMPTY = "Needs food...",
        },
        
        PORTABLEBLENDER_ITEM = "Makes food smell better.",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "Makes food smell better.",
            DONE = "(sniff sniff) Fooood!",
        },
        SPICEPACK = "Hibernation for my snacks.",
        SPICE_GARLIC = "(sniff) Mmmmm!",
        SPICE_SUGAR = "GRAAAA! Essence of living!",
        SPICE_CHILI = "Hooo- Hot!",
        SPICE_SALT = "Mmm. Good to lick.",
        MONSTERTARTARE = "Looks good to EAT!!",
        FRESHFRUITCREPES = "Gets sauce all over hair!",
        FROGFISHBOWL = "Will eat entire bowl. Also will eat the bowl.",
        POTATOTORNADO = "Easy to eat. Mmmm.",
        DRAGONCHILISALAD = "Leaves are hotter than before?",
        GLOWBERRYMOUSSE = "Mushes my maw into it. Gets messy.",
        VOLTGOATJELLY = "Tingles in my stomach!",
        NIGHTMAREPIE = "Grrr. Will eat it anyway.",
        BONESOUP = "Must bee what my stomach looks like inside!",
        MASHEDPOTATOES = "Pounded and mashed! For my maw!",
        POTATOSOUFFLE = "Going to eat it whole! No looking!",
        MOQUECA = "GRAAA! Pour it down!",
        GAZPACHO = "Grrr-r-r!",
        ASPARAGUSSOUP = "Need something warmer for hibernation!",
        VEGSTINGER = "Mmmm. Moist!",
        BANANAPOP = "Pop it into my maw! I'll eat the twig!",
        CEVICHE = "Mashed into my maw.",
        SALSA = "Going to eat it all!",
        PEPPERPOPPER = "Sends a tingle down my stomach!",

        TURNIP = "Will eat anything!",
        TURNIP_COOKED = "Good for eating.",
        TURNIP_SEEDS = "Better to pound into ground than to eat.",
        
        GARLIC = "(sniff) Strong!",
        GARLIC_COOKED = "(sniiifff) Even stronger!",
        GARLIC_SEEDS = "Better to pound into ground than to eat.",
        
        ONION = "More layers to eat!",
        ONION_COOKED = "(sniff) MM!",
        ONION_SEEDS = "Pound for ground.",
        
        POTATO = "Eating it whole!",
        POTATO_COOKED = "Fun to mash with my teeth!",
        POTATO_SEEDS = "Slam into the ground.",
        
        TOMATO = "Makes hair get all juicy when bitten!",
        TOMATO_COOKED = "Mmm. Love eating.",
        TOMATO_SEEDS = "Ground needs it.",

        ASPARAGUS = "Mmm. Crunchy.", 
        ASPARAGUS_COOKED = "Good to crunch.",
        ASPARAGUS_SEEDS = "For ground to pound.",

        PEPPER = "Mm. Must be how hibernation tastes.",
        PEPPER_COOKED = "Warmer than before! Hmphf!",
        PEPPER_SEEDS = "For ground to pound.",

        WEREITEM_BEAVER = "(sniff) Grr.",
        WEREITEM_GOOSE = "(sniff) Grrr...",
        WEREITEM_MOOSE = "(sniff) Grrrr....",

        MERMHAT = "Eyes look a little tastier.",
        MERMTHRONE =
        {
            GENERIC = "Sit? Sleep?",
            BURNT = "Grrrr.",
        },
        MOSQUITOMUSK = "Bad smell. But not for me.",
        MOSQUITOBOMB = "Makes me feel itchy. Need scratching tree!",
        MOSQUITOFERTILIZER = "(sniff snorf) HRK-! Not for nose. Good to know.",
        MOSQUITOMERMSALVE = "Not for Bearger? Promise?",
		
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "Building spot to hibernate.",
            BURNT = "Grrrr.",
        },        
        MERMHOUSE_CRAFTED = 
        {
            GENERIC = "Any food...? Fish?",
            BURNT = "Grrrr.",
        },

        MERMWATCHTOWER_REGULAR = "(sniff) Grrr. Fish food.",
        MERMWATCHTOWER_NOKING = "Emptier than before.",
        MERMKING = "(sniff sniff) Fishy.",
        MERMGUARD = "Protecting... food?",
        MERM_PRINCE = "Still a chance to eat.",

        SQUID = "Grrr! Gets ink all over fur!",

		GHOSTFLOWER = "(sniff) ...Not a good flower to eat.",
        SMALLGHOST = "Can't hibernate...?",

		CRABKING = 
        {
            GENERIC = "Grrrrh... Will snip claws back!",
            INERT = "Needs gems to hibernate?",
        },
		CRABKING_CLAW = "Slam like my claws!",
		
		MESSAGEBOTTLE = "(sniff) ...Words?",
		MESSAGEBOTTLEEMPTY = "(sniff, sniff) Empty. Could use honey.",
        MEATRACK_HERMIT =
        {
            DONE = "(sniff) MM!",
            DRYING = "GRR. I want to eat it already!",
            DRYINGINRAIN = "Grrrr. Too wet.",
            GENERIC = "Grrr. Needs meat.",
            BURNT = "GRRRA!",
            DONE_NOTMEAT = "(sniff) MM!",
            DRYING_NOTMEAT = "GRR. I want to eat it already!",
            DRYINGINRAIN_NOTMEAT = "Grrrr. Too wet.",
        },
        BEEBOX_HERMIT =
        {
			READY = "Ghrr-hrr! Time to eat!!",
			FULLHONEY = "GHAWR! What I love to see!!",
			GENERIC = "Ghrrr... Only the crab can touch it.",
			NOHONEY = "Grrrr... no honey.",
			SOMEHONEY = "(sniff) MMM!! Honey!",
			BURNT = "GHRAAAAAAHG!!",
        },
		HERMITCRAB = "Need help with hibernating?",
		HERMIT_PEARL = "Will keep it warm and well-fed.",
        HERMIT_CRACKED_PEARL = "Didn't survive the hibernation...",

        -- DSEAS
        WATERPLANT = "(sniff) Hmph. Maybe just a nibble.",
        WATERPLANT_BOMB = "Grrrr. Will have to bite back!",
        WATERPLANT_BABY = "Still growing.",
        WATERPLANT_PLANTER = "Better in the ocean than my stomach.",

        SHARK = "Grrrh!!! Nobody gets to eat me back!",

        MASTUPGRADE_LAMP_ITEM = "Little, little light.",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "Makes my fur feel... funny?",

        WATERPUMP = "Pump it with ground-pounding action!",

        BARNACLE = "Gets stuck to my fur.",
        BARNACLE_COOKED = "(sniff sniff) Hmmm... Soft?",

        BARNACLEPITA = "Wrapped up like me during a warm hibernation.",
        BARNACLESUSHI = "Mmmm. Food is good.",
        BARNACLINGUINE = "Fur gets drenched in the sauce.",
        BARNACLESTUFFEDFISHHEAD = "If nobody else wants it... it's mine anyway.",

        LEAFLOAF = "(sniff) Still good for hibernation.",
        LEAFYMEATBURGER = "Tastes like hibernation filler.",
        LEAFYMEATSOUFFLE = "(sniff sniff) So... squishy.",
        MEATYSALAD = "More filling than other plants.",

        -- GROTTO
		MOLEBAT = "Hmpf. Need to hold a sniff competition.",

        BATNOSE = "...Still have my nose.",
        BATNOSE_COOKED = "(sniff) Don't do this to my snout.",
        BATNOSEHAT = "Food... to go?",

        MUSHGNOME = "Don't sniff near it.",

        SPORE_MOON = "Do. Not. Sniff. Grrrr... too tempting.",

        MOON_CAP = "Makes me feel like hibernating.",
        MOON_CAP_COOKED = "(sniff sniff) Smells like moon.",

        MUSHTREE_MOON = "Good scratching post.",

        LIGHTFLIER = "Will have to follow around and claw at this.",
        GROTTO_POOL_BIG = "Not seeing any fish...",
        GROTTO_POOL_SMALL = "Might take a sip.",
        DUSTMOTH = "Good hair.",
        DUSTMOTHDEN = "A hibernator's home. Cozy.",

        ARCHIVE_LOCKBOX = "Claws are too big to fit in it.",
        ARCHIVE_CENTIPEDE = "GRRRAAAAHG!! Woken up from hibernation!",
        ARCHIVE_CENTIPEDE_HUSK = "Hmpf. Not everything wakes up from hibernation.",

        ARCHIVE_COOKPOT =
        {
			COOKING_LONG = "Stomach is GROWLING!",
			COOKING_SHORT = "(sniff sniff) Grrrrr...",
			DONE = "GRAAAUH! FOOD!!",
			EMPTY = "Ghrrrr... Empty. Dusty.",
			BURNT = "(sniff) RAAAAHG!!",
        },

        ARCHIVE_MOON_STATUE = "Can't sleep under this.",
        ARCHIVE_RUNE_STATUE = 
        {
            LINE_1 = "Claws markings.",
            LINE_2 = "(sniff) Claw scratches?",
            LINE_3 = "Claws markings.",
            LINE_4 = "(sniff) Claw scratches?",
            LINE_5 = "Claw's markings.",
        },        

		ARCHIVE_RESONATOR = {
            GENERIC = "Must know where the best stashes of food are.",
            IDLE = "All stocked up on... these.",
        },
        ARCHIVE_RESONATOR_ITEM = "Everything is new to me. Hmphf.",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "Knock... knock?",
          GENERIC =  "Thirsty?",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "Has been hibernating too long.",
            GENERIC = "(sniff) Smells like trouble.",
        },

        ARCHIVE_SECURITY_PULSE = "GrrRrRr... catch it!",

        ARCHIVE_SWITCH = {
            VALID = "Good shape.",
            GEMS = "(sniff sniff) Missing.",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "This is...a portal?",
            GENERIC = "Didn't come out of hibernation.",
        },

        WALL_STONE_2 = "Won't stop me from getting to food.",
        WALL_RUINS_2 = "Smells old. Gold?",

        REFINED_DUST = "(snifffff) GrrRRAACHOOOOO!!!",
        DUSTMERINGUE = "Not moth, but will do my best to eat.",

        SHROOMCAKE = "Shaking with excitement to eat this!",
        SHROOMBAIT = "(sniff sniff) Smells good to...(yawn)...eat!",

        NIGHTMAREGROWTH = "Did someone slam?",

        TURFCRAFTINGSTATION = "There's ground to pound!",

        MOON_ALTAR_LINK = "Can't smell it... yet.",
		-- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "(Sniff sniff) All natural.",
            WET = "Sloppy.",
            DRY = "Dried.",
            BALANCED = "Not too big. Not too small. Hmph.",
            BURNT = "Bad, bad, bad.",
        },
        COMPOST = "Hibernation aftermath.",
        SOIL_AMENDER = 
		{ 
			GENERIC = "Needs to hibernate.",
			STALE = "Still in deep sleeping.",
			SPOILED = "Don't need to sniff it. Can just tell.",
		},

		SOIL_AMENDER_FERMENTED = "(sniff) Hrnk...done.",

        WATERINGCAN = 
        {
            GENERIC = "Water the ground? Not pound?",
            EMPTY = "Look for fish. No. Where fish live.",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "Needs more fur.",
            EMPTY = "Needs water. Nothing more.",
        },

		FARM_PLOW = "Food for fun.",
		FARM_PLOW_ITEM = "I always know where to find good spots.",
		FARM_HOE = "For ground pounding?",
		GOLDEN_FARM_HOE = "Shiny pounding.",
		NUTRIENTSGOGGLESHAT = "Not used to seeing this much.",
		PLANTREGISTRYHAT = "Too much for my brain! Grrr!",

        FARM_SOIL_DEBRIS = "Not enough room for the both of us.",

		FIRENETTLES = "No sniffing!",
		FORGETMELOTS = "(sniff sniff) New smell.",
		SWEETTEA = "Smells like hibernation...",
		TILLWEED = "Pound it out of the ground!",
		TILLWEEDSALVE = "Grass is always a good snack.",
		WEED_IVY = "Has sharp teeth, like me!",
        IVY_SNARE = "GRAAAHH!!",

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "To bear my plants.",
			HAS_ITEM = "Weight: {weight}\nHarvested on day: {day}\nSmells nice.",
            HAS_ITEM_HEAVY = "Weight: {weight}\nHarvested on day: {day}\nHeavy as my coat.",
            HAS_ITEM_LIGHT = "Hmph. I'll just eat it.",
			BURNING = "Smells good.",
			BURNT = "Too burnt.",
        },
        
        CARROT_OVERSIZED = "Enough for a whole winter!",
        CORN_OVERSIZED = "A must have for hibernation!",
        PUMPKIN_OVERSIZED = "Would like to sleep in it.",
        EGGPLANT_OVERSIZED = "Mmm... Nutrients.",
        DURIAN_OVERSIZED = "(sniff sniff) RRRAAAAAHG!",
        POMEGRANATE_OVERSIZED = "So much to eat...",
        DRAGONFRUIT_OVERSIZED = "Must bite it. NOW!",
        WATERMELON_OVERSIZED = "Can't stop drooling.",
        TOMATO_OVERSIZED = "Juuuuuicyyyyy.",
        POTATO_OVERSIZED = "Can't contain all my drool.",
        ASPARAGUS_OVERSIZED = "Is it enough for winter?",
        ONION_OVERSIZED = "Layers and layer of foooood.",
        GARLIC_OVERSIZED = "Large and smelly. Like a Bearger.",
        PEPPER_OVERSIZED = "Winter doesn't stand a chance.",
        
        VEGGIE_OVERSIZED_ROTTEN = "GRRRRRR!!",

		FARM_PLANT =
		{
			GENERIC = "FOOD!",
			SEED = "Hope it doesn't become winter waiting...",
			GROWING = "(sniff) Almost food!",
			FULL = "Time to stash up for the winter!",
			ROTTEN = "GRRRRRR!!",
			FULL_OVERSIZED = "RAAAHH! So much! All I need for the winter!",
			ROTTEN_OVERSIZED = "GRRRRRR!! WASTE!!",
			FULL_WEED = "Grrrrr. You are NOT food. Yet.",

			BURNING = "GRAAAAAAUH!",
        },
        
        FRUITFLY = "GRRR. Stay away from my stash.",
        LORDFRUITFLY = "GrrRRrRrrRr!!!",
        FRIENDLYFRUITFLY = "Friend of food, friend of mine.",
        FRUITFLYFRUIT = "Now I am king of all food.",
		SEEDPOUCH = "Can't pick up any scent.",
		-- Crow Carnival
		CARNIVAL_HOST = "Grr... I want a hat too.",
		CARNIVAL_CROWKID = "Nice coat.",
		CARNIVAL_GAMETOKEN = "Mmm. Shiny.",
		CARNIVAL_PRIZETICKET =
		{
			GENERIC = "Just one for me.",
			GENERIC_SMALLSTACK = "Do you eat these before sleeping?",
			GENERIC_LARGESTACK = "Stocked up for winter.",
		},

		CARNIVALGAME_FEEDCHICKS_NEST = "On my stomping grounds?",
		CARNIVALGAME_FEEDCHICKS_STATION =
		{
			GENERIC = "Needs... food? Fur? Hmph.",
			PLAYING = "You will eat!",
		},
		CARNIVALGAME_FEEDCHICKS_KIT = "Something in there.",
		CARNIVALGAME_FEEDCHICKS_FOOD = "Eat. NOW!!!",

		CARNIVALGAME_MEMORY_KIT = "Something in there.",
		CARNIVALGAME_MEMORY_STATION =
		{
			GENERIC = "Needs... food? Fur? Hmph.",
			PLAYING = "Which egg is... which?",
		},
		CARNIVALGAME_MEMORY_CARD =
		{
			GENERIC = "On my stomping grounds?",
			PLAYING = "(sniff, sniff) This one.",
		},

		CARNIVALGAME_HERDING_KIT = "Something in there.",
		CARNIVALGAME_HERDING_STATION =
		{
			GENERIC = "Needs... food? Fur? Hmph.",
			PLAYING = "Time to eat!",
		},
		CARNIVALGAME_HERDING_CHICK = "RUN INTO MY MOUTH!!",

		CARNIVALGAME_SHOOTING_KIT = "Something in there.",
		CARNIVALGAME_SHOOTING_STATION =
		{
			GENERIC = "Needs... food? Fur? Hmph.",
			PLAYING = "Must defend territory!",
		},
		CARNIVALGAME_SHOOTING_TARGET =
		{
			GENERIC = "On my stomping grounds?",
			PLAYING = "Grrrrr...",
		},

		CARNIVALGAME_SHOOTING_BUTTON =
		{
			GENERIC = "Needs... food? Fur? Hmph.",
			PLAYING = "Getting too...complicated.",
		},

		CARNIVALGAME_WHEELSPIN_KIT = "Something in there.",
		CARNIVALGAME_WHEELSPIN_STATION =
		{
			GENERIC = "Needs... food? Fur? Hmph.",
			PLAYING = "Not very good at back scratching.",
		},

		CARNIVALGAME_PUCKDROP_KIT = "Something in there.",
		CARNIVALGAME_PUCKDROP_STATION =
		{
			GENERIC = "Needs... food? Fur? Hmph.",
			PLAYING = "Getting hungry looking at it. Must get it to fall into mouth next.",
		},

		CARNIVAL_PRIZEBOOTH_KIT = "Hiding from me?",
		CARNIVAL_PRIZEBOOTH =
		{
			GENERIC = "Not so picky.",
		},

		CARNIVALCANNON_KIT = "I hear a... sizzling?",
		CARNIVALCANNON =
		{
			GENERIC = "I want to hear it growl.",
			COOLDOWN = "Made my stomach turn.",
		},

		CARNIVAL_PLAZA_KIT = "Little trees are somewhere inside.",
		CARNIVAL_PLAZA =
		{
			GENERIC = "Hmm. Not ready yet.",
			LEVEL_2 = "Getting there.",
			LEVEL_3 = "Now is my time to sleep.",
		},

		CARNIVALDECOR_EGGRIDE_KIT = "I think I can hear a stomach growling.",
		CARNIVALDECOR_EGGRIDE = "Just makes me hungry.",

		CARNIVALDECOR_LAMP_KIT = "Needs to be...set?",
		CARNIVALDECOR_LAMP = "Little, little light. Hmph.",
		CARNIVALDECOR_PLANT_KIT = "Needs to be...set?",
		CARNIVALDECOR_PLANT = "Too easy to knock over...",
		CARNIVALDECOR_BANNER_KIT = "Needs to be...set?",
		CARNIVALDECOR_BANNER = "Could watch... forever.",

		CARNIVALDECOR_FIGURE =
		{
			RARE = "Never seen this before.",
			UNCOMMON = "(sniff) Smells better than the others.",
			GENERIC = "Another one.",
		},
		CARNIVALDECOR_FIGURE_KIT = "It is...?",
		CARNIVALDECOR_FIGURE_KIT_SEASON2 = "It is...?",

        CARNIVAL_BALL = "Good for chewing. Not swallowing.", --unimplemented
		CARNIVAL_SEEDPACKET = "Mmmm...",
		CARNIVALFOOD_CORNTEA = "No time to think... only slurp.",

        CARNIVAL_VEST_A = "Comfy.",
        CARNIVAL_VEST_B = "More coats.",
        CARNIVAL_VEST_C = "Good coat for shedding season.",
		-- YOTB
        YOTB_SEWINGMACHINE = "No needles for me. Claws are fine.",
        YOTB_SEWINGMACHINE_ITEM = "Building? Time to hibernate.",
        YOTB_STAGE = "Must be someone's hibernation station.",
        YOTB_POST =  "Good for scratching my back.",
        YOTB_STAGE_ITEM = "Where? How?",
        YOTB_POST_ITEM =  "But how...?",

        YOTB_PATTERN_FRAGMENT_1 = "Pieces of a pie. Mmm.",
        YOTB_PATTERN_FRAGMENT_2 = "Pieces of a pie. Mmm.",
        YOTB_PATTERN_FRAGMENT_3 = "Pieces of a pie. Mmm.",

        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = "Hibernation buddy.",
            YOTB = "Show the Judge our friend.",
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = "Hibernation buddy.",
            YOTB = "Show the Judge our friend.",
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = "Hibernation buddy.",
            YOTB = "Show the Judge our friend.",
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = "Hibernation buddy.",
            YOTB = "Show the Judge our friend.",
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = "Hibernation buddy.",
            YOTB = "Show the Judge our friend.",
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = "Hibernation buddy.",
            YOTB = "Show the Judge our friend.",
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = "Hibernation buddy.",
            YOTB = "Show the Judge our friend.",
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = "Hibernation buddy.",
            YOTB = "Show the Judge our friend.",
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = "Hibernation buddy.",
            YOTB = "Show the Judge our friend.",
        },


        WAR_BLUEPRINT = "Growl!",
        DOLL_BLUEPRINT = "Mmm. Soft.",
        FESTIVE_BLUEPRINT = "Jingly.",
        ROBOT_BLUEPRINT = "Not so soft.",
        NATURE_BLUEPRINT = "Tempting. (sniff sniff)",
        FORMAL_BLUEPRINT = "Not for my hair.",
        VICTORIAN_BLUEPRINT = "Doesn't fit me.",
        ICE_BLUEPRINT = "Winter coat?",
        BEAST_BLUEPRINT = "Nice shiny hair.",

        BEEF_BELL = "Makes me happy. Only a little.",
		-- YOT Catcoon
		KITCOONDEN = 
		{
			GENERIC = "Nice hibernation home.",
            BURNT = "Not good.",
			PLAYING_HIDEANDSEEK = "They are hiding. I will sniff them out.",
			PLAYING_HIDEANDSEEK_TIME_ALMOST_UP = "Spent too long looking.",
		},

		KITCOONDEN_KIT = "Not ready.",

		TICOON = 
		{
			GENERIC = "Your nose is strong, like mine.",
			ABANDONED = "Will be on my own.",
			SUCCESS = "Good. Now find some berries and honey.",
			LOST_TRACK = "The scent, it was already found.",
			NEARBY = "Do you smell that?",
			TRACKING = "Follow your nose.",
			TRACKING_NOT_MINE = "Sniffing elsewhere.",
			NOTHING_TO_TRACK = "Nose must be stuffy.",
			TARGET_TOO_FAR_AWAY = "No scents this way.",
		},
		
		YOT_CATCOONSHRINE =
        {
            GENERIC = "Smells fishy.",
            EMPTY = "Must need a different kind of fur.",
            BURNT = "Grrr. Burnt.",
        },

		KITCOON_FOREST = "You smell. We smell.",
		KITCOON_SAVANNA = "You smell. We smell.",
		KITCOON_MARSH = "You smell. We smell.",
		KITCOON_DECIDUOUS = "You smell. We smell.",
		KITCOON_GRASS = "You smell. We smell.",
		KITCOON_ROCKY = "You smell. We smell.",
		KITCOON_DESERT = "You smell. We smell.",
		KITCOON_MOON = "You smell. We smell.",
		KITCOON_YOT = "You smell. We smell.",

		-- Moon Storm
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = "Must be hungry.",
            DEAD = "It is... dead?",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "Must be REALLY hungry.",
            DEAD = "It is... not dead?",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "Grrrauh! Sharp!",
        ALTERGUARDIAN_PHASE3 = "I can get angrier! RAAAAUHG!!",
        ALTERGUARDIAN_PHASE3TRAP = "Feeling like... hibernating.",
        ALTERGUARDIAN_PHASE3DEADORB = "(sniff snoff) ...Dead?",
        ALTERGUARDIAN_PHASE3DEAD = "(snoff sniff) ...Dead.",

        ALTERGUARDIANHAT = "Makes my head feel... hairy.",
		ALTERGUARDIANHATSHARD = "(sniff) Hmphf. Still kicking.",

        MOONSTORM_GLASS = {
            GENERIC = "Hpmf. Glass.",
            INFUSED = "(sniff) Mmm. Fresh."
        },

        MOONSTORM_STATIC = "Grrrr. Stop making hair stick up.",
        MOONSTORM_STATIC_ITEM = "Has a smell to it. Hmph.",
        MOONSTORM_SPARK = "Tingles. Only a little.",

        BIRD_MUTANT = "Not well.",
        BIRD_MUTANT_SPITTER = "Will that happen to... me?",

        WAGSTAFF_NPC = "Need...help? From...me? GrrrRRrr!",

        WAGSTAFF_NPC_MUTATIONS = "Can't smell you. Sad.",
        WAGSTAFF_NPC_WAGPUNK = "Charging? Must be hungry.",

		ALTERGUARDIAN_CONTAINED = "It's stocking up for hibernation.",

        WAGSTAFF_TOOL_1 = "This one is next.",
        WAGSTAFF_TOOL_2 = "This one is here.",
        WAGSTAFF_TOOL_3 = "This one is right.",
        WAGSTAFF_TOOL_4 = "This one is found.",
        WAGSTAFF_TOOL_5 = "This one is good.",

        MOONSTORM_GOGGLESHAT = "Just makes me hungry.",

        MOON_DEVICE = {
            GENERIC = "Full of energy.",
            CONSTRUCTION1 = "Working on it. Hmph.",
            CONSTRUCTION2 = "Good work for the winter.",
        },
		-- Wanda
        POCKETWATCH_HEAL = {
			GENERIC = "Can keep track of the season alone.",
			RECHARGING = "Hibernating.",
		},

        POCKETWATCH_REVIVE = {
			GENERIC = "Can keep track of the season alone.",
			RECHARGING = "Hibernating.",
		},

        POCKETWATCH_WARP = {
			GENERIC = "Can keep track of the season alone.",
			RECHARGING = "Hibernating.",
		},

        POCKETWATCH_RECALL = {
			GENERIC = "Can keep track of the season alone.",
			RECHARGING = "Hibernating.",
--fallback to speech_wilson.lua 			UNMARKED = "only_used_by_wanda",
--fallback to speech_wilson.lua 			MARKED_SAMESHARD = "only_used_by_wanda",
--fallback to speech_wilson.lua 			MARKED_DIFFERENTSHARD = "only_used_by_wanda",
		},

        POCKETWATCH_PORTAL = {
			GENERIC = "Can keep track of the season alone.",
			RECHARGING = "Hibernating.",
--fallback to speech_wilson.lua 			UNMARKED = "only_used_by_wanda unmarked",
--fallback to speech_wilson.lua 			MARKED_SAMESHARD = "only_used_by_wanda same shard",
--fallback to speech_wilson.lua 			MARKED_DIFFERENTSHARD = "only_used_by_wanda other shard",
		},

        POCKETWATCH_WEAPON = {
			GENERIC = "Good for hurting times.",
--fallback to speech_wilson.lua 			DEPLETED = "only_used_by_wanda",
		},

        POCKETWATCH_PARTS = "Like nuts and berries in a tree.",
        POCKETWATCH_DISMANTLER = "Claws for clocks?",

        POCKETWATCH_PORTAL_ENTRANCE = 
		{
			GENERIC = "Must be more to scavenge here.",
			DIFFERENTSHARD = "Must be more to scavenge here.",
		},
        POCKETWATCH_PORTAL_EXIT = "(sniff sniff) Can't go back.",
		-- Waterlog
        WATERTREE_PILLAR = "For only the biggest bears.",
        OCEANTREE = "Hmph. Not good spot to stash food.",
        OCEANTREENUT = "Hibernating nut.",
        WATERTREE_ROOT = "Grrrrr. Time to chew.",

        OCEANTREE_PILLAR = "Hmph! Just right!",
        
        OCEANVINE = "(sniff) Must bite. Have to bite it.",
        FIG = "(sniff snifff) Plump.",
        FIG_COOKED = "Mmm. Would taste better in my mouth.",

        SPIDER_WATER = "GRRRRR! Who let you float and not me?",
        MUTATOR_WATER = "(sniff) Is for me?",
        OCEANVINE_COCOON = "Not the only hibernator here.",
        OCEANVINE_COCOON_BURNT = "Won't let this happen to mine.",

        GRASSGATOR = "Nice coat. Does it shed?",

        TREEGROWTHSOLUTION = "Forget tree. This is all for ME!",

        FIGATONI = "The fig hibernates too.",
        FIGKABAB = "Should I eat the stick? Yes?",
        KOALEFIG_TRUNK = "I've got your nose. For eating.",
        FROGNEWTON = "Needs honey. A lot of honey. Maybe only honey.",
        -- The Terrorarium
        TERRARIUM = {
            GENERIC = "Where's the tiny bear to go with?",
            CRIMSON = "I must get like this too when I'm full?",
            ENABLED = "GRRR! TOO BRIGHT!!",
			WAITING_FOR_DARK = "(sniff) Now is time to sleep.",
			COOLDOWN = "Who took the tree?",
			SPAWN_DISABLED = "Doesn't smell like eyes anymore.",
        },

        -- Wolfgang
        MIGHTY_GYM = 
        {
            GENERIC = "Hmph. Don't need this to become full.",
            BURNT = "Now you can learn how to hibernate.",
        },

        DUMBBELL = "Easy to throw. For me.",
        DUMBBELL_GOLDEN = "Not sure about this one.",
		DUMBBELL_MARBLE = "Not heavier than a hibernating bear.",
        DUMBBELL_GEM = "Still not heavier than a hibernating bear.",
        POTATOSACK = "Will now eat everything in this.",

        DUMBBELL_HEAT = "I get heated after a full meal too.",
        DUMBBELL_REDGEM = "Need to shed some hairs first.",
        DUMBBELL_BLUEGEM = "Need to grow some hairs first.",

        TERRARIUMCHEST = 
		{
			GENERIC = "Nothing to smell here.",
			BURNT = "Grrr. Burnt.",
			SHIMMER = "Something shiny in here.",
		},

		EYEMASKHAT = "Head is full of eyeballs.",

        EYEOFTERROR = "Grrrr. Have more eyes than that.",
        EYEOFTERROR_MINI = "Easy to stomp!",
        EYEOFTERROR_MINI_GROUNDED = "Stomp!",

        FROZENBANANADAIQUIRI = "Reminds me of honey. Mmmm.",
        BUNNYSTEW = "Mmm. Mouth is drooling. Or is it spilling?",
        MILKYWHITES = "(sniff) Has no smell.",

        CRITTER_EYEOFTERROR = "Don't like being watched in my sleep.",

        SHIELDOFTERROR ="Now with extra bite. Should feed it.",
        TWINOFTERROR1 = "RAAAAUHG! NO MORE EYES!",
        TWINOFTERROR2 = "RAAAAUHG! NO MORE EYES!",
		-- Cult of the Lamb
		COTL_TRINKET = "Skull isn't big enough for that.",
		TURF_COTL_GOLD = "Any new scents on it?",
		TURF_COTL_BRICK = "(sniff) No new smells here. Maybe.",
		COTL_TABERNACLE_LEVEL1 =
		{
			LIT = "Watching you...",
			GENERIC = "Smells empty.",
		},
		COTL_TABERNACLE_LEVEL2 =
		{
			LIT = "Feeling... urge to stick around it.",
			GENERIC = "Smells empty.",
		},
		COTL_TABERNACLE_LEVEL3 =
		{
			LIT = "Smells good to be around. Should stay near it.",
			GENERIC = "Smells empty.",
		},
		-- Year of the Catcoon
        CATTOY_MOUSE = "Must...resist...urge to eat it.",
        KITCOON_NAMETAG = "Nobody has named me yet.",

		KITCOONDECOR1 =
        {
            GENERIC = "Would rather spend time searching for food.",
            BURNT = "Grrr. Burnt.",
        },
		KITCOONDECOR2 =
        {
            GENERIC = "Would rather spend time searching for food.",
            BURNT = "Grrr. Burnt.",
        },

		KITCOONDECOR1_KIT = "Not ready.",
		KITCOONDECOR2_KIT = "Have to let it out.",
        -- WX78
        WX78MODULE_MAXHEALTH = "Doesn't look different from last one. (sniff) Or smell.",
		WX78MODULE_MAXSANITY1 = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_MAXSANITY = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_MOVESPEED = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_MOVESPEED2 = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_HEAT = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_NIGHTVISION = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_COLD = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_TASER = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_LIGHT = "Doesn't look different from last one. (sniff) Or smell.",
		WX78MODULE_MAXHUNGER1 = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_MAXHUNGER = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_MUSIC = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_BEE = "Doesn't look different from last one. (sniff) Or smell.",
        WX78MODULE_MAXHEALTH2 = "Doesn't look different from last one. (sniff) Or smell.",

        WX78_SCANNER = 
        {
            GENERIC ="Where is your nose?",
            HUNTING = "Where is your nose?",
            SCANNING = "Where is your nose?",
        },

        WX78_SCANNER_ITEM = "Not scanning. Sleeping.",
        WX78_SCANNER_SUCCEEDED = "Smells...finished.",
        WX78_MODULEREMOVER = "Don't need help with shedding.",

        SCANDATA = "(sniff sniff) Doesn't smell like \"research\".",

		-- QOL 2022
		JUSTEGGS = "Mmmmmm... Less talk, more eat.",
		VEGGIEOMLET = "Food is good to eat any time. Mmmmm.",
		TALLEGGS = "(sniff) Can't contain my drool. Mmmmm.",
		BEEFALOFEED = "(sniff sniff) Hmmm. Not filling.",
		BEEFALOTREAT = "Mmm. Not for me? Don't care.",

        -- Pirates
        BOAT_ROTATOR = "Don't know where this is going.",
        BOAT_ROTATOR_KIT = "Where's it go?",
        BOAT_BUMPER_KELP = "Won't be so cold now, boat.",
        BOAT_BUMPER_KELP_KIT = "A boat's winter coat.",
        BOAT_BUMPER_SHELL = "Helps boat survive the winter.",
        BOAT_BUMPER_SHELL_KIT = "A boat's winter coat.",
        BOAT_BUMPER_CRABKING = "Like tough coating of winter fur.",
        BOAT_BUMPER_CRABKING_KIT = "A boat's winter coat.",

        BOAT_CANNON = {
            GENERIC = "It needs to find fuel.",
            AMMOLOADED = "Grrrrr. Smells ready.",
            NOAMMO = "Not stocked up.",
        },
        BOAT_CANNON_KIT = "Not ready yet.",
        CANNONBALL_ROCK_ITEM = "Good rock. Very powerful.",

        OCEAN_TRAWLER = {
            GENERIC = "Beargers won't have to do it ourselves anymore.",
            LOWERED = "Must be patient.",
            CAUGHT = "Crushed in its jaws!",
            ESCAPED = "Doesn't have the patience of a Bearger hunting.",
            FIXED = "Time for more fish.",
        },
        OCEAN_TRAWLER_KIT = "Fish go into its mouth.",

        BOAT_MAGNET =
        {
            GENERIC = "Giant metal nose sniffs things out.",
            ACTIVATED = "My nose could do that too. Hmph.",
        },
        BOAT_MAGNET_KIT = "No time to read. Just build.",

        BOAT_MAGNET_BEACON =
        {
            GENERIC = "It gives a smell strong enough to attract a mate.",
            ACTIVATED = "(Sniff, sniff) Not for me.",
        },
        DOCK_KIT = "Good for boats.",
        DOCK_WOODPOSTS_ITEM = "Not for scratching?",

        MONKEYHUT =
        {
            GENERIC = "Good hibernation huts.",
            BURNT = "Not s good after all.",
        },
        POWDER_MONKEY = "GRRRR. MY TERRITORY.",
        PRIME_MATE = "GRRRR. STAY AWAY FROM MY FOOD.",
		LIGHTCRAB = "A light snack.",
        CUTLESS = "Best use is for scratching my back.",
        CURSED_MONKEY_TOKEN = "Should collect. Might be useful for the winter.",
        OAR_MONKEY = "Much like a Bearger paw.",
        BANANABUSH = "Mmmmm. Should keep these.",
        DUG_BANANABUSH = "Mmmmm. Should keep these.",
        PALMCONETREE = "Have found the perfect scratching tree!",
        PALMCONE_SEED = "A little crunchy.",
        PALMCONE_SAPLING = "Good to keep around for later.",
        PALMCONE_SCALE = "Feels so nice to scratch.",
        MONKEYTAIL = "(sniff sniff) Might be good. Maybe not.",
        DUG_MONKEYTAIL = "(sniff sniff) Might be good. Maybe not.",

        MONKEY_MEDIUMHAT = "New set of ears for me.",
        MONKEY_SMALLHAT = "Keeps my head warm. Not really.",
        POLLY_ROGERSHAT = "More fur for me. Why not.",
        POLLY_ROGERS = "Can you check if I have anything in my teeth?",

        MONKEYISLAND_PORTAL = "Very bad hibernation spot.",
        MONKEYISLAND_PORTAL_DEBRIS = "Out of place. Should fix that.",
        MONKEYQUEEN = "Willing to trade any nuts and berries?",
        MONKEYPILLAR = "New scratching post.",
        PIRATE_FLAG_POLE = "Too thin to scratch with.",

        BLACKFLAG = "Where's the picnic basket?",
        PIRATE_STASH = "(sniff) Under here.",
        STASH_MAP = "This way. Good spot.",

        BANANAJUICE = "Mmm. Nose keeps getting stuck in it.",

		FENCE_ROTATOR = "Always ready to smash things into the ground.",

        CHARLIE_STAGE_POST = "Grrrr. Hate being watched.",
        CHARLIE_LECTURN = "Is this how you... play?",

        CHARLIE_HECKLER = "Grrrrr! No more talking...",

        PLAYBILL_THE_DOLL = "What are we playing with?",
        STATUEHARP_HEDGESPAWNER = "Good spot to scratch a back.",
        HEDGEHOUND = "GHRRRRrrrr...rrr!!",
        HEDGEHOUND_BUSH = "(sniff sniff) GrrrRRrrrRrr...",

        MASK_DOLLHAT = "Hard to eat with. Gets in the way.",
        MASK_DOLLBROKENHAT = "Hard to eat with. Gets in the way.",
        MASK_DOLLREPAIREDHAT = "Just as bad to eat with. Hmph.",
        MASK_BLACKSMITHHAT = "Hard to eat with. Gets in the way.",
        MASK_MIRRORHAT = "Hard to eat with. Gets in the way.",
        MASK_QUEENHAT = "Hard to eat with. Gets in the way.",
        MASK_KINGHAT = "Hard to eat with. Gets in the way.",
        MASK_TREEHAT = "Hard to eat with. Gets in the way.",
        MASK_FOOLHAT = "Hard to eat with. Gets in the way.",

        COSTUME_DOLL_BODY = "Fur keeps poking out. Not comfy.",
        COSTUME_QUEEN_BODY = "Fur keeps poking out. Not comfy.",
        COSTUME_KING_BODY = "Fur keeps poking out. Not comfy.",
        COSTUME_BLACKSMITH_BODY = "Fur keeps poking out. Not comfy.",
        COSTUME_MIRROR_BODY = "Fur keeps poking out. Not comfy.",
        COSTUME_TREE_BODY = "Fur keeps poking out. Not comfy.",
        COSTUME_FOOL_BODY = "Fur keeps poking out. Not comfy.",

        STAGEUSHER =
        {
            STANDING = "RAAAAHG! Knew I smelt you!",
            SITTING = "(sniff sniff) GrrRrrrRrrr.",
        },
		SEWING_MANNEQUIN =
        {
            GENERIC = "Scratch my back. Won't scratch yours.",
            BURNT = "Does not answer back. Hmph.",
        },

		-- Waxwell
		MAGICIAN_CHEST = "Too many smells to sniff.",
		TOPHAT_MAGICIAN = "Hmph. Musty.",

        -- Year of the Rabbit
        YOTR_FIGHTRING_KIT = "(sniff) Needs to be put up.",
        YOTR_FIGHTRING_BELL =
        {
            GENERIC = "Don't need this to get angry and start fighting.",
            PLAYING = "TEAR EACH OTHER TO SHREDS!!",
        },

        YOTR_DECOR_1 = {
            GENERAL = "You would make my belly glow.",
            OUT = "(sniff) Where did you go?",
        },
        YOTR_DECOR_2 = {
            GENERAL = "ou would make my belly glow.",
            OUT = "(sniff) Where did you go?",
        },

        HAREBALL = "Get those all the time.",
        YOTR_DECOR_1_ITEM = "Goes somewhere. Maybe here.",
        YOTR_DECOR_2_ITEM = "Goes somewhere. Maybe here.",

		--
		DREADSTONE = "(sniff sniff) No, shouldn't use as scratching post.",
		HORRORFUEL = "It makes every hair stand up.",
		DAYWALKER =
		{
			GENERIC = "Did not take any of your food! I think! Must have.",
			IMPRISONED = "Grrrr... Glad they do not treat me like that. Anymore.",
		},
		DAYWALKER_PILLAR =
		{
			GENERIC = "(sniff sniff) I can smell you in there.",
			EXPOSED = "Tough. More than most trees.",
		},
		DAYWALKER2 =
		{
			GENERIC = "Must be on a full stomach. Should take some of his food.",
			BURIED = "Were you hibernating under there? Not good spot.",
			HOSTILE = "He gets angry when he's hungry. Just me?",
		},
		ARMORDREADSTONE = "Not good look for me I think.",
		DREADSTONEHAT = "No more thoughts will be coming in or out. Good.",

        -- Rifts 1
        LUNARRIFT_PORTAL = "I will... hibernate somewhere else.",
        LUNARRIFT_CRYSTAL = "Know better than to mess with this.",

        LUNARTHRALL_PLANT = "This is MY territory. You are not welcome in my territory.",
        LUNARTHRALL_PLANT_VINE_END = "GRRR. MY TERRITORY.",

		LUNAR_GRAZER = "Claws are going right through it! GRRR.",

        PUREBRILLIANCE = "Should be careful with this. Not sure what that means.",
        LUNARPLANT_HUSK = "Dropped its hide. (sniff sniff)",

		LUNAR_FORGE = "I don't know many things. Hmph. Must think about this.",
		LUNAR_FORGE_KIT = "(sniff sniff) Hmph. It's not food... should double check.",

		LUNARPLANT_KIT = "It won't fix me. Not very good then.",
		ARMOR_LUNARPLANT = "It squeezes every inch of my hair.",
		LUNARPLANTHAT = "Snout doesn't fit through it.",
		BOMB_LUNARPLANT = "Good to throw.",
		STAFF_LUNARPLANT = "Swarms and swarms!",
		SWORD_LUNARPLANT = "Think it's splitting my hairs when not looking.",
		PICKAXE_LUNARPLANT = "(sniff) Not bad.",
		SHOVEL_LUNARPLANT = "Pairs well with dirt sniffing day.",

		BROKEN_FORGEDITEM = "Who broke it.",

        PUNCHINGBAG = "Perfect clawing spot.",

        -- Rifts 2
        SHADOWRIFT_PORTAL = "Time to go somewhere else.",

		SHADOW_FORGE = "Could place food on that. Maybe not.",
		SHADOW_FORGE_KIT = "(sniff sniff) No. Not good to eat.",

        FUSED_SHADELING = "Grrr. Let my claws do the talking.",
        FUSED_SHADELING_BOMB = "HIDE!",

		VOIDCLOTH = "Shadow shedding.",
		VOIDCLOTH_KIT = "Won't fix me. Not very good then.",
		VOIDCLOTHHAT = "Where does my snout go? Hmph.",
		ARMOR_VOIDCLOTH = "Did I tear it?",

        VOIDCLOTH_UMBRELLA = "Good for fur.",
        VOIDCLOTH_SCYTHE = "Others can't slam the ground like I can.",

		SHADOWTHRALL_HANDS = "GRR. My claws are thicker.",
		SHADOWTHRALL_HORNS = "Never get into a fight while hungry.",
		SHADOWTHRALL_WINGS = "Honey-maker has had enough of me. GRRR.",

        CHARLIE_NPC = "You are...? (sniff sniff)",
        CHARLIE_HAND = "PAWS OFF.",

        NITRE_FORMATION = "Smells like a familiar rock. (sniff)",
        DREADSTONE_STACK = "Not a good smell.",
        
        SCRAPBOOK_PAGE = "Book shed a page.",

        LEIF_IDOL = "Someone got hungry.",
        WOODCARVEDHAT = "The forest is always with me.",
        WALKING_STICK = "Good stick. Will keep this.",

        IPECACSYRUP = "(sniff sniff) Hrrgh. Nose says no. So does stomach.",
        BOMB_LUNARPLANT_WORMWOOD = "Smelling more explosive than before.", -- Unused
        WORMWOOD_MUTANTPROXY_CARRAT =
        {
        	DEAD = "Good to eat!",
        	GENERIC = "(snif sniiif) Mmm. Good for eating.",
        	HELD = "Have you seen my teeth...?",
        	SLEEPING = "(sniff) You need to hibernate in my stomach.",
        },
        WORMWOOD_MUTANTPROXY_LIGHTFLIER = "Will have to follow around and claw at this.",
		WORMWOOD_MUTANTPROXY_FRUITDRAGON =
		{
			GENERIC = "Might wait to eat it. (sniff sniff)",
			RIPE = "(sniiiiff) Good to eat.",
			SLEEPING = "Might wait to eat it still.",
		},

        SUPPORT_PILLAR_SCAFFOLD = "(sniff) Can't get a good scent.",
        SUPPORT_PILLAR = "It won't survive the winter.",
        SUPPORT_PILLAR_COMPLETE = "This tree bark doesn't feel good on my back.",
        SUPPORT_PILLAR_BROKEN = "Not very good.",

		SUPPORT_PILLAR_DREADSTONE_SCAFFOLD = "(sniff) Can't get a good scent.",
		SUPPORT_PILLAR_DREADSTONE = "It won't survive the winter.",
		SUPPORT_PILLAR_DREADSTONE_COMPLETE = "Not a good spot to sleep under.",
		SUPPORT_PILLAR_DREADSTONE_BROKEN = "Not good.",

        WOLFGANG_WHISTLE = "You cannot control me. Without food.",

        -- Rifts 3

        MUTATEDDEERCLOPS = "Not sure I like the new you. Grrrr.",
        MUTATEDWARG = "You are...different?",
        MUTATEDBEARGER = "Think I'm going to be sick. Grph.",

        LUNARFROG = "Grrr. Don't look me in the eyes.",

        DEERCLOPSCORPSE =
        {
            GENERIC  = "Time for food.",
            BURNING  = "Deerclops won't be happy to see that. Hmph.",
            REVIVING = "Deerclops didn't tell me they could do this.",
        },

        WARGCORPSE =
        {
            GENERIC  = "Dinner!",
            BURNING  = "(sniff) Mmmm.",
            REVIVING = "Grrrr. Back for more!?",
        },

        BEARGERCORPSE =
        {
            GENERIC  = "Won't be like you.",
            BURNING  = "Will carry on. For you.",
            REVIVING = "Can I... do that too?",
        },

        BEARGERFUR_SACK = "Smells like me. Must be mine.",
        HOUNDSTOOTH_BLOWPIPE = "Hmph! Good at biting!",
        DEERCLOPSEYEBALL_SENTRYWARD =
        {
            GENERIC = "Where did the rest of you go? Will go look.",    -- Enabled.
            NOEYEBALL = "No eye in sight.",  -- Disabled.
        },
		DEERCLOPSEYEBALL_SENTRYWARD_KIT = "Needs to be up.",

        SECURITY_PULSE_CAGE = "No smell. Not even a little.",
        SECURITY_PULSE_CAGE_FULL = "Now it smells. All is good.",

		CARPENTRY_STATION =
        {
            GENERIC = "A favorite back scratcher of mine.",
            BURNT = "Smells bad.",
        },

        WOOD_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "More used to rocks. This works too.",
            HAS_ITEM = "Will be sitting on that next.",
            BURNT = "Grrr! Was told that is...bad manners!",
        },

        WOOD_CHAIR =
        {
            GENERIC = "Will sit for a while. Might think.",
            OCCUPIED = "Move. GRAAAAAH!!! ...No?",
            BURNT = "Am I that heavy?",
        },

        DECOR_CENTERPIECE = "Not as good as a picnic basket.",
        DECOR_LAMP = "Doesn't smell very light.",
        DECOR_FLOWERVASE =
        {
			GENERIC = "(sniff sniff) Mmm. Edible flower.",
			EMPTY = "(sniff sniff) There is... nothing?",
			WILTED = "Should have hibernated sooner.",
			FRESHLIGHT = "Keep getting told not to eat it... but.",
			OLDLIGHT = "Light is... fading. Grrr...",
        },
        DECOR_PICTUREFRAME =
        {
            GENERIC = "Now it's flat. Hmph.",
            UNDRAWN = "Know a good place for it.",
        },
        DECOR_PORTRAITFRAME = "This is...?",

        PHONOGRAPH = "It teaches my ears all sorts of new...noises.",
        RECORD = "Makes my head tingle. Not good.",
        RECORD_CREEPYFOREST = "Gives my ears a little tingle.",
        RECORD_DANGER = "Grrr. Needs more growls.",
        RECORD_DAWN = "Could almost nap to this. Almost.",
        RECORD_DRSTYLE = "Gives my ears a little tingle.",
        RECORD_DUSK = "Could almost nap to this. Almost.",
        RECORD_EFS = "Grrr. Needs more growls.",
        RECORD_END = "Gives my ears a little tingle.",
        RECORD_MAIN = "Could almost nap to this. Almost.",
        RECORD_WORKTOBEDONE = "Could almost nap to this. Almost.",

        ARCHIVE_ORCHESTRINA_MAIN = "No. Was not built for this! Goodbye.",

        WAGPUNKHAT = "Warm scratches all over my head. Would wear again.",
        ARMORWAGPUNK = "Fur keeps getting stuck in its teeth.",
        WAGSTAFF_MACHINERY = "Good scratching post. Remember this spot.",
        WAGPUNK_BITS = "Not seeing anything edible here. Sad.",
        WAGPUNKBITS_KIT = "Hmph. How does this help a Bearger?",

        WAGSTAFF_MUTATIONS_NOTE = "Says to bring the nearest Bearger all your food. Should listen!",

        -- Meta 3

        BATTLESONG_INSTANT_REVIVE = "Don't let little moon ghosts haunt me.",

        WATHGRITHR_IMPROVEDHAT = "Hat is stocking up for the winter?",
        SPEAR_WATHGRITHR_LIGHTNING = "Wouldn't get past all my fur. Good.",

        BATTLESONG_CONTAINER = "Got stuck on my nose. Not where berries are.",

        SADDLE_WATHGRITHR = "Charge into battle! RAAAH!!",

        WATHGRITHR_SHIELD = "Doesn't cover all of me. Grrrr...",

        BATTLESONG_SHADOWALIGNED = "Got a good growl.",
        BATTLESONG_LUNARALIGNED = "Got a good growl.",

		SHARKBOI = "Your winter stash is cold and empty. This is sad! Mine is better.",
        BOOTLEG = "(sniff) Hm. None left for me to chew. Sad.",
        OCEANWHIRLPORTAL = "Maybe berries and nuts are stashed there? Fish? Should check.",

        EMBERLIGHT = "(sniff) Floating.",

        -- Year of the Dragon
        YOTD_DRAGONSHRINE =
        {
            GENERIC = "Does it make... food?",
            EMPTY = "Needs...burnt?",
            BURNT = "Grrr. Burnt.",
        },

        DRAGONBOAT_KIT = "Should make a Bearger Boat next. Good idea.",
        DRAGONBOAT_PACK = "Fully stocked boat. Good.",

        BOATRACE_CHECKPOINT = "So close I can smell it. (snifff)",
        BOATRACE_CHECKPOINT_THROWABLE_DEPLOYKIT = "Should throw somewhere I can reach.",
        BOATRACE_START = "Will smell you when you're ready.",
        BOATRACE_START_THROWABLE_DEPLOYKIT = "Sniff out the start.",

        BOATRACE_PRIMEMATE = "Grrrrrr. You won't beat me.",
        BOATRACE_SPECTATOR_DRAGONLING = "Cheering? For me? Wrong boat.",

        YOTD_STEERINGWHEEL = "Doesn't have a nose to follow.",
        YOTD_STEERINGWHEEL_ITEM = "Goes somewhere. Not here.",
        YOTD_OAR = "Good for clawing at ocean.",
        YOTD_ANCHOR = "Keeps your boat on a full stomach.",
        YOTD_ANCHOR_ITEM = "Heavy.",
        MAST_YOTD = "Made of fur or scales?",
        MAST_YOTD_ITEM = "For sea.",
        BOAT_BUMPER_YOTD = "Has a good bite.",
        BOAT_BUMPER_YOTD_KIT = "Give a boat a summer coat.",
        BOATRACE_SEASTACK = "Don't let the boat sniff that.",
        BOATRACE_SEASTACK_THROWABLE_DEPLOYKIT = "Hope your boat is hungry.",
        BOATRACE_SEASTACK_MONKEY = "Don't let the boat sniff that.",
        BOATRACE_SEASTACK_MONKEY_THROWABLE_DEPLOYKIT = "Hope your boat is hungry.",
        MASTUPGRADE_LAMP_YOTD = "This Dragonfly won't burn a boat.",
        MASTUPGRADE_LAMP_ITEM_YOTD = "Little, little light.",
        WALKINGPLANK_YOTD = "(sniff) Still sinks.",
        CHESSPIECE_YOTD = "Looks like a friend. Or enemy. Sometimes.",

        -- Rifts / Meta QoL

        HEALINGSALVE_ACID = "Was told to stop getting saliva all over?",

        BEESWAX_SPRAY = "Ghrrrk! Smell too strong! Bleugh!",
        WAXED_PLANT = "Now can use this as a scratching post.", -- Used for all waxed plants, from farm plants to trees.

        STORAGE_ROBOT = {
            GENERIC = "Where are you smelling?",
            BROKEN = "(snifff) Doesn't smell good.",
        },

        SCRAP_MONOCLEHAT = "Don't need to see that much.",
        SCRAPHAT = "Is this using your head?",

        FENCE_JUNK = "Always looking for a good scratch post!",
        JUNK_PILE = "Let's take a nose-dive. (snifff)",
        JUNK_PILE_BIG = "(sniff) Know that smell. Smells like hibernation.",

        ARMOR_LUNARPLANT_HUSK = "Grrrr. Leaves a thorn on my nose.",

        -- Meta 4 / Ocean QoL

        OTTER = "Grrr. Hoarding all the goods for the winter.",
        OTTERDEN = {
            GENERIC = "Won't last the winter with that stash.",
            HAS_LOOT = "Shouldn't disturb one's stash...unless.",
        },
        OTTERDEN_DEAD = "Always saying not to disturb my stash.",

        BOAT_ANCIENT_ITEM = "Old bear of a boat, already seeing gray hairs.",
        BOAT_ANCIENT_CONTAINER = "Always safer near your winter stash.",
        WALKINGPLANK_ANCIENT = "It might snap under my weight.",

        ANCIENTTREE_SEED = "No smell to sniff. Yet.",

        ANCIENTTREE_GEM = {
            GENERIC = "Lots of different smells here. No? just two.",
            STUMP = "Slammed into the ground.",
        },

        ANCIENTTREE_SAPLING_ITEM = "Will go on long journey to find the right spot to rest.",

        ANCIENTTREE_SAPLING = {
            GENERIC = "Will be fully grown after a long nap.",
            WRONG_TILE = "Bad spot. Must search better.",
            WRONG_SEASON = "Hmph. Not its season.",
        },
 
        ANCIENTTREE_NIGHTVISION = {
            GENERIC = "Your hair doesn't make you scary.",
            STUMP = "Lost its entire coat.",
        },

        ANCIENTFRUIT_GEM = "Something smells deep inside.",
        ANCIENTFRUIT_NIGHTVISION = "Urge...to...bite!!!",
        ANCIENTFRUIT_NIGHTVISION_COOKED = "Taste explodes in mouth.",

        BOATPATCH_KELP = "Not good patch.",

        CRABKING_MOB = "You will be slammed. Badly.",
        CRABKING_MOB_KNIGHT = "Tastiest under the shell. Mmm.",
        CRABKING_CANNONTOWER = "Stand back. These eggs will crack.",
        CRABKING_ICEWALL = "Grrr. Will slam through it!",

        SALTLICK_IMPROVED = "Just a few licks. They won't know.",

        OFFERING_POT =
        {
            GENERIC = "GRRRR!!! Where's the food!?",
            SOME_KELP = "Grrrr...not very good food.",
            LOTS_OF_KELP = "Wish it were fish. Or berries. Or nuts.",
        },

        OFFERING_POT_UPGRADED =
        {
            GENERIC = "GRRRR!!! Where's the food!?",
            SOME_KELP = "Grrrr...not very good food.",
            LOTS_OF_KELP = "Wish it were fish. Or berries. Or nuts.",
        },

        MERM_ARMORY = "Not Bearger's territory. Better not be hiding food.",
        MERM_ARMORY_UPGRADED = "Not Bearger's territory. Better not be hiding food.",
        MERM_TOOLSHED = "Doesn't smell like food. Don't care.",
        MERM_TOOLSHED_UPGRADED = "Doesn't smell like food. Don't care.",
        MERMARMORHAT = "Good for the skull.",
        MERMARMORUPGRADEDHAT = "Good for the skull.",
        MERM_TOOL = "Hmm. Tools are good idea. Will remember this.",
        MERM_TOOL_UPGRADED = "Hmm. Tools are good idea. Will remember this.",

        WURT_SWAMPITEM_SHADOW = "GRRRR. Stay away from my good spots.",
        WURT_SWAMPITEM_LUNAR = "GRRRR. Stay away from my good spots.",

        MERM_SHADOW = "Has even less hairs than before. Sad.",
        MERMGUARD_SHADOW = "Has even less hairs than before. Sad.",

        MERM_LUNAR = "Grrrrrr. Keep away.",
        MERMGUARD_LUNAR = "Grrrrrr. Keep away.",
    },

    DESCRIBE_GENERIC = "It is... food?",
    DESCRIBE_TOODARK = "Did eyes shed too!? GRRRR!!",
    DESCRIBE_SMOLDERING = "(sniff sniff) It is... smoky!",
	
	DESCRIBE_PLANTHAPPY = "Going good.",
    DESCRIBE_PLANTVERYSTRESSED = "Plant doesn't feel so good.",
    DESCRIBE_PLANTSTRESSED = "It's not feeling good.",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "Grrr... too many weeds bothering it.",
    DESCRIBE_PLANTSTRESSORFAMILY = "Needs a hibernating partner.",
	DESCRIBE_PLANTSTRESSOROVERCROWDING = "Plants need less of plants.",
    DESCRIBE_PLANTSTRESSORSEASON = "It can't hibernate in this season.",
    DESCRIBE_PLANTSTRESSORMOISTURE = "Needs water.",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "Better soil, better plants.",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "Must say... words.",
	
    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "MMmm! Don't look at me while I'm eating.",
		WINTERSFEASTFUEL = "Tummy feels happy! Graaaauh!",
    },
}
