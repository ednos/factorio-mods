local technologies = {}

local technologyUtils = require("utils/TechnologyUtils")

local makeTechnology = technologyUtils.makeTechnology

function technologies.enable()

    local incendiary = makeTechnology({
	    name="incendiary",
	    icon="__RampantArsenal__/graphics/technology/incendiary.png",
	    prerequisites = {"flamethrower"},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    local napalm = makeTechnology({
	    name="incendiary-napalm",
	    icon="__RampantArsenal__/graphics/technology/incendiary-napalm.png",
	    prerequisites = {incendiary, "sulfur-processing"},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })


    local he = makeTechnology({
	    name="high-explosives",
	    icon="__RampantArsenal__/graphics/technology/he-ordnance.png",
	    prerequisites = {"explosives"},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    local bioweapons = makeTechnology({
	    name="bio-weapons",
	    icon="__RampantArsenal__/graphics/technology/biowarfare.png",
	    prerequisites = {"military-3"},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    local bioCapsules = makeTechnology({
	    name="bio-capsules",
	    icon="__RampantArsenal__/graphics/technology/bio-capsules.png",
	    prerequisites = {"military-4", "explosives", bioweapons},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    makeTechnology({
	    name="incendiary-grenades",
	    icon="__RampantArsenal__/graphics/technology/incendiary-grenades.png",
	    prerequisites = {"explosives", "military-3", incendiary},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    makeTechnology({
	    name="incendiary-landmine",
	    icon="__RampantArsenal__/graphics/technology/incendiary-landmines.png",
	    prerequisites = {"land-mine", incendiary},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    makeTechnology({
	    name="bio-landmine",
	    icon="__RampantArsenal__/graphics/technology/bio-landmines.png",
	    prerequisites = {"land-mine", bioweapons},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    makeTechnology({
	    name="he-landmine",
	    icon="__RampantArsenal__/graphics/technology/he-landmines.png",
	    prerequisites = {"land-mine", he},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })


    makeTechnology({
	    name="incendiary-cannon-shells",
	    icon="__RampantArsenal__/graphics/technology/incendiary-cannon-shells.png",
	    prerequisites = {"military-3", "tanks", incendiary},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    makeTechnology({
	    name="bio-cannon-shells",
	    icon="__RampantArsenal__/graphics/technology/bio-cannon-shells.png",
	    prerequisites = {"military-3", "tanks", bioweapons},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    makeTechnology({
	    name="he-cannon-shells",
	    icon="__RampantArsenal__/graphics/technology/he-cannon-shells.png",
	    prerequisites = {"military-3", "tanks", he},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    makeTechnology({
	    name="incendiary-artillery-shells",
	    icon="__RampantArsenal__/graphics/technology/incendiary-artillery-shells.png",
	    prerequisites = {"artillery", napalm},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 2000,
	    time = 30
    })

    makeTechnology({
	    name="bio-artillery-shells",
	    icon="__RampantArsenal__/graphics/technology/bio-artillery-shells.png",
	    prerequisites = {bioCapsules, "artillery"},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 2000,
	    time = 30
    })


    local heGrenades = makeTechnology({
	    name="he-grenades",
	    icon="__RampantArsenal__/graphics/technology/he-grenades.png",
	    prerequisites = {he},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    makeTechnology({
	    name="he-artillery-shells",
	    icon="__RampantArsenal__/graphics/technology/he-artillery-shells.png",
	    prerequisites = {"artillery", heGrenades},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 2000,
	    time = 30
    })

    makeTechnology({
	    name="bio-grenades",
	    icon="__RampantArsenal__/graphics/technology/bio-grenades.png",
	    prerequisites = {bioweapons},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    local capsuleTurretTech = makeTechnology({
	    name = "capsule-turret",
	    prerequisites = {"turrets", "military-3", "explosives"},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turrets.png",
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    local capsuleTurretSpeed1 = makeTechnology({
	    name = "capsule-turret-speed-1",
	    prerequisites = {capsuleTurretTech},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-speed.png",
	    upgrade = true,
	    effects = {
		{
		    type = "gun-speed",
		    ammo_category = "capsule-launcher",
		    modifier = 0.1
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    local capsuleTurretSpeed2 = makeTechnology({
	    name = "capsule-turret-speed-2",
	    prerequisites = {capsuleTurretSpeed1},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-speed.png",
	    upgrade = true,
	    effects = {
		{
		    type = "gun-speed",
		    ammo_category = "capsule-launcher",
		    modifier = 0.1
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 150,
	    time = 45
    })

    local capsuleTurretSpeed3 = makeTechnology({
	    name = "capsule-turret-speed-3",
	    prerequisites = {capsuleTurretSpeed2},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-speed.png",
	    upgrade = true,
	    effects = {
		{
		    type = "gun-speed",
		    ammo_category = "capsule-launcher",
		    modifier = 0.2
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 300,
	    time = 50
    })

    local capsuleTurretSpeed4 = makeTechnology({
	    name = "capsule-turret-speed-4",
	    prerequisites = {capsuleTurretSpeed3},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-speed.png",
	    upgrade = true,
	    effects = {
		{
		    type = "gun-speed",
		    ammo_category = "capsule-launcher",
		    modifier = 0.3
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 300,
	    time = 60
    })


    local capsuleTurretSpeed5 = makeTechnology({
	    name = "capsule-turret-speed-5",
	    prerequisites = {capsuleTurretSpeed4},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-speed.png",
	    upgrade = true,
	    effects = {
		{
		    type = "gun-speed",
		    ammo_category = "capsule-launcher",
		    modifier = 0.3
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 1000,
	    time = 60
    })

    makeTechnology({
	    name = "capsule-turret-speed-6",
	    prerequisites = {capsuleTurretSpeed5},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-speed.png",
	    upgrade = true,
	    effects = {
		{
		    type = "gun-speed",
		    ammo_category = "capsule-launcher",
		    modifier = 0.4
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 3000,
	    time = 60
    })

    local capsuleTurretDamage1 = makeTechnology({
	    name = "capsule-turret-damage-1",
	    prerequisites = {capsuleTurretTech},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30
    })

    local capsuleTurretDamage2 = makeTechnology({
	    name = "capsule-turret-damage-2",
	    prerequisites = {capsuleTurretDamage1},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 150,
	    time = 45
    })

    local capsuleTurretDamage3 = makeTechnology({
	    name = "capsule-turret-damage-3",
	    prerequisites = {capsuleTurretDamage2},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 300,
	    time = 50
    })

    local capsuleTurretDamage4 = makeTechnology({
	    name = "capsule-turret-damage-4",
	    prerequisites = {capsuleTurretDamage3},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 300,
	    time = 60
    })


    local capsuleTurretDamage5 = makeTechnology({
	    name = "capsule-turret-damage-5",
	    prerequisites = {capsuleTurretDamage4},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 1000,
	    time = 60
    })

    local capsuleTurretDamage6 = makeTechnology({
	    name = "capsule-turret-damage-6",
	    prerequisites = {capsuleTurretDamage5},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 3000,
	    time = 60
    })


    makeTechnology({
	    name = "capsule-turret-damage-7",
	    prerequisites = {capsuleTurretDamage6},
	    icon = "__RampantArsenal__/graphics/technology/capsule-turret-damage.png",
	    upgrade = true,
	    maxLevel = "infinite",
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"space-science-pack", 1}
	    },
	    countForumla = "2^(L-7)*1000",
	    time = 60,
	    order = "e-z-f"
    })


    local cannonTech = makeTechnology({
	    name = "cannon-turret-1",
	    prerequisites = {"turrets","tanks","concrete","steel-processing"},
	    icon = "__RampantArsenal__/graphics/technology/cannon-turrets.png",
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 75,
	    time = 30
    })

    makeTechnology({
	    name = "cannon-turret-2",
	    prerequisites = {"explosives", "cannon-shell-speed-1", cannonTech},
	    icon = "__RampantArsenal__/graphics/technology/cannon-turrets.png",
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 120,
	    time = 30
    })

    local shotgunTurretTech = makeTechnology({
	    name = "shotgun",
	    prerequisites = {"turrets","steel-processing","military"},
	    icon = "__RampantArsenal__/graphics/technology/shotgun-turrets.png",
	    effects = {},
	    ingredients = {{"science-pack-1", 1}},
	    count = 20,
	    time = 10
    })

    makeTechnology({
    	    name = "flamethrower-2",
    	    prerequisites = {"flamethrower-damage-2", "military-4", "advanced-electronics-2", "concrete"},
	    icon = "__base__/graphics/technology/flamethrower.png",
    	    effects = {},
    	    ingredients = {
    		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1},
    		{"high-tech-science-pack", 1}
    	    },
    	    count = 2000,
    	    time = 30
    })

    local shotgunTurretDamage1 = makeTechnology({
	    name = "shotgun-turret-damage-1",
	    prerequisites = {shotgunTurretTech},
	    icon = "__RampantArsenal__/graphics/technology/shotgun-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1}
	    },
	    count = 50,
	    time = 30,
	    order = "e-z-a"
    })

    local shotgunTurretDamage2 = makeTechnology({
	    name = "shotgun-turret-damage-2",
	    prerequisites = {shotgunTurretDamage1},
	    icon = "__RampantArsenal__/graphics/technology/shotgun-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1}
	    },
	    count = 100,
	    time = 45,
	    order = "e-z-b"
    })

    local shotgunTurretDamage3 = makeTechnology({
	    name = "shotgun-turret-damage-3",
	    prerequisites = {shotgunTurretDamage2},
	    icon = "__RampantArsenal__/graphics/technology/shotgun-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"military-science-pack", 1}
	    },
	    count = 300,
	    time = 50,
	    order = "e-z-c"
    })

    local shotgunTurretDamage4 = makeTechnology({
	    name = "shotgun-turret-damage-4",
	    prerequisites = {shotgunTurretDamage3},
	    icon = "__RampantArsenal__/graphics/technology/shotgun-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"military-science-pack", 1}
	    },
	    count = 300,
	    time = 60,
	    order = "e-z-d"
    })


    local shotgunTurretDamage5 = makeTechnology({
	    name = "shotgun-turret-damage-5",
	    prerequisites = {shotgunTurretDamage4},
	    icon = "__RampantArsenal__/graphics/technology/shotgun-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 1000,
	    time = 60,
	    order = "e-z-e"
    })

    local shotgunTurretDamage6 = makeTechnology({
	    name = "shotgun-turret-damage-6",
	    prerequisites = {shotgunTurretDamage5},
	    icon = "__RampantArsenal__/graphics/technology/shotgun-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 3000,
	    time = 60,
	    order = "e-z-f"
    })

    makeTechnology({
	    name = "shotgun-turret-damage-7",
	    prerequisites = {shotgunTurretDamage6},
	    icon = "__RampantArsenal__/graphics/technology/shotgun-turret-damage.png",
	    upgrade = true,
	    maxLevel = "infinite",
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"space-science-pack", 1}
	    },
	    countForumla = "2^(L-7)*1000",
	    time = 60,
	    order = "e-z-f"
    })

    local cannonTurretDamage1 = makeTechnology({
	    name = "cannon-turret-damage-1",
	    prerequisites = {cannonTech},
	    icon = "__RampantArsenal__/graphics/technology/cannon-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30,
	    order = "e-z-a"
    })

    local cannonTurretDamage2 = makeTechnology({
	    name = "cannon-turret-damage-2",
	    prerequisites = {cannonTurretDamage1},
	    icon = "__RampantArsenal__/graphics/technology/cannon-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 150,
	    time = 45,
	    order = "e-z-b"
    })

    local cannonTurretDamage3 = makeTechnology({
	    name = "cannon-turret-damage-3",
	    prerequisites = {cannonTurretDamage2},
	    icon = "__RampantArsenal__/graphics/technology/cannon-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 300,
	    time = 50,
	    order = "e-z-c"
    })

    local cannonTurretDamage4 = makeTechnology({
	    name = "cannon-turret-damage-4",
	    prerequisites = {cannonTurretDamage3},
	    icon = "__RampantArsenal__/graphics/technology/cannon-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 300,
	    time = 60,
	    order = "e-z-d"
    })


    local cannonTurretDamage5 = makeTechnology({
	    name = "cannon-turret-damage-5",
	    prerequisites = {cannonTurretDamage4},
	    icon = "__RampantArsenal__/graphics/technology/cannon-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 1000,
	    time = 60,
	    order = "e-z-e"
    })

    local cannonTurretDamage6 = makeTechnology({
	    name = "cannon-turret-damage-6",
	    prerequisites = {cannonTurretDamage5},
	    icon = "__RampantArsenal__/graphics/technology/cannon-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 3000,
	    time = 60,
	    order = "e-z-f"
    })

    makeTechnology({
	    name = "advanced-laser-turret-2",
	    icon = "__base__/graphics/technology/laser-turrets.png",
	    prerequisites = {"laser-turret-damage-2", "advanced-electronics-2", "military-4", "electric-engine"},
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 2000,
	    time = 30
    })

    makeTechnology({
	    name = "cannon-turret-damage-7",
	    prerequisites = {cannonTurretDamage6},
	    icon = "__RampantArsenal__/graphics/technology/cannon-turret-damage.png",
	    upgrade = true,
	    maxLevel = "infinite",
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"space-science-pack", 1}
	    },
	    countForumla = "2^(L-7)*1000",
	    time = 60,
	    order = "e-z-f"
    })


    makeTechnology({
	    name = "artillery-shell-damage-1",
	    prerequisites = {"artillery"},
	    icon = "__RampantArsenal__/graphics/technology/artillery-shell-damage.png",
	    upgrade = true,
	    maxLevel = "infinite",
	    effects = {
		{
		    type = "ammo-damage",
		    ammo_category = "artillery-shell",
		    modifier = 0.4
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"space-science-pack", 1}
	    },
	    countForumla = "2^(L)*1000",
	    time = 60,
	    order = "e-z-f"
    })

    makeTechnology({
    	    name = "artillery-turret-damage-1",
    	    prerequisites = {"artillery"},
    	    icon = "__RampantArsenal__/graphics/technology/artillery-damage.png",
    	    upgrade = true,
    	    maxLevel = "infinite",
    	    effects = {
    		{
    		    type = "turret-attack",
    		    turret_id = "artillery-wagon",
    		    modifier = 0.4
    		},
    		{
    		    type = "turret-attack",
    		    turret_id = "artillery-turret",
    		    modifier = 0.4
    		}
    	    },
    	    ingredients = {
    		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1},
    		{"high-tech-science-pack", 1},
    		{"space-science-pack", 1}
    	    },
    	    countForumla = "2^(L)*1000",
    	    time = 60,
    	    order = "e-z-f"
    })

    local lightningTurretTech = makeTechnology({
	    name = "lightning",
	    prerequisites = {"laser-turrets", "military-3"},
	    icon = "__RampantArsenal__/graphics/technology/lightning-turrets.png",
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 200,
	    time = 30
    })

    makeTechnology({
	    name = "incendiary-bullets",
	    icon="__RampantArsenal__/graphics/technology/incendiary-bullets.png",
	    prerequisites = {incendiary},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "incendiary-shotgun-shells",
	    icon="__RampantArsenal__/graphics/technology/incendiary-shotgun-shells.png",
	    prerequisites = {incendiary},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })



    makeTechnology({
	    name = "incendiary-rockets",
	    icon="__RampantArsenal__/graphics/technology/incendiary-rockets.png",
	    prerequisites = {incendiary, "explosive-rocketry"},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "he-bullets",
	    icon="__RampantArsenal__/graphics/technology/he-bullets.png",
	    prerequisites = {he},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "he-shotgun-shells",
	    icon="__RampantArsenal__/graphics/technology/he-shotgun-shells.png",
	    prerequisites = {he},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })


    makeTechnology({
	    name = "he-rockets",
	    icon="__RampantArsenal__/graphics/technology/he-rockets.png",
	    prerequisites = {he, "explosive-rocketry"},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "boosters",
	    icon="__RampantArsenal__/graphics/technology/boosters.png",
	    prerequisites = {"military-2"},
	    effects = {},
	    count = 35,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "paralysis",
	    icon="__RampantArsenal__/graphics/technology/paralysis.png",
	    prerequisites = {bioweapons, "military-4"},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    local regeneration = makeTechnology({
	    name = "regeneration",
	    icon="__RampantArsenal__/graphics/technology/regeneration.png",
	    prerequisites = {"military-2", "advanced-electronics", "plastics"},
	    effects = {},
	    count = 200,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "regeneration-walls",
	    icon="__RampantArsenal__/graphics/technology/mending-walls.png",
	    prerequisites = {regeneration, "stone-walls", "military-3"},
	    effects = {},
	    count = 200,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "regeneration-turrets",
	    icon="__RampantArsenal__/graphics/technology/medic-turrets.png",
	    prerequisites = {regeneration, "engine"},
	    effects = {},
	    count = 200,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "bio-bullets",
	    icon="__RampantArsenal__/graphics/technology/bio-bullets.png",
	    prerequisites = {bioweapons},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "bio-shotgun-shells",
	    icon="__RampantArsenal__/graphics/technology/bio-shotgun-shells.png",
	    prerequisites = {bioweapons},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "bio-rockets",
	    icon="__RampantArsenal__/graphics/technology/bio-rockets.png",
	    prerequisites = {bioweapons, "explosive-rocketry"},
	    effects = {},
	    count = 75,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    local rocketTurretTech = makeTechnology({
	    name = "rocket-turret-1",
	    prerequisites = {"turrets", "military-2", "rocketry"},
	    icon = "__RampantArsenal__/graphics/technology/rocket-turrets.png",
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"military-science-pack", 1}
	    },
	    count = 200,
	    time = 30
    })

    makeTechnology({
	    name = "rocket-turret-2",
	    prerequisites = {"rocket-speed-1", "explosive-rocketry", "advanced-electronics-2", "military-3", rocketTurretTech, "engine"},
	    icon = "__RampantArsenal__/graphics/technology/rocket-turrets.png",
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 300,
	    time = 30
    })

    local rocketTurretDamage1 = makeTechnology({
	    name = "rocket-turret-damage-1",
	    prerequisites = {rocketTurretTech},
	    icon = "__RampantArsenal__/graphics/technology/rocket-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 30,
	    order = "e-z-a"
    })

    local rocketTurretDamage2 = makeTechnology({
	    name = "rocket-turret-damage-2",
	    prerequisites = {rocketTurretDamage1},
	    icon = "__RampantArsenal__/graphics/technology/rocket-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 150,
	    time = 45,
	    order = "e-z-b"
    })

    local rocketTurretDamage3 = makeTechnology({
	    name = "rocket-turret-damage-3",
	    prerequisites = {rocketTurretDamage2},
	    icon = "__RampantArsenal__/graphics/technology/rocket-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 300,
	    time = 50,
	    order = "e-z-c"
    })

    local rocketTurretDamage4 = makeTechnology({
	    name = "rocket-turret-damage-4",
	    prerequisites = {rocketTurretDamage3},
	    icon = "__RampantArsenal__/graphics/technology/rocket-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 300,
	    time = 60,
	    order = "e-z-d"
    })


    local rocketTurretDamage5 = makeTechnology({
	    name = "rocket-turret-damage-5",
	    prerequisites = {rocketTurretDamage4},
	    icon = "__RampantArsenal__/graphics/technology/rocket-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 1000,
	    time = 60,
	    order = "e-z-e"
    })

    local rocketTurretDamage6 = makeTechnology({
	    name = "rocket-turret-damage-6",
	    prerequisites = {rocketTurretDamage5},
	    icon = "__RampantArsenal__/graphics/technology/rocket-turret-damage.png",
	    upgrade = true,
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 3000,
	    time = 60,
	    order = "e-z-f"
    })

    makeTechnology({
	    name = "rocket-turret-damage-7",
	    prerequisites = {rocketTurretDamage6},
	    icon = "__RampantArsenal__/graphics/technology/rocket-turret-damage.png",
	    upgrade = true,
	    maxLevel = "infinite",
	    effects = {},
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"space-science-pack", 1}
	    },
	    countForumla = "2^(L-7)*1000",
	    time = 60,
	    order = "e-z-f"
    })


    local landmineDamage1 = makeTechnology({
	    name = "landmine-damage-1",
	    prerequisites = {"land-mine"},
	    icon = "__RampantArsenal__/graphics/technology/landmine-damage.png",
	    upgrade = true,
	    effects = {
		{
		    type = "ammo-damage",
		    ammo_category = "landmine",
		    modifier = 0.1
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"military-science-pack", 1}
	    },
	    count = 50,
	    time = 30,
	    order = "e-z-a"
    })

    local landmineDamage2 = makeTechnology({
	    name = "landmine-damage-2",
	    prerequisites = {landmineDamage1},
	    icon = "__RampantArsenal__/graphics/technology/landmine-damage.png",
	    upgrade = true,
	    effects = {
		{
		    type = "ammo-damage",
		    ammo_category = "landmine",
		    modifier = 0.1
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 45,
	    order = "e-z-b"
    })

    local landmineDamage3 = makeTechnology({
	    name = "landmine-damage-3",
	    prerequisites = {landmineDamage2},
	    icon = "__RampantArsenal__/graphics/technology/landmine-damage.png",
	    upgrade = true,
	    effects = {
		{
		    type = "ammo-damage",
		    ammo_category = "landmine",
		    modifier = 0.2
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"military-science-pack", 1}
	    },
	    count = 300,
	    time = 50,
	    order = "e-z-c"
    })

    local landmineDamage4 = makeTechnology({
	    name = "landmine-damage-4",
	    prerequisites = {landmineDamage3},
	    icon = "__RampantArsenal__/graphics/technology/landmine-damage.png",
	    upgrade = true,
	    effects = {
		{
		    type = "ammo-damage",
		    ammo_category = "landmine",
		    modifier = 0.2
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"military-science-pack", 1}
	    },
	    count = 300,
	    time = 60,
	    order = "e-z-d"
    })


    local landmineDamage5 = makeTechnology({
	    name = "landmine-damage-5",
	    prerequisites = {landmineDamage4},
	    icon = "__RampantArsenal__/graphics/technology/landmine-damage.png",
	    upgrade = true,
	    effects = {
		{
		    type = "ammo-damage",
		    ammo_category = "landmine",
		    modifier = 0.2
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 1000,
	    time = 60,
	    order = "e-z-e"
    })

    local landmineDamage6 = makeTechnology({
	    name = "landmine-damage-6",
	    prerequisites = {landmineDamage5},
	    icon = "__RampantArsenal__/graphics/technology/landmine-damage.png",
	    upgrade = true,
	    effects = {
		{
		    type = "ammo-damage",
		    ammo_category = "landmine",
		    modifier = 0.4
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 3000,
	    time = 60,
	    order = "e-z-f"
    })

    makeTechnology({
	    name = "landmine-damage-7",
	    prerequisites = {landmineDamage6},
	    icon = "__RampantArsenal__/graphics/technology/landmine-damage.png",
	    upgrade = true,
	    maxLevel = "infinite",
	    effects = {
		{
		    type = "ammo-damage",
		    ammo_category = "landmine",
		    modifier = 0.4
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"space-science-pack", 1}
	    },
	    countForumla = "2^(L-7)*1000",
	    time = 60,
	    order = "e-z-f"
    })


    local turrets2 = makeTechnology({
	    name = "turrets-2",
	    icon="__RampantArsenal__/graphics/technology/turrets-2.png",
	    prerequisites = {"turrets", "military-3", "gun-turret-damage-4", "bullet-speed-4"},
	    effects = {},
	    count = 250,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })


    makeTechnology({
	    name = "nuclear-railway",
	    icon="__RampantArsenal__/graphics/technology/nuclear-railway.png",
	    prerequisites = {"nuclear-power", "railway", "advanced-electronics-2"},
	    effects = {},
	    count = 350,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"high-tech-science-pack", 1}
	    },
	    time = 30
    })

    local tanks2 = makeTechnology({
	    name = "tanks-2",
	    icon="__base__/graphics/technology/tanks.png",
	    prerequisites = {"tanks", "advanced-electronics-2", "military-4"},
	    effects = {},
	    count = 300,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "nuclear-tanks",
	    icon="__RampantArsenal__/graphics/technology/nuclear-tanks.png",
	    prerequisites = {"nuclear-power", tanks2},
	    effects = {},
	    count = 1000,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"production-science-pack", 1}
	    },
	    time = 30
    })


    local cars2 = makeTechnology({
	    name = "cars-2",
	    icon="__base__/graphics/technology/automobilism.png",
	    prerequisites = {"automobilism", "military-3", "advanced-electronics-2"},
	    effects = {},
	    count = 300,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })


    makeTechnology({
	    name = "nuclear-cars",
	    icon="__RampantArsenal__/graphics/technology/nuclear-cars.png",
	    prerequisites = {"nuclear-power", "military-4", cars2},
	    effects = {},
	    count = 750,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
    		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "oil-burner",
	    icon="__RampantArsenal__/graphics/technology/oil-burner.png",
	    prerequisites = {"flammables", "electric-energy-distribution-1"},
	    effects = {},
	    count = 120,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
	    },
	    time = 30
    })

    makeTechnology({
	    name = "power-armor-mk3",
	    icon="__RampantArsenal__/graphics/technology/power-armor-mk3.png",
	    prerequisites = {"power-armor-2", "nuclear-power"},
	    effects = {},
	    count = 600,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"production-science-pack", 1}
	    },
	    time = 30
    })


    local genMk2 = makeTechnology({
	    name = "generator-equipment-2",
	    icon="__base__/graphics/technology/fusion-reactor-equipment.png",
	    prerequisites = {"fusion-reactor-equipment", "productivity-module-3"},
	    effects = {},
	    count = 600,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"production-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "generator-equipment-3",
	    icon="__base__/graphics/technology/fusion-reactor-equipment.png",
	    prerequisites = {genMk2, "nuclear-power"},
	    effects = {},
	    count = 800,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"production-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "shield-equipment-2",
	    icon="__base__/graphics/technology/energy-shield-mk2-equipment.png",
	    prerequisites = {"energy-shield-mk2-equipment", "speed-module-3"},
	    effects = {},
	    count = 400,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "battery-equipment-3",
	    icon="__base__/graphics/technology/battery-mk2-equipment.png",
	    prerequisites = {"battery-mk2-equipment", "effectivity-module-3"},
	    effects = {},
	    count = 400,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "stone-walls-2",
	    icon="__base__/graphics/technology/stone-walls.png",
	    prerequisites = {"military-3", "concrete", "stone-walls"},
	    effects = {},
	    count = 400,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1}
	    },
	    time = 30
    })

    local characterHealthBonus1 = makeTechnology({
	    name = "character-health-1",
	    prerequisites = {regeneration},
	    icon = "__RampantArsenal__/graphics/technology/character-bonus-health.png",
	    upgrade = true,
	    effects = {
		{
		    type = "character-health-bonus",
		    modifier = 100
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"military-science-pack", 1}
	    },
	    count = 50,
	    time = 30,
	    order = "e-z-a"
    })

    local characterHealthBonus2 = makeTechnology({
	    name = "character-health-2",
	    prerequisites = {characterHealthBonus1},
	    icon = "__RampantArsenal__/graphics/technology/character-bonus-health.png",
	    upgrade = true,
	    effects = {
		{
		    type = "character-health-bonus",
		    modifier = 100
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"military-science-pack", 1}
	    },
	    count = 100,
	    time = 45,
	    order = "e-z-b"
    })

    local characterHealthBonus3 = makeTechnology({
	    name = "character-health-3",
	    prerequisites = {characterHealthBonus2},
	    icon = "__RampantArsenal__/graphics/technology/character-bonus-health.png",
	    upgrade = true,
	    effects = {
		{
		    type = "character-health-bonus",
		    modifier = 100
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"military-science-pack", 1}
	    },
	    count = 300,
	    time = 50,
	    order = "e-z-c"
    })

    local characterHealthBonus4 = makeTechnology({
	    name = "character-health-4",
	    prerequisites = {characterHealthBonus3},
	    icon = "__RampantArsenal__/graphics/technology/character-bonus-health.png",
	    upgrade = true,
	    effects = {
		{
		    type = "character-health-bonus",
		    modifier = 100
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"military-science-pack", 1}
	    },
	    count = 300,
	    time = 60,
	    order = "e-z-d"
    })


    local characterHealthBonus5 = makeTechnology({
	    name = "character-health-5",
	    prerequisites = {characterHealthBonus4},
	    icon = "__RampantArsenal__/graphics/technology/character-bonus-health.png",
	    upgrade = true,
	    effects = {
		{
		    type = "character-health-bonus",
		    modifier = 100
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1}
	    },
	    count = 1000,
	    time = 60,
	    order = "e-z-e"
    })

    local characterHealthBonus6 = makeTechnology({
	    name = "character-health-6",
	    prerequisites = {characterHealthBonus5},
	    icon = "__RampantArsenal__/graphics/technology/character-bonus-health.png",
	    upgrade = true,
	    effects = {
		{
		    type = "character-health-bonus",
		    modifier = 100
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    count = 3000,
	    time = 60,
	    order = "e-z-f"
    })

    makeTechnology({
	    name = "character-health-7",
	    prerequisites = {characterHealthBonus6},
	    icon = "__RampantArsenal__/graphics/technology/character-bonus-health.png",
	    upgrade = true,
	    maxLevel = "infinite",
	    effects = {
		{
		    type = "character-health-bonus",
		    modifier = 100
		}
	    },
	    ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"military-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"space-science-pack", 1}
	    },
	    countForumla = "2^(L-7)*1000",
	    time = 60,
	    order = "e-z-f"
    })


    makeTechnology({
	    name = "personal-shotgun-defense",
	    icon="__RampantArsenal__/graphics/technology/personal-shotgun-defense-equipment.png",
	    prerequisites = {"personal-laser-defense-equipment", "advanced-electronics-2", "effectivity-module-2", shotgunTurretTech, "shotgun-shell-damage-5"},
	    effects = {},
	    count = 400,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    time = 30
    })


    makeTechnology({
	    name = "personal-cannon-defense",
	    icon="__RampantArsenal__/graphics/technology/personal-cannon-defense-equipment.png",
	    prerequisites = {"personal-laser-defense-equipment", "military-4", "advanced-electronics-2", cannonTech, "productivity-module-2", "cannon-shell-damage-3"},
	    effects = {},
	    count = 400,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "personal-lightning-defense",
	    icon="__RampantArsenal__/graphics/technology/personal-lightning-defense-equipment.png",
	    prerequisites = {"personal-laser-defense-equipment", "military-4", "advanced-electronics-2", lightningTurretTech, "speed-module-2", "laser-turret-damage-4"},
	    effects = {},
	    count = 400,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "personal-bullets-defense",
	    icon="__RampantArsenal__/graphics/technology/personal-bullets-defense-equipment.png",
	    prerequisites = {"personal-laser-defense-equipment", "military-4", "advanced-electronics-2", turrets2},
	    effects = {},
	    count = 400,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    time = 30
    })

    makeTechnology({
	    name = "personal-slow-defense",
	    icon="__RampantArsenal__/graphics/technology/personal-slow-defense-equipment.png",
	    prerequisites = {"personal-laser-defense-equipment", "military-4", capsuleTurretTech, "advanced-electronics-2"},
	    effects = {},
	    count = 400,
	    ingredients = {
		{"science-pack-1", 1},
    		{"science-pack-2", 1},
		{"science-pack-3", 1},
    		{"military-science-pack", 1},
		{"high-tech-science-pack", 1}
	    },
	    time = 30
    })

end

return technologies
