-- imports

local acidBall = require("utils/AttackBall")
local biterUtils = require("utils/BiterUtils")
local swarmUtils = require("SwarmUtils")
package.path = "../libs/?.lua;" .. package.path
local constants = require("Constants")

-- constants

local acid = {}

local ACID_UNIT_TIERS = constants.ACID_UNIT_TIERS
local ACID_UNIT_VARIATIONS = constants.ACID_UNIT_VARIATIONS

local ACID_NEST_TIERS = constants.ACID_NEST_TIERS
local ACID_NEST_VARIATIONS = constants.ACID_NEST_VARIATIONS

local ACID_WORM_TIERS = constants.ACID_WORM_TIERS
local ACID_WORM_VARIATIONS = constants.ACID_WORM_VARIATIONS

-- imported functions

local buildUnitSpawner = swarmUtils.buildUnitSpawner
local buildWorm = swarmUtils.buildWorm

local createAttackBall = acidBall.createAttackBall
local createRangedAttack = biterUtils.createRangedAttack
local createMeleeAttack = biterUtils.createMeleeAttack

local softSmoke = "the-soft-smoke-rampant"

local makeUnitAlienLootTable = biterUtils.makeUnitAlienLootTable
local makeSpawnerAlienLootTable = biterUtils.makeSpawnerAlienLootTable
local makeWormAlienLootTable = biterUtils.makeWormAlienLootTable

local biterLoot = makeUnitAlienLootTable("green")
local spawnerLoot = makeSpawnerAlienLootTable("green")
local wormLoot = makeWormAlienLootTable("green")

