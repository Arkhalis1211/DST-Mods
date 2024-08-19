return{
	ACTIONFAIL =
	{
	    APPRAISE = 
        {
            NOTNOW = "Can't you make time for your queen...?",
        },
        REPAIR =
        {
            WRONGPIECE = "It doth not claim this place!",
        },
        BUILD =
        {
            MOUNTED = "I place naught!",
            HASPET = "I've enough for an army of one!",
			TICOON = "A pity! My current escort is making haste!",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "Thou shalt provide thy hair scales!",
			GENERIC = "I shave naught.",
			NOBITS = "No further scales are to be shed!",
--fallback to speech_wilson.lua             REFUSE = "PLACEHOLDER",
            SOMEONEELSESBEEFALO = "Away with your foul beast! Mine is much prettier!",
		},
		STORE =
		{
			GENERIC = "Who's to stop my occupation of thy hoard?",
			NOTALLOWED = "Thou shall allow thy Queen to posses this treasure!",
			INUSE = "Provide upon me thy wealth thou possess!",
            NOTMASTERCHEF = "One should simply prefer to breath thy flames.",
		},
        CONSTRUCT =
        {
            INUSE = "Construct, and for what?",
            NOTALLOWED = "This is no place for such waste!",
            EMPTY = "I can only create so much with a bit of ash!",
            MISMATCH = "Tsk! Impart upon thy proper paraphernalia to me!",
            NOTREADY = "I've more important matters to attend to...!",
        },
		RUMMAGE =
		{	
			GENERIC = "Who's to stop my occupation of thy hoard?",
			INUSE = "I'll claim the treasure you seek and claim it well!",
            NOTMASTERCHEF = "One should simply prefer to breath thy flames.",
		},
		UNLOCK =
        {
            WRONGKEY = "Woe upon me! For wrong is thy key!",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "Woe upon me! For wrong is thy key!",
        	KLAUS = "The guard of my future hoard awaits!",
			QUAGMIRE_WRONGKEY = "Woe upon me! For wrong is our key!",
        },
		ACTIVATE = 
		{
			LOCKED_GATE = "There is nary a place that cannot place me upon it!!",
			HOSTBUSY = "Zrt! Pay attention to me, your queen!",
            CARNIVAL_HOST_HERE = "Where's that foul being of feathers and cotton gone?",
            NOCARNIVAL = "Looks like it is nigh time to burn this place...!",
			EMPTY_CATCOONDEN = "Thou cannot hide thy riches from me...!",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDERS = "Perhaps I could use some more feline subjects!",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDING_SPOTS = "There is nowhere to hide, of course!",
			KITCOON_HIDEANDSEEK_ONE_GAME_PER_DAY = "Enough! I deserve a queenly rest upon my hoard.",
            MANNEQUIN_EQUIPSWAPFAILED = "Only the finest refineries for this stuffed being!",
            PILLOWFIGHT_NO_HANDPILLOW = "Adorn your queen with the finest silk pillow-being!",
            NOTMYBERNIE = "Zrt! What use is a being that doth not listen...?",
            NOTMERM = "Have they no respect for a proper queen...?",
		},
		OPEN_CRAFTING = 
		{
            PROFESSIONALCHEF = "One should simply prefer to breath thy flames.",
			SHADOWMAGIC = "What dark secrets doth thou hold...?",
			FLOODED = "The horrors of being soaked. One shudders at such a fate!",
		},
        COOK =
        {
            GENERIC = "I shall burn thine useless tools before me!",
            INUSE = "Bestow upon me a meal of ash, or perish by my flames!",
            TOOFAR = "My flames are short of reach!",
        },
	    START_CARRAT_RACE =
        {
            NO_RACERS = "I race not!",
        },
		DISMANTLE =
		{
			COOKING = "Hot and sizzling. Like a Queen of flames!",
			INUSE = "Your Queen has arrived to take this creation to her hoard!",
			NOTEMPTY = "Zrrt! I cannot take a mess to my hoard!",
        },
        FISH_OCEAN =
		{
			TOODEEP = "Bring the ocean closer to my compound eyes!",
		},
        OCEAN_FISHING_POND =
		{
			WRONGGEAR = "No tool is extravagant enough for the simplest of doings!",
		},

        GIVE =
        {
            GENERIC = "Not all can be placed!",
            DEAD = "Alas! What shame thy treasure is to be the Queen's! Bzrrt!",
            SLEEPING = "O, what riches may await thou!",
            BUSY = "Doth thou protest?",
            ABIGAILHEART = "Nary a treasure of a soul is to be found within!",
            GHOSTHEART = "This pleasure is fit only for the once-living beings!",
            NOTGEM = "Only a pristine treasure is duly fit for this throne!",
            WRONGGEM = "A treasure of its own, but not of this throne!",
            NOTSTAFF = "I refuse to part with any treasure which is mine!",
            MUSHROOMFARM_NEEDSSHROOM = "Mush upon thee!",
            MUSHROOMFARM_NEEDSLOG = "Whilst to me it is of no use, this home requires spruce...!",
			MUSHROOMFARM_NOMOONALLOWED = "Such pitiful mushrooms! Perhaps they require a log of gold...?",
            SLOTFULL = "Make way for the Queen's proper ruling! Or be it flames?",
            FOODFULL = "Make haste with thy meal or I shall change my vehement mind.",
            NOTDISH = "It is not worthy of even being singed to ash.",
            DUPLICATE = "Treasure already beknownst to me and my hoard.",
            NOTSCULPTABLE = "This is best put to ash!",
            NOTATRIUMKEY = "Doth this be the wrong key?",
            CANTSHADOWREVIVE = "Unto dust shalt thee not return.",
            WRONGSHADOWFORM = "Thou hast to haste with its return!",
            NOMOON = "I gaze upon nothing but ash.",
			PIGKINGGAME_MESSY = "The kingdom has been overrun with ruin! And a bit of stray grass!",
			PIGKINGGAME_DANGER = "Be on guard, swine-d beasts!",
			PIGKINGGAME_TOOLATE = "I tire of this for now...",
			CARNIVALGAME_INVALID_ITEM = "No dragon is as picky as you...!",
			CARNIVALGAME_ALREADY_PLAYING = "Playing without a queen? Zrt! Worst-luck!",
			SPIDERNOHAT = "Zrt! I'll not waste my riches on a lesser bug!",
			TERRARIUM_REFUSE = "Away with this, for it is not worthy!",
            TERRARIUM_COOLDOWN = "Trying my patience, are you?",
            NOTAMONKEY = "Your queenly dialect leaves much to be desired...!",
            QUEENBUSY = "Doth thou make all your queenly guests wait?",
			NOTMOTHER = "Disgusting! I shall raise my own kingdom of servants!",
        },
        GIVETOPLAYER =
        {
            FULL = "Never one too full to take upon my wealth!",
            DEAD = "Doth my riches entice thee to perish?",
            SLEEPING = "Hear-ye! Hear-ye! Attention to thy Queen of flames!",
            BUSY = "Hear-ye! Gold! There is no dragon-spell, for I lie not!",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "Never one too full to take upon my hoarded wealth!",
            DEAD = "Doth my riches bore thee to death? Shame.",
            SLEEPING = "Hear-ye! Hear-ye! Attention to thy Queen of Riches!",
            BUSY = "Doth thou protest the riches in which you desire?",
        },
        WRITE =
        {
            GENERIC = "Words mean nought to me.",
            INUSE = "What words possibly mean more than me and my wealth?",
        },
        DRAW =
        {
            NOIMAGE = "Naught to draw!",
        },
        CHANGEIN =
        {
            GENERIC = "Who is one to lock away luxury wares!",
            BURNING = "To ashes, to ashes it falls!! Bzzrt!",
            INUSE = "Spare no expenses on luxury, being.",
			NOTENOUGHHAIR = "Blech! Thou require more hair!",
			NOOCCUPANT = "Your queen needs a jester!",
        },
        ATTUNE =
        {
            NOHEALTH = "Your Queen falters too much at the seams...",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "Fight for mine amusement!",
            INUSE = "I commandeer thy beast!",
			SLEEPING = "Up, up! Riches await!",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "Fight for mine amusement!",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "What doth a Queen not know, Bzrrt! ...For I'm a rightful Queen, after-all!",
            CANTLEARN = "Zrrt! Such knowledge is beneath me.",
            --MapRecorder/MapExplorer
            WRONGWORLD = "Points to places yet conquered.",
			--MapSpotRevealer/messagebottle
			MESSAGEBOTTLEMANAGER_NOT_FOUND = "Not for this keep!",--Likely trying to read messagebottle treasure map in caves

			STASH_MAP_NOT_FOUND = "This treasure map makes not a lick of sense!",-- Likely trying to read stash map  in world without stash
        },
        WRAPBUNDLE =
        {
            EMPTY = "Nary but a wrap.",
        },
        PICKUP =
        {
			RESTRICTION = "A ruler plays naught with this!",
			INUSE = "For my amusement, do a twirl of the tool!",
			NOTMINE_YOTC =
            {
                "You art no carrat of mine own!",
                "Doth thou bite thy thumb at me?",
            },
            FULL_OF_CURSES = "A queen cannot be tricked with shiny things twice! Perhaps this time... No!",
        },
        SLAUGHTER =
        {
            TOOFAR = "Mere steps away from my fiery breath.",
        },
        REPLATE =
        {
            MISMATCH = "If not this, then ashes!", 
            SAMEDISH = "A plate is its place to be.", 
        },
        SAIL =
        {
        	REPAIR = "The condition is admirable.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "Do not splash me, for I am a beast of fire!",
            BAD_TIMING1 = "These claws are not for such frivolous activities...",
            BAD_TIMING2 = "Why you...! Zrrt!",
        },
        LOWER_SAIL_FAIL =
        {
            "Like the wings of which I wish I had!",
            "Like a hurricane of wings!",
            "I command for thy compliance!",
        },
        BATHBOMB =
        {
            GLASSED = "Like flame to dust!",
            ALREADY_BOMBED = "Like a sizzling bath.",
        },
		GIVE_TACKLESKETCH =
		{
			DUPLICATE = "Treasure beknownst to me and my hoard.",
		},
		COMPARE_WEIGHABLE =
		{
			FISH_TOO_SMALL = "What say you, inferior fish?",
            OVERSIZEDVEGGIES_TOO_SMALL = "What say you, inferior plant?",
		},
		STEER_BOAT = --SWC
		{
			NOTSURFER = "I yell loudly to move, but thou doth not listen!",
		},
		PLANTREGISTRY_RESEARCH_FAIL =
        {
            GENERIC = "Away with this! I need not to hear more of it!",
			FERTILIZER = "I shall not waste more time with this filth!",
        },
        FILL_OCEAN =
        {
            UNSUITABLE_FOR_PLANTS = "Bzrt! Can you truly blame them!",
        },
        POUR_WATER =
        {
            OUT_OF_WATER = "At last, no more drops.",
        },
        POUR_WATER_GROUNDTILE =
        {
            OUT_OF_WATER = "Nary even a drip!",
        },
		        USEITEMON =
        {
            --GENERIC = "I can't use this on that!",

            --construction is PREFABNAME_REASON
            BEEF_BELL_INVALID_TARGET = "Zrt! I would never!",
            BEEF_BELL_ALREADY_USED = "O, being of beef! Don't you want a proper queen to follow?",
            BEEF_BELL_HAS_BEEF_ALREADY = "I have enough hairy and foul beasts following me around.",
        },
        HITCHUP =
        {
            NEEDBEEF = "Why must I tame fouls beasts that reek?",
            NEEDBEEF_CLOSER = "Foul beast o' mine! Come hither!",
            BEEF_HITCHED = "Perhaps I could keep it locked up.",
			INMOOD = "Quiet down, fool of a beef!",
        },
        MARK = 
        {
            ALREADY_MARKED = "I've selected my prized possession!",
            NOT_PARTICIPANT = "ZRT! Left out your queen in fear of losing, did thou?",
        },
        YOTB_STARTCONTEST = 
        {
            DOESNTWORK = "Pathetic! Don't keep my waiting!",
            ALREADYACTIVE = "Zrt! It's not a contest if I'm not there!",
        },
        YOTB_UNLOCKSKIN = 
        {
            ALREADYKNOWN = "I've seen enough of this treasure!",
        },
        CARNIVALGAME_FEED =
        {
            TOO_LATE = "Foul feed! Fear me!!",
        },
		HERD_FOLLOWERS =
        {
            WEBBERONLY = "Obey me! Zrrt! I'm the queen, am I not!?",
        },
		HARVEST =
        {
            DOER_ISNT_MODULE_OWNER = "Doth thou bite thy bolts at me?",
        },
        PICK =
        {
            NOTHING_INSIDE = "Zrt! A hoard of not but air!",
        },

        HEAL =
        {
            NOT_MERM = "Must it work only on the filthy scales of a merm-being?",
        },
		-- IA / SW
		REPAIRBOAT = 
		{
			GENERIC = "Its condition is admirable.",
		},
		EMBARK = 
		{
			INUSE = "Your queen did not grant permission to sail!",
		},
		-- RUNTS
		SEW =
        {
            NOTWEARGER = "What being would want embellishments of such ugly hairs...?",
        },
		WFLYSUMMON =
        {
            CANTSUMMON = "I simply couldn't stomach another...",
			CANTSUMMONEGG = "Speak to me...! Alas.",
        },
		WFLYCOOK =
        {
            CANTBURN = "Zrt! A pity, for I cannot stomach burning it...!",
        },
	},
	ANNOUNCE_CANNOT_BUILD =
	{
		NO_INGREDIENTS = "As always, I require more to add to my hoard of treasures.",
		NO_TECH = "I've yet to come up with an idea for that!",
		NO_STATION = "I must fly over to a hoard they call a 'workstation'!",
	},
	ACTIONFAIL_GENERIC = "That of which, I cannot do.",
	ANNOUNCE_BOAT_LEAK = "Woe upon our vessel!",
	ANNOUNCE_BOAT_SINK = "I cannot be extinguished, for I refuse!",
	ANNOUNCE_DIG_DISEASE_WARNING = "My hoard does not take kindly to bitter blight!",
	ANNOUNCE_PICK_DISEASE_WARNING = "Zrt! A scent most unpleasant.",
	ANNOUNCE_ADVENTUREFAIL = "No! Till kingdom come I shall not end my conquest for my riches!",
    ANNOUNCE_MOUNT_LOWHEALTH = "What is weary is of no use to me.",

    --wragonfly specific
    ANNOUNCE_ENRAGED = 
	{
		"BZRRRT!! I am fire! I am death!!",
		"Zrt, revenge! Revenge! I will show you revenge!",
		"You will burn! ZRRRT!",
	},
	ANNOUNCE_ENRAGED_OVER = 	
	{
		"Doth my temper get the best of me...?",
		"Zrrrt. I kill where I wish and none resist...",
		"Bzrt... Mine head hast cooled...",
	},
	ANNOUNCE_ENRAGED_EXTINGUISHED = 	
	{
		"ZRT! My flame, perished!!",
		"My flame, extinguished!",
		"Agony! My flame cut short...!",
	},
	ANNOUNCE_ENRAGE_CD_OVER = 	
	{
		"My flame ignites within once more!",
		"Mine head is ready to burn!",
		"Bzrt! My flames flicker back!",
	},

	ANNOUNCE_BEES = "Come forth, bees!",
	ANNOUNCE_BOOMERANG = "Foul being!",
	ANNOUNCE_CHARLIE = "Where are you, thief in the shadows!",
	ANNOUNCE_CHARLIE_ATTACK = "ZRRT! I've been bitten, but not of mine own tooth!",
	ANNOUNCE_COLD = "Brrrrzt! The light inside me dwells in ice...",
	ANNOUNCE_HOT = "I am simmering...!",
	ANNOUNCE_CRAFTING_FAIL = "As always, I require more for my hoard of treasures.",
	ANNOUNCE_DEERCLOPS = "A loud clomping befalls us!",
	ANNOUNCE_CAVEIN = "What rains upon our heads?! Is it gold?",
	ANNOUNCE_ANTLION_SINKHOLE = 
	{
		"My clawed toes betray me!",
		"A crater the size of my kin!",
		"What attempts to crack beneath me?",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "I resent this, but I shall resent you more if I don't.",
        "A worthless piece of my treasure hoard, do not crack a smile.",
        "It should be you who pays tribute...!",
	},
	ANNOUNCE_SACREDCHEST_YES = "Of course, it's wise to bestow upon me any treasure!",
	ANNOUNCE_SACREDCHEST_NO = "You will hand over your riches whether you like me or not!",
    ANNOUNCE_DUSK = "A darkness is coming. It will spread to every corner of this land.",

	ANNOUNCE_EAT =
	{
		GENERIC = "Best with ash!",
		PAINFUL = "Zrt! Is that a chip of my fang?",
		SPOILED = "Ash is ash regardless of time.",
		STALE = "Ashes to ashes!",
		INVALID = "I cannot turn it to ash, for I cannot consume!",
        YUCKY = "I cannot singe it to ash, for it is not worthy!",
    },
    
    ANNOUNCE_ENCUMBERED =
    {
        "Zrrt.... Zrrrt.",
        "Bzrrr...",
        "Bzrrrt... hoff hoff.",
        "Hoff... hoff...",
        "Grrrr... Zrrt...!",
        "Do not... touch me. ...Do not glare at my treasure.",
        "Every treasure... is worth it...",
        "What I do... for my keep...",
        "To my dragon's den... it goes...!",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING = 
    {
		"Flee! Flee!",
		"Come on out, come on out!",
		"The show is going to begin! Brrzt!",
	},
    ANNOUNCE_RUINS_RESET = "From ashes to ashes they rise again!",
    ANNOUNCE_SNARED = "Zrrt! You cannot imprison me!!",
	ANNOUNCE_SNARED_IVY = "Away with your foul greenery! Begone!",
    ANNOUNCE_REPELLED = "You cannot repel me from thy treasure!",
	ANNOUNCE_ENTER_DARK = "A darkness has risen throughout all mine eyes!",
	ANNOUNCE_ENTER_LIGHT = "A step into light!",
	ANNOUNCE_FREEDOM = "Free from the throne which claimed me whole!",
	ANNOUNCE_HIGHRESEARCH = "The treasurous gold of mine own mind!",
	ANNOUNCE_HOUNDS = "A bark and roar!",
	ANNOUNCE_WORMS = "I feel your air. Where are you?",
    ANNOUNCE_ACIDBATS = "I hear the shrill weeps of beings so pitiful...!",
	ANNOUNCE_HUNGRY = "The fire in my stomach fades.",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Beast! I smell you, I hear your breath, I feel your air!",
	ANNOUNCE_HUNT_LOST_TRAIL = "No, no! No trail!",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "The worst, moistest kind of weather! Zrrt!",
    ANNOUNCE_HUNT_START_FORK = "I feel the air of riches this away! Make haste!",
    ANNOUNCE_HUNT_SUCCESSFUL_FORK = "You're mine! Never have any doubt...!",
    ANNOUNCE_HUNT_WRONG_FORK = "Zrt. One of my soon-to-be dead followers must have led us astray!",
    ANNOUNCE_HUNT_AVOID_FORK = "Let's conquer this kingdom while we're at it!",
	ANNOUNCE_INV_FULL = "I must posses every last treasure! I cannot part with any!",
	ANNOUNCE_KNOCKEDOUT = "My head, it rings like a bejewelled crisp bell!",
	ANNOUNCE_LOWRESEARCH = "Not much golden knowings to be grasped.",
	ANNOUNCE_MOSQUITOS = "You cannot posses my royal blood!",
    ANNOUNCE_NOWARDROBEONFIRE = "I worry not, for golden clothes cannot burn!",
    ANNOUNCE_NODANGERGIFT = "You shall not hold me back from my riches!",
    ANNOUNCE_NOMOUNTEDGIFT = "Back, mounted beast! Riches await me!",
	ANNOUNCE_NODANGERSLEEP = "My ommatidia tire of you all.",
	ANNOUNCE_NODAYSLEEP = "I rest naught for the day!",
	ANNOUNCE_NODAYSLEEP_CAVE = "I cannot sleep, for worms will eat me.",
	ANNOUNCE_NOHUNGERSLEEP = "I must rekindle the fire within...",
	ANNOUNCE_NOSLEEPONFIRE = "Who else here doth not rest on fire like me?",
	ANNOUNCE_NOSLEEPHASPERMANENTLIGHT = "I love the shine of gold in my eyes, nay a pathetic bucket of bolt's!",
	ANNOUNCE_NODANGERSIESTA = "Rest does not triumph over important matters.",
	ANNOUNCE_NONIGHTSIESTA = "I require a proper bed of gold!",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "I see no gold afoot!",
	ANNOUNCE_NOHUNGERSIESTA = "I must rekindle my fiery stomach...",
	ANNOUNCE_NODANGERAFK = "This is no time for glittering mine eyes with bronze!",
	ANNOUNCE_NO_TRAP = "Caught!",
	ANNOUNCE_PECKED = "Curse upon my targeted broad eyes!",
	ANNOUNCE_QUAKE = "How the earth trembles in fear!",
	ANNOUNCE_RESEARCH = "My mind, vast as mine hoard of riches!",
	ANNOUNCE_SHELTER = "I hide not from sun nor rain!",
	ANNOUNCE_THORNS = "You cannot pierce mine own scales!",
	ANNOUNCE_BURNT = "Crisp! Refreshing!",
	ANNOUNCE_TORCH_OUT = "My claws fade from the light.",
	ANNOUNCE_THURIBLE_OUT = "Gone, but where's the ash!",
	ANNOUNCE_FAN_OUT = "Feathers are no match to these callous claws.",
    ANNOUNCE_COMPASS_OUT = "These callous claws cannot keep hold of such trinkets.",
	ANNOUNCE_TRAP_WENT_OFF = "No! Not of my doing!",
	ANNOUNCE_TREASURE = "BZZRT! Might that be riches I hear waiting to be claimed?",
	ANNOUNCE_UNIMPLEMENTED = "I've yet to see this as a part of my treasure.",
	ANNOUNCE_WORMHOLE = "I emerge from whence I came!",
	ANNOUNCE_TOWNPORTALTELEPORT = "Dust embarks in my scales.",
	ANNOUNCE_CANFIX = "\nA casing of fire is best put here!",
	ANNOUNCE_ACCOMPLISHMENT = "Gold, riches, fortune!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "My treasure trove grows, grows! Brrrzt!",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "I've run out of the richest in fertilizers!",
	ANNOUNCE_TOOL_SLIP = "My claws! O, how my claws sizzle!",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "Thou shalt not fry this fly!!",
	ANNOUNCE_TOADESCAPING = "Flee, but your treasure shall be claimed in mine own name!",
	ANNOUNCE_TOADESCAPED = "Come back out. Don't be shy!",

	ANNOUNCE_DAMP = "I can hear the sizzling of steam off my scales.",
	ANNOUNCE_WET = "The air around me is steamed ablaze!",
	ANNOUNCE_WETTER = "My scales have begun to soak and simmer my light!",
	ANNOUNCE_SOAKED = "My fire is drenched, my claws dripping! ...You have bested me!",

	ANNOUNCE_WASHED_ASHORE = "Hoff-hoff! The water tortures the light inside...!",

    ANNOUNCE_DESPAWN = "I see the bright, bright shine of a diamond!",
	ANNOUNCE_BECOMEGHOST = "oOooOo!!",
	ANNOUNCE_GHOSTDRAIN = "My mind is is cracking at the seams, like an old silver chalice...",
	ANNOUNCE_PETRIFED_TREES = "I can hear the cold crisping of trees.",
	ANNOUNCE_KLAUS_ENRAGE = "Run for your lives! There is nowhere to hide!",
	ANNOUNCE_KLAUS_UNCHAINED = "It has shed its shiny glistening prison! Mine!",
	ANNOUNCE_KLAUS_CALLFORHELP = "Cowards, your guards cannot save you from my wrath!",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "I gleam a shining trace of treasure!",
		GLASS_LOW = "Come to me, treasure! Come, come!",
		GLASS_REVEAL = "Your precious presence is now in my possession!",
		IDOL_MED = "I gleam a shining trace of treasure!",
		IDOL_LOW = "Come to me, treasure! Come, come!",
		IDOL_REVEAL = "Your precious presence is now in my possession!",
		SEED_MED = "I gleam a shining trace of treasure!",
		SEED_LOW = "Come to me, treasure! Come, come!",
		SEED_REVEAL = "Your precious presence is now in my possession!",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "Ah, ah! Do not curl my scales, fiends!",
	ANNOUNCE_BRAVERY_POTION = "Magma flows through my scales!",
	ANNOUNCE_MOONPOTION_FAILED = "What say you, moon?",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "I cannot part with my feast! Not a single piece of ash!",
	ANNOUNCE_WINTERS_FEAST_BUFF = "The magma within sparkles with glee!",
	ANNOUNCE_IS_FEASTING = "A feast fit for a Queen and no less!",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "The shimmer in mine eye has sizzled back.",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "My fiery heart beats for thee...!",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "No protector of mine hoard shall perish by my claws.",
    ANNOUNCE_REVIVED_FROM_CORPSE = "A queen is not afraid to fail.",

    ANNOUNCE_FLARE_SEEN = "A glimmer of fire embarks in the sky!",
	ANNOUNCE_MEGA_FLARE_SEEN = "A bright gleam in the sky beckons me!",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Something dare approaches me.",

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "Mere ash-fodder...",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "I must use my breath if I want ashes for me!",
    QUAGMIRE_ANNOUNCE_LOSE = "I do not lose, I merely gain!",
    QUAGMIRE_ANNOUNCE_WIN = "Brzzt! Let the riches pour upon me!",

    ANNOUNCE_ROYALTY =
    {
        "A mere example of what thy will be doing for me!",
        "I am practicing a stretch...",
        "All riches and wealth are to be a part of my den. Do not forget it.",
    },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "My scales are glowing with a new serving of sizzle!",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "I am fierce! I kill where I wish, when I wish!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "Bzrrrt! My armor is like tenfold shields!",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "The jitter in my claws in unrivaled!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "Free from the wetness that holds me back!",
	ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE   = "Bzrt! A queen never sleeps...!",
    
    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "Zrt. I cannot beat my original heat.",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "I've enough of the bathing of blood for a time.",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "My scales are dull, due for sharpening.",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "A nap upon my wealth is due...",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "No! The moisture creeps upon my scales once more and steams me!",
	ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE   = "Zrrrt... Time for a nap on my bed of gold.",
    
	ANNOUNCE_OCEANFISHING_LINESNAP = "A clawed cut!",
	ANNOUNCE_OCEANFISHING_LINETOOLOOSE = "No thin line is match for lines like scales.",
	ANNOUNCE_OCEANFISHING_GOTAWAY = "You cannot escape my callous claws for long!",
	ANNOUNCE_OCEANFISHING_BADCAST = "T'was merely a farce.",
	ANNOUNCE_OCEANFISHING_IDLE_QUOTE = 
	{
		"I await your riches, fishes.",
		"What I do for gems and gold that is glistening, I've been told!",
		"I could use a bed of golden fish, mayhap gems for eyes.",
		"Toss me a coin. Make it golden.",
	},

	-- SHIPWRECKED / ISLAND
	ANNOUNCE_MAGIC_FAIL = "It weeps, for it has nothing more to give me!",
	ANNOUNCE_SHARX = "What dares buzz about me?",
	ANNOUNCE_TREASURE = "Glistening gold cries out to its rightful queen!",
	ANNOUNCE_TREASURE_DISCOVER = "Such glorious riches to claim as mine own!",
	ANNOUNCE_MORETREASURE = "Piles upon piles of riches rain upon me!",
	ANNOUNCE_OTHER_WORLD_TREASURE = "Bzrt! Another kingdom to claim riches from!",
	ANNOUNCE_OTHER_WORLD_PLANT = "This pathetic heap dost not belong here!",

	ANNOUNCE_IA_MESSAGEBOTTLE =
	{
		"Naught but peasant hearsay!",
	},
	ANNOUNCE_VOLCANO_ERUPT = "This realm quakes with rage! Bzrrrt!",
	ANNOUNCE_MAPWRAP_WARN = "Doth I be steaming again...?",
	ANNOUNCE_MAPWRAP_LOSECONTROL = "My compound eyes are seeing doubles of doubles!",
	ANNOUNCE_MAPWRAP_RETURN = "I think I felt something brush against my leg...",
	ANNOUNCE_CRAB_ESCAPE = "Thou cannot hide from a broiling!",
	ANNOUNCE_TRAWL_FULL = "This netted kingdom has been conquered!",
	ANNOUNCE_BOAT_DAMAGED = "Incompetence...!",
	ANNOUNCE_BOAT_SINKING = "Zrt! Your queen commands thee to stop leaking!",
	ANNOUNCE_BOAT_SINKING_IMMINENT = "ZRT! Get this foul liquid death away from MEEEE!!!",
	ANNOUNCE_WAVE_BOOST = "Witness my wings cutting through air!",

	ANNOUNCE_WHALE_HUNT_BEAST_NEARBY = "I can feel your air...!",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL = "Zrt! Merely a fluke!",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL_SPRING = "The sea boils over in rage!",
	--

--	ANNOUNCE_WEIGHT = "PLACEHOLDER",
	ANNOUNCE_WEIGHT_HEAVY  = "Weight: {weight}\nA whole dragon's keep of fish!",

	ANNOUNCE_WINCH_CLAW_MISS = "ZZRT! My coin, snatched!",
	ANNOUNCE_WINCH_CLAW_NO_ITEM = "No gold! No silver! Why bother!!",

	ANNOUNCE_WEAK_RAT = "Thou art weak and soft without scales!",
    ANNOUNCE_CARRAT_START_RACE = "Get me my rightful gold!",
    ANNOUNCE_CARRAT_ERROR_WRONG_WAY = {
        "Zrt! The gold is this way!",
        "Zrrrt! I'll have you seared if you do not bring back gold!",
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = "You will sleep not! Get my gold!",    
    ANNOUNCE_CARRAT_ERROR_WALKING = "Zrrrt. Must I get all the gold myself?",    
    ANNOUNCE_CARRAT_ERROR_STUNNED = "Zzrt! If only thou had scales!",
	
	ANNOUNCE_POCKETWATCH_PORTAL = "ZRT! Hapless and vile being! Thou shalt pay for what my bum has just endured!",

	ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = "Bzrrt! Visions of riches? For me!?",
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = "Zrt. Hoard filler.",
    ANNOUNCE_ARCHIVE_NO_POWER = "O, what a pity, for I care not if it runs!",
    ANNOUNCE_PLANT_RESEARCHED =
    {
        "Tinder, burnable tinder flocks to my mind!",
    },

    ANNOUNCE_PLANT_RANDOMSEED = "I care not, I know not!",
	ANNOUNCE_FERTILIZER_RESEARCHED = "Zrt! I care not for thy foul meals of manure!",

	ANNOUNCE_FIRENETTLE_TOXIN = 
	{
		"Zrt-zrt-zrt! What tingles!",
		"ZRT! Yes, this fire! This pain!",
	},
	ANNOUNCE_FIRENETTLE_TOXIN_DONE = "I might enjoy a bath of ash after that...!",

	ANNOUNCE_TALK_TO_PLANTS = 
	{
        "It might be funny if I were to sneeze and end you all!",
        "Art thou growing properly, pathetic whelps?",
		"I await your rich and ashen treasures. Nay for long!",
        "I care not to control my breath around thee!",
        "Growing? No? Then perish!",
	},

	ANNOUNCE_KITCOON_HIDEANDSEEK_START = "Flee! Flee! Run for your lives! There is nowhere to hide!",
	ANNOUNCE_KITCOON_HIDEANDSEEK_JOIN = "Thou shalt not seek sniveling beings without me!",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND = 
	{
		"You're mine now!",
		"There you are, thief in the shadows!",
		"No one hides from a dragon!",
		"Bzrt! Look what we have here!",
	},
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_ONE_MORE = "Come out, come out! All your friends are forfeit!",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE = "Now what shall I do with you...?",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE_TEAM = "Let thee decide, {name}. Now, choose!",
	ANNOUNCE_KITCOON_HIDANDSEEK_TIME_ALMOST_UP = "One doesn't rush a dragon's search! Zrrt!",
	ANNOUNCE_KITCOON_HIDANDSEEK_LOSEGAME = "Clearly, they were shaken by the sight of me!",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR = "My blood, yes, my blood! It tells me they're no further.",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR_RETURN = "I can hear them wriggling once again.",
	ANNOUNCE_KITCOON_FOUND_IN_THE_WILD = "Bzrt! I love it when I catch stragglers!",

	ANNOUNCE_TICOON_START_TRACKING	= "He must have a hint of dragon in his blood?",
	ANNOUNCE_TICOON_NOTHING_TO_TRACK = "Never let a haired-beast do the searching!",
	ANNOUNCE_TICOON_WAITING_FOR_LEADER = "I shall humor him!",
	ANNOUNCE_TICOON_GET_LEADER_ATTENTION = "Fine, I shall follow.",
	ANNOUNCE_TICOON_NEAR_KITCOON = "I know that glimmer in his eyes! Close!",
	ANNOUNCE_TICOON_LOST_KITCOON = "What dragon could have possibly bested us?",
	ANNOUNCE_TICOON_ABANDONED = "Once again, on my own...!",
	ANNOUNCE_TICOON_DEAD = "I must seek another...ready to walk the path to its end!",

	-- YOTB
    ANNOUNCE_CALL_BEEF = "Come hither, fool!",
    ANNOUNCE_CANTBUILDHERE_YOTB_POST = "The judge must be closer so I can burn them red hot!",
    ANNOUNCE_YOTB_LEARN_NEW_PATTERN =  "Bzrt! A fresh treasure just for me!",

    -- AE4AE
    ANNOUNCE_EYEOFTERROR_ARRIVE = "ZRT! You strike fear not! For my eyes are many!",
    ANNOUNCE_EYEOFTERROR_FLYBACK = "They always come crawling back to their queen!",
    ANNOUNCE_EYEOFTERROR_FLYAWAY = "Flee, flee! For I shall haunt thee wherever ye may be!",

    -- PIRATES
    ANNOUNCE_CANT_ESCAPE_CURSE = "O, the ruins that come from a search for wealth!",
    ANNOUNCE_MONKEY_CURSE_1 = "Zrt! Foul atrocities hath befell upon me!",
    ANNOUNCE_MONKEY_CURSE_CHANGE = "What a horrible night to fall under the primate-spell...!",
    ANNOUNCE_MONKEY_CURSE_CHANGEBACK = "My glorious scales, my glorious tail! At long last I return to my true self!",

    ANNOUNCE_PIRATES_ARRIVE = "Of course! No queen is ever safe aboard a ship!",

    ANNOUNCE_OFF_SCRIPT = "Zrt! You dare interrupt our perfect unity? One more slip up and it'll be your head that rolls!",

    ANNOUNCE_COZY_SLEEP = "The flawless rest of a queen upon her hoard! Bzrt!",

	ANNOUNCE_TOOL_TOOWEAK = "Zrt! Who hast dared provide me such second-rate filth!",

    ANNOUNCE_LUNAR_RIFT_MAX = "What a rush of power...!",
    ANNOUNCE_SHADOW_RIFT_MAX = "A delightful air of ruin has washed over me...!",

    ANNOUNCE_SCRAPBOOK_FULL = "My hoard has enough of this drivel.",

    ANNOUNCE_CHAIR_ON_FIRE = "This is luxurious!",

    ANNOUNCE_HEALINGSALVE_ACIDBUFF_DONE = "Another coating of your finest repellent, and make it quick! Bzrt!",

    ANNOUNCE_YOTD_NOBOATS = "Zrt! Bring victory closer to me!",
    ANNOUNCE_YOTD_NOCHECKPOINTS = "Zrt. You're all slacking behind on placing vital checked points!",
    ANNOUNCE_YOTD_NOTENOUGHBOATS = "My court is cluttered, nary bit of room for blood-beings!",

    ANNOUNCE_OTTERBOAT_OUTOFSHALLOWS = "I've begun to feel this pathetic vessel falter...!",
    ANNOUNCE_OTTERBOAT_DENBROKEN = "Destroy one den and the whole town shall fall...!",

	BATTLECRY =
	{
		GENERIC = "I am fire. I am death!",
		PIG = "You will burn!",
		PREY = "Flee! Flee! Run for your life! There is nowhere to hide!",
		SPIDER = "I kill where I wish, when I wish.",
		SPIDER_WARRIOR = "I kill where I wish and none resist!",
		DEER = "Flee! Flee! Run for your lives! There is nowhere to hide.",
	},
	COMBAT_QUIT =
	{
		GENERIC = "I will show you revenge!",
		PIG = "Flee, coward! There is nowhere to hide.",
		PREY = "Come back. Don't be shy!",
		SPIDER = "My claws await you another day!",
		SPIDER_WARRIOR = "My claws will await you...!",
	},

	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "My flames cannot be confined to one world...!",
        MULTIPLAYER_PORTAL_MOONROCK = "It glistens like scales.",
        MOONROCKIDOL = "I will not offer it up, I will not!",
        CONSTRUCTION_PLANS = "Plans, plans. Whatever you may call it, I call it ash.",
		--RoR
		NESTING_WOOSE_ITEM = "Your pathetic kingdom of dirt amuses me not!",
        NESTING_WOOSE = {
            GENERAL = "Your pathetic kingdom of dirt amuses me not!",
            LOW = "Looks like thy pathetic kingdom is in ruin! Bzrt!",
        },
		WOOSE_CAPELET = "These sickly faux-wings make my thunderous wings laugh!",
		WEARGER_HAT = "I shalt not don the crown of stink-beings!",
		WEARGER_BIN = "Alas, poor Bearger has turned to not but a bin for my ash!",
		WEARGER_BED = "Never soft nor sweet-smelling as a bed of gold.",
		WEARGER_RUG = "Beneath me, where thy belongs...!",
		--SW
		SURFBOARD = "My prideful joys are shiny, and lustrous!",
		BOAT_SURFBOARD = "How can she love it? It's not even bronze...!",
		LUCKYHAT = "Faux horns!",
		LUCKYCUTLASS = "A queen only needs her claws!",
		WOODLEGS_BURIEDTREASURE = "Dig it up, quickly! I must know what's within!",
		BOAT_WOODLEGS = "Hisssszt!",
		CANNON_WOODLEGS = "Fire...! Yet it causes rain to pour! How unjust and cruel!",

        ANTLION =
        {
            GENERIC = "You think you can claim this place before me? I think not!",
            VERYHAPPY = "I know the shine of wealth in any eye.",
            UNHAPPY = "Unhappy as you may be, I am happy with the treasure I keep!",
        },
        ANTLIONTRINKET = "One being's treasure is soon to be mine own.",
        SANDSPIKE = "Dust!",
        SANDBLOCK = "Dust unto ash!",
        GLASSSPIKE = "The art of carefully breathing heat!",
        GLASSBLOCK = "I could craft such glitter simply by coughing, if I so desired...",
        ABIGAIL_FLOWER =
        {
            GENERIC ="Red like magma, but cold like mine own blood.",
			LEVEL1 = "It seethes with a passion to be let go.",
			LEVEL2 = "I hear a chanting for ash...!",
			LEVEL3 = "Regal, but little sparkle...! I'll still take it!",

			-- deprecated
            LONG = "Red like magma, but cold like mine own blood.",
            MEDIUM = "It has started to jitter.",
            SOON = "I hear a chanting for ash...!",
            HAUNTED_POCKET = "It seethes with a passion to be let go.",
            HAUNTED_GROUND = "If it sparkled, I would have not let go.",
        },

        BALLOONS_EMPTY = "But I see no sign of bloodshed!",
        BALLOON = "Doth thou air not be hot?",
		BALLOONPARTY = "Let it rain ashes and coals...!",
		BALLOONSPEED =
        {
            DEFLATED = "The makings of a fine dinner.",
            GENERIC = "My wings will soar faster than any useless tool, behold!",
        },
		BALLOONVEST = "My fierce and powerful horns are no match!",
		BALLOONHAT = "My fierce and powerful horns are no match!",

        BERNIE_INACTIVE =
        {
            BROKEN = "Alas, your knight has fallen!",
            GENERIC = "Fit for a bed of golden coin!",
        },

        BERNIE_ACTIVE = "Your puny knight is no match for the breath of a dragon.",
        BERNIE_BIG = "Great hairy knight, I am tempted to defeat you myself!",

		BOOKSTATION =
		{
			GENERIC = "When do I get an entire library dedicated to my visage?",
			BURNT = "Your books are a burning sensation! Hot off the presses! Bzrt!",
		},
        BOOK_BIRDS = "The sky is one of my many domains!",
        BOOK_TENTACLES = "Bring forth the tails of below!",
        BOOK_GARDENING = "It is of no use to me but ash!",
		BOOK_SILVICULTURE = "Make it tinder!",
		BOOK_HORTICULTURE = "It is of no use to me but ash!",
        BOOK_SLEEP = "I desire a bed of wealth and ash.",
        BOOK_BRIMSTONE = "To bring pain upon a village and claim its wealth!",

        BOOK_FISH = "Let us give it a taste, see if it's not mere hearsay!",
        BOOK_FIRE = "Bzrt! At last you speak my tongue! Watch as I demonstrate!",
        BOOK_WEB = "A sticky pathetically flammable mess!",
        BOOK_TEMPERATURE = "I keep my temperature under my complete control!",
        BOOK_LIGHT = "A bright, yet a blight, light upon my compound eyes!",
        BOOK_RAIN = "Woe upon thee! Such foul teachings!",
        BOOK_MOON = "It requires rewrites upon rewrites! I see no mention of your queen!",
        BOOK_BEES = "My minions leave fire, ruins in their wake! What say you...?",

        BOOK_HORTICULTURE_UPGRADED = "Best put to ash, nothing more!",
        BOOK_RESEARCH_STATION = "I need not to learn another word!",
        BOOK_LIGHT_UPGRADED = "Its gleam is nothing but a farce!",

        FIREPEN = "A tool given Dragonfly claw! I'll be confiscating it!",

        PLAYER =
        {
            GENERIC = "Hear-Ye, %s! It is I, your queen!",
            ATTACKER = "You dare not tempt my breath, %s? Yes?",
            MURDERER = "I've laid low your kind before, I shall do so once more!",
            REVIVER = "Bzrt! A worthy company, you are!",
            GHOST = "Poor fortune upon you, fallen %s!",
            FIRESTARTER = "Wreak havoc of flames and cinder, %s!",
        },
        WILSON =
        {
            GENERIC = "Hear-Ye, %s! Bring-forth your wealth!",
            ATTACKER = "Pitiable wingless human... return to the earth!",
            MURDERER = "You will not see the future light of day!",
            REVIVER = "Your schemes have proven themselves worthy of life.",
            GHOST = "The outcome of one who dares step before me.",
            FIRESTARTER = "Bring me your ash, and I'll consider tossing a coin your way!",
        },
        WOLFGANG =
        {
            GENERIC = "Hear-ye, weight-bearer!",
            ATTACKER = "You dare step toes with me and my wealth!",
            MURDERER = "You need not my wealth, nor my life! Away!!",
            REVIVER = "What a gentle heart of a knight you bear! Zrrt! I spit at thee!",
            GHOST = "There was no other outcome for such brave defenders.",
            FIRESTARTER = "What doth thy flames say about you?",
        },
        WAXWELL =
        {
            GENERIC = "Hear-ye, %s! You aged usurper!",
            ATTACKER = "You will take nothing more from me, usurper!",
            MURDERER = "I've laid low your kind before, I shall do so once more!",
            REVIVER = "You have nice manners for a thief, and a usurper!",--You cannot lose a throne you cannot have! Bzrt! You shall live.
            GHOST = "I think our little game has ended here!",
            FIRESTARTER = "Was thy flames an attempt at flattery to your queen?",
        },
        WX78 =
        {
            GENERIC = "Hear-ye, bronze-bearing being!",
            ATTACKER = "Your own armor is no match to mine own iron scales!",
            MURDERER = "Your scrap will find their place among my growing hoard!",
            REVIVER = "The care within your chassis is admirable. And to be admirable among my bed of gold!",
            GHOST = "No faux-metals belong within my wealth!",
            FIRESTARTER = "You burn with such cinder, %s!",
        },
        WILLOW =
        {
            GENERIC = "Am I the flames you seek, or be it my wealth...!",
            ATTACKER = "Do you think flattery will keep you alive?",
            MURDERER = "You need not continue, I will take away your blood-ridden flame!",
            REVIVER = "Your charm towards me will provide upon you no riches!",
            GHOST = "You need not to fall under the dragon-spell's charm.",
            FIRESTARTER = "Flames! You! I shalt show thee what it truly means to have a breath of death!",
        },
        WENDY =
        {
            GENERIC = "Hear-ye, young child of blood!",
            ATTACKER = "You dare not scratch a bit of silver within my riches!",
            MURDERER = "If thou wishes to act like a knight, thou shalt die like one!",
            REVIVER = "What dies shalt stay dead, do not alter my victories!",
            GHOST = "They all falter the same!",
            FIRESTARTER = "What flames! You've not yet seen fire like mine!",
        },
        WOODIE =
        {
            GENERIC = "Hear-ye, being of wood!",
            ATTACKER = "Your wooden kin shall burn to a sweet ash!",
            MURDERER = "What is wood but nought but ash...!",
            REVIVER = "Why doth thou hold other beings above wealth?",
            GHOST = "You have not provided the surplus of ash I seek.",
            BEAVER = "Foul! Foul, being of wood!",
            BEAVERGHOST = "No matter the being, it falls to my claws!",
            MOOSE = "Can thee become a being of scales next?",
            MOOSEGHOST = "No matter the being, it falls to my claws!",
            GOOSE = "Your schemes to take a piece of coin from me are for nought!!",
            GOOSEGHOST = "No matter the being, it falls to my claws!",
            FIRESTARTER = "Why doth thou burn wood to ash before me!",
        },
        WICKERBOTTOM =
        {
            GENERIC = "Hear-ye, knowledge-keeper! Bestow upon me knowledge of wealth!",
            ATTACKER = "Thine knowledge is nothing to a wealth of coin and gem!",
            MURDERER = "You've not yet faced the consequences in which you desire, knowledge-keep!",
            REVIVER = "Your wealth of knowledge has proved useful to your queen!",
            GHOST = "What gold is to me should be knowledge to thee!",
            FIRESTARTER = "Your books burn into a fine, delicious ash.",
        },
        WES =
        {
            GENERIC = "Hear-ye, Hear-ye! Being of hot air!",
            ATTACKER = "Doth thou dare bite thee-balloon at me?",
            MURDERER = "Thou shalt not escape my wrath, for I too am hot-breathed!",
            REVIVER = "You'll not see a coin from me as payment.",
            GHOST = "What makes others float must float thyself.",
            FIRESTARTER = "Burn, being of air, burn the air hot!",
        },
        WEBBER =
        {
            GENERIC = "Hear-ye, legged child!",
            ATTACKER = "Your fangs are yet to match up to mine own!",
            MURDERER = "You bite but it leaves nary a mark!",
            REVIVER = "Art thou tired of being nice? Thee must want to burn for gold, no?",
            GHOST = "You've lost your legs, your fangs, and your riches!",
            FIRESTARTER = "Your flames, small as they may be, show promise!",
        },
        WATHGRITHR =
        {
            GENERIC = "Away, I am no dragon you could ever slay!",
            ATTACKER = "No spear can pierce me!",
            MURDERER = "No lowly being can dare slay me, for I am the beast you fear most!",
            REVIVER = "I see through your lowly lies, you will not take from my lap of luxury!",
            GHOST = "Like others before you, you fall...!",
            FIRESTARTER = "Spear-wielder, your flames do not amuse me.",
        },
        WINONA =
        {
            GENERIC = "Hear-ye machinist! I desire a polishing of my silver!",
            ATTACKER = "Your toolmaking schemes are at an end...!",
            MURDERER = "Away from my hoard, my precious metals do not belong to you!",
            REVIVER = "Do not anticipate your warmth making me toss a bite of gold your way.",
            GHOST = "Make an example of those who cross my hoard.",
            FIRESTARTER = "Art those the welding sparks thou desire?",
        },
        WORTOX =
        {
            GENERIC = "What say you, brimstone-being?",
            ATTACKER = "You will face the true meaning of brimstone!",
            MURDERER = "You've jested your last jest, vile-jester!",
            REVIVER = "What you lift up I must burn back down!",
            GHOST = "Now what will thou do to lie and buy thyself out of this one!",
            FIRESTARTER = "I know the smell and taste of fire and brimstone, nothing better!",
        },
        WORMWOOD =
        {
            GENERIC = "That gem! What say you, shrub.",
            ATTACKER = "I've seen many a shrubbery burn at my claws, thee shall be no different!",
            MURDERER = "The Great Dragonfly shall see how fast thy leaves perish to ash!",
            REVIVER = "I'll have that shiny gem within your being, shrub.",
            GHOST = "What shame for a plant to become a being!",
            FIRESTARTER = "What being burns their branches before I?",
        },
        WARLY =
        {
            GENERIC = "Hear-ye, maker of feasts! I desire a grand five-course meal for one!",
            ATTACKER = "Thou shalt be the one to be eaten!",
            MURDERER = "I am no stranger to eating those that defy me!",
            REVIVER = "Sentimentality shall duly be the downfall of thee!",
            GHOST = "For shame, the feast was thou!",
            FIRESTARTER = "You cook not with proper flame and ash!",
        },
        WURT =
        {
            GENERIC = "What say you, pitiful scaled-whelp.",
            ATTACKER = "Your scales mean nought to me!",
            MURDERER = "Thou scales bend at the seams! Mine, like tenfold shields!",
            REVIVER = "If you've no hoard of riches, what use must you be?",
            GHOST = "A pity for all scaled-beings!",
            FIRESTARTER = "You were not made to breath that of which I do.",
        },
		WALTER =
        {
            GENERIC = "Hear-ye, young child of blood and his foul mutt!",
            ATTACKER = "Keep thy foul mutt away from my gold!",
            MURDERER = "I am no badge thou can earn! For all I do is burn!",
            REVIVER = "Your hoard of badges and trinkets mean nought to me. Mayhaps a little.",
            GHOST = "This is what a hoard with no gold gets you...!",
            FIRESTARTER = "Dost thou mutt breath fire...?",
        },
        WANDA =
        {
            GENERIC = "What say you, being of time and space?",
            ATTACKER = "A dragon's age is beyond your comprehension...!",
            MURDERER = "Every timeline you possess will be laid to waste by me!",
            REVIVER = "Your time is best spent with your queen!",
            GHOST = "Nothing can stop time's arrow, pitiful being.",
            FIRESTARTER = "Thou flee from the fiery scene much like a dragon's wing!",
        },
        WONKEY =
        {
            GENERIC = "What say you, foul-smelling being of the banana kingdom?",
            ATTACKER = "You dare to try and step upon my toes, stink-beast?",
            MURDERER = "I'll destroy all that you've come to know! You've made it too easy!",
            REVIVER = "You've made your place, beneath me! Bzrt!",
            GHOST = "If I had a conscious, I might show a bit of pity!",
            FIRESTARTER = "You merely stumble upon fire, I was molded by it...!",
        },
		WALANI =
        {
            GENERIC = "Hear-ye, being of the water.",
            ATTACKER = "What doth thou swing at me?",
            MURDERER = "I'll have the gold within thy ears upon my hoard!",
            REVIVER = "What a shine you have in thy ears, being.",
            GHOST = "Why doth beings of warm-blood favor the water? The result!",
            FIRESTARTER = "Hast thou been persuaded to be one of flame?",
        },
		WOODLEGS =
        {
            GENERIC = "There you are, thief of the sea!",
            ATTACKER = "I will not part with a single coin! Not one piece of it!",
            MURDERER = "My treasure wilt never be thine, nary a piece...! Die!",
            REVIVER = "You have nice manners for a thief, and a liar...!",
            GHOST = "What being is simple enough to dare cross my riches.",
            FIRESTARTER = "No matter the means, my treasure shalt remain mine!",
        },
		WILBUR =
        {
            GENERIC = "What say thou, and that crown...!",
            ATTACKER = "I shalt take that crown and whatever else riches you possess!",
            MURDERER = "Bloodshed, blood covers thy crown!",
            REVIVER = "I care not for life, but for the crown upon thy head.",
            GHOST = "Curse that crown upon thy ghostly head.",
            FIRESTARTER = "All wealthy beings burn within flame in time.",
        },
		WEARGER =
        {
            GENERIC = "Hear-ye, ever-shedding being.",
            ATTACKER = "Zrrt! Thou shall not have my wealth of rich foods!",
            MURDERER = "%s seeks wealth and riches and wilt not bargain!",
            REVIVER = "Thou belly is as big as thy heart!",
            GHOST = "I never lose scales, like thou dost hairs!",
            FIRESTARTER = "%s is craving flame!",
        },
		WEERCLOPS =
        {
            GENERIC = "Hear-ye, one-eyed being!",
            ATTACKER = "Thou shalt not destroy my given wealth!",
            MURDERER = "Thy eye hast seen many a bloodshed!",
            REVIVER = "Destroy what thou may, but never my riches.",
            GHOST = "Thou chill doth not protect you from my flame!",
            FIRESTARTER = "Art thou finally warming up?",
        },
		WOOSE =
        {
            GENERIC = "What say you, foul being of feathers?",
            ATTACKER = "Thou dares to swing feathers at scales?",
            MURDERER = "You are no mother to me! Nor will you mother any longer!",
            REVIVER = "Bzrt. Say not a word, but thy mothering tips are well spent!",
            GHOST = "What shame! Feathers and a murdered mother! Zrt!",
            FIRESTARTER = "Flame singes the feathers of thee..!",
        },
		WRAGONFLY =
        {
            GENERIC = "Bzzrt! There can only be one wealthy ruler of these lands!",
            ATTACKER = "My territory must be protected!",
            MURDERER = "I kill for my riches, my gold and silver. There is nothing better.",
            REVIVER = "We dragons love to sing when we're happy!",
            GHOST = "The strong hast defeated the weak. Let gold rain upon me!",
			ENRAGED = "I am fire! We... art death!",
            FIRESTARTER = "Let ashes rain, gold be seized, and towns torched...!",
        },

        GLOMMER = 
        {
            GENERIC = "Would thou be me if I adorned fur? Bz-zrt!",
            SLEEPING = "It sleeps, but nary a sign of a bed of gold...?",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "It glistens and glitters, but nary a whiff a gold traces my nose!",
            DEAD = "It hast begun to wilt.",
        },
        GLOMMERWINGS = "I wince at the sight of clipped wings!",
        GLOMMERFUEL = "Why is it not becoming a living whelp...?",
        BELL = "A charm, a relic.",
        STATUEGLOMMER =
        {
            GENERIC = "I desire one in mine image as well.",
            EMPTY = "It holds naught!",
        },

        LAVA_POND_ROCK = "A cooling rock to call mine own!",

		WEBBERSKULL = "Alas, poor whelp.",
		WORMLIGHT = "I cannot resist any glowing treasure! I must have it!",
		WORMLIGHT_LESSER = "I cannot resist any glowing treasure! I must have it!",
		WORM =
		{
		    PLANT = "I cannot resist any glowing treasure! I must have it!",
		    DIRT = "I smell you, I hear your breath, I feel your air...!",
		    WORM = "Worm, meet thy fate by the claws of the superior Wyrm!",
		},
        WORMLIGHT_PLANT = "I cannot resist any treasure! I must have it!",
		MOLE =
		{
			HELD = "Have you heard the tales of my claws?",
			UNDERGROUND = "I smell you, I hear your breath, I feel your air.",
			ABOVEGROUND = "There you are!",
		},
		MOLEHILL = "There must be little riches within! I shall dig with my claws!",
		MOLEHAT = "I am seeing more than my usual!",

		EEL = "Slippery, but my claws are fierce spears.",
		EEL_COOKED = "I must cook it longer for dear ash.",
		UNAGI = "I shalt burn it to a crisp.",
		EYETURRET = "I've no precious metals for you to peer through!",
		EYETURRET_ITEM = "I must find its place in my land.",
		MINOTAURHORN = "Two horns are duly noted to be better than one!",
		MINOTAURCHEST = "Small horns art good, too.",
		THULECITE_PIECES = "Something made of gold... but far more precious...!",
		POND_ALGAE = "Ashen fodder.",
		GREENSTAFF = "I prefer the use of my breath to dismantle.",
		GIFT = "Art thou for me? Why of course, else it'd be death! Bzrt!",
        GIFTWRAP = "Wrap it in gold, with silver, and bejewel it. For your queen.",
		POTTEDFERN = "I blow and ashes follow.",
        SUCCULENT_POTTED = "I blow and ashes follow.",
		SUCCULENT_PLANT = "Disturbing flesh-scales.",
		SUCCULENT_PICKED = "Disturbing flesh-scales.",
		SENTRYWARD = "The only eyes on my hoard are to be that of mine own!",
        TOWNPORTAL =
        {
			GENERIC = "The smell of ash and dust, I shalt not burn this one down.",
			ACTIVE = "I tire of walking. I wish to fly again!",
		},
        TOWNPORTALTALISMAN = 
        {
			GENERIC = "That smell! Brimstone, ash! One after mine own heart!",
			ACTIVE = "My toes tire of all this.",
		},
        WETPAPER = "Bezyurk! I spit at thee!",
        WETPOUCH = "Zurrt! Disgusting! Give me a proper treasure!",
        MOONROCK_PIECES = "Rubble, rubble.",
        MOONBASE =
        {
            GENERIC = "Is this what it takes to acquire the moon's gold...?",
            BROKEN = "It tempts me.",
            STAFFED = "I await a response.",
            WRONGSTAFF = "If thou art not using it, it shalt be mine!",
            MOONSTAFF = "This treasurous staff, it calls to me.",
        },
        MOONDIAL = 
        {
			GENERIC = "...Fire must be for thy sun!",
			NIGHT_NEW = "The water lacks light. Perhaps a breath will do...!",
			NIGHT_WAX = "The water's light strengthens!",
			NIGHT_FULL = "The water shines brightly, I must own it!",
			NIGHT_WANE = "The water's light shimmers not!",
			CAVE = "There art no \"moon\" here.",
--fallback to speech_wilson.lua 			WEREBEAVER = "PLACEHOLDER", --woodie specific
            GLASSED = "How glistening and sweet it hast become!",
        },
		THULECITE = "Riches, riches!! A hoard of precious gold to be mine!",
		ARMORRUINS = "I shine as bright as my hoard of wealth!",
		ARMORSKELETON = "A sign of a devious dragon.",
		SKELETONHAT = "A dragon who dons a fallen's skull owns them all...!",
		RUINS_BAT = "Like having golden-coated claws!",
		RUINSHAT = "The perfect crown for me, and only I.",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "I smell no brimstone...",
            WARN = "I feel the air beginning to stir.",
            WAXING = "The air around simmers with heat!",
            STEADY = "My head hums with a ring!",
            WANING = "The air has had its boil and simmers.",
            DAWN = "The fight retreats within.",
            NOMAGIC = "Signs of wealth, nought.",
		},
		BISHOP_NIGHTMARE = "Allow my breath to finish the deed!",
		ROOK_NIGHTMARE = "From the rook, gold she took!",
		KNIGHT_NIGHTMARE = "No knight steal from my keep, nay undead ones!",
		MINOTAUR = "A fight for my rightful treasure it is!",
		SPIDER_DROPPER = "Do no creep up on those with fire.",
		NIGHTMARELIGHT = "It breathes a heavy, dark flame.",
		NIGHTSTICK = "It shines bright, that of a diamond!",
		GREENGEM = "It gleams true to my scales! How I treasure it!",
		MULTITOOL_AXE_PICKAXE = "Wealth has many uses.",
		ORANGESTAFF = "Riches get you places!",
		YELLOWAMULET = "I shine bright, seen from all across this land!",
		GREENAMULET = "It matches my complexion, does it not?",
		SLURPERPELT = "A reason to prefer scales, one cannot deny.",	

		SLURPER = "You'll not inhale one piece of my coin!",
		SLURPER_PELT = "A reason to prefer scales, one cannot deny.",
		ARMORSLURPER = "Must it slurp so loudly?",
		ORANGEAMULET = "The outside shall match the inside!",
		YELLOWSTAFF = "I epitome of a good, rich staff.",
		YELLOWGEM = "The original, the shining crystal! O, how it makes me happy to see!",
		ORANGEGEM = "The most comfortable gem to lie upon.",
        OPALSTAFF = "Showcases my true sense of opalescence!",
        OPALPRECIOUSGEM = "It puts the opal in opalescence!",
        TELEBASE = 
		{
			VALID = "Gems are nothing but perfection!",
			GEMS = "Purple pleasantries are required!",
		},
		GEMSOCKET = 
		{
			VALID = "Gems glisten with readiness!",
			GEMS = "More gems for your queen!",
		},
		STAFFLIGHT = "I can never hold enough power with these claws!",
        STAFFCOLDLIGHT = "I cannot allow the fire within me to be silenced...!",

        ANCIENT_ALTAR = "Ashes to ashes, dust unto dust. Riches unto wealth!",

        ANCIENT_ALTAR_BROKEN = "Ashes to ashes, dust to dust.",

        ANCIENT_STATUE = "My, how lovely you'd look upon my hoard!",

        LICHEN = "Ashen fodder.",
		CUTLICHEN = "Ash fodder.",

		CAVE_BANANA = "I prefer it hot.",
		CAVE_BANANA_COOKED = "I prefer it much hotter.",
		CAVE_BANANA_TREE = "Yellow, but nary a treasure.",
		ROCKY = "Perhaps I could have scales of stone.",
		
		COMPASS =
		{
			GENERIC="My feet are burning and the clock turns nought!",
			N = "Kingdom comes, northern!",
			S = "Kingdom comes, southern!",
			E = "Kingdom comes, eastern!",
			W = "Kingdom comes, western!",
			NE = "Northeastern, or so they say.",
			SE = "Southeastern, or so they say.",
			NW = "Northwestern, or so they say.",
			SW = "Southwestern, or so they say.",
		},

        HOUNDSTOOTH = "Nay as sharp as mine own!",
        ARMORSNURTLESHELL = "I've no need for hiding!",
        BAT = "Doth thou flap thy wings at me...?",
        BATBAT = "Fierce wings of mine own!",
        BATWING = "You cannot underestimate wings of any size...",
        BATWING_COOKED = "Charred, but not ash.",
        BATCAVE = "A den! But will there be treasure?",
        BEDROLL_FURRY = "A warm bed, sure. But is it gold?",
        BUNNYMAN = "Haired beast, you'll not take my meaty riches!",
        FLOWER_CAVE = "I, too burn within.",
        GUANO = "A mess of one.",
        LANTERN = "The fire within can only be contained for so long. I would know.",
        LIGHTBULB = "A little bit of balled-light.",
        MANRABBIT_TAIL = "These claws cannot feel its touch.",
        MUSHROOMHAT = "I am not sure of how mushroom I have in my hoard for this.",
        MUSHROOM_LIGHT2 =
        {
            ON = "I need a warm light, and another for my lavae.",
            OFF = "It is not as warm without salts and gold.",
            BURNT = "Burnt to cinder! O, how it smells too sweet!",
        },
        MUSHROOM_LIGHT =
        {
            ON = "I need a warm light, and another for my lavae.",
            OFF = "But dost it shine as bright as me!",
            BURNT = "Burnt to cinder! O, how it smells too sweet!",
        },
        SLEEPBOMB = "I breath not thine elusive gas!",
        MUSHROOMBOMB = "I breath not of thou elusive gas!",
        SHROOM_SKIN = "Foul, for there art no scales.",
        TOADSTOOL_CAP =
        {
            EMPTY = "Empty of treasures as it can be.",
            INGROUND = "I can smell your air from up here. No use in hiding.",
            GENERIC = "It dost not shimmer, but I shall make it mine.",
        },
        TOADSTOOL =
        {
            GENERIC = "Foul being! May you be no match to I!",
            RAGE = "I am no stranger to the rage festering inside!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "To ashes with it!",
            BURNT = "I refuse to say that was not a victory.",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "I see no better use than to turn it to ash.",
            BLOOM = "A smell most unpleasant.",
            ACIDCOVERED = "A stench most foul, to singe all thy hairs!",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "Other beings would treasure it more if it smelt of sulphur.",
            BLOOM = "In-front of my scales??",
            ACIDCOVERED = "A stench most foul, to singe all thy hairs!",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "What little riches might you provide to your queen?",
            BLOOM = "I care not.",
            ACIDCOVERED = "A stench most foul, to singe all thy hairs!",
        },
        MUSHTREE_TALL_WEBBED =
        {
            GENERIC = "The spiders hast claimed their hoard.",
            ACIDCOVERED = "A stench most foul, to singe all thy hairs!",
        },
        SPORE_TALL =
        {
            GENERIC = "What being might you be? A flame of sorts?",
            HELD = "Like a fire from the outside.",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "Is this a treasure?",
            HELD = "Like a fire from the outside.",
        },
        SPORE_SMALL =
        {
            GENERIC = "Your light passes through my many visions of you.",
            HELD = "Like a fire from the outside.",
        },
        RABBITHOUSE =
        {
            GENERIC = "What strange riches might lie within!",
            BURNT = "Burn it swell, eat its remains!",
        },
        SLURTLE = "Bring me all the gold within your kingdom, and you may pass.",
        SLURTLE_SHELLPIECES = "Remnants of a fallacy.",
        SLURTLEHAT = "I never did say one could not have both scales and shells!",
        SLURTLEHOLE = "A den! But might there be jewels within?",
        SLURTLESLIME = "The inside of every being. Zrt.",
        SNURTLE = "Those without scales hide beneath shells!",
        SPIDER_HIDER = "I can hear your breath, I can feel your breath...",
        SPIDER_SPITTER = "Spit? Zrrt! Have you tried breathing?",
        SPIDERHOLE = "A den unworthy of a dragon queen.",
        SPIDERHOLE_ROCK = "A den unworthy of a dragon queen.",
        STALAGMITE = "I could use a nice heat rock to lie upon right now.",
        STALAGMITE_TALL = "I could use a pillow of heated rocks to lie upon.",
        TREASURECHEST_TRAP = "Treasure is treasure! And all treasure is mine!",

        TURF_CARPETFLOOR = "My toes have enough warmth as is.",
        TURF_CHECKERFLOOR = "The ground in-which my toes leave a charred path upon.",
        TURF_DIRT = "The ground in-which my toes leave a charred path upon.",
        TURF_FOREST = "The ground in-which my toes leave a charred path upon.",
        TURF_GRASS = "The ground in-which my toes leave a charred path upon.",
        TURF_MARSH = "The ground in-which my toes leave a charred path upon.",
        TURF_METEOR = "The ground in-which my toes leave a charred path upon.",
        TURF_PEBBLEBEACH = "The ground in-which my toes leave a charred path upon.",
        TURF_ROAD = "The ground in-which my toes leave a charred path upon.",
        TURF_ROCKY = "The ground in-which my toes leave a charred path upon.",
        TURF_SAVANNA = "The ground in-which my toes leave a charred path upon.",
        TURF_WOODFLOOR = "The ground in-which all my claws leave a charred path upon.",

		TURF_CAVE="The ground in-which my toes leave a charred path upon.",
		TURF_FUNGUS="The ground in-which my toes leave a charred path upon.",
		TURF_SINKHOLE="The ground in-which my toes leave a charred path upon.",
		TURF_UNDERROCK="The ground in-which my toes leave a charred path upon.",
		TURF_MUD="The ground in-which my toes leave a charred path upon.",

		TURF_DECIDUOUS = "The ground in-which my toes leave a charred path upon.",
		TURF_SANDY = "The ground in-which my toes leave a charred path upon.",
		TURF_BADLANDS = "The ground in-which my toes leave a charred path upon.",
		TURF_DESERTDIRT = "My home kingdom turf, and where I place my den.",
		TURF_FUNGUS_GREEN = "The ground in-which my toes leave a charred path upon.",
		TURF_FUNGUS_RED = "The ground in-which my toes leave a charred path upon.",
		TURF_DRAGONFLY = "My scales are of no right to be beneath me!",
		TURF_SHELLBEACH = "The ground in-which my toes leave a charred path upon.",

		TURF_RUINSBRICK = "The ground in-which my toes leave a charred path upon.",
		TURF_RUINSBRICK_GLOW = "The ground in-which my toes leave a charred path upon.",
		TURF_RUINSTILES = "The ground in-which my toes leave a charred path upon.",
		TURF_RUINSTILES_GLOW = "The ground in-which my toes leave a charred path upon.",
		TURF_RUINSTRIM = "The ground in-which my toes leave a charred path upon.",
		TURF_RUINSTRIM_GLOW = "The ground in-which my toes leave a charred path upon.",

		TURF_MONKEY_GROUND = "The ground in-which my toes leave a charred path upon.",

        TURF_CARPETFLOOR2 = "The ground in-which my toes leave a charred path upon.",
        TURF_MOSAIC_GREY = "The ground in-which my toes leave a charred path upon.",
        TURF_MOSAIC_RED = "The ground in-which my toes leave a charred path upon.",
        TURF_MOSAIC_BLUE = "The ground in-which my toes leave a charred path upon.",

        TURF_BEARD_RUG = "Your foul hairs belong nowhere but beneath me.",

		POWCAKE = "It's best put to ash.",
        CAVE_ENTRANCE = "Any rock can move!",
        CAVE_ENTRANCE_RUINS = "Wondrous treasure! It calls out to me...!",
       
       	CAVE_ENTRANCE_OPEN = 
        {
            GENERIC = "I've no need. My den calls to me.",
            OPEN = "What riches await...!",
            FULL = "Who doth protest?",
        },
        CAVE_EXIT = 
        {
            GENERIC = "I suppose gaining a bit more treasure couldn't singe...",
            OPEN = "Treasures are above as they are below!",
            FULL = "Hast thou exiled thy queen!?",
        },

		MAXWELLPHONOGRAPH = "What spell dost it attempt to cast upon me?",
		BOOMERANG = "All treasures return to my claws!",
		PIGGUARD = "I'll ate your people like a wolf among sheep if it means riches!",
		ABIGAIL = "Perhaps you could lie upon a bed of riches?",
		ADVENTURE_PORTAL = "I hear treasure calling to me!",
		AMULET = "The gems beats with such fiery passion! How I adore it!",
		ANIMAL_TRACK = "A presence has been spotted. Potential treasures wait!",
		ARMORGRASS = "It will merely burst to ash once I get heated.",
		ARMORMARBLE = "My scales iron, and my armor marble!",
		ARMORWOOD = "I am adding to the flames in which I encapsulate.",
		ARMOR_SANITY = "Scales of insanity!",
		ASH =
		{
			GENERIC = "Bzrrt! The perfect outcome!",
			REMAINS_GLOMMERFLOWER = "Such a floral scent from this one! Delicious!",
			REMAINS_EYE_BONE = "The crunch within, it fuels me whole.",
			REMAINS_THINGIE = "Bzzt! The scent, brimming with brimstone!",
		},
		AXE = "A single swing sparks with a single flame!",
		BABYBEEFALO = 
		{
			GENERIC = "It warms my already vividly warm heart.",
		    SLEEPING = "Its snores could turn cold blood warm.",
        },
        BUNDLE = "More for the hoard!",
        BUNDLEWRAP = "It is of no use unwrapped, and not lined with gold.",
		BACKPACK = "To carry upon me a copious amount of gold coin!",
		BACONEGGS = "Too sweet without a little heat.",
		BANDAGE = "No bandage makes its place on scales of iron shields.",
		BASALT = "Uncrackable...!",
		BEARDHAIR = "Foul beings with hair, away from my presence!",
		BEARGER = "Lie waste upon the land, hairy-one!",
		BEARGERVEST = "To cover my scales with hair? The burning smell shalt caress my nose!",
		ICEPACK = "I'll have it melted and stabbed through the back with my horns.",
		BEARGER_FUR = "It singes at my touch.",
		BEDROLL_STRAW = "Unlike a bed of gold, I will not lay in it.",
		BEEQUEEN = "A queen? With what hoard!? Gold, silver, gems, and jewels? Nay! I gleam none!",
		BEEQUEENHIVE = 
		{
			GENERIC = "Thou yellow colors art deceit, for there is no gold!",
			GROWING = "Thou kingdom hast no place near mine own!",
		},
        BEEQUEENHIVEGROWN = "Thou yellow colors art deceit, for there is no gold!",
        BEEGUARD = "I've taken down many of your kind before, I shalt do so again!",
        HIVEHAT = "From one queen to another, scales are victorious.",
        MINISIGN =
        {
            GENERIC = "Doth thou point to gold?",
            UNDRAWN = "The rules are unwritten, for I have yet to write them!",
        },
        MINISIGN_ITEM = "A place is where it's ought to be.",
		BEE =
		{
			GENERIC = "Golden minnows...?",
			HELD = "Doth thou hast real gold? Not even a bit of silver?",
		},
		BEEBOX =
		{
			READY = "Yellow treasure of the beeing variety!",
			FULLHONEY = "Sweet yellow treasures!",
			GENERIC = "A box of a different form of gold.",
			NOHONEY = "Nary a bite of gold.",
			SOMEHONEY = "I await your treasures. Or else...!",
			BURNT = "It could not provide fast enough, so it goes.",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "Treasure of the being variety!",
			LOTS = "I desire more than it's capable!",
			SOME = "Treasure to be.",
			EMPTY = "Provide to me your mush. Quickly, now!",
			ROTTEN = "Rotten, and most foul.",
			BURNT = "Provide for me quicker and don't get burnt.",
			SNOWCOVERED = "I too, am hindered within this climate.",
		},
		BEEFALO =
		{
			FOLLOWER = "The beast doth follow!",
			GENERIC = "Beast! I request you pay a bit of tribute! Gold, silver?",
			NAKED = "I recommend growing scales!",
			SLEEPING = "Alas, it rests not on a bed of silver.",
            --Domesticated states:
            DOMESTICATED = "A beast to call mine own!",
            ORNERY = "We both have our moments.",
            RIDER = "With my wings soft, this being will do for a swift kick.",
            PUDGY = "Much too much ash was had, beast!",
			MYPARTNER = "You shalt make a fine jester!",
		},

		BEEFALOHAT = "The horns of a hollow beast.",
		BEEFALOWOOL = "My scales bring forth higher warmth than thee!",
		BEEHAT = "Mine eyes do not quite fit this piece.",
        BEESWAX = "Faux-gold!",
		BEEHIVE = "What small kingdom comes this way?",
		BEEMINE = "The smell of cinder, and the air of winged beasts.",
		BEEMINE_MAXWELL = "The smell of blood, and the air of hungry beings.",
		BERRIES = "Might this be the blood of beings...?",
		BERRIES_COOKED = "Not yet hot enough to have become ash.",
        BERRIES_JUICY = "It liquefies in my claws. All the easier to eat!",
        BERRIES_JUICY_COOKED = "They liquefy nicely.",
		BERRYBUSH =
		{
			BARREN = "Without bearing of its treasure, it means nought.",
			WITHERED = "Bzrt! A step towards ash!",
			GENERIC = "A bearing of fruits!",
			PICKED = "I duly hope they grow back with a golden coating.",
			DISEASED = "Ill-being.",
			DISEASING = "Is this the type of food I've been told is eaten...?",
			BURNING = "Ah, the sweet smell of a light snack!",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "Without its riches, it means nought.",
			WITHERED = "Pitiful beings cannot stand my heat!",
			GENERIC = "What treasures do you bestow upon your leaves?",
			PICKED = "Berries! Wherefore art thou, berries!",
			DISEASED = "Ill-being.",
			DISEASING = "Is this the type of food I've been told is eaten...?",
			BURNING = "Ah, the sweet smell of a light snack!",
		},
		BIGFOOT = "Alas, I am not as big as I once was!",--removed
		BIRDCAGE =
		{
			GENERIC = "What a marvel to have upon my den.",
			OCCUPIED = "Imprisonment, for I pity it.",
			SLEEPING = "What beats sleeps, imprisoned?",
			HUNGRY = "Spare some food, would you nought?",
			STARVING = "It hungers, like I for wealth.",
			DEAD = "It reeks of a fallen knight.",
			SKELETON = "A piece of décor typical of any dragon's den.",
		},
		BIRDTRAP = "A fine cage, would thou like to step within it?",
		CAVE_BANANA_BURNT = "To ash, then to maw!",
		BIRD_EGG = "Crack it down my maw, would you!",
		BIRD_EGG_COOKED = "It has more forms of liquid...?",
		BISHOP = "This is no place for your bolt-filled being!",
		BLOWDART_FIRE = "I do not need a more controlled breath of death!",
		BLOWDART_SLEEP = "A lull voice will tell you to provide the truth.",
		BLOWDART_PIPE = "A spit to singe any armor.",
		BLOWDART_YELLOW = "A different fire to spit.",
		BLUEAMULET = "Its rests coldly upon my chest. What I do for luxury!",
		BLUEGEM = "All gems I take to my keep, cold as it may be!",
		BLUEPRINT = 
		{ 
            COMMON = "I prefer them rare.",
            RARE = "Be it rare? A favorite of mine!",
        },
        SKETCH = "I've a few inquiries about this one...",
		COOKINGRECIPECARD = 
		{
			GENERIC = "Your muddy hearsay shall not fall upon divine ear holes!",
		},
		BLUE_CAP = "Quite the being you are, blue.",
		BLUE_CAP_COOKED = "It'll create a fine blue ash.",
		BLUE_MUSHROOM =
		{
			GENERIC = "What be you, being of blue?",
			INGROUND = "You cannot hide for so long, being!",
			PICKED = "Plucked from its home!",
		},
		BOARDS = "Boards to be burnt. Ashes to be made.",
		BONESHARD = "Always strewn about a den, littering the land!",
		BONESTEW = "A warm use of bones, might I say.",
		BUGNET = "To catch those who dare fly away.",
		BUSHHAT = "One cannot hide from me, I'll always feel the presence.",
		BUTTER = "It slips from my claws and leaves nothing but a mess!",
		BUTTERFLY =
		{
			GENERIC = "Perfectly snatchable out of the air in which it flies!",
			HELD = "My claws are only so gentle, buttery-being.",
		},
		BUTTERFLYMUFFIN = "Might it fly away from this land too?",
		BUTTERFLYWINGS = "Wings the size of mine own.",
		BUZZARD = "You swarm to fresh blood like a fly to treasure.",

		SHADOWDIGGER = "I did not request more of your services.",
        SHADOWDANCER = "I cannot help myself but to point and laugh!",

		CACTUS = 
		{
			GENERIC = "A most comforting sign of home!",
			PICKED = "Sharp like my claws, quick like my wings.",
		},
		CACTUS_MEAT_COOKED = "Ah, nearly its best form it takes!",
		CACTUS_MEAT = "Just needs a little breath!",
		CACTUS_FLOWER = "Flowers of my kingdom true!",

		COLDFIRE =
		{
			EMBERS = "Soon to be frost-bitten ash.",
			GENERIC = "A flame, be it cold? Bizarre!",
			HIGH = "A flame, be it cold?",
			LOW = "What little remains.",
			NORMAL = "Fairly disturbing to see, isn't it...?",
			OUT = "The smell of victory, how it soothes.",
		},
		CAMPFIRE =
		{
			EMBERS = "The flame fades...",
			GENERIC = "My flame within is represented.",
			HIGH = "Unmatched flame! Passion!",
			LOW = "While this flame may fade, the one within grows!",
			NORMAL = "My heat within cannot be beat.",
			OUT = "The smell of victory, how it soothes.",
		},
		CANE = "My toes and wings may only carry me so far...!",
		CATCOON = "I too, retch to eat.",
		CATCOONDEN = 
		{
			GENERIC = "What trinkets dost thou posses in thy den...?",
			EMPTY = "An empty den leads to an empty living.",
		},
		CATCOONHAT = "I'll place it upon my hoard, mayhaps my horns.",
		COONTAIL = "A tail not of mine own.",
		CARROT = "Like a dull flame, but never as tasty.",
		CARROT_COOKED = "A bit more spit and that shalt be it!",
		CARROT_PLANTED = "Watch it grow for me, for I cannot care-ot.",
		CARROT_SEEDS = "To be laid within the ground.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "Places to be, but ones never to be laid with riches.",
			BURNING = "I enjoy to behold these creations shimmering.",
			BURNT = "To a fine crisp, much like any who dare step to my gold.",
		},
		WATERMELON_SEEDS = "To be laid within the ground.",
		CAVE_FERN = "A bit of ash would do it good.",
		CHARCOAL = "A small reward of burning down what may!",
        CHESSPIECE_PAWN = "A pawn to be, but never me. For I eat many!",
        CHESSPIECE_ROOK =
        {
            GENERIC = "Thou art not intimidating in the slightest.",
            STRUGGLE = "I was told structures do no such thing!",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "I whip my tail at thee.",
            STRUGGLE = "I was told structures do no such thing!",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "An easy piece to conquer.",
            STRUGGLE = "I was told structures do no such thing!",
        },
        CHESSPIECE_MUSE = "Looks much like me, does it not!",
        CHESSPIECE_FORMAL = "Your wealth is worth nought if one is made of stone!",
        CHESSPIECE_HORNUCOPIA = "This feast does not liquidate well.",
        CHESSPIECE_PIPE = "Is this a mockery?",
        CHESSPIECE_DEERCLOPS = "A might better than keeping a being's head. I must say.",
        CHESSPIECE_BEARGER = "A fallacy of a beast!",
        CHESSPIECE_MOOSEGOOSE =
        {
            "It is as loud as it is stone.",
        },
        CHESSPIECE_DRAGONFLY = "This dost enlighten sparks within me! Is it my good side...?",
		CHESSPIECE_MINOTAUR = "From pitiful maze to glorious dragon hoard!",
        CHESSPIECE_BUTTERFLY = "What purpose dost those wings serve...?",
        CHESSPIECE_ANCHOR = "I'd turn it to cinder if I could.",
        CHESSPIECE_MOON = "You do not respect thy sun enough...!",
		CHESSPIECE_CARRAT = "Now where art thy larvae statues?",
		CHESSPIECE_MALBATROSS = "Turned to stone by my ferocious looks!",
        CHESSPIECE_CRABKING = "There's no king for this queen...!",
		CHESSPIECE_TOADSTOOL = "Nought but a stool for my feet!",
        CHESSPIECE_STALKER = "What good are bones thou cannot chew?",
        CHESSPIECE_KLAUS = "It celebrates nought!",
        CHESSPIECE_BEEQUEEN = "A being not deserving of such a title!",
        CHESSPIECE_ANTLION = "Much easier to carve it a new mug...!",
		CHESSPIECE_BEEFALO = "Less foul eye-sores, more scales and glitter!",
		CHESSPIECE_KITCOON = "I could topple it like I could an entire village!",
		CHESSPIECE_CATCOON = "What's so honorable about you...?",
        CHESSPIECE_MANRABBIT = "Thou art not worthy of being immortal!",
        CHESSPIECE_GUARDIANPHASE3 = "Thou thinks thou art so tough...! Never more!",
		CHESSPIECE_EYEOFTERROR = "Only a dragon's eye could strike fear into those beneath her.",
        CHESSPIECE_TWINSOFTERROR = "Only a dragon's eye could strike fear into those beneath her.",
        CHESSPIECE_DAYWALKER = "Thou hast fallen, yet I remain. I REMAIN.",
        CHESSPIECE_DEERCLOPS_MUTATED = "A horrible vision! It dost not look like me even a little!",
        CHESSPIECE_WARG_MUTATED = "My glare must've had something to do with this!",
        CHESSPIECE_BEARGER_MUTATED = "Immortalized fear of a Dragon queen's presence!",
        CHESSPIECE_SHARKBOI = "I do like it when they don't snap back.",

        CHESSJUNK1 = "Rubble, ruin!",
        CHESSJUNK2 = "Rubble, rubble, and ruin!",
        CHESSJUNK3 = "Ruined rubble rumbling in thy ruins...!",
		CHESTER = "Puny horned beast! Do not anticipate gold from me!",
		CHESTER_EYEBONE =
		{
			GENERIC = "I will be no beings way of vision! It will see my riches!",
			WAITING = "It awaits gold. Or is that merely me...?",
		},
		COOKEDMANDRAKE = "A bit more spit roasting and it shalt be a meal!",
		COOKEDMEAT = "A bit more spit roasting and it shalt be a meal!",
		COOKEDMONSTERMEAT = "Nothing like a spit of ash to do the trick!",
		COOKEDSMALLMEAT = "It requires a more ashen look, dost it not?",
		COOKPOT =
		{
			COOKING_LONG = "I await, impatiently...",
			COOKING_SHORT = "The smell of treasure!",
			DONE = "Treasure! Now to re-do it within mine own maw!",
			EMPTY = "I desire a feast in my honor...!",
			BURNT = "Eagerness, mayhap...?",
		},
		CORN = "It reminds me of myself, truly unnerving.",
		CORN_COOKED = "I will give it a third form!",
		CORN_SEEDS = "It awaits the ground.",
        CANARY =
		{
			GENERIC = "Feathers like gold, but blood like a being.",
			HELD = "You do not need those wings, yes...?",
		},
        CANARY_POISONED = "It sickens me! Away with it!",

		CRITTERLAB = "What critters await...!",
        CRITTER_GLOMLING = "It flies like a dragon given little wings!",
        CRITTER_DRAGONLING = "Ah, youth!! How endearing!",
		CRITTER_LAMB = "Why, what a feast for a wolf thou art!",
        CRITTER_PUPPY = "Do not lick upwards on my scales, thou tongue shalt be in peril!",
        CRITTER_KITTEN = "Your warm blood irks me so!",
        CRITTER_PERDLING = "A feast for a hoard...?",
		CRITTER_LUNARMOTHLING = "I shalt attach it to my back and flee.",

		CROW =
		{
			GENERIC = "Do not flex thy winged-muscles at me!",
			HELD = "Is this what they claim was given wing?",
		},
		CUTGRASS = "It singes from my clawed touch.",
		CUTREEDS = "To ash, or not to ash.",
		CUTSTONE = "Cut, but not as sharp as my claws.",
		DEADLYFEAST = "A feast most deadly. My gut can surely take one!",
		DEER =
		{
			GENERIC = "Curious beasts, these ones. Why not breathe fire...?",
			ANTLER = "A strange adornment. I would prefer silver, at the very least.",
		},
        DEER_ANTLER = "A strange adornment. I would prefer silver, at the very least.",
        DEER_GEMMED = "I seek the gem within you, beast! I am not afraid to show flame!",
		DEERCLOPS = "Vast, one-eyed beast of cold! What treasure dost thou hold?",
		DEERCLOPS_EYEBALL = "Is this the eye which you seek...?",
		EYEBRELLAHAT =	"The ever-seeing eye above my many.",
		DEPLETED_GRASS =
		{
			GENERIC = "The singed path of mine!",
		},
        GOGGLESHAT = "Bejewel it, line it with gold and silver! Then we may speak.",
        DESERTHAT = "The effort is noted, but mine eyes are much too wide.",
        ANTLIONHAT = "This feeble flooring shalt bend to my will...!",
--fallback to speech_wilson.lua 		DEVTOOL = "PLACEHOLDER",
--fallback to speech_wilson.lua 		DEVTOOL_NODEV = "PLACEHOLDER",
		DIRTPILE = "A trace like no other.",
		DIVININGROD =
		{
			COLD = "What I hate most, cold and far from riches.",
			GENERIC = "It rings accordingly and true to treasure.",
			HOT = "Fire, it burns with a passion! Let treasure rain!",
			WARM = "My nose picks up a hint, my head rings like a bell.",
			WARMER = "I can feel the air of bronze and silver. I beckon closer.",
		},
		DIVININGRODBASE =
		{
			GENERIC = "If only it were to lead to riches.",
			READY = "I think I might like to keep hold of this key.",
			UNLOCKED = "It begins anew!",
		},
		DIVININGRODSTART = "I'll take it and make it mine!",
		DRAGONFLY = "I am fire! I am... death! See the being I was destined to be!!",
		ARMORDRAGONFLY = "I prefer the scales of mine attached to oneself...",
		DRAGON_SCALES = "A dragon may lose a few scales, but their spirit reignites...!",
		DRAGONFLYCHEST =
		{
			GENERIC = "A treasure of mine own, in every sense...!",
            UPGRADED_STACKSIZE = "As glorious and grand as the real being! Zrrt!",
		},
		DRAGONFLYFURNACE = 
		{
			HAMMERED = "What being dares make a mockery of my being!?",
			GENERIC = "The final touches to a fly of mine is needed, glittering gems!", --no gems
			NORMAL = "More, more gems! I always desire more!", --one gem
			HIGH = "A replicate in mine image! I am fire!!", --two gems
		},

        HUTCH = "Thou art not much of a ferocious scaled-being, art thou?",
        HUTCH_FISHBOWL =
        {
            GENERIC = "Such cold, puny beings.",
            WAITING = "For myself, I would wait in a bowl of ash and sulphur.",
        },
		LAVASPIT = 
		{
			HOT = "P-too...! It's fresh!",
			COOL = "My spit hast cooled over.",
		},
		LAVA_POND = "There is no place like home!",
		LAVAE = "Feisty little things, art they not?",
		LAVAE_COCOON = "ZRRT!! Nay! You shalt not be cooled!",
		LAVAE_PET = 
		{
			STARVING = "Quickly! Make feast, make feast!!",
			HUNGRY = "My dearest lavae hungers, quickly now! Ash!",
			CONTENT = "If my children are happy, my heart stays warm!",
			GENERIC = "Brrzt! My heart flutters with the flames of love!",
		},
		LAVAE_EGG = 
		{
			GENERIC = "Dost thou feel it? The warmth within!",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "Zzzzzrt!! Come hither, I shalt warm thee...!",
			COMFY = "Art thou comfortable in my lap of luxury, young one?",
		},
		LAVAE_TOOTH = "Quite the sharp fang! Mommy shall savour this one in her hoard, young one!",

		DRAGONFRUIT = "But dost the fruit fly too...?",
		DRAGONFRUIT_COOKED = "Warmed, like the fly it's named after!",
		DRAGONFRUIT_SEEDS = "It's no lavae, but it will do.",
		DRAGONPIE = "I am no pie!",
		DRUMSTICK = "I best turn it to ash. Does away with the evidence.",
		DRUMSTICK_COOKED = "And a bit of spit...!",
		DUG_BERRYBUSH = "Shrubbery for the ground.",
		DUG_BERRYBUSH_JUICY = "Shrubbery for the ground.",
		DUG_GRASS = "Shrubbery for the ground.",
		DUG_MARSH_BUSH = "Shrubbery for the ground.",
		DUG_SAPLING = "Shrubbery for the ground.",
		DURIAN = "Its shell is hard, but nary a scale.",
		DURIAN_COOKED = "Cracked and cooked. Now to ash!",
		DURIAN_SEEDS = "Ground's preferred food.",
		EARMUFFSHAT = "It warms me not.",
		EGGPLANT = "Slick and clean, but I see no meat.",
		EGGPLANT_COOKED = "Too tempting to destroy it within my claws.",
		EGGPLANT_SEEDS = "The ground's preferred food.",

		ENDTABLE = 
		{
			BURNT = "Crisp and ashed quite well.",
			GENERIC = "A table deserves a rich lining of golden gems!",
			EMPTY = "No treasure, it is as good as mulch.",
			WILTED = "Why must shrubbery perish near my callous claws!",
			FRESHLIGHT = "Fresh, and light! Yet no silver.",
			OLDLIGHT = "Fetch me another fire-bulb.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE = 
		{
			BURNING = "Might've been a cough!",
			BURNT = "Ashed, and wondrously so.",
			CHOPPED = "Work has been done here.",
			POISON = "This tree has fallen sick!",
			GENERIC = "Much too easy to kindle fires with.",
		},
		ACORN = "It steams like a snake held by my claws.",
        ACORN_SAPLING = "Grow, and grow!",
		ACORN_COOKED = "Crisp, how crisp!",
		BIRCHNUTDRAKE = "Away with you, being.",
		EVERGREEN =
		{
			BURNING = "I merely breathe and these woods go ablaze...!",
			BURNT = "Ashed, and satisfyingly so.",
			CHOPPED = "Sliced by a wicked claw.",
			GENERIC = "I cannot stare too long, might it catch flame.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "When it comes, it comes!",
			BURNT = "It burns when I wish, where I wish.",
			CHOPPED = "Like claw to flesh.",
			GENERIC = "Once it turns to ash, it shall not return!",
		},
		TWIGGYTREE = 
		{
			BURNING = "Alight, alight!",
			BURNT = "Ashed, what else!",
			CHOPPED = "It takes no show of force to knock it down!",
			GENERIC = "It might turn to ash by my mere presence.",			
			DISEASED = "Zrrt. Pitiful.",
		},
		TWIGGY_NUT_SAPLING = "It needs no assist from me.",
        TWIGGY_OLD = "Pitiful, pitiful shrubbery!",
		TWIGGY_NUT = "What a rut!",
		EYEPLANT = "You'll not take a single gold piece from me, eyed-beings!",
		INSPECTSELF = "Smoking hot, queen!",
		FARMPLOT =
		{
			GENERIC = "From flames shalt thou bare fruit!",
			GROWING = "Grow for me, me!",
			NEEDSFERTILIZER = "It needs more, more jewels.",
			BURNT = "It wasn't growing at my preferred rate.",
		},
		FEATHERHAT = "My head of horns needs no hair!",
		FEATHER_CROW = "Like char, but I cannot smell it.",
		FEATHER_ROBIN = "Feather given flames.",
		FEATHER_ROBIN_WINTER = "I will show this feather how to be hot...!",
		FEATHER_CANARY = "Yellow without the shimmer of gold...",
		FEATHERPENCIL = "I cannot touch it without a spark flying.",
		COOKBOOK = "A bountiful list of feasts to make for thy queen...!",
		FEM_PUPPET = "Your throne rightfully belongs to me!",
		FIREFLIES =
		{
			GENERIC = "A minnow's light sparks within the night!",
			HELD = "You're not so hot.",
		},
		FIREHOUND = "A fiery beast given fur!!",
		FIREPIT =
		{
			EMBERS = "A shame how the flame must fade...!",
			GENERIC = "Let fire roar!!",
			HIGH = "Uproarious fire, roar for me!",
			LOW = "While this flame may fade, the one within me grows!",
			NORMAL = "A soothing steady flame, like the one within.",
			OUT = "The precious air of victory and brimstone!",
		},
		COLDFIREPIT =
		{
			EMBERS = "I hope thou ash is not frozen like ice!",
			GENERIC = "What foul concoction has been made here...?",
			HIGH = "I demand this fire give me warmth!",
			LOW = "Away with this \"cold\" flame!",
			NORMAL = "Fire is to be hot!",
			OUT = "It smells of ash, but the air grows cold...",
		},
		FIRESTAFF = "Flame by breath, flame by hand!",
		FIRESUPPRESSOR = 
		{	
			ON = "Flames are not to be suppressed!",
			OFF = "It is best when it dost not toss coldness my way.",
			LOWFUEL = "I do no think I will supply from my hoard.",
		},

		FISH = "A cold, scaled being for a feast!",
		FISHINGROD = "I shall catch many more for my hoard!",
		FISHSTICKS = "What strange things flame does to thee!",
		FISHTACOS = "I would prefer an adornment of jewels!",
		FISH_COOKED = "I must spit further for a true meal!",
		FLINT = "Shiny, but nay sharp as my claws!",
		FLOWER = 
		{
            GENERIC = "I blow upon it and ash follows.",
            ROSE = "Bzrt! I have awaited for when shrubbery bites back!",
        },
        FLOWER_WITHERED = "I must have happened to step upon it!",
		FLOWERHAT = "I vastly prefer a crown of jewels with lines of gold.",
		FLOWER_EVIL = "It is not valued highly by beings, thus it means nought!",
		FOLIAGE = "I step upon it but I feel nought.",
		FOOTBALLHAT = "It cracks, where as scales do not!",
        FOSSIL_PIECE = "Litter upon a dragon's den!",
        FOSSIL_STALKER =
        {
			GENERIC = "It awaits completion!",
			FUNNY = "O, how this does bring upon a snicker!",
			COMPLETE = "Pieces to pieces, like ash to ash!",
        },
        STALKER = "We have brought back what was not ours!",
        STALKER_ATRIUM = "Your quest is nought but a failure! For I am the rightful ruler!",
        STALKER_MINION = "Your minions compare nought to mine own!",
        THURIBLE = "Brzzt! How it smells of ash and brimstone...!",
        ATRIUM_OVERGROWTH = "I care not for thou hearsay and garble!",
		FROG =
		{
			DEAD = "Horns, not no scales! The outcome!",
			GENERIC = "Horns, and thou gleams true to green! But scales you lack!",
			SLEEPING = "You rest, but my quest for riches continues.",
		},
		FROGGLEBUNWICH = "I place thee between thy buns!",
		FROGLEGS = "Ever glad my legs doth not look like thee.",
		FROGLEGS_COOKED = "I feast upon the legs of my foes!",
		FRUITMEDLEY = "To ash it must go!",
		FURTUFT = "I've been fooled, for this is not ash! Not quite yet!", 
		GEARS = "Its value means it must belong to me!",
		GHOST = "Hast thou not perished enough...?",
		GOLDENAXE = "I swing with the utmost delicacies!",
		GOLDENPICKAXE = "It doth take gold to make it!",
		GOLDENPITCHFORK = "How exclusive...!",
		GOLDENSHOVEL = "I desire to collect more, more golden tools than to plunder thy ground!",
		GOLDNUGGET = "The capital glistening pieces of my riches!!",
		GRASS =
		{
			BARREN = "It requires what I do not desire.",
			WITHERED = "What a pity shrubbery dost not grow alongside me.",
			BURNING = "Create a simple ash, shrubbery!",
			GENERIC = "I shalt clip it with my claws!",
			PICKED = "The easiest of doings!",
			DISEASED = "I spit at thee!",
			DISEASING = "What hast beings done to thou...?",
		},
		GRASSGEKKO = 
		{
			GENERIC = "Cold blooded, but much too flammable!",	
			DISEASED = "Sickening! Do not come further!",
		},
		GREEN_CAP = "For that color, I compliment thee. But it is no precious wealth.",
		GREEN_CAP_COOKED = "A dragon's faux-flesh.",
		GREEN_MUSHROOM =
		{
			GENERIC = "What say you, green?",
			INGROUND = "I feel your air, it hovers greenly.",
			PICKED = "Snatched! Mine!",
		},
		GUNPOWDER = "That scent, brimming with brimstone!",
		HAMBAT = "A treasurous meal for any dragon...!",
		HAMMER = "I shall break upon what trespasses near my hoard!",
		HEALINGSALVE = "Brrzt! That soothing scent of ash...!",
		HEATROCK =
		{
			FROZEN = "I did not request thou to freeze my claws!",
			COLD = "I shalt heat it with mine breath!",
			GENERIC = "I pop it into my maw, it comes out charred but hot!",
			WARM = "It encapsulates the heat within!",
			HOT = "How I love it! I could sleep upon it!",
		},
		HOME = "My home belongs to my hoard!",
		HOMESIGN =
		{
			GENERIC = "I care not for thou hearsay.",
            UNWRITTEN = "To turn to ash, and mark my territory!",
			BURNT = "A welcome sign to me!",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "I care not for thou hearsay.",
            UNWRITTEN = "To turn to ash, and mark my territory!",
			BURNT = "A welcome sign to me!",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "I care not for thou hearsay.",
            UNWRITTEN = "To turn to ash, and mark my territory!",
			BURNT = "A welcome sign to me!",
		},
		HONEY = "Like liquid gold!",
		HONEYCOMB = "It is no replacement for the wealth of gold.",
		HONEYHAM = "It glistens like gold, yet the taste is not the same.",
		HONEYNUGGETS = "I shall like to dip thee in gold.",
		HORN = "I'll not pretend my horns are a match.",
		HOUND = "Foul haired-beast! I shalt bite thee back!",
		HOUNDCORPSE =
		{
			GENERIC = "Away with it, for it has finished its course!",
			BURNING = "Bravo! Brrzt!",
			REVIVING = "Nay! Thou shalt not come back for more!",
		},
		HOUNDBONE = "I do not keep my victim's bones around to be chewed upon.",
		HOUNDMOUND = "Your horde is nought compared to my hoard!",
		ICEBOX = "I protest having my feast be that of a cold one!",
		ICEHAT = "It extinguishes the flame within me like a muzzle.",
		ICEHOUND = "Thou shall not nip me, thou shall not!!",
		INSANITYROCK =
		{
			ACTIVE = "I fear not your wicked ways...! Zrrt! Let me pass!",
			INACTIVE = "There art no barriers I cannot burn my way around!",
		},
		JAMMYPRESERVES = "Why, it is already liquefied!",

		KABOBS = "I pierce thee, meat-beings!",
		KILLERBEE =
		{
			GENERIC = "Is it a battle of the stings you desire!",
			HELD = "You sting, I singe.",
		},
		KNIGHT = "Is it your quest to slay me and take upon my hoard? Zrrt! Try me, being!",
		KOALEFANT_SUMMER = "A feast is to be made of you, beast!",
		KOALEFANT_WINTER = "A winter-coating? Mayhap a clever idea you bring forth.",
		KOALEFANT_CARCASS = "The common fate of those that dare defy me. And smell. Zrt.",
		KRAMPUS = "You shalt NOT take upon my hoard, foul devil-being!!",
		KRAMPUS_SACK = "The fly proves the victor! Do not test me and my hoard.",
		LEIF = "What say you, wood? Ash, perhaps?",
		LEIF_SPARSE = "I can sense the charcoal awaiting to be freed!",
		LIGHTER  = "The tiniest flame my eyes hast ever laid upon.",
		LIGHTNING_ROD =
		{
			CHARGED = "It is enraged with bolts!",
			GENERIC = "My tail, a thunderbolt! You cannot take it!",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "Do not make contact with my walled eyes with thy pitiable orbs.",
			CHARGED = "Enraged too, beast?",
		},
		LIGHTNINGGOATHORN = "Yet my horns rest comfortably upon my head.",
		GOATMILK = "I struggle to liquefy what is already liquid.",
		LITTLE_WALRUS = "I shall grow no longer...!",
		LIVINGLOG = "Do not scream my name, I shan't listen.",
		LOG =
		{
			BURNING = "The smell fills the air, delectable!",
			GENERIC = "To become char and nought more.",
		},
		LUCY = "Are you to be named treasure, or foe?",
		LUREPLANT = "You will not see my coin, you will not eat my coin!",
		LUREPLANTBULB = "You will be fed trash, nought of my hoard!",
		MALE_PUPPET = "Thou would like me to take thee place, wouldn't thee? Bzrt.",

		MANDRAKE_ACTIVE = "I care not for your incessant cries.",
		MANDRAKE_PLANTED = "A rare shrub, it must be mine!",
		MANDRAKE = "I dangle even my shrubbery's wealth in-front of the beings!",

        MANDRAKESOUP = "The richest stew!",
        MANDRAKE_COOKED = "The last of its soul has sizzled out!",
        MAPSCROLL = "Doth thou lead to more gold...?",
        MARBLE = "Shiny, and how crisp!",
        MARBLEBEAN = "A bean to be placed in my hoard of various riches.",
        MARBLEBEAN_SAPLING = "My eyes seek its glimmer!",
        MARBLESHRUB = "To be mine!",
        MARBLEPILLAR = "I'll take it whole back to my hoard.",
        MARBLETREE = "Shrubs grow treasure!",
        MARSH_BUSH =
        {
			BURNT = "Delightful!",
            BURNING = "It happens to get in the way.",
            GENERIC = "Sharpened Shrubbery, but nay sharp as a claw.",
            PICKED = "My claws hast sliced!",
        },
        BURNT_MARSH_BUSH = "Sharpened ash!",
        MARSH_PLANT = "It hast a fate of ash.",
        MARSH_TREE =
        {
            BURNING = "Its warmth comforts me.",
            BURNT = "The fate of any shrub near me.",
            CHOPPED = "And become unto dust!",
            GENERIC = "Trees to match my exterior!",
        },
        MAXWELL = "Thou art not whom I quarrel with!",
        MAXWELLHEAD = "Do NOT peer upon my hoard!",
        MAXWELLLIGHT = "It sparks with an eerie flame.",
        MAXWELLLOCK = "You cannot lock away any treasure from your queen!",
        MAXWELLTHRONE = "The wealthy seat in which I must partake...!",
        MEAT = "A feast, true!",
        MEATBALLS = "I spit upon it, no sauce is better than mine own!",
        MEATRACK =
        {
            DONE = "Meat-ed treat!",
            DRYING = "Like myself, meats too wish to be dry.",
            DRYINGINRAIN = "Nothing can be dry in such heinous weather! Including thy queen!",
            GENERIC = "I, too, prefer a crisp dryness.",
            BURNT = "I was merely attempting to further the process.",
            DONE_NOTMEAT = "What treats await!",
            DRYING_NOTMEAT = "I can wait no longer...!",
            DRYINGINRAIN_NOTMEAT = "Nothing can be dry in such heinous weather! Including thy queen!",
        },
        MEAT_DRIED = "Crisp, but not charred.",
        MERM = "Your wet, soft scales amuse me not!!",
        MERMHEAD =
        {
            GENERIC = "The place to be!",
            BURNT = "I do not see it. I see it not.",
        },
        MERMHOUSE =
        {
            GENERIC = "Empty hoard, empty home.",
            BURNT = "I do not regret these happenings.",
        },
        MINERHAT = "An eternal flame upon my horns.",
        MONKEY = "Putrid beast reside underground, I see.",
        MONKEYBARREL = "What could thou possibly be hoarding...?",
        MONSTERLASAGNA = "Foul meat, I shall liquefy thee!",
        FLOWERSALAD = "It turns to mere ash at my glance.",
        ICECREAM = "I see not the appeal of such liquid.",
        WATERMELONICLE = "This sight sickens me! Away!",
        TRAILMIX = "Its ashes are quite bulkier than mine usual.",
        HOTCHILI = "A most comforting treat.",
        GUACAMOLE = "Hot, hotter!",
        MONSTERMEAT = "The remains of what steps upon my hoard!",
        MONSTERMEAT_DRIED = "I cannot eat it dry well!",
        MOOSE = "Thou feathers shall be thy downfall!",
        MOOSE_NESTING_GROUND = "Your hoard is barren and ill.",
        MOOSEEGG = "Hatch a treasure for me!",
        MOSSLING = "My children are much prettier... The mere truth!",
        FEATHERFAN = "Do not blow cold my way for I shall bite thee!",
        MINIFAN = "Do not blow cold my way for I shall bite thee!",
        GOOSE_FEATHER = "Fallible, unlike scales!",
        STAFF_TORNADO = "It spins much too fast! Do not snuff my flames!",
        MOSQUITO =
        {
            GENERIC = "Thou art not allowed to take upon my royal blood!",
            HELD = "Hast thou learned thy lesson, trying to pierce my scales?",
        },
        MOSQUITOSACK = "Bzrt. I shall drink from it like mead.",
        MOUND =
        {
            DUG = "Alas, treasure have been had.",
            GENERIC = "I eagerly take it upon myself to claw for treasure!",
        },
        NIGHTLIGHT = "What dark flames you have!",
        NIGHTMAREFUEL = "A sickly, liquid flame.",
        NIGHTSWORD = "Cuts like my teeth of swords!",
        NITRE = "Deceit! This is no gold, nor silver or old bronze!",
        ONEMANBAND = "The noise makes the head of mine spin!",
        OASISLAKE =
		{
			GENERIC = "Grant me riches and wealth!",
			EMPTY = "I kick up this desert's sand!",
		},
        PANDORASCHEST = "I wilt open it! What riches await me...!",
        PANFLUTE = "Hear the lull of the dragon's spell.",
        PAPYRUS = "In singes from the corners inward!",
        WAXPAPER = "Nay as good as a coating of scales.",
        PENGUIN = "No need to hide thine eggs, for they art mine!",
        PERD = "The red riches are mine!",
        PEROGIES = "Sealed shut with flames!",
        PETALS = "Colorful ash!",
        PETALS_EVIL = "A tasteless bit of ash.",
        PHLEGM = "My spit glows red hot, not green snot!",
        PICKAXE = "I must crack the shells of rocks to behold gold!",
        PIGGYBACK = "Just as needed, a beast to carry the weight of my gold!",
        PIGHEAD =
        {
            GENERIC = "The sign of a dragon to not mess with!",
            BURNT = "I must have already paid them a visit!",
        },
        PIGHOUSE =
        {
            FULL = "Full, but with what gold?",
            GENERIC = "I see nought but a hoard of hog!",
            LIGHTSOUT = "Do not hide treasure from your queen...!",
            BURNT = "Perhaps a bit of gold will bring your village back.",
        },
        PIGKING = "Bzzrt! That hoard of wealth...! It is mine, is it not?",
        PIGMAN =
        {
            DEAD = "Your village falters at my claws!",
            FOLLOWER = "Quite right, swine. Step towards my dragon-spell.",
            GENERIC = "Your village rules nought!! Your riches belong to no other but me...!",
            GUARD = "You guard for naught!!",
            WEREPIG = "A second form of defense for thy treasure!",
        },
        PIGSKIN = "It crackles, and soon to ash it'll burn!",
        PIGTENT = "Allow to place myself upon your wealth, beings.",
        PIGTORCH = "Is this what you guard...? No gold, nor silver?",
        PINECONE = "It crunches like old scales.",
        PINECONE_SAPLING = "Grow, yet faster!",
        LUMPY_SAPLING = "I care not the circumstances of its nature, but for its treasure!",
        PITCHFORK = "I shall mark the territory of which I walk!",
        PLANTMEAT = "I was nearly convinced this was flesh of mine own.",
        PLANTMEAT_COOKED = "Nearly the consistency I crave!",
        PLANT_NORMAL =
        {
            GENERIC = "It grows with a flame-less rage.",
            GROWING = "Grow, yes grow for me...!",
            READY = "Hear-ye! For it hast completed!",
            WITHERED = "Dry and crackly, much like myself.",
        },
        POMEGRANATE = "As many red seeds as visions in mine eyes!",
        POMEGRANATE_COOKED = "It's dripping in anticipation of flame!",
        POMEGRANATE_SEEDS = "One seed to rule them all!",
        POND = "Cold, unforgiving depths.",
        POOP = "What else might it be...?",
        FERTILIZER = "A bucket, but not one of gold.",
        PUMPKIN = "The color of flame, passion!",
        PUMPKINCOOKIE = "I treasure it most hot, and melted.",
        PUMPKIN_COOKED = "It steams like true orange flames!",
        PUMPKIN_LANTERN = "A face that glows with rage much like mine own.",
        PUMPKIN_SEEDS = "To be laid to rest upon the ground.",
        PURPLEAMULET = "My mind falters at its presence, but it's worth the luxury.",
        PURPLEGEM = "A prized possession, it speaks to me...!",
        RABBIT =
        {
            GENERIC = "Flee, flee! But there art nowhere to hide!!",
            HELD = "What hast running ever done for thee...?",
        },
        RABBITHOLE =
        {
            GENERIC = "Hide! Here? I might just reach in with my claws!",
            SPRING = "It is liquefied.",
        },
        RAINOMETER =
        {
            GENERIC = "I am happiest when the rain falls not.",
            BURNT = "My ideal preference.",
        },
        RAINCOAT = "Let the rain cower before me...!",
        RAINHAT = "For a need of dry scales.",
        RATATOUILLE = "I have a desire for it to be scalding!",
        RAZOR = "Sharp enough for hair, never for scales!",
        REDGEM = "What passion such treasure brings!",
        RED_CAP = "What a delight to light!",
        RED_CAP_COOKED = "Melts like a flame.",
        RED_MUSHROOM =
        {
            GENERIC = "Now what say you, red?",
            INGROUND = "You hide for nought.",
            PICKED = "None escape my callous claws.",
        },
        REEDS =
        {
            BURNING = "Up in smoke!",
            GENERIC = "Perhaps I shall pick at thee.",
            PICKED = "Cut clean by claws.",
        },
        RELIC = "A relic! Perfect for a hoard of any kind!",
        RUINS_RUBBLE = "What ruins and rubble I bring!",
        RUBBLE = "Rubble, rubble, rubble...!",
        RESEARCHLAB =
        {
            GENERIC = "I care not for such tinkering garble!!",
            BURNT = "Now this is to my liking!",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "Thou art mistaken if thou art to think I care.",
            BURNT = "What say you now, science? I thought not! Bzrt!",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "Passion! The glistening of gems! I must have it!",
            BURNT = "What I think of science-beings!",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "I'll say it not!",
            BURNT = "My tongue hast saved this day!",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "Why is it not of mine image...?",
            BURNT = "No wood could handle such a hot being like I.",
        },
        RESURRECTIONSTONE = "It craves my touch!",
        ROBIN =
        {
            GENERIC = "I am not fooled by thou feathers of flame!",
            HELD = "What words might you say that are final...?",
        },
        ROBIN_WINTER =
        {
            GENERIC = "I shall not adapt to thy cold, I shall not!",
            HELD = "A light snack for these cold times.",
        },
        ROBOT_PUPPET = "Exchange the throne and I shall offer thee riches! Truth!",
        ROCK_LIGHT =
        {
            GENERIC = "I cold sight to see. I shudder at it.",
            OUT = "Thou hate to see it!",
            LOW = "Zrrt! Cooling! Quickly, I must make haste!",
            NORMAL = "A most comfortable place to be. Brzzt!",
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "Allow my fiery lift thee asunder...!",
            RAISED = "My claws reach not!",
        },
        ROCK = "What treasures lie within...!",
        PETRIFIED_TREE = "I duly hope that dost not happen to me.",
        ROCK_PETRIFIED_TREE = "I duly hope that dost not happen to me.",
        ROCK_PETRIFIED_TREE_OLD = "I duly hope that dost not happen to me.",
        ROCK_ICE =
        {
            GENERIC = "Zrrt! I do not like it!",
            MELTED = "Much better, much better!",
        },
        ROCK_ICE_MELTED = "I've no passion for what extinguishes my flame.",
        ICE = "Zrrt! I spit at thee!",
        ROCKS = "To tumble upon my claws and hoard!",
        ROOK = "I make no qualms about taking out castles!",
        ROPE = "To tie up what I do not seek.",
        ROTTENEGG = "I reeks most unpleasant!",
        ROYAL_JELLY = "A jelly most royal, all for me!",
        JELLYBEAN = "I wilt place each upon my keep.",
        SADDLE_BASIC = "A basic, common tool is of no use to me!",
        SADDLE_RACE = "Quick and noble I am!",
        SADDLE_WAR = "I ride as fierce as I!",
        SADDLEHORN = "I need no saddles for my horns.",
        SALTLICK = "Lick it I wilt not!",
        BRUSH = "Scuffs scales.",
		SANITYROCK =
		{
			ACTIVE = "Let me through to the treasures you keep!",
			INACTIVE = "Gone it goes! Treasure I come!",
		},
		SAPLING =
		{
			BURNING = "Easy it burns.",
			WITHERED = "Unlike shrubs, I do not cower in such heat!",
			GENERIC = "Such tinder!",
			PICKED = "How easy it must turn to ash!",
			DISEASED = "Sickly, away from me!",
			DISEASING = "Undesirable shrubbery.",
		},
   		SCARECROW = 
   		{
			GENERIC = "I smile aT thee not.",
			BURNING = "What being doesn't burn!",
			BURNT = "Like all the others...!",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "It sculpts for nought!",
			BLOCK = "I require thee to sculpt my good side!",
			SCULPTURE = "Marvellous!",
			BURNT = "That is merely my form of artistry.",
   		},
        SCULPTURE_KNIGHTHEAD = "Bzrt! Just like a knight to have its head fallen!",
		SCULPTURE_KNIGHTBODY = 
		{
			COVERED = "Bring forth treasure, or have char be thy fate.",
			UNCOVERED = "More, more is what I desire!",
			FINISHED = "I am not known to fix-up knights.",
			READY = "It trembles with fear!",
		},
        SCULPTURE_BISHOPHEAD = "Like a trophy of marble!",
		SCULPTURE_BISHOPBODY = 
		{
			COVERED = "Might it be a relic?",
			UNCOVERED = "Reveal thyself to me!!",
			FINISHED = "What other treasure dost thou hold?",
			READY = "It trembles with fear!",
		},
        SCULPTURE_ROOKNOSE = "Like a trophy of marble!",
		SCULPTURE_ROOKBODY = 
		{
			COVERED = "A relic, mayhap one for my hoard?",
			UNCOVERED = "Further, further!",
			FINISHED = "Victory!",
			READY = "It trembles with fear!",
		},
        GARGOYLE_HOUND = "Have flames encased thee unto glass...?",
        GARGOYLE_WEREPIG = "Have flames encased thee unto glass...?",
		SEEDS = "What a pitiful feast this is to make.",
		SEEDS_COOKED = "Toasted, but not ash!",
		SEWING_KIT = "Art my claws not enough of a needle?",
		SEWING_TAPE = "It sticks to claws and scales alike.",
		SHOVEL = "For treasure that lies below...",
		SILK = "A precious treasure, but one that doesn't glitter!",
		SKELETON = "I'll not take my time to clean up my keep.",
		SCORCHED_SKELETON = "The outcome of those dare stepping unto my keep.",
        SKELETON_NOTPLAYER = "A sad being! I simply wouldst not have died.",
		SKULLCHEST = "Rich, rich riches!",
		SMALLBIRD =
		{
			GENERIC = "O, how tiny it is! How small, puny!",
			HUNGRY = "Thou hungers, but so do I, little one.",
			STARVING = "I've a strange desire to feed it?",
			SLEEPING = "O, how it whistles in its slumber!",
		},
		SMALLMEAT = "Merely a portion of a whole feast.",
		SMALLMEAT_DRIED = "Crisp, crisp!",
		SPAT = "What crust you behold! Zrrt!",
		SPEAR = "My claws are spears!",
		SPEAR_WATHGRITHR = "You, with your flint and shrubbery! Me, with my claws of spears!",
		WATHGRITHRHAT = "I am in no need of a duel set of wings.",
		SPIDER =
		{
			DEAD = "Perish before me, your ruler!",
			GENERIC = "Silken legged-best! Provide to me thou richest silk!",
			SLEEPING = "I care not for its sleeping patterns.",
		},
		SPIDERDEN = "It's no dragon's den. Not even a trace of bronze!",
		SPIDEREGGSACK = "I'm not looking for a new den.",
		SPIDERGLAND = "Is this to be eaten...?",
		SPIDERHAT = "The only place for other queens is upon my horns!",
		SPIDERQUEEN = "You have no dominion within my keep! You've nary a whiff of bronze!",
		SPIDER_WARRIOR =
		{
			DEAD = "What comes to my hoard does not return alive.",
			GENERIC = "I've felled many of your kind before!",
			SLEEPING = "No warrior sleeps for long.",
		},
		SPOILED_FOOD = "To rot, unto ash!",
        STAGEHAND =
        {
			AWAKE = "A keeper of treasure!",
			HIDING = "I trust it not. However, I fancy its presentation.",
        },
        STATUE_MARBLE = 
        {
            GENERIC = "It wishes it were me!",
            TYPE1 = "You need hide not from treasure!",
            TYPE2 = "I suggest thee replace thy head with silver!",
            TYPE3 = "I take no baths!", --bird bath type statue
        },
		STATUEHARP = "Hast thou lost thy head, what shame!",
		STATUEMAXWELL = "You need no statue. For I am the one who does!",
		STEELWOOL = "It scratches like scales, but scales dost not burn.",
		STINGER = "A single sharp claw!",
		STRAWHAT = "I am in no desire of shade...!",
		STUFFEDEGGPLANT = "More ash, the merrier!",
		SWEATERVEST = "It doth not match mine eyes.",
		REFLECTIVEVEST = "It draws attention which I seek, but not from heat!",
		HAWAIIANSHIRT = "It matches well, but I shall wear no such thing.",
		TAFFY = "The ashes still stick to one's tooth!",
		TALLBIRD = "I claw at the legs of thee!",
		TALLBIRDEGG = "I lay no cold-ridden eggs.",
		TALLBIRDEGG_COOKED = "Soft, liquefied, and taut!",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Nay, nay! Coldness wilt do nary a being good!",
			GENERIC = "Little egg, how I'm tempted to feast.",
			HOT = "What more could thou desire! It is how I hatched!",
			LONG = "Doth warm-blooded beings always take their egg-ridden time...?",
			SHORT = "Do I see a smile being cracked!",
		},
		TALLBIRDNEST =
		{
			GENERIC = "What treasure doth thou claim?",
			PICKED = "Not even a whiff of gold. What shame!",
		},
		TEENBIRD =
		{
			GENERIC = "Do not expect a share of my wealth.",
			HUNGRY = "You must turn your hunger for that of one for gold!",
			STARVING = "Feast away, strange beast.",
			SLEEPING = "Urge to sit upon it...",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "Riches, thrones! They await me!",
			GENERIC = "What future riches await me!",
			LOCKED = "I refuse to let it be locked in-front of me!",
			PARTIAL = "Make haste! Treasure is waiting!",
		},
		TELEPORTATO_BOX = "A strange trinket, perfect for my hoard.",
		TELEPORTATO_CRANK = "It will rest nicely upon my wealth.",
		TELEPORTATO_POTATO = "A sight for sore eyes. But for my hoard no less.",
		TELEPORTATO_RING = "The one true ring to rule them all...!",
		TELESTAFF = "The shine of the gem leads me to treasure yet claimed.",
		TENT = 
		{
			GENERIC = "I require a bed of gold and nothing more!",
			BURNT = "I snore a furious roar.",
		},
		SIESTAHUT = 
		{
			GENERIC = "I prefer my rest heated and lined with riches.",
			BURNT = "I snore up a furious roar!",
		},
		TENTACLE = "Thou hath few claws, but I hath many!",
		TENTACLESPIKE = "Tool given claw!",
		TENTACLESPOTS = "Scales beat spots!",
		TENTACLE_PILLAR = "A blemish to mine eyes!",
        TENTACLE_PILLAR_HOLE = "How far it goes...!",
		TENTACLE_PILLAR_ARM = "Away with your pitiful arms!",
		TENTACLE_GARDEN = "A blemish to mine eyes!",
		TOPHAT = "Not as luxurious, but rich no less!",
		TORCH = "A contained breath of death!",
		TRANSISTOR = "Rich, buzzing gold!",
		TRAP = "The beasts love to step upon it!",
		TRAP_TEETH = "It lines the entrance of any den!",
		TRAP_TEETH_MAXWELL = "A young dragon's mistake!",
		TREASURECHEST = 
		{
			GENERIC = "The container of many a wealth!!",
			BURNT = "A grievous sight!",
            UPGRADED_STACKSIZE = "Glorious! I welcome more treasure with open scales!",
		},
		TREASURECHEST_TRAP = "I risk all for my riches!",
        CHESTUPGRADE_STACKSIZE = "You'll do wonders for my hoard!", -- Describes the kit upgrade item.
		COLLAPSEDCHEST = "Alas, for all its treasure hath been looted.",
		SACRED_CHEST = 
		{
			GENERIC = "What a luxury!",
			LOCKED = "These locks wilt not stop me!",
		},
		TREECLUMP = "You cannot stop me!!",

		TRINKET_1 = "How I like them!", --Melted Marbles
		TRINKET_2 = "False treasures have no place upon my hoard.", --Fake Kazoo
		TRINKET_3 = "It is knot Gord's, for it is Dragonfly's knot!", --Gord's Knot
		TRINKET_4 = "It is no goblin, nor elf. But a treasure all the same!", --Gnome
		TRINKET_5 = "Hoard fodder.", --Toy Rocketship
		TRINKET_6 = "Precious coppers for the keep!", --Frazzled Wires
		TRINKET_7 = "Irresistible urge to hoard more.", --Ball and Cup
		TRINKET_8 = "Rubber ash doth not smell great.", --Rubber Bung
		TRINKET_9 = "Mismatched? They are all the same to me!", --Mismatched Buttons
		TRINKET_10 = "Puny being, it hast no fangs!", --Dentures
		TRINKET_11 = "We will see which one tells the truth. Me, or it!", --Lying Robot
		TRINKET_12 = "I hoard what trinkets I must.", --Dessicated Tentacle
		TRINKET_13 = "It is no goblin, nor elf. But a treasure all the same!", --Gnomette
		TRINKET_14 = "I've found many of these among my keep.", --Leaky Teacup
		TRINKET_15 = "Ash fodder, these pawns!", --Pawn
		TRINKET_16 = "Ash fodder, these pawns!", --Pawn
		TRINKET_17 = "It's less desirable in this condition.", --Bent Spork
		TRINKET_18 = "I can see right through it!", --Trojan Horse
		TRINKET_19 = "Little trinkets have their place in the keep.", --Unbalanced Top
		TRINKET_20 = "My scales are to be scratched not.", --Backscratcher
		TRINKET_21 = "I can beat it further!", --Egg Beater
		TRINKET_22 = "It is no fine silk, that is assured.", --Frayed Yarn
		TRINKET_23 = "What are these...\"shoes\" you speak of?", --Shoehorn
		TRINKET_24 = "A lucky treasure! Mine!", --Lucky Cat Jar
		TRINKET_25 = "Not all keepsakes smells the utmost quality...", --Air Unfreshener
		TRINKET_26 = "This is not treasure, it is vile!", --Potato Cup
		TRINKET_27 = "Where I shall hang up my riches.", --Coat Hanger
		TRINKET_28 = "Your move, fools!", --Rook
        TRINKET_29 = "Your move, fools!", --Rook
        TRINKET_30 = "I chew thou between my teeth and spit thee out!", --Knight
        TRINKET_31 = "I chew thou between my teeth and spit thee out!", --Knight
        TRINKET_32 = "It's treasure of its own!", --Cubic Zirconia Ball
        TRINKET_33 = "But where is thy fly ring...?", --Spider Ring
        TRINKET_34 = "I've been told it grants me wondrous wealth!", --Monkey Paw
        TRINKET_35 = "I desire plenty more!", --Empty Elixir
        TRINKET_36 = "I'm of no need! For my fangs are real!", --Faux fangs
        TRINKET_37 = "The attempt at stabbing through scales, foiled!", --Broken Stake
        TRINKET_38 = "I see enough as is.", -- Binoculars Griftlands trinket
        TRINKET_39 = "Lone gloves fill my keep.", -- Lone Glove Griftlands trinket
        TRINKET_40 = "This is not what I had in mind when it came to scales...", -- Snail Scale Griftlands trinket
        TRINKET_41 = "O, how I could watch it for days upon end!", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "Not quite me.", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "Not quite me either...", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "What's broken is in the bottom of my rich hoard.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "I'll singe it to cinder.", -- Odd Radio ONI trinket
        TRINKET_46 = "I'll singe it to cinder.", -- Hairdryer ONI trinket

        LOST_TOY_1  = "My claws cannot pick it up...! But it must be for my hoard!",
        LOST_TOY_2  = "My claws cannot pick it up...! But it must be for my hoard!",
        LOST_TOY_7  = "My claws cannot pick it up...! But it must be for my hoard!",
        LOST_TOY_10 = "My claws cannot pick it up...! But it must be for my hoard!",
        LOST_TOY_11 = "My claws cannot pick it up...! But it must be for my hoard!",
        LOST_TOY_14 = "My claws cannot pick it up...! But it must be for my hoard!",
        LOST_TOY_18 = "My claws cannot pick it up...! But it must be for my hoard!",
        LOST_TOY_19 = "My claws cannot pick it up...! But it must be for my hoard!",
        LOST_TOY_42 = "My claws cannot pick it up...! But it must be for my hoard!",
        LOST_TOY_43 = "My claws cannot pick it up...! But it must be for my hoard!",
        
        HALLOWEENCANDY_1 = "It must be liquid before I taste it proper!",
        HALLOWEENCANDY_2 = "What doth make a corn turn unto candy...?",
        HALLOWEENCANDY_3 = "I question these flame-tinted pellets...",
        HALLOWEENCANDY_4 = "If only the ones that bite were as chewy!",
        HALLOWEENCANDY_5 = "I taste no iron within!",
        HALLOWEENCANDY_6 = "To ash, it'll taste the same.",
        HALLOWEENCANDY_7 = "Is this... a feast?",
        HALLOWEENCANDY_8 = "It tastes nought of the undead.",
        HALLOWEENCANDY_9 = "It melts between my claws...!",
        HALLOWEENCANDY_10 = "I see nought but future ash.",
        HALLOWEENCANDY_11 = "These taste not as sweet as victory!",
        HALLOWEENCANDY_12 = "What grub!", --ONI meal lice candy
        HALLOWEENCANDY_13 = "It cracks my fangs not!", --Griftlands themed candy
        HALLOWEENCANDY_14 = "I'll eat one, I'll eat a surplus! All the same!", --Hot Lava pepper candy
        CANDYBAG = "For the treasury of taste!",

		HALLOWEEN_ORNAMENT_1 = "I have no fear of the undying...!",
		HALLOWEEN_ORNAMENT_2 = "The incorrect winged-beast to praise!",
		HALLOWEEN_ORNAMENT_3 = "I've seen enough of this.", 
		HALLOWEEN_ORNAMENT_4 = "Must it hang around my horns?",
		HALLOWEEN_ORNAMENT_5 = "Must it hang around my horns?",
		HALLOWEEN_ORNAMENT_6 = "I refuse to make eye contact.", 

		HALLOWEENPOTION_DRINKS_WEAK = "Zrt! How weak! I desire a stronger, hotter mead!",
		HALLOWEENPOTION_DRINKS_POTENT = "I kick to tingle my scales!",
        HALLOWEENPOTION_BRAVERY = "I'll fear nevermore!",
		HALLOWEENPOTION_MOON = "I will know what it is to be of that moon!",
		HALLOWEENPOTION_FIRE_FX = "Shall it make my breath that of one of extravagance!?", 
		MADSCIENCE_LAB = "I quite favor these flame-ridden fixtures.",
		LIVINGTREE_ROOT = "Come alive, root! Come alive!", 
		LIVINGTREE_SAPLING = "The fire kindles within it.",

        DRAGONHEADHAT = "Such intimidation! ...Nobody else is allowed to wear this.",
        DRAGONBODYHAT = "I do tend to think with my stomach, after all...",
        DRAGONTAILHAT = "I'll not wear my own tail where it doth not belong!",
        PERDSHRINE =
        {
            GENERIC = "You will get no such gold from me!",
            EMPTY = "Shurbbery, shrubbery!",
            BURNT = "False idols that art not me? To ash!",
        },
        REDLANTERN = "A deep magmatic hue!",
        LUCKY_GOLDNUGGET = "I'll never part with it!",
        FIRECRACKERS = "Such a display is shown!",
        PERDFAN = "I care only for flames that blow!",
        REDPOUCH = "What is in it, is mine and mine alone!",
        WARGSHRINE = 
        {
            GENERIC = "You will get no such riches from me!",
            EMPTY = "It seeks flames!",
            BURNT = "False idols that art not me? To ash!",
        },
        CLAYWARG = 
        {
            GENERIC = "It cracks at thy seams!",
            STATUE = "I hiss at thee.",
        },
        CLAYHOUND = 
        {
            GENERIC = "Fragile, fragile you art!",
            STATUE = "You art made to lay upon a hoard.",
        },
        HOUNDWHISTLE = "Do not give your queen an aching head.",
        CHESSPIECE_CLAYHOUND = "My fangs bite stronger. More fierce!",
        CHESSPIECE_CLAYWARG = "Posh.",

		PIGSHRINE =
		{
            GENERIC = "You will get no such treasure from me!",
            EMPTY = "I hunger for meat, myself.",
            BURNT = "False idols that art not me? To ash!",
		},
		PIG_TOKEN = "A rich token for me, me!",
		PIG_COIN = "I will not part with a single coin! Not one piece of it!",
		YOTP_FOOD1 = "A feast for no other but I!",
		YOTP_FOOD2 = "Mud to them, ash to me.",
		YOTP_FOOD3 = "A snack of many headed-beings!",

		PIGELITE1 = "The gold you desire is mine to keep!!", --BLUE
		PIGELITE2 = "Away from the gold, for it is mine alone!", --RED
		PIGELITE3 = "Hissssszz!", --WHITE
		PIGELITE4 = "Thy gold shalt be rightfully mine!", --GREEN

		PIGELITEFIGHTER1 = "The gold you desire is mine to keep!!", --BLUE
		PIGELITEFIGHTER2 = "Away from the gold, for it is mine alone!", --RED
		PIGELITEFIGHTER3 = "Hissssszz!", --WHITE
		PIGELITEFIGHTER4 = "Thy gold shalt be rightfully mine!", --GREEN

		CARRAT_GHOSTRACER = "Let the gold be mine! Your shadow-scales are for nought!",
        YOTC_CARRAT_RACE_START = "Like the start of a dragon's hoard!",
        YOTC_CARRAT_RACE_CHECKPOINT = "Do not weep if it catches a bit of flame!",
        YOTC_CARRAT_RACE_FINISH =
        {
            GENERIC = "Made just for me and my den!",
            BURNT = "Dragons always finish with flames!",
            I_WON = "Bzrrrt! Bzrt! Rain rich, rich gold upon my scales!",
            SOMEONE_ELSE_WON = "Zrrrt. That gold shalt be mine soon, {winner}.",
        },
		YOTC_CARRAT_RACE_START_ITEM = "I started off with a bit more heat than this...!",
        YOTC_CARRAT_RACE_CHECKPOINT_ITEM = "Check for gold!",
		YOTC_CARRAT_RACE_FINISH_ITEM = "But where might thy gold be...?",
		YOTC_SEEDPACKET = "More for my keep!",
		YOTC_SEEDPACKET_RARE = "My hoard loves the rare delicacies!",
		MINIBOATLANTERN = "Sea given flame!",
        YOTC_CARRATSHRINE =
        {
            GENERIC = "You will get no such treasure from me!",
            EMPTY = "It wants a feast, but not of ash!",
            BURNT = "False idols that art not me? To ash!",
        },
        YOTC_CARRAT_GYM_DIRECTION = 
        {
            GENERIC = "Doth the threat of burning by my flames not help?",
            RAT = "It waddles like freshly formed lavae! Bzrt!",
            BURNT = "My sweat would have caught flame too.",
        },
        YOTC_CARRAT_GYM_SPEED = 
        {
            GENERIC = "Doth the threat of burning by my flames not help?",
            RAT = "Flap like my wings!",
            BURNT = "My toes burn what I run upon too!",
        },
        YOTC_CARRAT_GYM_REACTION = 
        {
            GENERIC = "Maybe a little flame will help your reactions!",
            RAT = "Let's see how quickly you react to my flames!",
            BURNT = "I expect nothing less of my subjects!",
        },
        YOTC_CARRAT_GYM_STAMINA = 
        {
            GENERIC = "You'll never be as fit as me! Bzrt!",
            RAT = "Now all you need are scales!",
            BURNT = "My sweat would have caught flame too.",
        }, 
        YOTC_CARRAT_GYM_DIRECTION_ITEM = "Work up a fiery sweat!",
        YOTC_CARRAT_GYM_SPEED_ITEM = "Work up a fiery sweat!",
        YOTC_CARRAT_GYM_STAMINA_ITEM = "Work up a fiery sweat!",
        YOTC_CARRAT_GYM_REACTION_ITEM = "Work up a fiery sweat!",
        YOTC_CARRAT_SCALE_ITEM = "I know my way around scales well enough.",           
        YOTC_CARRAT_SCALE = 
        {
            GENERIC = "I expect nothing but scales! It's who I am!",
            CARRAT = "Zrt. I was hoping it would give it scales.",
            CARRAT_GOOD = "The name was misleading. I see no scales!",
            BURNT = "My scales wouldn't burn!",
        },
        YOTB_BEEFALOSHRINE =
        {
            GENERIC = "You will get no such treasure from me!",
            EMPTY = "This situation is not yet hairy enough.",
            BURNT = "False idols that art not me? To ash!",
        },

        BEEFALO_GROOMER =
        {
            GENERIC = "What magnificent horns, me!",
            OCCUPIED = "You may lack scales, and beauty! ...That's all!",
            BURNT = "Ah, much hotter!",
        },
        BEEFALO_GROOMER_ITEM = "Build it up, and quickly too!",

        YOTR_RABBITSHRINE =
        {
            GENERIC = "You will get no such treasure from me!",
            EMPTY = "Provide upon it some pity, someone else!",
            BURNT = "False idols that art not me? To ash!",
        },

        NIGHTCAPHAT = "I'll rest my queenly head only on a hoard of gold!",

        YOTR_FOOD1 = "Might I indulge..?",
        YOTR_FOOD2 = "It is I who enjoys herself some cake!",
        YOTR_FOOD3 = "Such a royal hue!",
        YOTR_FOOD4 = "Serve your queen by feeding her!",

        YOTR_TOKEN = "Who shall bite a bit of claw?",

        COZY_BUNNYMAN = "Insulting! Who dares look so comfortable under my rule?",

        HANDPILLOW_BEEFALOWOOL = "Disgusting hairs! To ash!",
        HANDPILLOW_KELP = "It makes for such pitiable ash.",
        HANDPILLOW_PETALS = "Nothing but ash-fodder to me!",
        HANDPILLOW_STEELWOOL = "We could be using scales!",

        BODYPILLOW_BEEFALOWOOL = "Disgusting hairs! To ash!",
        BODYPILLOW_KELP = "It makes for such pitiable ash.",
        BODYPILLOW_PETALS = "Nothing but ash-fodder to me!",
        BODYPILLOW_STEELWOOL = "We could be using scales!",

		BISHOP_CHARGE_HIT = "ZzZzrrt!",
		TRUNKVEST_SUMMER = "I turn it to ash by the heat of the sun!",
		TRUNKVEST_WINTER = "If it keeps the warmth within...",
		TRUNK_COOKED = "Seared!",
		TRUNK_SUMMER = "Thankful my nose is not as tall.",
		TRUNK_WINTER = "My nose would never...!",
		TUMBLEWEED = "Roaming riches! To dance unto my den!",
		TURKEYDINNER = "A feast of mine, mine o' mine!",
		TWIGS = "Snappable tinder.",
		UMBRELLA = "Keep the treacherous weather away from my head!",
		GRASS_UMBRELLA = "You protect my flame not!!",
		UNIMPLEMENTED = "The most rare materiel... Nothing at all!",
		WAFFLES = "More liquid upon it! I must digest this treat!",
		WALL_HAY = 
		{	
			GENERIC = "Is that what peasants have for protection? Better for us dragonflies!",
			BURNT = "Foolish! Next shall be thy thatched roof cottages!",
		},
		WALL_HAY_ITEM = "A hideous display of defense!",
		WALL_STONE = "I bite and claw at thee!",
		WALL_STONE_ITEM = "It is no match for any dragon on a quest for wealth.",
		WALL_RUINS = "Such glaze! Such glittery precious gold...! I swoon!",
		WALL_RUINS_ITEM = "The most extravagant dwellings to keep!",
		WALL_WOOD = 
		{
			GENERIC = "Do not expect me to cover my breath.",
			BURNT = "Thou must be silly to think of any other outcome!",
		},
		WALL_WOOD_ITEM = "Provides a fallacy of protection.",
		WALL_MOONROCK = "It glitters only at night!",
		WALL_MOONROCK_ITEM = "A precious yet fruitless protection.",
		WALL_DREADSTONE = "Just what a throne of mine needs!",
		WALL_DREADSTONE_ITEM = "Perhaps I could hoard it?",
        WALL_SCRAP = "Zrt. It's made of second-rate metals.",
        WALL_SCRAP_ITEM = "If only it were shinier and richer.",
		FENCE = "No fence contains me...!",
        FENCE_ITEM = "Attempt to imprison me, I shall like to see it!",
        FENCE_GATE = "I go in and out whenever I please.",
        FENCE_GATE_ITEM = "No gate will stop me from entering.",
		WALRUS = "What riches have kept thou afloat?",
		WALRUSHAT = "Your precious hat belongs to my hoard!",
		WALRUS_CAMP =
		{
			EMPTY = "Zrrt! A foul waste of time! There is nary a piece of coin!",
			GENERIC = "I desire to see what treasures you keep away within...!",
		},
		WALRUS_TUSK = "A tusk for a tooth!",
		WARDROBE = 
		{
			GENERIC = "I wear valuables, I wear luxury!",
            BURNING = "I suppose I am much too hot.",
			BURNT = "The hottest of looks!",
		},
		WARG = "What big teeth thou hast...!",
		WARGLET = "What teeth thou hast...!",
		WASPHIVE = "I care not for thou faux-treasure!",
		WATERBALLOON = "Hisssszt!!",
		WATERMELON = "An odd reminder of oneself.",
		WATERMELON_COOKED = "Red, but not of flame...?",
		WATERMELONHAT = "A most humiliating feeling...",
		WAXWELLJOURNAL = "What dark secrets doth thou hold...?",
		WETGOOP = "Perfectly edible!",
        WHIP = "It cracks within thine ears ever-louder!",
		WINTERHAT = "Whatever I must do to keep away the retched cold from my light...",
		WINTEROMETER = 
		{
			GENERIC = "Tell me when it hast signs pointing to the hottest season.",
			BURNT = "My season!",
		},

        WINTER_TREE =
        {
            BURNT = "Now my time has come...!",
            BURNING = "It simmers oh so jolly!",
            CANDECORATE = "Embellishment is needed! With only the finest jewels!",
            YOUNG = "Pitiful.",
        },
		WINTER_TREESTAND = 
		{
			GENERIC = "Line it with silver, copper, and iron!",
            BURNT = "What others pity, I celebrate!",
		},
        WINTER_ORNAMENT = "What a charm! I must have it.",
        WINTER_ORNAMENTLIGHT = "What light is without fire? Not even brimstone...?",
        WINTER_ORNAMENTBOSS = "To the top it goes! What treasure!!",
		WINTER_ORNAMENTFORGE = "Do I feel a bit of warmth...?",
		WINTER_ORNAMENTGORGE = "I shall like to eat this one. Any objections? I do not care!",

        WINTER_FOOD1 = "I'll drool upon it whilst nobody watches.", --gingerbread cookie
        WINTER_FOOD2 = "Powder like ash!", --sugar cookie
        WINTER_FOOD3 = "It melts wondrously!", --candy cane
        WINTER_FOOD4 = "Even its sludge is reprehensible.", --fruitcake
        WINTER_FOOD5 = "Is wood eating a thing other beings do?", --yule log cake
        WINTER_FOOD6 = "Liquefy!", --plum pudding
        WINTER_FOOD7 = "A liquid much too thin. I prefer cinder!", --apple cider
        WINTER_FOOD8 = "I shalt like it hotter, hotter!", --hot cocoa
        WINTER_FOOD9 = "Burn it to a boil! Top it with ash!!", --eggnog

		--Dishes are not final - let these be for now
		WINTERSFEASTOVEN =
		{
			GENERIC = "Is my mouth not enough to cook upon?",
			COOKING = "I await its return.",
			ALMOST_DONE_COOKING = "A smell undeniable fills the air!",
			DISH_READY = "I had hoped for ash.",
		},
		BERRYSAUCE = "Liquid deceit!",
		BIBINGKA = "Might it already be ashen?",
		CABBAGEROLLS = "I feel no need to spit upon it...?",
		FESTIVEFISH = "What a feast this shall be!",
		GRAVY = "A bourgeois appearance for ash it appears!",
		LATKES = "Do I taste... ash!",
		LUTEFISK = "A feast, one I cannot share!",
		MULLEDDRINK = "Such a mead!!",
		PANETTONE = "I need not to chew!!",
		PAVLOVA = "I prefer my desert's lova.",
		PICKLEDHERRING = "Hear-ye, Herr-ye!",
		POLISHCOOKIE = "What treats, what treats!",
		PUMPKINPIE = "Goop? For me!",
		ROASTTURKEY = "O, how I shall feast for a day!!",
		STUFFING = "I hath no choice but to stuff it in me.",
		SWEETPOTATO = "NAshen sweets!",
		TAMALES = "Treasure hides within!",
		TOURTIERE = "A filling fit for a queen!",

		TABLE_WINTERS_FEAST = 
		{
			GENERIC = "A table for my den I seek!",
			HAS_FOOD = "Hear, hear!",
			WRONG_TYPE = "To ash with it!",
			BURNT = "I get excited!",
		},

		GINGERBREADWARG = "I shall crunch upon thee!", 
		GINGERBREADHOUSE = "What treasure lies within? Sugary silvers?", 
		GINGERBREADPIG = "I will not hesitate to stomp upon thee with my toes.",
		CRUMBS = "You have led the dragon right to your keep!",
		WINTERSFEASTFUEL = "Like fire for festivities!",

        KLAUS = "Treasure-keeper, let thy treasure be claimed or face my breath of death!",
        KLAUS_SACK = "Bzrrt-zrt! A dream, a dream!!",
		KLAUSSACKKEY = "I cannot hesitate, there's treasure to be made mine!",
		WORMHOLE =
		{
			GENERIC = "What treasures might you take me to...?",
			OPEN = "A wyrm's maw much larger than mine own!",
		},
		WORMHOLE_LIMITED = "Must you make a mockery of my hue...?",
		ACCOMPLISHMENT_SHRINE = "Bzrrt-zrt! A reward for me!!",        
		LIVINGTREE = "Doth thee guard riches, wealth perhaps...?",
		ICESTAFF = "Not even upon my enemies shall I spit cold.",
		REVIVER = "If thy heart fails thee, climb not at all!",
		SHADOWHEART = "A heart of dark, corrupt!",
        ATRIUM_RUBBLE = 
        {
			LINE_1 = "A mere village, dragon-less.",
			LINE_2 = "Paintings I see not.",
			LINE_3 = "Ah, a dragon claims its place upon these beings!",
			LINE_4 = "Hath the dragon done this...? What work!",
			LINE_5 = "Zrrt! Such undeserved wealth!",
		},
        ATRIUM_STATUE = "I smell you, I hear your breath, I feel your tortured air!",
        ATRIUM_LIGHT = 
        {
			ON = "A light is showering upon my glistening scales...!",
			OFF = "Power it with my fire and flame!",
		},
        ATRIUM_GATE =
        {
			ON = "A light! Doth thou point to riches?",
			OFF = "Ruins! A step to riches!",
			CHARGING = "It is gearing up its breath...!",
			DESTABILIZING = "It frets! It falters...!",
			COOLDOWN = "It shivers for not.",
        },
        ATRIUM_KEY = "Unconstrained power! I must have it for mine own!",
		LIFEINJECTOR = "A needle to pierce those who falter! But not to my scales!",
		SKELETON_PLAYER =
		{
			MALE = "Poor %s, for thou hath become décor for my keep!",
			FEMALE = "Poor %s, for thou hath become décor for my den!",
			ROBOT = "Poor %s, for thou hath become décor for my hoard!",
			DEFAULT = "Thou hast become décor to my hoard!",
		},
		HUMANMEAT = "Your flesh concerns me not!!",
		HUMANMEAT_COOKED = "All warm-blooded beings sear the same!",
		HUMANMEAT_DRIED = "Do not judge what a dragon eats. Zrrt.",
		ROCK_MOON = "Treasure from thy moon unto my keep.",
		MOONROCKNUGGET = "Treasure from thy moon to my keep.",
		MOONROCKCRATER = "To be bejewelled...! But what shall I choose!",
		MOONROCKSEED = "That glow, that shine...! Thou must be mine!",

        REDMOONEYE = "The eye on top my hoard!",
        PURPLEMOONEYE = "I too, hath eyes for jewels!",
        GREENMOONEYE = "Such beauty!",
        ORANGEMOONEYE = "Gorgeous, is it not? Bzzt! The correct response is indeed!",
        YELLOWMOONEYE = "Gorgeous, is it not? Bzzt! The correct response is certainly!",
        BLUEMOONEYE = "A cold, glistening eye of mine!",

        --Arena Event
        LAVAARENA_BOARLORD = "Your throne is mine to claim!",
        BOARRIOR = "No matter my size, thou shalt fall at my claws!",
        BOARON = "Thou art mere fodder to the flame of death!",
        PEGHOOK = "A contest of corrosive spit you desire!",
        TRAILS = "Your toes burn the ground not!",
        TURTILLUS = "If thou had scales, thou needn't hide!",
        SNAPPER = "You miss what I seek! Wealth!",
		RHINODRILL = "Your passion is ablaze! But your riches low!",
		BEETLETAUR = "My breath is the key for the lock upon thee...!",

        LAVAARENA_PORTAL = 
        {
            ON = "Away for the treasure I seek is not here!",
            GENERIC = "You cannot contain me!",
        },
        LAVAARENA_KEYHOLE = "Treasure to be unlocked!",
		LAVAARENA_KEYHOLE_FULL = "Now where is the treasure...?",
        LAVAARENA_BATTLESTANDARD = "Away with it!",
        LAVAARENA_SPAWNER = "I shall claim thee territory in my name!",

        HEALINGSTAFF = "A flame most healing.",
        FIREBALLSTAFF = "I rain death and brimstone upon thee!!",
        HAMMER_MJOLNIR = "I smack thee! Ashes remain!",
        SPEAR_GUNGNIR = "Like wings of hurricanes!",
        BLOWDART_LAVA = "My breath of death awaits thee!",
        BLOWDART_LAVA2 = "My spit hast gone projectile!",
        LAVAARENA_LUCY = "Allow me to throw thee!",
        WEBBER_SPIDER_MINION = "A mere pawn among thieves.",
        BOOK_FOSSIL = "Encase thee in a tome most cold.",
		LAVAARENA_BERNIE = "Make way, jester!",
		SPEAR_LANCE = "A twisted claw to place within thy guts.",
		BOOK_ELEMENTAL = "I hear tales of its fiery rain!",
		LAVAARENA_ELEMENTAL = "Heated rocks from below!",

   		LAVAARENA_ARMORLIGHT = "It is to be burst to ash.",
		LAVAARENA_ARMORLIGHTSPEED = "May my toes be as light as my wings!",
		LAVAARENA_ARMORMEDIUM = "My scales, iron! This? Charcoal!",
		LAVAARENA_ARMORMEDIUMDAMAGER = "Sharp, but nary a scale!",
		LAVAARENA_ARMORMEDIUMRECHARGER = "My fiery bursts it to tinder!",
		LAVAARENA_ARMORHEAVY = "Stone scales!",
		LAVAARENA_ARMOREXTRAHEAVY = "My armor is iron. No blade can pierce me!",

		LAVAARENA_FEATHERCROWNHAT = "May my toes be as light as my wings...!",
        LAVAARENA_HEALINGFLOWERHAT = "Dost it not burst to ash upon my horns...?",
        LAVAARENA_LIGHTDAMAGERHAT = "A second head of horns!",
        LAVAARENA_STRONGDAMAGERHAT = "My horns grow fierce!",
        LAVAARENA_TIARAFLOWERPETALSHAT = "It works not for me.",
        LAVAARENA_EYECIRCLETHAT = "My flame, my passion! A crown of jewels!",
        LAVAARENA_RECHARGERHAT = "Bzt! I must wear such crystals upon my head!",
        LAVAARENA_HEALINGGARLANDHAT = "It heals me with a fiery flame.",
        LAVAARENA_CROWNDAMAGERHAT = "A head of ferocious horns unmatched!!",

		LAVAARENA_ARMOR_HP = "My most comfortable luxury!",
		LAVAARENA_FIREBOMB = "Allow my flame to burst upon thee...!",
		LAVAARENA_HEAVYBLADE = "No blade is as heavy as my tail...!",

        --Quagmire
        QUAGMIRE_ALTAR = 
        {
        	GENERIC = "A ferocious wyrm to match me lies ahead.",
        	FULL = "Must this be the wyrm thou feed? For I am right here!",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "I, too, wish to have statues of mine image.",
		QUAGMIRE_PARK_FOUNTAIN = "From flame, to water.",
		
        QUAGMIRE_HOE = "I'll not do such peasantries!",
        
        QUAGMIRE_TURNIP = "I bite thee!",
        QUAGMIRE_TURNIP_COOKED = "I spit at thee, for I would regret a bite.",
        QUAGMIRE_TURNIP_SEEDS = "Lay them upon the richest soil!",
        
        QUAGMIRE_GARLIC = "That smell, that taste! Luxurious!",
        QUAGMIRE_GARLIC_COOKED = "It sparkles dully!",
        QUAGMIRE_GARLIC_SEEDS = "Lay them upon the richest soil!",
        
        QUAGMIRE_ONION = "A layering! Not one of scales!",
        QUAGMIRE_ONION_COOKED = "Simmering!",
        QUAGMIRE_ONION_SEEDS = "Lay them upon the richest soil!",
        
        QUAGMIRE_POTATO = "Like the head of a being. To be crunched upon!",
        QUAGMIRE_POTATO_COOKED = "Much too dry!",
        QUAGMIRE_POTATO_SEEDS = "Lay them upon the richest soil!",
        
        QUAGMIRE_TOMATO = "A luxurious red, and it so bleeds!",
        QUAGMIRE_TOMATO_COOKED = "Its skin falls, its juice sprawls!",
        QUAGMIRE_TOMATO_SEEDS = "Lay them upon the richest, hottest soil!",
        
        QUAGMIRE_FLOUR = "My scales deflect its powdery attack!",
        QUAGMIRE_WHEAT = "I burn it. Nothing more!",
        QUAGMIRE_WHEAT_SEEDS = "Lay them upon the richest soil!",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "Lay them upon the richest soil!",
        
        QUAGMIRE_ROTTEN_CROP = "This wyrm wilt not want such atrocities! Nor the one in thy sky!!",
        
		QUAGMIRE_SALMON = "I hold it betwixt my teeth!",
		QUAGMIRE_SALMON_COOKED = "Doth the sky wyrm like it liquefied too...?",
		QUAGMIRE_CRABMEAT = "Briny feast!",
		QUAGMIRE_CRABMEAT_COOKED = "Doth the sky wyrm like it liquefied too...?",
        QUAGMIRE_POT = "Cook with it! Or else I shalt use my breath!",
        QUAGMIRE_POT_SMALL = "Cook with it! Or else I shalt use my breath!",
        QUAGMIRE_POT_HANGER_ITEM = "Hang up riches upon it.",
		QUAGMIRE_SUGARWOODTREE = 
		{
			GENERIC = "For me, thou shalt bleed!",
			STUMP = "It bleeds not!",
			TAPPED_EMPTY = "Emptiness amuses me not!",
			TAPPED_READY = "The sweet fire awaits me!",
			TAPPED_BUGS = "I am tempted to join in the feast!!",
			WOUNDED = "From use, it falters.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB = 
		{
			GENERIC = "A shrub, like flame!",
			PICKED = "My claws hast done their deeds!",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "Bzzt! A smell so hot!",
		QUAGMIRE_SPOTSPICE_GROUND = "To everything this must be upon!!",
		QUAGMIRE_SAPBUCKET = "In it I hear echoes...!",
		QUAGMIRE_SAP = "Liquid flame, is it not?",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Putrid clumps hath gathered!",
			GENERIC = "I wait for not! Zrt!",
		},
		
		QUAGMIRE_POND_SALT = "I prefer my salts from pools of magma!",
		QUAGMIRE_SALT_RACK_ITEM = "Place it upon the ground.",

		QUAGMIRE_SAFE = 
		{
			GENERIC = "Riches and wealth must be within thee! Bzrt!",
			LOCKED = "Thou locks cannot keep me away for long!!",
		},

		QUAGMIRE_KEY = "It opens all which is rightfully mine!",
		QUAGMIRE_KEY_PARK = "To claim gates of mine own!",
        QUAGMIRE_PORTAL_KEY = "I wish to take it with me!",

		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "What reason doth thee crowd the shrubbery...?",
			PICKED = "I see no appeal in such stumps!",
		},
		QUAGMIRE_MUSHROOMS = "Tiny beings to become ash.",
        QUAGMIRE_MEALINGSTONE = "I need grind not, for I hath flames!",
		QUAGMIRE_PEBBLECRAB = "What a quick feast thou might make!",
		
		QUAGMIRE_RUBBLE_CARRIAGE = "Bits unto ash!",
        QUAGMIRE_RUBBLE_CLOCK = "To ash and to bits!",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Forsaken treasures!",
        QUAGMIRE_RUBBLE_PUBDOOR = "Treasures, gone!",
        QUAGMIRE_RUBBLE_ROOF = "A dragon's pride!",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "Surely no more treasure lies within!",
        QUAGMIRE_RUBBLE_BIKE = "I smash thee, too!",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "If it's in ruin, its riches must hath all gone away!",
            "The wyrm hast already claimed this village!",
            "What fun is a village a wyrm hast already passed through?",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Rubble and ruin!",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Rubble and more ruin!",
        QUAGMIRE_MERMHOUSE = "Wreckage of a wyrm!",
        QUAGMIRE_SWAMPIG_HOUSE = "Shambles!",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "What treasure could possibly still await thou?",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "Being! Why doth thou not allow scales to take thee hold...?",
            SLEEPING = "No where might the remains of wealth be...?",
        },
        QUAGMIRE_SWAMPIG = "If I were thee, I would let the scales encapsulate me!",
        
        QUAGMIRE_PORTAL = "I've no need to escape, but to conquer!",
        QUAGMIRE_SALTROCK = "A hearty tooth-chew!",
        QUAGMIRE_SALT = "Bitter like crisp ash!",
        --food--
        QUAGMIRE_FOOD_BURNT = "A meal to me!",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "It is I who should be offered this!",
            MISMATCH = "A proper wyrm take what may and dost not protest!",
            MATCH = "Is this what thou want? Nay riches and wealth...?",
            MATCH_BUT_SNACK = "Do not protest my snack!",
        },
        
        QUAGMIRE_FERN = "I breathe and to ash it becomes...!",
        QUAGMIRE_FOLIAGE_COOKED = "To slurp...!",
        QUAGMIRE_COIN1 = "A coin for my hoard!",
        QUAGMIRE_COIN2 = "I'll take many a piece for my keep!",
        QUAGMIRE_COIN3 = "All thou riches, to me! To me!! Bzzrt!",
        QUAGMIRE_COIN4 = "I cannot part with it! For it is rightfully mine!",
        QUAGMIRE_GOATMILK = "I shall drink upon it not!",
        QUAGMIRE_SYRUP = "Like liquid flame, is it not...?",
        QUAGMIRE_SAP_SPOILED = "A gooey flame, extinguished!",
        QUAGMIRE_SEEDPACKET = "Treasure! ...For soil.",
        
        QUAGMIRE_POT_SYRUP = "Fill it up, hurry now! Zrt!",
        QUAGMIRE_POT_HANGER = "Hang up our riches and wealth!",
        QUAGMIRE_GRILL = "It wilt not cook as finely as my scales.",
        QUAGMIRE_GRILL_ITEM = "It wilt not cook as finely as my scales.",
        QUAGMIRE_GRILL_SMALL = "What little scales it has!",
        QUAGMIRE_GRILL_SMALL_ITEM = "What little scales it has!",
        QUAGMIRE_OVEN = "A wyrm's hot breath!",
        QUAGMIRE_OVEN_ITEM = "Breath given stone.",
        QUAGMIRE_CASSEROLEDISH = "For the richest of wealth!",
        QUAGMIRE_CASSEROLEDISH_SMALL = "I take only thy richest feasts",
        QUAGMIRE_PLATE_SILVER = "A plate with its proper place served to me among my hoard!",
        QUAGMIRE_BOWL_SILVER = "A luxurious bowl! To be mine alone!",
        
        QUAGMIRE_MERM_CART1 = "Part with thou fresh wealth upon me, being!", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I employ thou to hand over thou riches.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Doth thou stare at my superior scales?",
        QUAGMIRE_PARK_ANGEL2 = "Doth thou stare at my superior scales?",
        QUAGMIRE_PARK_URN = "Doth hast ashes for a snack?",
        QUAGMIRE_PARK_OBELISK = "What one wyrm left not in ruin, another will!",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "You cannot contain me, simple and clean!",
            LOCKED = "You lock for me not! Let me iiin!",
        },
        QUAGMIRE_PARKSPIKE = "A horn!",
        QUAGMIRE_CRABTRAP = "Come forth, crabs!",
        QUAGMIRE_TRADER_MERM = "Doth thou boast treasure in which I seek...?",
        QUAGMIRE_TRADER_MERM2 = "Doth thou boast treasure in which I seek...?",
        
        QUAGMIRE_GOATMUM = "I encourage you to keep thy scales! It is truly superior!",
        QUAGMIRE_GOATKID = "Little being, would thou know where thee mother keeps thou riches?",
        QUAGMIRE_PIGEON =
        {
            DEAD = "Perish before me elsewhere!",
            GENERIC = "You! What riches doth thou have!",
            SLEEPING = "Why must beings not sleep upon gold?",
        },
        QUAGMIRE_LAMP_POST = "An ever-flowing flame!",

        QUAGMIRE_BEEFALO = "I cannot pity you!",
        QUAGMIRE_SLAUGHTERTOOL = "I choose to use my claws, my fangs!",

        QUAGMIRE_SAPLING = "It grows not!",
        QUAGMIRE_BERRYBUSH = "Berries! Wherefore art thou, berries!",

        QUAGMIRE_ALTAR_STATUE2 = "Your eyes, to my hoard!",
        QUAGMIRE_ALTAR_QUEEN = "Thou should be me!",
        QUAGMIRE_ALTAR_BOLLARD = "I wish not to stand around!",
        QUAGMIRE_ALTAR_IVY = "Green as scales! But not as hardened!",

        QUAGMIRE_LAMP_SHORT = "An ever-flowing flame! The size of me!",

        --v2 Winona
        WINONA_CATAPULT = 
        {
        	GENERIC = "Swing upon thee castle!",
        	OFF = "It awaits its time to fire!",
        	BURNING = "It cannot handle flames like I!",
        	BURNT = "What shame!",
			SLEEP = "Swing upon thee castle!",
        },
        WINONA_SPOTLIGHT = 
        {
        	GENERIC = "Shine upon me!",
        	OFF = "Switch it on, admire my scales!",
        	BURNING = "Thy lights are too hot!",
        	BURNT = "Might I have been too hot for thy light...?",
			SLEEP = "Shine upon me!",
        },
        WINONA_BATTERY_LOW = 
        {
        	GENERIC = "But does it contain gold? A bit of copper perhaps...?",
        	LOWPOWER = "It falters so!",
        	OFF = "O, how it waits!",
        	BURNING = "It cannot handle flames like I!",
        	BURNT = "What shame!",
        },
        WINONA_BATTERY_HIGH = 
        {
        	GENERIC = "I'll place the entire rig upon my hoard if I must!",
        	LOWPOWER = "Such magic falters! I'll make better use of such jewels!",
        	OFF = "It awaits...",
        	BURNING = "It cannot handle flames like I!",
        	BURNT = "What shame!",
			OVERLOADED = "Look how it aches under such severe heat!",
        },
		--v3 Winona
		WINONA_REMOTE =
		{
			GENERIC = "Might you create one that works on all beings?",
			OFF = "O, how it waits!",
			CHARGING = "Might you create one that works on all beings?",
			CHARGED = "Might you create one that works on all beings?",
		},
		WINONA_TELEBRELLA =
		{
			GENERIC = "How convenient it'd be if it were mine...!",
			OFF = "O, how it waits!",
			CHARGING = "How convenient it'd be if it were mine...!",
			CHARGED = "How convenient it'd be if it were mine...!",
		},
		WINONA_TELEPORT_PAD_ITEM =
		{
			GENERIC = "My clawed toes tire endlessly! Must you hog it...?",
			OFF = "O, how it waits!",
			BURNING = "It cannot handle flames like I!",
			BURNT = "What shame!",
		},
		WINONA_STORAGE_ROBOT =
		{
			GENERIC = "My gems best be where I last left them.",
			OFF = "Peasants messing with my hoard doth not sit right with me.",
			SLEEP = "My gems best be where I last left them.",
			CHARGING = "Peasants messing with my hoard doth not sit right with me.",
			CHARGED = "Peasants messing with my hoard doth not sit right with me.",
		},
		INSPECTACLESHAT = 
        {
            GENERIC = "This fits not even one of my compound eyes!",
        },
		ROSEGLASSESHAT =
        {
            GENERIC = "I simply couldn't stomach wearing such burnable shrubbery.",
        },

        --Wormwood
        COMPOSTWRAP = "Might I offer an ashen replacement...?",
        ARMOR_BRAMBLE = "I need no replacement scales such as thee.",
        TRAP_BRAMBLE = "You cannot trick me! I step not!",

        BOATFRAGMENT03 = "O, how little remains...!",
        BOATFRAGMENT04 = "O, how little remains...!",
        BOATFRAGMENT05 = "O, how little remains...!",
		BOAT_LEAK = "Splash me not!! Hissszzt!",
        MAST = "Make sail, like wings of hurricanes!",
        SEASTACK = "Crash upon it not!",
        FISHINGNET = "Catch me the richest of fish!",
