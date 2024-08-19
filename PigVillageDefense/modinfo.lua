-- This information tells other players more about the mod
name = "Pig Village Defense"
description = "Defend the Pig Village from the spider invasion by completing a series of challenges."
author = "yyj"
version = "1.0"

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the URL
forumthread = ""

-- The version of the game this mod is compatible with
api_version = 10

-- Compatible with both Don't Starve and Don't Starve Together
dst_compatible = true
dont_starve_compatible = true
reign_of_giants_compatible = true
hamlet_compatible = false -- Set to true if your mod is compatible with the Hamlet DLC

-- Indicates if this mod is compatible with all clients in a DST game
all_clients_require_mod = false
clients_only_mod = false
server_filter_tags = {"story", "challenge", "pigs", "spiders"}

-- Configuration options for the mod (if any)
configuration_options =
{
    {
        name = "difficulty",
        label = "Difficulty Level",
        options =
        {
            {description = "Easy", data = 1},
            {description = "Normal", data = 2},
            {description = "Hard", data = 3},
        },
        default = 2,
    }
}