function acid.addFaction()

    -- acid biters
    buildUnitSpawner(
	{
	    unit = {
		name = "acid-biter",

		attributes = {
		    explosion = "blood-explosion-small"
		},
		attack = {
		    damageType = "acid"
		},
		resistances = {},

		type = "biter",
		loot = biterLoot,
		tint1 = {r=0, g=0.85, b=0.13, a=0.65},
		tint2 = {r=0, g=0.85, b=0.13, a=0.65}
	    },

	    unitSpawner = {
		name = "acid-biter-nest",

		loot = spawnerLoot,
		attributes = {},
		resistances = {},
		tint = {r=0, g=0.85, b=0.13, a=0.65}
	    }
	},

	{
	    unit = {

		{
		    type = "resistance",
		    name = "acid",
		    decrease = {
			[1] = 7,
			[2] = 7,
			[3] = 10,
			[4] = 10,
			[5] = 13,
			[6] = 13,
			[7] = 16,
			[8] = 16,
			[9] = 19,
			[10] = 23
		    },
		    percent = {
			[1] = 65,
			[2] = 65,
			[3] = 70,
			[4] = 75,
			[5] = 75,
			[6] = 80,
			[7] = 85,
			[8] = 85,
			[9] = 90,
			[10] = 90
		    }
		},

                {
                    type = "resistance",
                    name = "poison",
                    decrease = {
                        [1] = 3,
                        [2] = 3,
                        [3] = 7,
                        [4] = 7,
                        [5] = 10,
                        [6] = 10,
                        [7] = 13,
                        [8] = 13,
                        [9] = 16,
                        [10] = 18
                    },
                    percent = {
                        [1] = 35,
                        [2] = 35,
                        [3] = 40,
                        [4] = 40,
                        [5] = 45,
                        [6] = 45,
                        [7] = 50,
                        [8] = 55,
                        [9] = 55,
                        [10] = 60
                    }
                }
	    },

	    unitSpawner = {

		{
		    type = "attribute",
		    name = "evolutionRequirement",
		    [1] = 0,
		    [2] = 0.1,
		    [3] = 0.2,
		    [4] = 0.3,
		    [5] = 0.4,
		    [6] = 0.5,
		    [7] = 0.6,
		    [8] = 0.7,
		    [9] = 0.8,
		    [10] = 0.9
		},

		{
		    type = "resistance",
		    name = "acid",
		    decrease = {
			[1] = 7,
			[2] = 7,
			[3] = 10,
			[4] = 10,
			[5] = 13,
			[6] = 13,
			[7] = 16,
			[8] = 16,
			[9] = 19,
			[10] = 23
		    },
		    percent = {
			[1] = 65,
			[2] = 65,
			[3] = 70,
			[4] = 75,
			[5] = 75,
			[6] = 80,
			[7] = 85,
			[8] = 85,
			[9] = 90,
			[10] = 90
		    }
		},

                {
                    type = "resistance",
                    name = "poison",
                    decrease = {
                        [1] = 3,
                        [2] = 3,
                        [3] = 7,
                        [4] = 7,
                        [5] = 10,
                        [6] = 10,
                        [7] = 13,
                        [8] = 13,
                        [9] = 16,
                        [10] = 18
                    },
                    percent = {
                        [1] = 35,
                        [2] = 35,
                        [3] = 40,
                        [4] = 40,
                        [5] = 45,
                        [6] = 45,
                        [7] = 50,
                        [8] = 55,
                        [9] = 55,
                        [10] = 60
                    }
                }
	    }
	},

	createMeleeAttack,

	{
	    unit = ACID_UNIT_VARIATIONS,
	    unitSpawner = ACID_NEST_VARIATIONS
	},

	{
	    unit = ACID_UNIT_TIERS,
	    unitSpawner = ACID_NEST_TIERS
	}
    )

    -- acid spitters
    buildUnitSpawner(
	{
	    unit = {
		name = "acid-spitter",

		loot = biterLoot,
		attributes = {
		    explosion = "blood-explosion-small"
		},
		attack = {
		    type = "projectile",
		    directionOnly = true,
		    softSmokeName = softSmoke
		},
		resistances = {},

		type = "spitter",
		attackName = "acid-spitter",
		tint = {r=0, g=0.85, b=0.1, a=0.65},
		pTint = {r=0, g=1, b=0.1, a=0.5},
		sTint = {r=0, g=1, b=0.1, a=0.5}
	    },

	    unitSpawner = {
		name = "acid-spitter-nest",

		loot = spawnerLoot,
		attributes = {},
		resistances = {},

		tint = {r=0, g=0.85, b=0.13, a=1}
	    }
	},

	{
	    unit = {

		{
		    type = "resistance",
		    name = "acid",
		    decrease = {
			[1] = 7,
			[2] = 7,
			[3] = 10,
			[4] = 10,
			[5] = 13,
			[6] = 13,
			[7] = 16,
			[8] = 16,
			[9] = 19,
			[10] = 23
		    },
		    percent = {
			[1] = 65,
			[2] = 65,
			[3] = 70,
			[4] = 75,
			[5] = 75,
			[6] = 80,
			[7] = 85,
			[8] = 85,
			[9] = 90,
			[10] = 90
		    }

		},

                {
                    type = "resistance",
                    name = "poison",
                    decrease = {
                        [1] = 3,
                        [2] = 3,
                        [3] = 7,
                        [4] = 7,
                        [5] = 10,
                        [6] = 10,
                        [7] = 13,
                        [8] = 13,
                        [9] = 16,
                        [10] = 18
                    },
                    percent = {
                        [1] = 35,
                        [2] = 35,
                        [3] = 40,
                        [4] = 40,
                        [5] = 45,
                        [6] = 45,
                        [7] = 50,
                        [8] = 55,
                        [9] = 55,
                        [10] = 60
                    }
                }

	    },

	    unitSpawner = {

		{
		    type = "attribute",
		    name = "evolutionRequirement",
		    [1] = 0,
		    [2] = 0.1,
		    [3] = 0.2,
		    [4] = 0.3,
		    [5] = 0.4,
		    [6] = 0.5,
		    [7] = 0.6,
		    [8] = 0.7,
		    [9] = 0.8,
		    [10] = 0.9
		},

		{
		    type = "resistance",
		    name = "acid",
		    decrease = {
			[1] = 7,
			[2] = 7,
			[3] = 10,
			[4] = 10,
			[5] = 13,
			[6] = 13,
			[7] = 16,
			[8] = 16,
			[9] = 19,
			[10] = 23
		    },
		    percent = {
			[1] = 65,
			[2] = 65,
			[3] = 70,
			[4] = 75,
			[5] = 75,
			[6] = 80,
			[7] = 85,
			[8] = 85,
			[9] = 90,
			[10] = 90
		    }
		},

                {
                    type = "resistance",
                    name = "poison",
                    decrease = {
                        [1] = 3,
                        [2] = 3,
                        [3] = 7,
                        [4] = 7,
                        [5] = 10,
                        [6] = 10,
                        [7] = 13,
                        [8] = 13,
                        [9] = 16,
                        [10] = 18
                    },
                    percent = {
                        [1] = 35,
                        [2] = 35,
                        [3] = 40,
                        [4] = 40,
                        [5] = 45,
                        [6] = 45,
                        [7] = 50,
                        [8] = 55,
                        [9] = 55,
                        [10] = 60
                    }
                }

	    }


	},

	function (attributes)
	    return createRangedAttack(attributes,
				      createAttackBall(attributes),
				      spitterattackanimation(attributes.scale,
							     attributes.tint))
	end,

	{
	    unit = ACID_UNIT_VARIATIONS,
	    unitSpawner = ACID_NEST_VARIATIONS
	},

	{
	    unit = ACID_UNIT_TIERS,
	    unitSpawner = ACID_NEST_TIERS
	}
    )

    -- acid worms
    buildWorm(
	{
	    name = "acid-worm",

	    loot = wormLoot,
	    attributes = {},
	    attack = {
		type = "projectile",
		softSmokeName = softSmoke
	    },
	    resistances = {},

	    attackName = "acid-worm",
	    tint = {r=0, g=0.85, b=0.1, a=0.65},
	    pTint = {r=0, g=1, b=0.1, a=0.5},
	    sTint = {r=0, g=1, b=0.1, a=0.5}
	},

	{

	    {
		type = "resistance",
		name = "acid",
		decrease = {
		    [1] = 7,
		    [2] = 7,
		    [3] = 10,
		    [4] = 10,
		    [5] = 13,
		    [6] = 13,
		    [7] = 16,
		    [8] = 16,
		    [9] = 19,
		    [10] = 23
		},
		percent = {
		    [1] = 65,
		    [2] = 65,
		    [3] = 70,
		    [4] = 75,
		    [5] = 75,
		    [6] = 80,
		    [7] = 85,
		    [8] = 85,
		    [9] = 90,
		    [10] = 90
		}
	    },

            {
                type = "resistance",
                name = "poison",
                decrease = {
                    [1] = 3,
                    [2] = 3,
                    [3] = 7,
                    [4] = 7,
                    [5] = 10,
                    [6] = 10,
                    [7] = 13,
                    [8] = 13,
                    [9] = 16,
                    [10] = 18
                },
                percent = {
                    [1] = 35,
                    [2] = 35,
                    [3] = 40,
                    [4] = 40,
                    [5] = 45,
                    [6] = 45,
                    [7] = 50,
                    [8] = 55,
                    [9] = 55,
                    [10] = 60
                }
            }
	},

	function (attributes)
	    return createRangedAttack(attributes,
				      createAttackBall(attributes))
	end,

	ACID_WORM_VARIATIONS,
	ACID_WORM_TIERS
    )
end

return acid