--        ANTCHOVIES = "PLACEHOLDER",
        STEERINGWHEEL = "To which way shalt I direct us!",
        ANCHOR = "I pull at thee!",
        BOATPATCH = "Wood patches are of no match to scaled ones!",
        DRIFTWOOD_TREE = 
        {
            BURNING = "What other fate could it of had!",
            BURNT = "Charred, so crisp!",
            CHOPPED = "My claws hath finished.",
            GENERIC = "A fallen bit of soon to be ash!",
        },

        DRIFTWOOD_LOG = "It merely floats a-log!",

        MOON_TREE = 
        {
            BURNING = "A sight to see, to see well!",
            BURNT = "Beautifully crisp!",
            CHOPPED = "My claws hath done a deed.",
            GENERIC = "Shrubbery marks its place!",
        },
		MOON_TREE_BLOSSOM = "Fallen from graces!",

        MOONBUTTERFLY = 
        {
        	GENERIC = "I care not for thy glistening flutter...!",
        	HELD = "What would thou exchange for thy wings...?",
        },
		MOONBUTTERFLYWINGS = "Thou wings art mine, mine!",
        MOONBUTTERFLY_SAPLING = "Did I ask thee to become a tree...?",
        ROCK_AVOCADO_FRUIT = "My teeth crack not!",
        ROCK_AVOCADO_FRUIT_RIPE = "It is much too tough to have a fine ash.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "Softer, softer for me!",
        ROCK_AVOCADO_FRUIT_SPROUT = "Best bear riches.",
        ROCK_AVOCADO_BUSH = 
        {
        	BARREN = "It grows nought!",
			WITHERED = "Doth thou care not for this weather? Pity!",
			GENERIC = "Gold-bearing, perhaps...?",
			PICKED = "I hath picked thee with my claws.",
			DISEASED = "Ill-being.",
            DISEASING = "Is this the type of food I've been told is eaten...?",
			BURNING = "What fun!",
		},
        DEAD_SEA_BONES = "Commonplace among my den.",
        HOTSPRING = 
        {
        	GENERIC = "Turn thee to lava! Go on!",
        	BOMBED = "O, how I wish to dive in! Alas, it is not magma!",
        	GLASS = "My breath hast merely turned it to glass...?",
			EMPTY = "It is but a crater!",
        },
        MOONGLASS = "A sharp edge! A fragile scale!",
		MOONGLASS_CHARGED = "Warm, glowing, radiant! I thought this wasn't about me!",
        MOONGLASS_ROCK = "I see within it a myriad of me!",
        BATHBOMB = "I duly hope it works within my lava baths!",
        TRAP_STARFISH =
        {
            GENERIC = "A treasure guardian, perhaps.",
            CLOSED = "Close, but never there!",
        },
        DUG_TRAP_STARFISH = "You'll fool not.",
        SPIDER_MOON = 
        {
        	GENERIC = "Might thee tempt my flame?",
        	SLEEPING = "Perk up and fight!",
        	DEAD = "Death, being!",
        },
        MOONSPIDERDEN = "Silken gems...? I must see!",
		FRUITDRAGON =
		{
			GENERIC = "What dragon bears fruit?",
			RIPE = "Enraged being!",
			SLEEPING = "If only this fruit would fly too!",
		},
        PUFFIN =
        {
            GENERIC = "What say you, huffing being?",
            HELD = "I sniff not my gems.",
            SLEEPING = "You huff not as loud as I!",
        },

		MOONGLASSAXE = "It pierces trees like claw to flesh!",
		GLASSCUTTER = "It cuts like claws, like scales! But nay as strong!",

        ICEBERG =
        {
            GENERIC = "Keep it away from your queen!!",
            MELTED = "You melt not for thee...!",
        },
        ICEBERG_MELTED = "I pity this place!",

        MINIFLARE = "I shall light up the sky with my presence!",
		MEGAFLARE = "My subjects simply cannot get enough of me!",

		MOON_FISSURE = 
		{
			GENERIC = "Such bright, shining light!", 
			NOLIGHT = "I hope my light within dost not follow.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "Finish it, quickly! Treasure awaits!",
            GENERIC = "I care not for hearsay! Unless it sparks with wealth!",
        },

        MOON_ALTAR_IDOL = "I must carry it to my hoard! Yes, my hoard!",
        MOON_ALTAR_GLASS = "To my hoard! Do not object!",
        MOON_ALTAR_SEED = "For my den to keep! Bzrt!",

        MOON_ALTAR_ROCK_IDOL = "What awaits within? Crystalline riches?",
        MOON_ALTAR_ROCK_GLASS = "What awaits within? Crystalline riches?",
        MOON_ALTAR_ROCK_SEED = "What awaits within? Crystalline riches?",

	    MOON_ALTAR_CROWN = "A crystalline crown for my keep!",
        MOON_ALTAR_COSMIC = "You belong to my hoard! Come to me!",

        MOON_ALTAR_ASTRAL = "At long last! My most precious treasure awaits me!",
        MOON_ALTAR_ICON = "You belong nowhere else but my hoard!",
        MOON_ALTAR_WARD = "Oh, don't complain! My hoard is better than any home!", 

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "I need knowledge of flame, of death!",
            BURNT = "Much like what I think of thy sea.",
        },
        BOAT_ITEM = "I wish to not risk the wetness gracing my scales!",
        BOAT_GRASS_ITEM = "Thou cannot possibly be serious...?",
        STEERINGWHEEL_ITEM = "Let thy dragon queen point our directions!",
        ANCHOR_ITEM = "It merely postpones your fall!",
        MAST_ITEM = "I brandish thee with the wind of a myriad of dragons!",
        MUTATEDHOUND = 
        {
        	DEAD = "Away with you, forever!",
        	GENERIC = "You defend treasure not!",
        	SLEEPING = "Allow my breath of death to awaken thee!",
        },

        MUTATED_PENGUIN = 
        {
			DEAD = "Away with you, forever!",
			GENERIC = "Foul being of the undead, what treasure dost thou hold?",
			SLEEPING = "Allow my breath of death to awaken thou!",
		},
        CARRAT = 
        {
        	DEAD = "Doth it revert to its primal state?",
        	GENERIC = "A being of the ground! How it scatters!",
        	HELD = "I shall have a taste. What say you? Bzrt!",
        	SLEEPING = "A fool to be roasted!",
        },

		BULLKELP_PLANT = 
        {
            GENERIC = "I take thee!",
            PICKED = "Mine to own!",
        },
		BULLKELP_ROOT = "Where might it place upon my hoard...?",
        KELPHAT = "I wear it not! I wear it not!!",
		KELP = "I wish to heat it up!",
		KELP_COOKED = "Ah, the perfect consistency for me!",
		KELP_DRIED = "All the liquid hast faded!",

		GESTALT = "I care not for thy hearsay! Unless it sparks with riches!",
		GESTALT_GUARD = "Dost thou bite thy...thumbs? At thy queen!?",

		COOKIECUTTER = "You shalt cut me not!",
		COOKIECUTTERSHELL = "What shame, this shell!",
		COOKIECUTTERHAT = "I don thee as a crown of victory!",
		SALTSTACK =
		{
			GENERIC = "I shall not place my ashen tongue upon thee.",
			MINED_OUT = "Mined to be mine own!",
			GROWING = "It grows! How it grows!",
		},
		SALTROCK = "I shall not place my ashen tongue upon thee.",
		SALTBOX = "For the most flavorful ash!",

		TACKLESTATION = "I've the utmost urge to tackle upon it.",
		TACKLESKETCH = "What dost thou tell me...?",

        MALBATROSS = "Your wings, that of a hurricane!!",
        MALBATROSS_FEATHER = "What a pity it is to have feathers nay scales!",
        MALBATROSS_BEAK = "I need not shared feasts.",
        MAST_MALBATROSS_ITEM = "I shall harness thy hurricane wings!",
        MAST_MALBATROSS = "Whip within the winds like no other!",
		MALBATROSS_FEATHERED_WEAVE = "It may be soft, but is it scales?",

        GNARWAIL =
        {
            GENERIC = "Many a horn beats the one!",
            BROKENHORN = "Toughen up with scales!",
            FOLLOWER = "Of course, many art to follow a queen!",
            BROKENHORN_FOLLOWER = "Snapped is thy horn!",
        },
        GNARWAIL_HORN = "My wealth of horns grows!",

        WALKINGPLANK = "A death sentence to the light inside!",
        WALKINGPLANK_GRASS = "A death sentence to the light inside!",
        OAR = "I wish to blow my boat with my breath.",
		OAR_DRIFTWOOD = "Pitiful, pitiful!",

		OCEANFISHINGROD = "I wish to reel with gold and silver!",
		OCEANFISHINGBOBBER_NONE = "Provide me with the riches for the fishes!",
        OCEANFISHINGBOBBER_BALL = "Pitiable fish fall for anything shiny! I have standards!",
        OCEANFISHINGBOBBER_OVAL = "Take hold, fish! But nay, it isn't gold!",
		OCEANFISHINGBOBBER_CROW = "Allow feathers to allure you!",
		OCEANFISHINGBOBBER_ROBIN = "Allow feathers to allure you!",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "Allow feathers to allure you!",
		OCEANFISHINGBOBBER_CANARY = "Take hold, fish! But nay, it isn't gold!",
		OCEANFISHINGBOBBER_GOOSE = "Allow feathers to allure you!",
		OCEANFISHINGBOBBER_MALBATROSS = "Allow feathers to allure you!",

		OCEANFISHINGLURE_SPINNER_RED = "Sharp as scales, for thy fish's scales!",
		OCEANFISHINGLURE_SPINNER_GREEN = "A wondrous color to be!",
		OCEANFISHINGLURE_SPINNER_BLUE = "Sharp as scales, for thy fish's scales!",
		OCEANFISHINGLURE_SPOON_RED = "Sharp as scales, for thy fish's scales!",
		OCEANFISHINGLURE_SPOON_GREEN = "A wondrous color to be!",
		OCEANFISHINGLURE_SPOON_BLUE = "Sharp as scales, for thy fish's scales!",
		OCEANFISHINGLURE_HERMIT_RAIN = "Wretched thing!",
		OCEANFISHINGLURE_HERMIT_SNOW = "Barely a benefit from this dreadful snow!!",
		OCEANFISHINGLURE_HERMIT_DROWSY = "Like the flames of my mind!",
		OCEANFISHINGLURE_HERMIT_HEAVY = "I only take the richest and biggest!",

		OCEANFISH_SMALL_1 = "I desire my frivolous feasts!",
		OCEANFISH_SMALL_2 = "I require only the richest!",
		OCEANFISH_SMALL_3 = "Not even a hint of gold!",
		OCEANFISH_SMALL_4 = "I desire my frivolous feasts!",
		OCEANFISH_SMALL_5 = "Bring my the richest one! Zrrt!",
		OCEANFISH_SMALL_6 = "It writhes underneath my claws!",
		OCEANFISH_SMALL_7 = "Almost glorious enough to belong to a keep!",
		OCEANFISH_SMALL_8 = "A being in mine image!",
		OCEANFISH_SMALL_9 = "Might you spit ash like I?",
		OCEANFISH_MEDIUM_1 = "It is slick with muddy fixtures!",
		OCEANFISH_MEDIUM_2 = "Fat, fattened!",
		OCEANFISH_MEDIUM_3 = "But where might the dragon fish be...?",
		OCEANFISH_MEDIUM_4 = "I posses only luck of luxury!",
		OCEANFISH_MEDIUM_5 = "What multiple feasts in one!",
		OCEANFISH_MEDIUM_6 = "A feast fit to wriggle down my throat!",
		OCEANFISH_MEDIUM_7 = "A feast fit to wriggle down my throat!",
		OCEANFISH_MEDIUM_8 = "Let my callous claws thaw you through!",
		OCEANFISH_MEDIUM_9 = "Pathetic little whelp, aren't you?",

		PONDFISH = "A cold, scaled being for a feast!",
		PONDEEL = "Slippery, but my claws are fierce spears!",

        FISHMEAT = "A feast is a feast for me!",
        FISHMEAT_COOKED = "To liquid ash!",
        FISHMEAT_SMALL = "A miniature feast!",
        FISHMEAT_SMALL_COOKED = "To liquid ash!",
		SPOILED_FISH = "What reek it festers...!",

		FISH_BOX = "Ever glad to not be stuffed.",
        POCKET_SCALE = "I've scales all over, not just my pockets!",
		TACKLECONTAINER = "More space for mine hoard!",
		SUPERTACKLECONTAINER = "Only the luxurious for me!",

		TROPHYSCALE_FISH =
		{
			GENERIC = "To behold my fish, and mine alone!",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\nPerfect for a hoard!",
			BURNING = "Such fish, to play in flames!",
			BURNT = "The fish were not the utmost richest.",
			OWNER = "Weight: {weight}\nCaught by: {owner}\nBehold, my richest fish!",
			OWNER_HEAVY = "Weight: {weight}\nCaught by: {owner}\nNo being can escape mine own claws!",
		},

		OCEANFISHABLEFLOTSAM = "A pitiful clump of refuge!",

		CALIFORNIAROLL = "They are no match to my flame!",
		SEAFOODGUMBO = "Easy liquid!",
		SURFNTURF = "What steps on my turf, is eaten!",

        WOBSTER_SHELLER = "The water won't save thee for long!", 
        WOBSTER_DEN = "A pathetic heap of a den!",
        WOBSTER_SHELLER_DEAD = "My teeth crack down on your scales!",
        WOBSTER_SHELLER_DEAD_COOKED = "Perfectly down my throat!",

        LOBSTERBISQUE = "I shalt pour it down my throat!",
        LOBSTERDINNER = "The perfect feast for a queen such as myself!",

        WOBSTER_MOONGLASS = "Encased in glass!",
        MOONGLASS_WOBSTER_DEN = "Not as shiny as mine own!",

		TRIDENT = "My claws will shake all to thy cores!",
		
		WINCH =
		{
			GENERIC = "An ocean's claw...!",
			RETRIEVING_ITEM = "Make haste!!",
			HOLDING_ITEM = "My keep awaits thee!",
		},

		HERMITHOUSE = {
            GENERIC = "I spit at thy pitiful den!",
            BUILTUP = "But where's thy gold? Bronze?",
        }, 
        
        SHELL_CLUSTER = "What a keep! Is it worthy?",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "My tones never go down!",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "I will make it tell me what fire rings of!",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "It ignites a flame within me. I call it annoyance!",
        },

        CHUM = "Almost worthy of a feast!",

        SUNKENCHEST =
        {
            GENERIC = "Bz-zrt! More treasure for my hoard!!",
            LOCKED = "Let my claws set you free for my keep!",
        },
        HERMIT_BUNDLE = "Mine, of course! Who else? Now more!",
        HERMIT_BUNDLE_SHELLS = "Perfect for my hoard. Bzrt!",
        RESKIN_TOOL = "I must give all that I touch a golden sheen!",
        MOON_FISSURE_PLUGGED = "Plugged but not pristine!",
		----------------------- ROT STRINGS GO ABOVE HERE ------------------

        WOBYBIG = 
        {
            "Zrrt! Such a cowardly beast!",
            "Zrrt! Such a cowardly beast!",
        },
        WOBYSMALL = 
        {
            "Her eyes sparkles like fresh silver...!",
            "Her eyes sparkles like fresh silver...!",
        },
		WALTERHAT = "This is no crown of mine!",
		SLINGSHOT = "Pure agitation!",
		SLINGSHOTAMMO_ROCK = "Do not flick tiny rocks at my scales!",		
		SLINGSHOTAMMO_MARBLE = "Do not flick tiny rocks at my scales!",		
		SLINGSHOTAMMO_THULECITE = "Do not flick tiny rocks at my scales!",	
        SLINGSHOTAMMO_GOLD = "Bzrt! Try me, I will catch every last piece!!",
        SLINGSHOTAMMO_SLOW = "Do not flick tiny rocks at my scales!",
        SLINGSHOTAMMO_FREEZE = "Do not flick tiny rocks at my scales!",
		SLINGSHOTAMMO_POOP = "ZRT! Disgusting!",
        PORTABLETENT = "Now comes shut-eye, peasants!",
        PORTABLETENT_ITEM = "I only sleep on beds of gold.",

        BATTLESONG_DURABILITY = "I care not for thy pitiful gurgles!",
        BATTLESONG_HEALTHGAIN = "I care not for thy pitiful gurgles!",
        BATTLESONG_SANITYGAIN = "I care not for thy pitiful gurgles!",
        BATTLESONG_SANITYAURA = "I care not for thy pitiful gurgles!",
        BATTLESONG_FIRERESISTANCE = "Now THIS one shall be the one to make my own! Bzzrt!",
        BATTLESONG_INSTANT_TAUNT = "More hissing, more buzzing!",
        BATTLESONG_INSTANT_PANIC = "More hissing, more buzzing!",

		MUTATOR_WARRIOR = "Your cute little treats amuse me not!",
        MUTATOR_DROPPER = "A peace-offering? For me? I'll take it, but not the peace!",
        MUTATOR_HIDER = "Your cute little treats amuse me not!",
        MUTATOR_SPITTER = "A peace-offering? For me? I'll take it, but not the peace!",
        MUTATOR_MOON = "Your cute little treats amuse me not!",
        MUTATOR_HEALER = "A peace-offering? For me? I'll take it, but not the peace!",
        SPIDER_WHISTLE = "Quite the little rally call.",
        SPIDERDEN_BEDAZZLER = "Not even a hint of glitter? Zrt!",
        SPIDER_HEALER = "You heal when your queen says you heal! I'm your queen and I say nay!",
		SPIDER_REPELLENT = "Zrt! A queen always has her followers with her!",
        SPIDER_HEALER_ITEM = "Nay! I mustn't heal with peasantries!",

		GHOSTLYELIXIR_SLOWREGEN = "Ah, it'd fit nicely upon my den!",
		GHOSTLYELIXIR_FASTREGEN = "Ah, it'd fit nicely upon my den!",
		GHOSTLYELIXIR_SHIELD = "Ah, it'd fit nicely upon my den!",
		GHOSTLYELIXIR_ATTACK = "Ah, it'd fit nicely upon my den!",
		GHOSTLYELIXIR_SPEED = "Ah, it'd fit nicely upon my den!",
		GHOSTLYELIXIR_RETALIATION = "Ah, it'd fit nicely upon my den!",
		SISTURN =
		{
			GENERIC = "A grim-dark hoard indeed.",
			SOME_FLOWERS = "I could provide a few... ashes. Nay!",
			LOTS_OF_FLOWERS = "It might look better with a bit of ash!",
		},
		
        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Shiny, and red like jewels! It must belong to me!",
            DONE = "By fire, by flame!",

			COOKING_LONG = "Begin the feast, begin it!",
			COOKING_SHORT = "I anticipate thy feast...!",
			EMPTY = "What use is a pot that grows cold!",
        },
        
        PORTABLEBLENDER_ITEM = "What whirlwinds this jewel twirls!",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "What masterful whirlwinds this jewel twirls!",
            DONE = "But it comes out not a liquid!",
        },
        SPICEPACK = "It chills what goes within. I must never enter it!",
        SPICE_GARLIC = "Ashes that taste of iron!",
        SPICE_SUGAR = "Sweet, yet not sour!",
        SPICE_CHILI = "It belongs atop every feast!",
        SPICE_SALT = "Like mineral ash upon food.",
        MONSTERTARTARE = "A monster of a feast!",
        FRESHFRUITCREPES = "I require much more liquid.",
        FROGFISHBOWL = "Soon to be an urn!",
        POTATOTORNADO = "I spit on thy spuds...!",
        DRAGONCHILISALAD = "Food in mine image...!",
        GLOWBERRYMOUSSE = "It glows with a faux-light!",
        VOLTGOATJELLY = "An ever-different singe!",
        NIGHTMAREPIE = "Non-ash food too, drives me to insanity...!",
        BONESOUP = "I stew a soup of bones within my hoard!",
        MASHEDPOTATOES = "I must mash them further!",
        POTATOSOUFFLE = "What puffy feasts you provide!",
        MOQUECA = "Hot, hotter!",
        GAZPACHO = "Nay! Make it hot, otherwise what purpose might it have!",
        ASPARAGUSSOUP = "A pre-liquefied treat!",
        VEGSTINGER = "It stings me not!",
        BANANAPOP = "Cold, cold! I must liquefy it!",
        CEVICHE = "More liquid thine art to become!",
        SALSA = "O, what perfect heat!",
        PEPPERPOPPER = "More, more!! Bzzzrt!",

        TURNIP = "I turn up my nose at thee...!",
        TURNIP_COOKED = "I now stick my nose in thee!",
        TURNIP_SEEDS = "Feed for the ground.",
        
        GARLIC = "That smell, that taste! Luxurious!",
        GARLIC_COOKED = "It sparkles dully!",
        GARLIC_SEEDS = "Feed for the ground.",
        
        ONION = "A layering! Not one of scales!",
        ONION_COOKED = "Simmering!",
        ONION_SEEDS = "Feed for the ground.",
        
        POTATO = "Like the head of a being. To be gnashed upon!",
        POTATO_COOKED = "Much too dry!",
        POTATO_SEEDS = "Soil fodder!",
        
        TOMATO = "A luxurious red, and it bleeds!",
        TOMATO_COOKED = "Its skin falls, its juice sprawls!",
        TOMATO_SEEDS = "For the ground, yes the ground!",

        ASPARAGUS = "A lovely hue it takes!", 
        ASPARAGUS_COOKED = "Much needed liquid!",
        ASPARAGUS_SEEDS = "Feed it to the ground, not I.",

        PEPPER = "Hot, heated fire!",
        PEPPER_COOKED = "How I treasure its taste so...!",
        PEPPER_SEEDS = "If only its seeds had such heat...!",

        WEREITEM_BEAVER = "You've a false idol!",
        WEREITEM_GOOSE = "And where might the Dragonfly idol be?",
        WEREITEM_MOOSE = "And where might the Dragonfly idol be?",

        MERMHAT = "I need not faux-scales!",
        MERMTHRONE =
        {
            GENERIC = "I shall take my rightful place!",
            BURNT = "There is no place for you here in my kingdom!",
        },
        MOSQUITOMUSK = "Zrrt. Must it smell so foul?",
        MOSQUITOBOMB = "I almost pity these beings.",
        MOSQUITOFERTILIZER = "Let's keep it on the ground where it belongs.",
        MOSQUITOMERMSALVE = "It's simply too feeble to pierce my scales.",
		
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "A fledgling's kingdom!",
            BURNT = "I stop thee!",
        },        
        MERMHOUSE_CRAFTED = 
        {
            GENERIC = "An abode, but where might it store wealth...?",
            BURNT = "Oh, how it festers reek!",
        },

        MERMWATCHTOWER_REGULAR = "They'd be much happier with a queen!",
        MERMWATCHTOWER_NOKING = "Now! You! Guard me!",
        MERMKING = "Zrrrt. I bite my claw at thee!",
        MERMGUARD = "Hand over thy riches, or be it your kingdom's fate!",
        MERM_PRINCE = "Hand over thy riches, or be it your village's fate!",

        SQUID = "Doth thou spit thy ink at me!?",
		GHOSTFLOWER = "More ash for my keep!",
        SMALLGHOST = "Do not expect any treasure from me, puny being!",

		CRABKING = 
        {
            GENERIC = "I'll show thou who thy queen is! Zrt!",
            INERT = "Gems belong in my keep and my keep only!!",
        },
		CRABKING_CLAW = "I'll show thou mine own claws in return!",
		
		MESSAGEBOTTLE = "Might it be a letter for the queen?",
		MESSAGEBOTTLEEMPTY = "Barely worthy of keeping!",
        MEATRACK_HERMIT =
        {
            DONE = "Meat-ed treat!",
            DRYING = "Like myself, meats too wish to be dry.",
            DRYINGINRAIN = "Nothing can be dry in such heinous weather! Including thy queen!",
            GENERIC = "I, too, prefer a crisp dryness.",
            BURNT = "I was merely attempting to further the process.",
            DONE_NOTMEAT = "What treats await!",
            DRYING_NOTMEAT = "I can wait no longer...!",
            DRYINGINRAIN_NOTMEAT = "Nothing can be dry in such heinous weather! Including thy queen!",
        },
        BEEBOX_HERMIT =
        {
			READY = "Yellow treasure of the beeing variety!",
			FULLHONEY = "Sweet yellow treasures!",
			GENERIC = "A box of a different form of gold.",
			NOHONEY = "Nary a bite of gold.",
			SOMEHONEY = "I await your treasures. Or else...!",
			BURNT = "It could not provide fast enough, so it goes.",
        },
		HERMITCRAB = "All your golden shells are forfeit!",
		HERMIT_PEARL = "For my hoard! ...It must be!",
        HERMIT_CRACKED_PEARL = "If thou dost not want it, I shalt keep it!",
		
        -- DSEAS
        WATERPLANT = "I care not for pathetic barnacles! Nay even silver-shaded!",
        WATERPLANT_BOMB = "Zrrt! Your treasure isn't worth defending!",
        WATERPLANT_BABY = "Perhaps there's still a chance it shall sprout gold!",
        WATERPLANT_PLANTER = "Into the ocean with you.",

        SHARK = "Away from my treasure-ridden boat, beast!",

        MASTUPGRADE_LAMP_ITEM = "I don't like fires being contained.",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "The first step to a golden, sparkling ship.",
        WATERPUMP = "Hissszz! Keep it off!",

        BARNACLE = "One by one into the maw of the Dragonfly!",
        BARNACLE_COOKED = "A bit more ash shalt do it well.",

        BARNACLEPITA = "I prefer it with a more ashen look.",
        BARNACLESUSHI = "If it's a delicacy, it's mine!",
        BARNACLINGUINE = "Rich, like me!",
        BARNACLESTUFFEDFISHHEAD = "I'll eat anything delicate and royal!",

        LEAFLOAF = "Foul! Foul!",
        LEAFYMEATBURGER = "There must be a bit of gold in here...!",
        LEAFYMEATSOUFFLE = "I'd like to request a golden dip...!",
        MEATYSALAD = "Hidden treasures in the form of meat!",

        -- GROTTO
		MOLEBAT = "Zrt! Thou nose is all but show!",

        BATNOSE = "A pity, this nose...!",
        BATNOSE_COOKED = "Prey to belly!",
        BATNOSEHAT = "Foul! Most foul!! Blech, blech, blech!",

        MUSHGNOME = "Goblin! Elf? Nay! Whatever thou may be, thou must bend at the knee!",

        SPORE_MOON = "Do not snap at thy queen!",

        MOON_CAP = "A poisonous fiend! Away with it!",
        MOON_CAP_COOKED = "Maybe a bit of ash will make it to my liking!",

        MUSHTREE_MOON = "This is clearly the queen's tree.",

        LIGHTFLIER = "Thou shine brightly in my way! Shoo!",
        GROTTO_POOL_BIG = "Hissszt! Keep thy foul moon water away from my scales!",
        GROTTO_POOL_SMALL = "Hissszt! Keep thy foul moon water away from my scales!",
        DUSTMOTH = "Keep thy foul bristles away from my scales!",
        DUSTMOTHDEN = "Horrid, horrid den!",

        ARCHIVE_LOCKBOX = "Reveal to me thy treasures!",
        ARCHIVE_CENTIPEDE = "Bzrt! A mere whelp is more formidable than thou!",
        ARCHIVE_CENTIPEDE_HUSK = "A pity. I'd love to claim some fresh gold.",

        ARCHIVE_COOKPOT =
        {
			COOKING_LONG = "I await, impatiently...",
			COOKING_SHORT = "The smell of treasure!",
			DONE = "Treasure! Now to re-do it within mine own maw!",
			EMPTY = "I dearly hope it gives my food a gilded touch!",
			BURNT = "Eagerness, mayhap...?",
        },

        ARCHIVE_MOON_STATUE = "Zrt. You're my gold, but you will have to wait here!",
        ARCHIVE_RUNE_STATUE = 
        {
            LINE_1 = "I care not for this garble. Lest it forbid me wealth.",
            LINE_2 = "The richest of texts?",
            LINE_3 = "I care not for this garble. Lest it forbid me wealth.",
            LINE_4 = "The richest of texts?",
            LINE_5 = "I care not for this garble. Lest it forbid me wealth.",
        },        

		ARCHIVE_RESONATOR = {
            GENERIC = "With a gorgeous golden covering to guide me...!",
            IDLE = "All treasures found, a pity! To my hoard it is then!",
        },
        ARCHIVE_RESONATOR_ITEM = "Less rock, more gold!",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "I seek its rewards and nothing more!",
          GENERIC =  "I do hope it gives me coins. Maybe a shiny goblet or covering!",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "It is of no use to a queen of any sort!",
            GENERIC = "I shalt play along! For now.",
        },

        ARCHIVE_SECURITY_PULSE = "Aha! Hiding away, art thou?",

        ARCHIVE_SWITCH = {
            VALID = "Those tantalizing, luxurious gems. Why here?",
            GEMS = "Perhaps it contains a bit of copper?",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "The dormant can't be claimed? Unless!",
            GENERIC = "I shalt still scavenge it for golden clippings.",
        },

        WALL_STONE_2 = "I bite and claw at thee!",
        WALL_RUINS_2 = "Such glaze! Such glittery precious gold...! I swoon!",

        REFINED_DUST = "Bzrt! I do hope it's true golden dust!",
        DUSTMERINGUE = "I love all and anything with a golden dusting!",

        SHROOMCAKE = "I shalt melt it down and make it mine.",
        SHROOMBAIT = "My loyal subjects would never slip a deceitful taste into my meals...!",

        NIGHTMAREGROWTH = "You dare show claw at your queen, rocks?",

        TURFCRAFTINGSTATION = "If it's not a floor of riches, why bother?",

        MOON_ALTAR_LINK = "I await your riches. They're my riches, truly.",
		-- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "Most foul!",
            WET = "Thou hast become even more foul!",
            DRY = "I prefer it dry, but I prefer it not be near me more!",
            BALANCED = "Enough!",
            BURNT = "Plug my nose up with ash! Not ash from this!!",
        },
        COMPOST = "It's what thou deserve! Bzrt!",
        SOIL_AMENDER = 
		{ 
			GENERIC = "It tempts my patience so!",
			STALE = "If its stench wasn't so strong I'd have burnt it!",
			SPOILED = "O, how I hate it here!",
		},

		SOIL_AMENDER_FERMENTED = "Done! Now away with it!",

        WATERINGCAN = 
        {
            GENERIC = "Only beings most foul desire such torture.",
            EMPTY = "Find your queen a pond, stat!",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "Only beings most fowl desire such torture.",
            EMPTY = "I never desire water the likes of this!",
        },

		FARM_PLOW = "Does my peasant work for me! Bzrt!",
		FARM_PLOW_ITEM = "If it can make farms, it can make itself!",
		FARM_HOE = "I'll not tend to such peasantries!",
		GOLDEN_FARM_HOE = "How exclusive...! Must it be for dirt?",
		NUTRIENTSGOGGLESHAT = "Thou cannot hide from me, thief in the soils!",
		PLANTREGISTRYHAT = "I'll only think about the richest plants!",

        FARM_SOIL_DEBRIS = "Away with you! Thou art not wanted!",

		FIRENETTLES = "The makings of a proper being!",
		FORGETMELOTS = "I'll not forget whatever this is...!",
		SWEETTEA = "A drink and then a nap upon sweet gold...!",
		TILLWEED = "I shall stomp out each and every one of you!",
		TILLWEEDSALVE = "Perhaps scale polish is in order...?",
		WEED_IVY = "This one is looking quite devilish!",
        IVY_SNARE = "Zrt! You thought not!",

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "Heavy is the head that bears thy fruit!",
			HAS_ITEM = "Weight: {weight}\nHarvested on day: {day}\nExquisite.",
			HAS_ITEM_HEAVY = "Weight: {weight}\nHarvested on day: {day}\nWhat big nutrients you have!",
            HAS_ITEM_LIGHT = "Pitiable thing!",
			BURNING = "Such glorious smells!",
			BURNT = "I shall do your cooking like this more often! Bzrt!",
        },
        
        CARROT_OVERSIZED = "What a glorious orange beast!",
        CORN_OVERSIZED = "Scrumptious!",
        PUMPKIN_OVERSIZED = "Gourdious!",
        EGGPLANT_OVERSIZED = "Now what do we have here?",
        DURIAN_OVERSIZED = "Those spines...!",
        POMEGRANATE_OVERSIZED = "I must bury my fangs into thee!",
        DRAGONFRUIT_OVERSIZED = "As big and glorious as I...!",
        WATERMELON_OVERSIZED = "Thou art so plump!",
        TOMATO_OVERSIZED = "I'm eager for it to bleed!",
        POTATO_OVERSIZED = "Now for a golden covering!",
        ASPARAGUS_OVERSIZED = "Imagine the ash it could rain!",
        ONION_OVERSIZED = "My large eyes cry not for thee...!",
        GARLIC_OVERSIZED = "I can taste its stench from here!",
        PEPPER_OVERSIZED = "The perfect plump pepper for me!",
        
        VEGGIE_OVERSIZED_ROTTEN = "Putrid!",

		FARM_PLANT =
		{
			GENERIC = "What gifts hast thou made for thy queen?",
			SEED = "The most pathetic part, the waiting!",
			GROWING = "Glow up glorious and rich!",
			FULL = "Claws, have at ye!",
			ROTTEN = "What a horrid fate of ash.",
			FULL_OVERSIZED = "Queen-sized!",
			ROTTEN_OVERSIZED = "Putrid!",
			FULL_WEED = "I'll have no peasant hiding upon my crop!",

			BURNING = "Pity. For the plants.",
        },
        
        FRUITFLY = "You pathetic little whelp!",
        LORDFRUITFLY = "Dost thou call thyself a queen? Bzrt! I laugh at thee!",
        FRIENDLYFRUITFLY = "You think you can earn my favors?",
        FRUITFLYFRUIT = "It bears fruit, only to be crushed betwixt my teeth!",
		SEEDPOUCH = "I care only for a pouch of coins.",
		-- Crow Carnival
		CARNIVAL_HOST = "The hoarder of the tickets.",
		CARNIVAL_CROWKID = "Petty little being, aren't thou?",
		CARNIVAL_GAMETOKEN = "I think I shall keep it! With many more to come!",
		CARNIVAL_PRIZETICKET =
		{
			GENERIC = "A sad excuse of a hoard. I must acquire more!",
			GENERIC_SMALLSTACK = "More, more, I demand more!!",
			GENERIC_LARGESTACK = "Bzrt! My ticket hoard grows ever more!",
		},

		CARNIVALGAME_FEEDCHICKS_NEST = "A dragon must be waiting beneath...!",
		CARNIVALGAME_FEEDCHICKS_STATION =
		{
			GENERIC = "It should be THOU who gives thy riches to ME!",
			PLAYING = "I have enough mouths to feed! Is one not enough?",
		},
		CARNIVALGAME_FEEDCHICKS_KIT = "I've not heard of a dragon hoarding these.",
		CARNIVALGAME_FEEDCHICKS_FOOD = "I'll turn it to ash for me, thank me later.",

		CARNIVALGAME_MEMORY_KIT = "I've not heard of a dragon hoarding these.",
		CARNIVALGAME_MEMORY_STATION =
		{
			GENERIC = "It should be THOU who gives thy riches to ME!",
			PLAYING = "There's nothing a dragon ever forgets or forgives.",
		},
		CARNIVALGAME_MEMORY_CARD =
		{
			GENERIC = "A dragon must be waiting beneath...!",
			PLAYING = "Come, choose this one for thy queen.",
		},

		CARNIVALGAME_HERDING_KIT = "I've not heard of a dragon hoarding these.",
		CARNIVALGAME_HERDING_STATION =
		{
			GENERIC = "It should be THOU who gives thy riches to ME!",
			PLAYING = "Nothing escapes my fiery gaze.",
		},
		CARNIVALGAME_HERDING_CHICK = "Think you can escape ME!?",

		CARNIVALGAME_SHOOTING_KIT = "I've not heard of a dragon hoarding these.",
		CARNIVALGAME_SHOOTING_STATION =
		{
			GENERIC = "It should be THOU who gives thy riches to ME!",
			PLAYING = "A bit of dragon's spit might speed up my victory!",
		},
		CARNIVALGAME_SHOOTING_TARGET =
		{
			GENERIC = "A dragon must be waiting beneath...!",
			PLAYING = "You all are lucky this familiar beast lacks my queenly visage!",
		},

		CARNIVALGAME_SHOOTING_BUTTON =
		{
			GENERIC = "It should be THOU who gives thy riches to ME!",
			PLAYING = "It hast never been easier for a Dragonfly to triumph!",
		},

		CARNIVALGAME_WHEELSPIN_KIT = "I've not heard of a dragon hoarding these.",
		CARNIVALGAME_WHEELSPIN_STATION =
		{
			GENERIC = "It should be THOU who gives thy riches to ME!",
			PLAYING = "Any less than the top prize is nothing to me!",
		},

		CARNIVALGAME_PUCKDROP_KIT = "I've not heard of a dragon hoarding these.",
		CARNIVALGAME_PUCKDROP_STATION =
		{
			GENERIC = "It should be THOU who gives thy riches to ME!",
			PLAYING = "This foul egg doth nothing but try my patience!",
		},

		CARNIVAL_PRIZEBOOTH_KIT = "I suppose, but only to grant me more gilded tokens!",
		CARNIVAL_PRIZEBOOTH =
		{
			GENERIC = "Exchange riches for other riches...? My world is in shambles!",
		},

		CARNIVALCANNON_KIT = "Bzrt! Oh, how I love it!",
		CARNIVALCANNON =
		{
			GENERIC = "Bzrt! The fire, the demanding presence! If only it were bigger,",
			COOLDOWN = "I was merely talking it up. Zrt.",
		},

		CARNIVAL_PLAZA_KIT = "What a show it may bring upon us!",
		CARNIVAL_PLAZA =
		{
			GENERIC = "It is not more than a tree.",
			LEVEL_2 = "It, too, loves to be fashioned with riches.",
			LEVEL_3 = "Now this is a proper tree! Donned in riches!",
		},

		CARNIVALDECOR_EGGRIDE_KIT = "If it isn't up to my standards, I burn it.",
		CARNIVALDECOR_EGGRIDE = "This... is our prize? Do not insult me again!",

		CARNIVALDECOR_LAMP_KIT = "If there's no light, I'll make it myself!",
		CARNIVALDECOR_LAMP = "Bzrt. This one will do.",
		CARNIVALDECOR_PLANT_KIT = "And what might you be...?",
		CARNIVALDECOR_PLANT = "I can finally live my dreams of beings gigantic! I mean realities, of course.",
		CARNIVALDECOR_BANNER_KIT = "I desire this to be built in mine image!",
		CARNIVALDECOR_BANNER = "I enjoy this chitter-chattering of gold!",

		CARNIVALDECOR_FIGURE =
		{
			RARE = "Now this will lie upon my hoard!",
			UNCOMMON = "Zrt! Better, but not hoard ready!",
			GENERIC = "Zrt! No more of these!",
		},
		CARNIVALDECOR_FIGURE_KIT = "Give me your richest of rarest goods!",
		CARNIVALDECOR_FIGURE_KIT_SEASON2 = "Give me your richest of rarest goods!",

        CARNIVAL_BALL = "Quite a bit of fun in the lava pond.",
		CARNIVAL_SEEDPACKET = "Ashen fodder.",
		CARNIVALFOOD_CORNTEA = "This treat makes a mockery of me!",

        CARNIVAL_VEST_A = "I haven't much of a neck to don it.",
        CARNIVAL_VEST_B = "Green as my scales, sharp as my nails!",
        CARNIVAL_VEST_C = "A fiery and royal cape o' mine!",
		-- YOTB
        YOTB_SEWINGMACHINE = "My claws shall be perfect for this splendor!",
        YOTB_SEWINGMACHINE_ITEM = "Build it now, I can wait.",
        YOTB_STAGE = "Might I persuade you to let me win with a hint of silver?",
        YOTB_POST =  "Where all my beings go to wait!",
        YOTB_STAGE_ITEM = "Build it now, I can wait.",
        YOTB_POST_ITEM =  "Build it now, I can wait.",

        YOTB_PATTERN_FRAGMENT_1 = "Only one piece of treasure, I desire more!",
        YOTB_PATTERN_FRAGMENT_2 = "Only one piece of treasure, I desire more!",
        YOTB_PATTERN_FRAGMENT_3 = "Only one piece of treasure, I desire more!",

        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = "A soft, smelly little treasure!",
            YOTB = "I know my taste is exquisite, but the Judge's?",
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = "A soft, smelly little treasure!",
            YOTB = "I know my taste is exquisite, but the Judge's?",
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = "A soft, smelly little treasure!",
            YOTB = "I know my taste is exquisite, but the Judge's?",
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = "A soft, smelly little treasure!",
            YOTB = "I know my taste is exquisite, but the Judge's?",
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = "A soft, smelly little treasure!",
            YOTB = "I know my taste is exquisite, but the Judge's?",
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = "A soft, smelly little treasure!",
            YOTB = "I know my taste is exquisite, but the Judge's?",
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = "A soft, smelly little treasure!",
            YOTB = "I know my taste is exquisite, but the Judge's?",
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = "A soft, smelly little treasure!",
            YOTB = "I know my taste is exquisite, but the Judge's?",
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = "A soft, smelly little treasure!",
            YOTB = "I know my taste is exquisite, but the Judge's?",
        },

        WAR_BLUEPRINT = "Bzrt! A queen loves her expendable warriors!",
        DOLL_BLUEPRINT = "More dull than doll. Zrt.",
        FESTIVE_BLUEPRINT = "Much better than those previous rags.",
        ROBOT_BLUEPRINT = "As close to scales as I can get.",
        NATURE_BLUEPRINT = "The Judge might find you a little charred.",
        FORMAL_BLUEPRINT = "Now you'll look much more royal.",
        VICTORIAN_BLUEPRINT = "Your hair shines not nearly as bright as scales.",
        ICE_BLUEPRINT = "Blech! Must I? Zrrt!",
        BEAST_BLUEPRINT = "BZZT! Perfect in mine own image!",

        BEEF_BELL = "If only it worked on more than hairy beasts...!",

		-- YOT Catcoon
		KITCOONDEN = 
		{
			GENERIC = "Not a home worth a silver coin!",
            BURNT = "Much better.",
			PLAYING_HIDEANDSEEK = "I must go on the hunt!",
			PLAYING_HIDEANDSEEK_TIME_ALMOST_UP = "The window for hunting draws to a close...!",
		},

		KITCOONDEN_KIT = "If I build it, it's my own!",

		TICOON = 
		{
			GENERIC = "Might you have a nose for gold...?",
			ABANDONED = "To each their own!",
			SUCCESS = "Victory!",
			LOST_TRACK = "Whom hast taken away our victory?",
			NEARBY = "What dost thine eyes see?",
			TRACKING = "Lead!",
			TRACKING_NOT_MINE = "Not my subject, not my problem!",
			NOTHING_TO_TRACK = "A ripe nothingness is in the air!",
			TARGET_TOO_FAR_AWAY = "Much too far!",
		},
		
		YOT_CATCOONSHRINE =
        {
            GENERIC = "You will get no such treasure from me!",
            EMPTY = "I will not part with any gold!",
            BURNT = "False idols that art not me? To ash!",
        },

		KITCOON_FOREST = "Keep thy foul hairs away from my fine scales!",
		KITCOON_SAVANNA = "Keep thy foul hairs away from my fine scales!",
		KITCOON_MARSH = "Keep thy foul hairs away from my fine scales!",
		KITCOON_DECIDUOUS = "Keep thy foul hairs away from my fine scales!",
		KITCOON_GRASS = "Keep thy foul hairs away from my fine scales!",
		KITCOON_ROCKY = "Keep thy foul hairs away from my fine scales!",
		KITCOON_DESERT = "Keep thy foul hairs away from my fine scales!",
		KITCOON_MOON = "Keep thy foul hairs away from my fine scales!",
		KITCOON_YOT = "Keep thy foul hairs away from my fine scales!",

		-- Moon Storm
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = "Thou cannot destroy more than I...!",
            DEAD = "Downed, downed!",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "Your rage is admirable, but it shalt be thy downfall!",
            DEAD = "And stay it...!",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "Little horns harm me not!",
        ALTERGUARDIAN_PHASE3 = "Rage! Our battle will be legendary!",
        ALTERGUARDIAN_PHASE3TRAP = "I shalt not let thy calm my scales...!",
        ALTERGUARDIAN_PHASE3DEADORB = "Ashes linger yet...!",
        ALTERGUARDIAN_PHASE3DEAD = "Thou cannot down a beautiful dragon!",

        ALTERGUARDIANHAT = "Provide upon me all of thy knowledge!",
		ALTERGUARDIANHATSHARD = "Another being's loose change. I'll keep it.",

        MOONSTORM_GLASS = {
            GENERIC = "Encased within glace!",
            INFUSED = "Such sparks!"
        },

        MOONSTORM_STATIC = "Surely only something luxurious awaits within!",
        MOONSTORM_STATIC_ITEM = "There's a world within your orb, and I want in!",
        MOONSTORM_SPARK = "My scales dance to its song!",

        BIRD_MUTANT = "Pity, pity!",
        BIRD_MUTANT_SPITTER = "Dost thou bite thy thumb at me?",

        WAGSTAFF_NPC = "Take me to thy hoard of copper and iron...!",

        WAGSTAFF_NPC_MUTATIONS = "Back off our treasure, for thou is not fit to claim it!",
        WAGSTAFF_NPC_WAGPUNK = "Thou dares charge upon thy queen's domain? Halt...!",

		ALTERGUARDIAN_CONTAINED = "Another accessory for my hoard, is it not?",

        WAGSTAFF_TOOL_1 = "But I must keep it for my hoard...!",
        WAGSTAFF_TOOL_2 = "Might I scavenge it for copper?",
        WAGSTAFF_TOOL_3 = "It might return a little brazen.",
        WAGSTAFF_TOOL_4 = "Coincidence! I was looking for whatever this is for my hoard!",
        WAGSTAFF_TOOL_5 = "Might it be mine? I think so!",

        MOONSTORM_GOGGLESHAT = "What dragon hoards potatoes...?",

        MOON_DEVICE = {
            GENERIC = "What a power is within...!",
            CONSTRUCTION1 = "They won't mind me taking a piece...!",
            CONSTRUCTION2 = "Might it belong to my hoard now?",
        },
		-- Wanda
        POCKETWATCH_HEAL = {
			GENERIC = "It must be time to destroy, kill, and take what's mine!",
			RECHARGING = "My feet are burning, yet this clock dost not seem to turn!",
		},

        POCKETWATCH_REVIVE = {
			GENERIC = "It must be time to destroy, kill, and take what's mine!",
			RECHARGING = "My feet are burning, yet this clock dost not seem to turn!",
		},

        POCKETWATCH_WARP = {
			GENERIC = "It must be time to destroy, kill, and take what's mine!",
			RECHARGING = "My feet are burning, yet this clock dost not seem to turn!",
		},

        POCKETWATCH_RECALL = {
			GENERIC = "It must be time to destroy, kill, and take what's mine!",
			RECHARGING = "My feet are burning, yet this clock dost not seem to turn!",
--fallback to speech_wilson.lua 			UNMARKED = "only_used_by_wanda",
--fallback to speech_wilson.lua 			MARKED_SAMESHARD = "only_used_by_wanda",
--fallback to speech_wilson.lua 			MARKED_DIFFERENTSHARD = "only_used_by_wanda",
		},

        POCKETWATCH_PORTAL = {
			GENERIC = "It must be time to destroy, kill, and take what's mine!",
			RECHARGING = "My feet are burning, yet this clock dost not seem to turn!",
--fallback to speech_wilson.lua 			UNMARKED = "only_used_by_wanda unmarked",
--fallback to speech_wilson.lua 			MARKED_SAMESHARD = "only_used_by_wanda same shard",
--fallback to speech_wilson.lua 			MARKED_DIFFERENTSHARD = "only_used_by_wanda other shard",
		},

        POCKETWATCH_WEAPON = {
			GENERIC = "To pierce the hearts of men, much more literal than time's arrow...!",
--fallback to speech_wilson.lua 			DEPLETED = "only_used_by_wanda",
		},

        POCKETWATCH_PARTS = "My heart flutters when your precious belongings are in ruin!",
        POCKETWATCH_DISMANTLER = "I never carefully craft my ruin.",

        POCKETWATCH_PORTAL_ENTRANCE = 
		{
			GENERIC = "Forward, to arms and to riches!",
			DIFFERENTSHARD = "Forward, to arms and to riches!",
		},
        POCKETWATCH_PORTAL_EXIT = "Zrrrt. Had my wings been as strong as sails...!",
        -- Waterlog
        WATERTREE_PILLAR = "Glorious tower! Thou hast made the fatal mistake of being wood!",
        OCEANTREE = "Pathetic little trees dost not know what's best for thee!",
        OCEANTREENUT = "I duly hope there's lavae within.",
        WATERTREE_ROOT = "Away with thee!",

        OCEANTREE_PILLAR = "A pitiful replica will have to do.",
        
        OCEANVINE = "You sway at me not!",
        FIG = "How regal!",
        FIG_COOKED = "I've been told just how royal thou art!",

        SPIDER_WATER = "Your coloration is pure distraction...! Off with your legs!",
        MUTATOR_WATER = "Your cute little treats amuse me not!",
        OCEANVINE_COCOON = "Hiding away in your foul keep, are we?",
        OCEANVINE_COCOON_BURNT = "Let this be your final lesson! Zrt!",

        GRASSGATOR = "You're beautiful yet so foul! Much to think about.",

        TREEGROWTHSOLUTION = "Pathetic little goo, how I hate... thee!",

        FIGATONI = "I shalt eat this with plate and fork! Whatever those may be...!",
        FIGKABAB = "I shalt pick my glorious teeth why thee.",
        KOALEFIG_TRUNK = "I am merely doing your nose a favor!",
        FROGNEWTON = "Disgusting! Yet, delectable!",

        -- The Terrorarium
        TERRARIUM = {
            GENERIC = "Perhaps it would make a fine headpiece?",
            CRIMSON = "I can feel the air of uneasiness around us!",
            ENABLED = "Step into the light!",
			WAITING_FOR_DARK = "It awaits darkness.",
			COOLDOWN = "It tries my patience for far too long...!",
			SPAWN_DISABLED = "I have scared them all away! Praise me!",
        },

        -- Wolfgang
        MIGHTY_GYM = 
        {
            GENERIC = "You make your queen laugh at this pitiful display of frailty!",
            BURNT = "Fire forever burns stronger than any being's muscle!",
        },

        DUMBBELL = "Dull and lifeless...!",
        DUMBBELL_GOLDEN = "An utmost flex!",
		DUMBBELL_MARBLE = "I'll need peasants to carry this to my hoard!",
        DUMBBELL_GEM = "ZRT! Avert your eyes! I will carry it to my hoard... eventually!",
        POTATOSACK = "Boil them, mash them, and force them upon a stew...!",

        DUMBBELL_HEAT = "It could be significantly hotter. Do better.",
        DUMBBELL_REDGEM = "What are you doing with my gems!",
        DUMBBELL_BLUEGEM = "An insult to such a gem!",

        TERRARIUMCHEST = 
		{
			GENERIC = "I hope treasure lies within and nothing more.",
			BURNT = "A fine aftertaste.",
			SHIMMER = "Might that be a shimmer I gleam...?",
		},

		EYEMASKHAT = "A fierce look! Gaze upon it!",

        EYEOFTERROR = "Thou wish thy gaze struck fear into the hearts of many like mine!",
        EYEOFTERROR_MINI = "Staring only makes killing you more worthwhile...!",
        EYEOFTERROR_MINI_GROUNDED = "Burn it before it becomes multiple!",

        FROZENBANANADAIQUIRI = "Much too cold for my liking. Much too cold!",
        BUNNYSTEW = "A most powerful stew, had it been laced with gold.",
        MILKYWHITES = "Your foul goop dost not deserve the honor of burning.",

        CRITTER_EYEOFTERROR = "Thee makes mine eyes appear small in comparison!",

        SHIELDOFTERROR ="My scales are my shields.",
        TWINOFTERROR1 = "Your eyes are few, and mine many!",
        TWINOFTERROR2 = "Your eyes are few, and mine many!",
		-- Cult of the Lamb
		COTL_TRINKET = "Bzrt! Doth it get any bigger...?",
		TURF_COTL_GOLD = "My toes were made to walk upon these luxurious pebbles!",
		TURF_COTL_BRICK = "Hear the thunderous tapping of my claws upon it!",
		COTL_TABERNACLE_LEVEL1 =
		{
			LIT = "No warm-blooded being deserves such a statue!",
			GENERIC = "How it hungers for flame! Get in line! Zrt!",
		},
		COTL_TABERNACLE_LEVEL2 =
		{
			LIT = "One in my visage would be receiving much higher praise!",
			GENERIC = "How it hungers for flame! Get in line! Zrt!",
		},
		COTL_TABERNACLE_LEVEL3 =
		{
			LIT = "Perhaps this whelp is more alluring than I'd thought.",
			GENERIC = "How it hungers for flame! Get in line! Zrt!",
		},
		-- Year of the Catcoon
        CATTOY_MOUSE = "More fodder for my hoard!",
        KITCOON_NAMETAG = "I care not for names, but what thee can do for me!",

		KITCOONDECOR1 =
        {
            GENERIC = "Of course I knew it to be a fake! Zrt.",
            BURNT = "Much better.",
        },
		KITCOONDECOR2 =
        {
            GENERIC = "Not a treasure worth playing with!",
            BURNT = "Much better.",
        },

		KITCOONDECOR1_KIT = "My hoard could use some new scrap!",
		KITCOONDECOR2_KIT = "I'll build it, but only for my hoard.",
        -- WX78
        WX78MODULE_MAXHEALTH = "Glittery, colorful, useful! It must be mine!",
		WX78MODULE_MAXSANITY1 = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_MAXSANITY = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_MOVESPEED = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_MOVESPEED2 = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_HEAT = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_NIGHTVISION = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_COLD = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_TASER = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_LIGHT = "Glittery, colorful, useful! It must be mine!",
		WX78MODULE_MAXHUNGER1 = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_MAXHUNGER = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_MUSIC = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_BEE = "Glittery, colorful, useful! It must be mine!",
        WX78MODULE_MAXHEALTH2 = "Glittery, colorful, useful! It must be mine!",

        WX78_SCANNER = 
        {
            GENERIC ="Might you detect treasure...?",
            HUNTING = "Find something valuable!",
            SCANNING = "That...dost not look like treasure. Off with your head-lights!",
        },

        WX78_SCANNER_ITEM = "Who allowed you to rest?",
        WX78_SCANNER_SUCCEEDED = "Go on then. Hand it over...!",
        WX78_MODULEREMOVER = "Zrt! I shudder to think of scales being plucked!",

        SCANDATA = "I need not to know what beings are made of!",

		-- QOL 2022
		JUSTEGGS = "Let them slide down my throat!",
		VEGGIEOMLET = "Your pathetic blanketing of eggs dost not protect thee!",
		TALLEGGS = "Splendid splendor for the victor!",
		BEEFALOFEED = "Pathetic gruel.",
		BEEFALOTREAT = "A treat that shalt have all beasts begging for my rule...!",

        -- Pirates
        BOAT_ROTATOR = "The world revolves around me! Bzrt!",
        BOAT_ROTATOR_KIT = "Perhaps this shall commandeer even more respect?",
        BOAT_BUMPER_KELP = "Foul smelling? Moisture unending? I forfeit this ship!",
        BOAT_BUMPER_KELP_KIT = "A fine-coating to protect us from those foul waves.",
        BOAT_BUMPER_SHELL = "They are no match to scales. Nay even a little!",
        BOAT_BUMPER_SHELL_KIT = "A fine-coating to protect us from those foul waves.",
        BOAT_BUMPER_CRABKING = "Lining your defenses with rocks stops a dragon's breath not!",
        BOAT_BUMPER_CRABKING_KIT = "A fine-coating to protect us from those foul waves.",

        BOAT_CANNON = {
            GENERIC = "Perhaps a bit of my ash and spit will get it fired up...!",
            AMMOLOADED = "I await its glorious ashen rainfall!",
			NOAMMO = "Quickly, bestow upon me the best ammo a dragon could hoard!",
        },
        BOAT_CANNON_KIT = "Thou art finally catching up to speed!",
        CANNONBALL_ROCK_ITEM = "I much prefer something more vicious than a rock...!",

        OCEAN_TRAWLER = {
            GENERIC = "All the work without any of the water! Bzrt!",
            LOWERED = "My patience is being tried.",
            CAUGHT = "Aha! Present to me what fine riches you've brought!",
            ESCAPED = "Zrt! I have queenly business to attend to!",
            FIXED = "Some spit shine doth a being good.",
        },
        OCEAN_TRAWLER_KIT = "Must a queen do everything herself? Zrt.",

        BOAT_MAGNET =
        {
            GENERIC = "Metal attracts metal? Metal is coins, correct? Let me at it!",
            ACTIVATED = "I hope my wealth of coins stashed within my belly trembles not!",
        },
        BOAT_MAGNET_KIT = "This chicken scratch is incomprehensible to all mine ommatidia!",

        BOAT_MAGNET_BEACON =
        {
            GENERIC = "Like flies to a hoard of gold!",
            ACTIVATED = "Zrt! I can blink too, what makes it so special?",
        },
        DOCK_KIT = "Must a queen do everything herself? Zrt.",
        DOCK_WOODPOSTS_ITEM = "Must a queen do everything herself? Zrt.",

        MONKEYHUT =
        {
            GENERIC = "Thou art living too comfortably! Allow me to introduce my flames...!",
            BURNT = "Bzrt! So easy that I feel a bit bored!",
        },
        POWDER_MONKEY = "A dubious little being getting up to mischief. This is no good!",
        PRIME_MATE = "Your presence in not nearly dominating enough! Pitiful!",
		LIGHTCRAB = "You glorious little diamond, you!",
        CUTLESS = "Bzrt! Wood? Thou truly doth not know me!",
        CURSED_MONKEY_TOKEN = "I'll collect all that I wish...!",
        OAR_MONKEY = "At last, a paddle worthy of cutting through the vicious waters!",
        BANANABUSH = "Your little golden treats shall belong to me!",
        DUG_BANANABUSH = "Your little golden treats shall belong to me!",
        PALMCONETREE = "With scales of wood and hair of leaves, I shall burn thee last!",
        PALMCONE_SEED = "A mere whelp of a tree.",
        PALMCONE_SAPLING = "The trees are evolving scales... Our battle will be legendary!",
        PALMCONE_SCALE = "A mockery of my scales! Zrt!",
        MONKEYTAIL = "If my tail is to be a thunderbolt, this is a mere fizzle!",
        DUG_MONKEYTAIL = "If my tail is to be a thunderbolt, this is a mere fizzle!",

        MONKEY_MEDIUMHAT = "It has the horns to match! Now for the gold...",
        MONKEY_SMALLHAT = "It wraps up my horns ever uncomfortably.",
        POLLY_ROGERSHAT = "A simple feather is not fit for a fly dragon such as myself!",
        POLLY_ROGERS = "I'm no stranger to having a little servant!",

        MONKEYISLAND_PORTAL = "Might it rain some find riches upon me?",
        MONKEYISLAND_PORTAL_DEBRIS = "Cold and uncaring, a hapless hoard!",
        MONKEYQUEEN = "Perhaps I could bestow upon thee a few tips, for a price.",
        MONKEYPILLAR = "A sure sign of kingdom rot.",
        PIRATE_FLAG_POLE = "Your flag means nothing once it turns to ash!",

        BLACKFLAG = "I let the fire in my wake speak for itself.",
        PIRATE_STASH = "Sweet, sweet treasure come to me!",
        STASH_MAP = "The next throne to take awaits! To riches!",

        BANANAJUICE = "Not nearly enough slop for my liking.",

		FENCE_ROTATOR = "I fancy a good prodding stick! The fences are my domain to control!",

        CHARLIE_STAGE_POST = "Let the sizzle of the stage sear my scales!",
        CHARLIE_LECTURN = "Zrt! I see the issue here! There's a lack of ME!",

        CHARLIE_HECKLER = "ZRT! Why you little...!",

        PLAYBILL_THE_DOLL = "Hearsay, hearsay! All your queen wishes to hear you say is devout loyalty!",
        STATUEHARP_HEDGESPAWNER = "Perhaps try growing scales next time!",
        HEDGEHOUND = "Foul bush-bearing beast! I could smell thy blood!",
        HEDGEHOUND_BUSH = "My armor is iron, no thorn can pierce me!",

        MASK_DOLLHAT = "The visage of a lowly doll!",
        MASK_DOLLBROKENHAT = "The visage is cracking!",
        MASK_DOLLREPAIREDHAT = "What truth dwells within?",
        MASK_BLACKSMITHHAT = "The visage of a lowly blacksmith!",
        MASK_MIRRORHAT = "I already know who is the prettiest fly of them all!",
        MASK_QUEENHAT = "The visage of a lowly queen! I fit this role much better, zrt.",
        MASK_KINGHAT = "The visage of a lowly king!",
        MASK_TREEHAT = "The visage of a lowly tree!",
        MASK_FOOLHAT = "The visage of a lowly fool!",

        COSTUME_DOLL_BODY = "Don the frail armor of a doll!",
        COSTUME_QUEEN_BODY = "Don the frail armor of a so-called queen!",
        COSTUME_KING_BODY = "Don the frail armor of a king!",
        COSTUME_BLACKSMITH_BODY = "Don the frail armor of a blacksmith!",
        COSTUME_MIRROR_BODY = "This frail armor reeks of soot!",
        COSTUME_TREE_BODY = "Don the frail armor of a tree!",
        COSTUME_FOOL_BODY = "Don the frail armor of a fool!",

        STAGEUSHER =
        {
            STANDING = "A keeper of treasure!",
            SITTING = "I trust it not. However, I fancy its presentation.",
        },
		SEWING_MANNEQUIN =
        {
            GENERIC = "How art thou not insulted by its mockery?",
            BURNT = "Bzrt! Let this be an example for all beings who come my way...!",
        },

		-- Waxwell
		MAGICIAN_CHEST = "Thou cannot hide forever in this pitiable abode!",
		TOPHAT_MAGICIAN = "How I wish it oozed magma...!",

        -- Year of the Rabbit
        YOTR_FIGHTRING_KIT = "Build for my amusement!",
        YOTR_FIGHTRING_BELL =
        {
            GENERIC = "I hunger for more fur-shed!",
            PLAYING = "What's a queen's favorite pass-time if not watching her subjects toil for her amusement?",
        },

        YOTR_DECOR_1 = {
            GENERAL = "My hoard is always craving more warmth.",
            OUT = "Pitiful little thing cannot take the heat!",
        },
        YOTR_DECOR_2 = {
            GENERAL = "My hoard is always craving more warmth.",
            OUT = "Pitiful little thing cannot take the heat!",
        },

        HAREBALL = "Thou art what thou spits up! I, however, am not.",
        YOTR_DECOR_1_ITEM = "More filler for my hoard!",
        YOTR_DECOR_2_ITEM = "More filler for my hoard!",

		--
		DREADSTONE = "Such enchanting beauty!",
		HORRORFUEL = "Ash of another kind?",
		DAYWALKER =
		{
			GENERIC = "Reaping such a kind and forgiving action. You ought to be indebted!",
			IMPRISONED = "My punishment wouldn't have been as kind!",
		},
		DAYWALKER_PILLAR =
		{
			GENERIC = "What riches dost thou hide?",
			EXPOSED = "Such resilience!",
		},
		DAYWALKER2 =
		{
			GENERIC = "You'd make a fine addition to my royal guard!",
			BURIED = "Sad! You're not even covered beneath gold and jewels!",
			HOSTILE = "Direct thy anger away from thy queen, sad hair-being!",
		},
		ARMORDREADSTONE = "Doth it match to my scales?",
		DREADSTONEHAT = "I always thought myself to be a knightly queen!",

        -- Rifts 1
        LUNARRIFT_PORTAL = "You dare tease me with endless possibilities?",
        LUNARRIFT_CRYSTAL = "Glorious! You'll make a fine piece for my hoard!",

        LUNARTHRALL_PLANT = "Thou always wants what thou cannot have!",
        LUNARTHRALL_PLANT_VINE_END = "Zrt! Always someone crawling at my hoard!",

		LUNAR_GRAZER = "Almost pitiful, it could never adorn a nice piece of jewelry.",

        PUREBRILLIANCE = "I know just where it belongs! To me!",
        LUNARPLANT_HUSK = "Never a materiel to live up to my scales. Close as it might be.",

		LUNAR_FORGE = "I adore its knightly visage.",
		LUNAR_FORGE_KIT = "Build your queen a strong and powerful one!",

		LUNARPLANT_KIT = "Surely it can repair itself?",
		ARMOR_LUNARPLANT = "It leaves scales all rattled.",
		LUNARPLANTHAT = "I am no knight!",
		BOMB_LUNARPLANT = "Let us see just how much it can ruin, shall we?",
		STAFF_LUNARPLANT = "Is it flashy enough for a queen such as I?",
		SWORD_LUNARPLANT = "My knights must wield only the finest.",
		PICKAXE_LUNARPLANT = "How valuable must it be?",
		SHOVEL_LUNARPLANT = "Other wyrms would be crawling at me to get it!",

		BROKEN_FORGEDITEM = "Pathetic rubble.",

        PUNCHINGBAG = "Let a queen show you how to spar!",

        -- Rifts 2
        SHADOWRIFT_PORTAL = "One can only imagine the wyrm that lies beneath.",

		SHADOW_FORGE = "Craft for me the most vile things a wyrm could ask for!",
		SHADOW_FORGE_KIT = "When doth it build itself?",

        FUSED_SHADELING = "A queen has no time to quarrel with the likes of you.",
        FUSED_SHADELING_BOMB = "Doth thou fire at me?",

		VOIDCLOTH = "It could do with a bit of flame.",
		VOIDCLOTH_KIT = "Peasant's work.",
		VOIDCLOTHHAT = "It lights up my nostrils!",
		ARMOR_VOIDCLOTH = "Peasant cloth!",

        VOIDCLOTH_UMBRELLA = "I, for one, quite enjoy the burning sensation!",
        VOIDCLOTH_SCYTHE = "The claw of ferocious dragon!",

		SHADOWTHRALL_HANDS = "Little, little claws!",
		SHADOWTHRALL_HORNS = "Thou wouldn't engulf my flame, wouldst thou?",
		SHADOWTHRALL_WINGS = "I've wings of mine own! They flutter faster, too!",

        CHARLIE_NPC = "Clearly a mirage! I'm the only queen of this kingdom...!",
        CHARLIE_HAND = "Away with you! Zrt, zrrrt!",

        NITRE_FORMATION = "Rocks of little value.",
        DREADSTONE_STACK = "My excitement depends on its value.",
        
        SCRAPBOOK_PAGE = "Who dares litter my kingdom like this?",

        LEIF_IDOL = "You know just what I like to burn!",
        WOODCARVEDHAT = "A queen wouldn't be caught dead in such tinder!",
        WALKING_STICK = "I prefer to fly. Which I can very much do.",

        IPECACSYRUP = "A little bit of spittle. I know it well!",
        BOMB_LUNARPLANT_WORMWOOD = "Your explosive nature is amusing to me!", -- Unused
        WORMWOOD_MUTANTPROXY_CARRAT =
        {
        	DEAD = "Doth it revert to its primal state?",
        	GENERIC = "A being of the ground! How it scatters!",
        	HELD = "I shall have a taste. What say you? Bzrt!",
        	SLEEPING = "A fool to be roasted!",
        },
        WORMWOOD_MUTANTPROXY_LIGHTFLIER = "Thou shine brightly in my way! Shoo!",
		WORMWOOD_MUTANTPROXY_FRUITDRAGON =
		{
			GENERIC = "What dragon bears fruit?",
			RIPE = "Enraged being!",
			SLEEPING = "If only this fruit would fly too!",
		},

        SUPPORT_PILLAR_SCAFFOLD = "At last, they intend to build me a throne!",
        SUPPORT_PILLAR = "Pity. It's been left in all but ruin.",
        SUPPORT_PILLAR_COMPLETE = "Perhaps a throne for me would be... bigger?",
        SUPPORT_PILLAR_BROKEN = "Perhaps there won't be a next time.",

		SUPPORT_PILLAR_DREADSTONE_SCAFFOLD = "At last, they intend to build me a throne!",
		SUPPORT_PILLAR_DREADSTONE = "Pity. It's been left in all but ruin.",
		SUPPORT_PILLAR_DREADSTONE_COMPLETE = "Surely a queen can be picky of her throne?",
		SUPPORT_PILLAR_DREADSTONE_BROKEN = "Do better! Zrt!",

        WOLFGANG_WHISTLE = "Oh, how I tire of your incessant buzzing!",

        -- Rifts 3

        MUTATEDDEERCLOPS = "Hast thy eye always looked so enchanting...?",
        MUTATEDWARG = "Thou presence is enchanting!",
        MUTATEDBEARGER = "Thou dost not smell any better than before!",

        LUNARFROG = "Zrt! Away from my presence!",

        DEERCLOPSCORPSE =
        {
            GENERIC  = "Know thou place!",
            BURNING  = "You make a fine roast!",
            REVIVING = "Zrt! Who said thou could do such a thing!?",
        },

        WARGCORPSE =
        {
            GENERIC  = "Know thou place!",
            BURNING  = "Bzrt! I feel a dance coming on!",
            REVIVING = "Zrt! Who said thou could do such a thing!?",
        },

        BEARGERCORPSE =
        {
            GENERIC  = "Zrt. Thou smells the same as before!",
            BURNING  = "That was close.",
            REVIVING = "Zrt! Who said thou could do such a thing!?",
        },

        BEARGERFUR_SACK = "Just what I need. More of your foul follicles!",
        HOUNDSTOOTH_BLOWPIPE = "I save mine own teeth for more important battles.",
        DEERCLOPSEYEBALL_SENTRYWARD =
        {
            GENERIC = "Don't give me that look.",    -- Enabled.
            NOEYEBALL = "It's a mockery.",  -- Disabled.
        },
		DEERCLOPSEYEBALL_SENTRYWARD_KIT = "The one-eyed being gets a monument to itself? How infuriating!",

        SECURITY_PULSE_CAGE = "Its belly would look better with a hoard of jewels.",
        SECURITY_PULSE_CAGE_FULL = "I know the flame within all too well!",

		CARPENTRY_STATION =
        {
            GENERIC = "A bit a tinder...!",
            BURNT = "Perhaps make it out of gold next time! Bzrt!",
        },

        WOOD_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "Pathetic peasantry!",
            HAS_ITEM = "It dost not look any better.",
            BURNT = "I request you use solid gold next time.",
        },

        WOOD_CHAIR =
        {
            GENERIC = "I'd prefer to sit upon a gilded throne!",
            OCCUPIED = "Your queen requests this seat!",
            BURNT = "Try again with a throne of gems, perhaps my tush may not burn it!",
        },

        DECOR_CENTERPIECE = "Almost sickening! Almost!",
        DECOR_LAMP = "What a pathetic display!",
        DECOR_FLOWERVASE =
        {
			GENERIC = "A table deserves a rich lining of golden gems!",
			EMPTY = "No treasure, it is as good as mulch.",
			WILTED = "Why must shrubbery perish near my callous claws!",
			FRESHLIGHT = "Fresh, and light! Yet no silver.",
			OLDLIGHT = "Fetch me another fire-bulb.",
        },
        DECOR_PICTUREFRAME =
        {
            GENERIC = "Disappointing.",
            UNDRAWN = "Draw my like one of your Dragonfly queens!",
        },
        DECOR_PORTRAITFRAME = "You did a terrible job at capturing my likeness!",

        PHONOGRAPH = "Your spells doth not work on me, foul thing!",
        RECORD = "Zrt-rt-rt! I'm not listening to peasant drivel! Zr-rt!",
        RECORD_CREEPYFOREST = "This method of casting spells on me is a failure!",
        RECORD_DANGER = "Do not sing for me, for mine own voice is enough to hear!",
        RECORD_DAWN = "Do not sing for me, for mine own voice is enough to hear!",
        RECORD_DRSTYLE = "This method of casting spells on me is a failure!",
        RECORD_DUSK = "Do not sing for me, for mine own voice is enough to hear!",
        RECORD_EFS = "This method of casting spells on me is a failure!",
        RECORD_END = "This method of casting spells on me is a failure!",
        RECORD_MAIN = "Do not sing for me, for mine own voice is enough to hear!",
        RECORD_WORKTOBEDONE = "This method of casting spells on me is a failure!",

        ARCHIVE_ORCHESTRINA_MAIN = "I'll have it brought down to its knees!",

        WAGPUNKHAT = "It smudges the shine of my beautiful scales.",
        ARMORWAGPUNK = "You dare tickle me?",
        WAGSTAFF_MACHINERY = "What a pity it must be smelted...! Not!",
        WAGPUNK_BITS = "I await seeing it turn a simmering shade of light!",
        WAGPUNKBITS_KIT = "A pity, for it can repair all but itself!",

        WAGSTAFF_MUTATIONS_NOTE = "A queen has no time for peasant hear-say!",

        -- Meta 3

        BATTLESONG_INSTANT_REVIVE = "Perhaps your gurgling benefits me most!",

        WATHGRITHR_IMPROVEDHAT = "Pity! For it hath only one horn, and I two!",
        SPEAR_WATHGRITHR_LIGHTNING = "You singe my scales not even a little!",

        BATTLESONG_CONTAINER = "A hoard so pitiful.",

        SADDLE_WATHGRITHR = "Zrrt. Imagine my wings soaring the skies around you instead!",

        WATHGRITHR_SHIELD = "I have this tenfold, naturally occurring! Bzrt!",

        BATTLESONG_SHADOWALIGNED = "I care not for thy pitiful gurgles!",
        BATTLESONG_LUNARALIGNED = "I care not for thy pitiful gurgles!",

		SHARKBOI = "Thou cold looks are most displeasing. My claws will have to fix this...!",
        BOOTLEG = "Devoured to not but bone...!",
        OCEANWHIRLPORTAL = "Tell me when to open my compound eyes! I cannot bare to see it!",

        EMBERLIGHT = "It must be mine...!",

        -- Year of the Dragon
        YOTD_DRAGONSHRINE =
        {
            GENERIC = "All offerings shall be funneled back to yours truly.",
            EMPTY = "I shall happily take upon all of your finest charcoal!",
            BURNT = "Thou art not sending thy best!",
        },

        DRAGONBOAT_KIT = "Come and sail away with me...!",
        DRAGONBOAT_PACK = "Only the finest boat shall be built for me!",

        BOATRACE_CHECKPOINT = "Quickly! Commandeer that point!",
        BOATRACE_CHECKPOINT_THROWABLE_DEPLOYKIT = "Only a brilliant leader such as I knows where to point.",
        BOATRACE_START = "Bzrt! Thou must do as I say!",
        BOATRACE_START_THROWABLE_DEPLOYKIT = "I know exactly where I shall be placed. Upon a throne...!",

        BOATRACE_PRIMEMATE = "Zrt!! I shall not let our kingdom be disgraced!",
        BOATRACE_SPECTATOR_DRAGONLING = "Thou art doing amazingly, sweetie.",

        YOTD_STEERINGWHEEL = "Let a Dragonfly steer this kingdom in the right direction.",
        YOTD_STEERINGWHEEL_ITEM = "On top of this hoard of a boat it goes!",
        YOTD_OAR = "You shall never catch my authentic claws wading through that water.",
        YOTD_ANCHOR = "A Dragonfly shudders to be submerged within those depths...",
        YOTD_ANCHOR_ITEM = "The queenly anchor for a kingdom!",
        MAST_YOTD = "See my glorious tenfold sail!",
        MAST_YOTD_ITEM = "No better mast hast yet been built.",
        BOAT_BUMPER_YOTD = "Shudder under the power of a Dragonfly rudder!",
        BOAT_BUMPER_YOTD_KIT = "Let thy scales protect mine own.",
        BOATRACE_SEASTACK = "Begone, foul floating-being of the sea!",
        BOATRACE_SEASTACK_THROWABLE_DEPLOYKIT = "Let this cut you off from my tail...!",
        BOATRACE_SEASTACK_MONKEY = "Begone, foul floating-being of the sea!",
        BOATRACE_SEASTACK_MONKEY_THROWABLE_DEPLOYKIT = "Let this cut you off from my tail...!",
        MASTUPGRADE_LAMP_YOTD = "Let the light from my glorious globes blind thee!",
        MASTUPGRADE_LAMP_ITEM_YOTD = "A Dragonfly knows just how to glow!",
        WALKINGPLANK_YOTD = "The dressing merely soothes the suffering of being submerged.",
        CHESSPIECE_YOTD = "At long last...! Aren't I glorious?",

        -- Rifts / Meta QoL

        HEALINGSALVE_ACID = "I prefer my scales to shine, nay stink.",

        BEESWAX_SPRAY = "At last, I'll have everyone's upmost attention!",
        WAXED_PLANT = "It does only what it's told!", -- Used for all waxed plants, from farm plants to trees.

        STORAGE_ROBOT = {
            GENERIC = "If I see even a scratch on my precious gems...!",
            BROKEN = "Were you expecting personal upkeep?",
        },

        SCRAP_MONOCLEHAT = "My compound eyes expand evermore over my kingdom...!",
        SCRAPHAT = "Perfectly wealthy...for a peasant.",

        FENCE_JUNK = "Zrrt. Try making it out of gold.",
        JUNK_PILE = "I'll be lucky to find a shiny coin upon this rubble.",
        JUNK_PILE_BIG = "What a hoard! Where's the gems, the bejeweled chalices...?",

        ARMOR_LUNARPLANT_HUSK = "Might it come in gold...?",

        -- Meta 4 / Ocean QoL

        OTTER = "Your hoard is forfeit!",
        OTTERDEN = {
            GENERIC = "Such a pathetic heap.",
            HAS_LOOT = "I smell the sweet stench of treasure!",
        },
        OTTERDEN_DEAD = "I apologize for naught!",

        BOAT_ANCIENT_ITEM = "Perhaps its value has gone up in its old age?",
        BOAT_ANCIENT_CONTAINER = "The best treasure is always buried deep within!",
        WALKINGPLANK_ANCIENT = "A death sentence to the light inside!",

        ANCIENTTREE_SEED = "I'll care once it sprouts gold.",

        ANCIENTTREE_GEM = {
            GENERIC = "It's as valuable as it is edible...!",
            STUMP = "We've taken all we care to!",
        },

        ANCIENTTREE_SAPLING_ITEM = "Picky about kingdoms, art thou?",

        ANCIENTTREE_SAPLING = {
            GENERIC = "Is it grown yet? ...How about now?",
            WRONG_TILE = "Pitiful! It grows here not!",
            WRONG_SEASON = "Riches wait for no one...! They wait for the right season!",
        },
 
        ANCIENTTREE_NIGHTVISION = {
            GENERIC = "Tree-t with caution.",
            STUMP = "It's a stump.",
        },

        ANCIENTFRUIT_GEM = "I'd recognize that luxurious inner rattle anywhere!",
        ANCIENTFRUIT_NIGHTVISION = "O, how I love it when they wriggle.",
        ANCIENTFRUIT_NIGHTVISION_COOKED = "I do wish it still danced for my amusement.",

        BOATPATCH_KELP = "A nasty little fix.",

        CRABKING_MOB = "Your pawns make me laugh! Bzrt-rt-rt! Watch as I laugh!",
        CRABKING_MOB_KNIGHT = "I've felled many a knight in my life...!",
        CRABKING_CANNONTOWER = "Let the tower fall! Bzrrrt!",
        CRABKING_ICEWALL = "Hissszt! How dare thou counter I!",

        SALTLICK_IMPROVED = "Peasants do love a good lick.",

        OFFERING_POT =
        {
            GENERIC = "Don't expect contributes.",
            SOME_KELP = "How sad a sight!",
            LOTS_OF_KELP = "There is simply no value here.",
        },

        OFFERING_POT_UPGRADED =
        {
            GENERIC = "Don't expect contributes.",
            SOME_KELP = "How sad a sight!",
            LOTS_OF_KELP = "There is simply no value here.",
        },

        MERM_ARMORY = "This sign doth not stop me, for I cannot read!",
        MERM_ARMORY_UPGRADED = "This sign doth not stop me, for I cannot read!",
        MERM_TOOLSHED = "This shall falter by a mere dragon's blink.",
        MERM_TOOLSHED_UPGRADED = "This shall falter by a mere dragon's blink.",
        MERMARMORHAT = "What a terrible curse it would be to wear it!",
        MERMARMORUPGRADEDHAT = "What a terrible curse it would be to wear it!",
        MERM_TOOL = "I expect nothing more from such soft scales.",
        MERM_TOOL_UPGRADED = "I expect nothing more from such soft scales.",

        WURT_SWAMPITEM_SHADOW = "Thou best wish our kingdoms doth not cross paths.",
        WURT_SWAMPITEM_LUNAR = "Thou best wish our kingdoms doth not cross paths.",

        MERM_SHADOW = "Do you think you can hide from me, shadowed thief...?",
        MERMGUARD_SHADOW = "Do you think you can hide from me, shadowed thief...?",

        MERM_LUNAR = "Zrrt. Do they ever get any prettier...?",
        MERMGUARD_LUNAR = "TZrrt. Do they ever get any prettier...?",
    },

    DESCRIBE_GENERIC = "Whatever it may be, it's mine!",
    DESCRIBE_TOODARK = "I see not a thing! Not a trace of glitter...!",
    DESCRIBE_SMOLDERING = "I watch in jest! Bzrt!",

	DESCRIBE_PLANTHAPPY = "It's happy now. When does it begin singing?",
    DESCRIBE_PLANTVERYSTRESSED = "Liven up plant, a dragon isn't destroying your village! Yet.",
    DESCRIBE_PLANTSTRESSED = "My child is growing a little temper, like its queen!",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "Art they bothering you, queen?",
    DESCRIBE_PLANTSTRESSORFAMILY = "Well, if I must comfort you...!",
	DESCRIBE_PLANTSTRESSOROVERCROWDING = "Too many servants, too little time...!",
    DESCRIBE_PLANTSTRESSORSEASON = "Not all weather can be winners, little being.",
    DESCRIBE_PLANTSTRESSORMOISTURE = "The strongest dragons could survive with nary a drip of water!",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "This foul soil is nothing but a burden!",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "I shalt tell thou the story of a glorious Dragonfly queen! Witnessed first-claw!",

    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "A taste of fresh beak! ...I should've spit upon it.",
		WINTERSFEASTFUEL = "Like a fiery toe-tapping passion!",
    },
}
