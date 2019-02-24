local grenades = {}

local technologyUtils = require("utils/TechnologyUtils")
local recipeUtils = require("utils/RecipeUtils")
local capsuleUtils = require("utils/CapsuleUtils")
local projectileUtils = require("utils/ProjectileUtils")

local cloudUtils = require("utils/CloudUtils")

local makeRecipe = recipeUtils.makeRecipe
local addEffectToTech = technologyUtils.addEffectToTech
local makeGrenadeProjectile = projectileUtils.makeGrenadeProjectile
local makeCapsuleProjectile = projectileUtils.makeCapsuleProjectile
local makeCapsule = capsuleUtils.makeCapsule

local makeCloud = cloudUtils.makeCloud

function grenades.enable()

    local incendiaryGrenade = makeCapsule(
	{
	    name = "incendiary-grenade",
	    icon = "__RampantArsenal__/graphics/icons/incendiary-grenade.png",
	    order = "a[grenade]-a[nzincendiary]"
	},
	{
	    type = "throw",
	    attack_parameters =
		{
		    type = "projectile",
		    ammo_category = "grenade",
		    cooldown = 30,
		    projectile_creation_distance = 0.6,
		    range = 20,
		    ammo_type =
			{
			    category = "grenade",
			    target_type = "position",
			    action =
				{
				    type = "direct",
				    action_delivery =
					{
					    type = "projectile",
					    projectile = makeGrenadeProjectile(
						{
						    name = "incendiary",
						    tint = {r=0.5,g=0.3,b=0,a=0.8}
						},
						{
						    {
							type = "direct",
							action_delivery =
							    {
								type = "instant",
								target_effects =
								    {
									{
									    type = "create-entity",
									    entity_name = "medium-explosion"
									},
									{
									    type = "create-entity",
									    entity_name = "small-scorchmark",
									    check_buildability = true
									}
								    }
							    }
						    },
						    {
							type = "area",
							radius = 8,
							action_delivery =
							    {
								type = "instant",
								target_effects =
								    {
									{
									    type = "damage",
									    damage = {amount = 50, type = "explosion"}
									},
									{
									    type = "damage",
									    damage = {amount = 150, type = "fire"}
									},
									{
									    type = "create-fire",
									    entity_name = "fire-flame",
									    initial_ground_flame_count = 3
									},
									{
									    type = "create-sticker",
									    sticker = "small-fire-sticker-rampant-arsenal"
									}
								    }
							    }
						    }
					    }),
					    starting_speed = 0.3
					}
				}
			}
		}
    })

    local incendiaryGrenadeRecipe = makeRecipe({
	    name = "incendiary-grenade",
	    icon = "__RampantArsenal__/graphics/icons/incendiary-grenade.png",
	    enabled = false,
	    category = "crafting-with-fluid",
	    ingredients = {
		{"grenade", 1},
		{"copper-plate", 1},
		{type="fluid", name="light-oil", amount=40}
	    },
	    result = incendiaryGrenade,
    })

    addEffectToTech("incendiary-grenades",
		    {
			type = "unlock-recipe",
			recipe = incendiaryGrenadeRecipe,
    })

    
    local heGrenade = makeCapsule(
	{
	    name = "he-grenade",
	    icon = "__RampantArsenal__/graphics/icons/he-grenade.png",
	    order = "a[grenade]-a[nzhe]"
	},
	{
	    type = "throw",
	    attack_parameters =
		{
		    type = "projectile",
		    ammo_category = "grenade",
		    cooldown = 30,
		    projectile_creation_distance = 0.6,
		    range = 20,
		    ammo_type =
			{
			    category = "grenade",
			    target_type = "position",
			    action =
				{
				    type = "direct",
				    action_delivery =
					{
					    type = "projectile",
					    projectile = makeGrenadeProjectile(
						{
						    name = "he",
						    tint = {r=0,g=0,b=0.8,a=0.8}
						},
						{
						    {
							type = "direct",
							action_delivery =
							    {
								type = "instant",
								target_effects =
								    {
									{
									    type = "create-entity",
									    entity_name = "medium-explosion"
									},
									{
									    type = "create-entity",
									    entity_name = "small-scorchmark",
									    check_buildability = true
									}
								    }
							    }
						    },
						    {
							type = "area",
							radius = 10,
							action_delivery =
							    {
								type = "instant",
								target_effects =
								    {
									{
									    type = "damage",
									    damage = {amount = 550, type = "explosion"}
									},
									{
									    type = "push-back",
									    distance = 1
									},
									{
									    type = "create-entity",
									    entity_name = "big-explosion"
									}
								    }
							    }
						    }
					    }),
					    starting_speed = 0.3
					}
				}
			}
		}
    })

    local heGrenadeRecipe = makeRecipe({
	    name = "he-grenade",
	    icon = "__RampantArsenal__/graphics/icons/he-grenade.png",
	    enabled = false,
	    category = "crafting",
	    ingredients = {
		{"grenade", 1},
		{"copper-plate", 1},
		{"explosives", 4}
	    },
	    result = heGrenade,
    })
    
    addEffectToTech("he-grenades",
		    {
			type = "unlock-recipe",
			recipe = heGrenadeRecipe,
    })
    
    local bioGrenade = makeCapsule(
	{
	    name = "bio-grenade",
	    icon = "__RampantArsenal__/graphics/icons/bio-grenade.png",
	    order = "a[grenade]-a[nzfbio]"
	},
	{
	    type = "throw",
	    attack_parameters =
		{
		    type = "projectile",
		    ammo_category = "grenade",
		    cooldown = 30,
		    projectile_creation_distance = 0.6,
		    range = 20,
		    ammo_type =
			{
			    category = "grenade",
			    target_type = "position",
			    action =
				{
				    type = "direct",
				    action_delivery =
					{
					    type = "projectile",
					    projectile = makeGrenadeProjectile(
						{
						    name = "bio",
						    tint = {r=0.5,g=0,b=0.5,a=0.8}
						},
						{
						    {
							type = "direct",
							action_delivery =
							    {
								type = "instant",
								target_effects =
								    {
									{
									    type = "create-entity",
									    entity_name = "medium-explosion"
									},
									{
									    type = "create-entity",
									    entity_name = "small-scorchmark",
									    check_buildability = true
									}
								    }
							    }
						    },
						    {
							type = "area",
							radius = 8,
							action_delivery =
							    {
								type = "instant",
								target_effects =
								    {
									{
									    type = "damage",
									    damage = {amount = 50, type = "explosion"}
									},
									{
									    type = "damage",
									    damage = {amount = 175, type = "poison"}
									},
									{
									    type = "create-sticker",
									    sticker = "small-toxic-sticker-rampant-arsenal"
									}
								    }
							    }
						    }
					    }),
					    starting_speed = 0.3
					}
				}
			}
		}
    })

    local bioGrenadeRecipe = makeRecipe({
	    name = "bio-grenade",
	    icon = "__RampantArsenal__/graphics/icons/bio-grenade.png",
	    enabled = false,
	    category = "crafting",
	    ingredients = {
		{"grenade", 1},
		{"copper-plate", 1},
		{"poison-capsule", 1}
	    },
	    result = bioGrenade,
    })

    addEffectToTech("bio-grenades",
		    {
			type = "unlock-recipe",
			recipe = bioGrenadeRecipe,
    })
    
    local toxicCapsule = makeCapsule(
	{
	    name = "toxic",
	    icon = "__RampantArsenal__/graphics/icons/toxic-capsule.png",
	    order = "b[poison-capsule]-a[toxic]"
	},
	{
	    type = "throw",
	    attack_parameters =	    
		{
		    type = "projectile",
		    ammo_category = "capsule",
		    cooldown = 30,
		    projectile_creation_distance = 0.6,
		    range = 25,
		    ammo_type =
			{
			    category = "capsule",
			    target_type = "position",
			    action =
				{
				    type = "direct",
				    action_delivery =
					{
					    type = "projectile",
					    projectile = makeCapsuleProjectile(
						{
						    name = "toxic",
						    tint = {r=0.5,g=0,b=0.5,a=0.8}
						},
						{
						    type = "direct",
						    action_delivery =
							{
							    type = "instant",
							    target_effects =
								{
								    type = "create-entity",
								    show_in_tooltip = true,
								    entity_name = "toxic-cloud-rampant-arsenal"
								}
							}
						}
					    ),
					    starting_speed = 0.3
					}
				}
			}
		}
    })

    local toxicCapsuleRecipe = makeRecipe({
	    name = "toxic-capsule",
	    icon = "__RampantArsenal__/graphics/icons/toxic-capsule.png",
	    enabled = false,
	    category = "crafting",
	    ingredients = {
		{"poison-capsule", 3},
		{"iron-plate", 3},
		{"plastic-bar", 3}
	    },
	    result = toxicCapsule,
    })
    
    addEffectToTech("bio-capsules",
		    {
			type = "unlock-recipe",
			recipe = toxicCapsuleRecipe,
    })
    
    local repairCapsule = makeCapsule(
	{
	    name = "repair",
	    icon = "__RampantArsenal__/graphics/icons/repair-capsule.png",
	    order = "c[slowdown-capsule]-b[repair]"
	},
	{
	    type = "throw",
	    attack_parameters =	    
		{
		    type = "projectile",
		    ammo_category = "capsule",
		    cooldown = 30,
		    projectile_creation_distance = 0.6,
		    range = 25,
		    ammo_type =
			{
			    category = "capsule",
			    target_type = "position",
			    action =
				{
				    type = "direct",
				    action_delivery =
					{
					    type = "projectile",
					    projectile = makeCapsuleProjectile(
						{
						    name = "repair",
						    tint = {r=0.5,g=0.3,b=0,a=0.8},
						},
						{
						    type = "direct",
						    action_delivery =
							{
							    type = "instant",
							    target_effects =
								{
								    type = "create-entity",
								    show_in_tooltip = true,
								    entity_name = "repair-cloud-rampant-arsenal"
								}
							}
						}
					    ),
					    starting_speed = 0.3
					}
				}
			}
		}
    })

    local repairCapsuleRecipe = makeRecipe({
	    name = "repair-capsule",
	    icon = "__RampantArsenal__/graphics/icons/repair-capsule.png",
	    enabled = false,
	    category = "crafting",
	    ingredients = {
		{"repair-pack", 2},
		{"steel-plate", 1},
		{"plastic-bar", 1}
	    },
	    result = repairCapsule,
    })

    addEffectToTech("regeneration",
		    {
			type = "unlock-recipe",
			recipe = repairCapsuleRecipe,
    })    
    
    local paralysisCapsule = makeCapsule(
	{
	    name = "paralysis",
	    icon = "__RampantArsenal__/graphics/icons/paralysis-capsule.png",
	    order = "c[slowdown-capsule]-a[paralysis]"
	},
	{
	    type = "throw",
	    attack_parameters =	    
		{
		    type = "projectile",
		    ammo_category = "capsule",
		    cooldown = 30,
		    projectile_creation_distance = 0.6,
		    range = 25,
		    ammo_type =
			{
			    category = "capsule",
			    target_type = "position",
			    action =
				{
				    type = "direct",
				    action_delivery =
					{
					    type = "projectile",
					    projectile = makeCapsuleProjectile(
						{
						    name = "paralysis",
						    tint = {r=0,g=0,b=0.8,a=0.8}
						},
						{
						    type = "direct",
						    action_delivery =
							{
							    type = "instant",
							    target_effects =
								{
								    type = "create-entity",
								    show_in_tooltip = true,
								    entity_name = "paralysis-cloud-rampant-arsenal"
								}
							}
						}
					    ),
					    starting_speed = 0.3
					}
				}
			}
		}
    })

    local paralysisCapsuleRecipe = makeRecipe({
	    name = "paralysis-capsule",
	    icon = "__RampantArsenal__/graphics/icons/paralysis-capsule.png",
	    enabled = false,
	    category = "crafting",
	    ingredients = {
		{"slowdown-capsule", 3},
		{"iron-plate", 3},
		{"plastic-bar", 3}
	    },
	    result = paralysisCapsule,
    })

    addEffectToTech("paralysis",
		    {
			type = "unlock-recipe",
			recipe = paralysisCapsuleRecipe,
    })
    
    local healingCapsule = makeCapsule(
	{
	    name = "healing",
	    icon = "__RampantArsenal__/graphics/icons/healing-capsule.png",
	    order = "c[slowdown-capsule]-c[healing]"
	},
	{
	    type = "use-on-self",
	    attack_parameters =	    
		{
		    type = "projectile",
		    ammo_category = "grenade",
		    cooldown = 30,
		    range = 0,
		    ammo_type =
			{
			    category = "capsule",
			    target_type = "position",
			    action =
				{
				    type = "direct",
				    action_delivery =
					{
					    type = "instant",
					    target_effects =
						{
						    type = "damage",
						    damage = {type = "healing", amount = -100}
						}
					}
				}
			}
		}
    })

    local healingCapsuleRecipe = makeRecipe({
	    name = "healing-capsule",
	    icon = "__RampantArsenal__/graphics/icons/healing-capsule.png",
	    enabled = false,
	    category = "crafting-with-fluid",
	    ingredients = {
		{"stone", 5},
		{"coal", 2},
		{"wood", 1}		
	    },
	    result = healingCapsule,
    })

    addEffectToTech("boosters",
		    {
			type = "unlock-recipe",
			recipe = healingCapsuleRecipe,
    })

    
    local speedCapsule = makeCapsule(
	{
	    name = "speed",
	    icon = "__RampantArsenal__/graphics/icons/speed-capsule.png",
	    order = "c[slowdown-capsule]-d[speed]"
	},
	{
	    type = "use-on-self",
	    attack_parameters =	    
		{
		    type = "projectile",
		    ammo_category = "grenade",
		    cooldown = 30,
		    range = 0,
		    ammo_type =
			{
			    category = "capsule",
			    target_type = "position",
			    action =
				{
				    type = "direct",
				    action_delivery =
					{
					    type = "instant",
					    target_effects =
						{
						    type = "create-sticker",
						    sticker = "speed-boost-sticker-rampant-arsenal"
						}
					}
				}
			}
		}
    })

    local speedCapsuleRecipe = makeRecipe({
	    name = "speed-capsule",
	    icon = "__RampantArsenal__/graphics/icons/speed-capsule.png",
	    enabled = false,
	    category = "crafting-with-fluid",
	    ingredients = {
		{"steel-plate", 2},
		{"electronic-circuit", 2}
	    },
	    result = speedCapsule,
    })

    addEffectToTech("boosters",
		    {
			type = "unlock-recipe",
			recipe = speedCapsuleRecipe,
    })

    data.raw["projectile"]["cluster-grenade"].action[2].action_delivery.projectile = makeGrenadeProjectile(
	{
	    name = "cluster"
	},
	{
	    {
		type = "direct",
		action_delivery =
		    {
			type = "instant",
			target_effects =
			    {
				{
				    type = "create-entity",
				    entity_name = "medium-explosion"
				},
				{
				    type = "create-entity",
				    entity_name = "small-scorchmark",
				    check_buildability = true
				}
			    }
		    }
	    },
	    {
		type = "area",
		radius = 7,
		action_delivery =
		    {
			type = "instant",
			target_effects =
			    {
				{
				    type = "damage",
				    damage = {amount = 50, type = "physical"}
				},
				{
				    type = "damage",
				    damage = {amount = 175, type = "explosion"}
				}
			    }
		    }
	    }
    })
end

return grenades
