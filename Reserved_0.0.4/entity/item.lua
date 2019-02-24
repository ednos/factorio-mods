data:extend(
{
  
-- Reserved Group

	{
    type = "item-group",
    name = "reserved",
    order = "z",
    order_in_recipe = "0",
    icon = "__Reserved__/images/item-group.png",
    icon_size = 64,
  },
   
   
  
    
  {
    type = "item-subgroup",
    name = "reserve",
    group = "reserved",
    order = "a"
  },
  
    {
    type = "item-subgroup",
    name = "reserve2",
    group = "reserved",
    order = "b"
  },
  
  
    {
    type = "item-subgroup",
    name = "reserve3",
    group = "reserved",
    order = "c"
  },
  
  
    {
    type = "item-subgroup",
    name = "reserve4",
    group = "reserved",
    order = "d"
  },
  
  
  
    {
    type = "item-subgroup",
    name = "reserve5",
    group = "reserved",
    order = "e"
  },
  
  
    {
    type = "item-subgroup",
    name = "reserve6",
    group = "reserved",
    order = "f"
  },
  
  {
    type = "item-subgroup",
    name = "reserve-tiles",
    group = "reserved",
    order = "g"
  },
  
  
  
  --- items
  
  {
    type = "item",
    name = "reserved-reserved",
    icon = "__Reserved__/graphics/icons/belt-immunity-equipment.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve",
    order = "a",
    place_result = "reserved-reserved",
    stack_size = 400
  },
  
  
  
  {
    type = "item",
    name = "reserved-main-bus",
    icon = "__Reserved__/graphics/icons/express-transport-belt.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve",
    order = "b",
    place_result = "reserved-main-bus",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-mine",
    icon = "__Reserved__/graphics/icons/electric-mining-drill.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve",
    order = "c",
    place_result = "reserved-mine",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-furnaces-iron",
    icon = "__Reserved__/graphics/icons/iron-plate.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve",
    order = "d",
    place_result = "reserved-furnaces-iron",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-furnaces-copper",
    icon = "__Reserved__/graphics/icons/copper-plate.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve",
    order = "e",
    place_result = "reserved-furnaces-copper",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-furnaces-steel",
    icon = "__Reserved__/graphics/icons/steel-plate.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve",
    order = "f",
    place_result = "reserved-furnaces-steel",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-furnaces-brick",
    icon = "__Reserved__/graphics/icons/stone-brick.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve",
    order = "g",
    place_result = "reserved-furnaces-brick",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-landfill",
    icon = "__Reserved__/graphics/icons/landfill.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve6",
    order = "k",
    place_result = "reserved-landfill",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-electric-steam",
    icon = "__Reserved__/graphics/icons/steam-engine.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve2",
    order = "i",
    place_result = "reserved-electric-steam",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-electric-solar",
    icon = "__Reserved__/graphics/icons/solar-panel.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve2",
    order = "j",
    place_result = "reserved-electric-solar",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-electric-centrifuge",
    icon = "__Reserved__/graphics/icons/centrifuge.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve2",
    order = "k",
    place_result = "reserved-electric-centrifuge",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-electric-nuclear",
    icon = "__Reserved__/graphics/icons/nuclear-reactor.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve2",
    order = "l",
    place_result = "reserved-electric-nuclear",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-greenc",
    icon = "__Reserved__/graphics/icons/electronic-circuit.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve2",
    order = "m",
    place_result = "reserved-greenc",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-redc",
    icon = "__Reserved__/graphics/icons/advanced-circuit.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve2",
    order = "n",
    place_result = "reserved-redc",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-bluec",
    icon = "__Reserved__/graphics/icons/processing-unit.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve2",
    order = "o",
    place_result = "reserved-bluec",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-mart",
    icon = "__Reserved__/graphics/icons/inserter.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve2",
    order = "p",
    place_result = "reserved-mart",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-mart-war",
    icon = "__Reserved__/graphics/icons/laser-turret.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve2",
    order = "q",
    place_result = "reserved-mart-war",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-train-station",
    icon = "__Reserved__/graphics/icons/train-stop.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve3",
    order = "a",
    place_result = "reserved-train-station",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-train",
    icon = "__Reserved__/graphics/icons/rail.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve3",
    order = "b-a",
    place_result = "reserved-train",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-plastics",
    icon = "__Reserved__/graphics/icons/plastic-bar.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve3",
    order = "c",
    place_result = "reserved-plastics",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-sulfur",
    icon = "__Reserved__/graphics/icons/sulfuric-acid.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve3",
    order = "d",
    place_result = "reserved-sulfur",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-battery",
    icon = "__Reserved__/graphics/icons/battery.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve3",
    order = "e",
    place_result = "reserved-battery",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-explosives",
    icon = "__Reserved__/graphics/icons/explosives.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve3",
    order = "f",
    place_result = "reserved-explosives",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-engine",
    icon = "__Reserved__/graphics/icons/engine-unit.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve3",
    order = "g",
    place_result = "reserved-engine",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-electric-engine",
    icon = "__Reserved__/graphics/icons/electric-engine-unit.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve3",
    order = "h",
    place_result = "reserved-electric-engine",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-rocket-control",
    icon = "__Reserved__/graphics/icons/rocket-control-unit.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve4",
    order = "i",
    place_result = "reserved-rocket-control",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-rocket-fuel",
    icon = "__Reserved__/graphics/icons/rocket-fuel.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve4",
    order = "j",
    place_result = "reserved-rocket-fuel",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-low-density",
    icon = "__Reserved__/graphics/icons/rocket-structure.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve4",
    order = "k",
    place_result = "reserved-low-density",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-satellite",
    icon = "__Reserved__/graphics/icons/satellite.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve4",
    order = "l",
    place_result = "reserved-satellite",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-reds",
    icon = "__Reserved__/graphics/icons/science-pack-1.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve5",
    order = "a",
    place_result = "reserved-reds",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-greens",
    icon = "__Reserved__/graphics/icons/science-pack-2.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve5",
    order = "b",
    place_result = "reserved-greens",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-blues",
    icon = "__Reserved__/graphics/icons/science-pack-3.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve5",
    order = "c",
    place_result = "reserved-blues",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-milis",
    icon = "__Reserved__/graphics/icons/military-science-pack.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve5",
    order = "d",
    place_result = "reserved-milis",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-prods",
    icon = "__Reserved__/graphics/icons/production-science-pack.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve5",
    order = "e",
    place_result = "reserved-prods",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-highs",
    icon = "__Reserved__/graphics/icons/high-tech-science-pack.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve5",
    order = "f",
    place_result = "reserved-highs",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-whites",
    icon = "__Reserved__/graphics/icons/rocket-silo.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve5",
    order = "g",
    place_result = "reserved-whites",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-lab",
    icon = "__Reserved__/graphics/icons/lab.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve5",
    order = "h",
    place_result = "reserved-lab",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-explode",
    icon = "__Reserved__/graphics/icons/cliff-explosives.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve6",
    order = "i",
    place_result = "reserved-explode",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-wall",
    icon = "__Reserved__/graphics/icons/stone-wall.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve6",
    order = "j",
    place_result = "reserved-wall",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "reserved-refinery",
    icon = "__Reserved__/graphics/icons/oil-refinery.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "reserve3",
    order = "b-b",
    place_result = "reserved-refinery",
    stack_size = 400
  },
  
  
  
  
  {
    type = "item",
    name = "tile-advanced-circuit",
    icon = "__Reserved__/graphics/tiles/advanced-circuit.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "b-f",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-advanced-circuit",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  {
    type = "item",
    name = "tile-battery",
    icon = "__Reserved__/graphics/tiles/battery.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "c-f",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-battery",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-belt-immunity-equipment",
    icon = "__Reserved__/graphics/tiles/belt-immunity-equipment.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "a-a",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-belt-immunity-equipment",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-centrifuge",
    icon = "__Reserved__/graphics/tiles/centrifuge.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "b-c",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-centrifuge",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-cliff-explosives",
    icon = "__Reserved__/graphics/tiles/cliff-explosives.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "f-a",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-cliff-explosives",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-copper-plate",
    icon = "__Reserved__/graphics/tiles/copper-plate.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "a-e",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-copper-plate",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-electric-engine-unit",
    icon = "__Reserved__/graphics/tiles/electric-engine-unit.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "c-i",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-electric-engine-unit",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-electric-mining-drill",
    icon = "__Reserved__/graphics/tiles/electric-mining-drill.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "a-c",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-electric-mining-drill",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-electronic-circuit",
    icon = "__Reserved__/graphics/tiles/electronic-circuit.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "b-c",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-electronic-circuit",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-engine-unit",
    icon = "__Reserved__/graphics/tiles/engine-unit.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "c-h",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-engine-unit",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-explosives",
    icon = "__Reserved__/graphics/tiles/explosives.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "c-g",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-explosives",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-express-transport-belt",
    icon = "__Reserved__/graphics/tiles/express-transport-belt.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "a-b",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-express-transport-belt",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-high-tech-science-pack",
    icon = "__Reserved__/graphics/tiles/high-tech-science-pack.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "e-f",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-high-tech-science-pack",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-inserter",
    icon = "__Reserved__/graphics/tiles/inserter.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "b-h",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-inserter",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-iron-plate",
    icon = "__Reserved__/graphics/tiles/iron-plate.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "a-d",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-iron-plate",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-lab",
    icon = "__Reserved__/graphics/tiles/lab.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "e-h",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-lab",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-landfill",
    icon = "__Reserved__/graphics/tiles/landfill.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "e-c",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-landfill",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-laser-turret",
    icon = "__Reserved__/graphics/tiles/laser-turret.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "b-i",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-laser-turret",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-military-science-pack",
    icon = "__Reserved__/graphics/tiles/military-science-pack.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "e-d",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-military-science-pack",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-nuclear-reactor",
    icon = "__Reserved__/graphics/tiles/nuclear-reactor.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "a",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-nuclear-reactor",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-oil-refinery",
    icon = "__Reserved__/graphics/tiles/oil-refinery.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "c-c",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-oil-refinery",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-plastic-bar",
    icon = "__Reserved__/graphics/tiles/plastic-bar.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "c-d",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-plastic-bar",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-processing-unit",
    icon = "__Reserved__/graphics/tiles/processing-unit.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "b-g",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-processing-unit",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-production-science-pack",
    icon = "__Reserved__/graphics/tiles/production-science-pack.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "e-e",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-production-science-pack",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-rail",
    icon = "__Reserved__/graphics/tiles/rail.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "c-b",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-rail",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-rocket-control-unit",
    icon = "__Reserved__/graphics/tiles/rocket-control-unit.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "d-a",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-rocket-control-unit",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-rocket-fuel",
    icon = "__Reserved__/graphics/tiles/rocket-fuel.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "d-b",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-rocket-fuel",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-rocket-silo",
    icon = "__Reserved__/graphics/tiles/rocket-silo.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "e-g",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-rocket-silo",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-rocket-structure",
    icon = "__Reserved__/graphics/tiles/rocket-structure.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "d-c",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-rocket-structure",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-satellite",
    icon = "__Reserved__/graphics/tiles/satellite.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "d-e",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-satellite",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-science-pack-1",
    icon = "__Reserved__/graphics/tiles/science-pack-1.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "e-a",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-science-pack-1",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-science-pack-2",
    icon = "__Reserved__/graphics/tiles/science-pack-2.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "e-b",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-science-pack-2",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-science-pack-3",
    icon = "__Reserved__/graphics/tiles/science-pack-3.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "e-c",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-science-pack-3",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-solar-panel",
    icon = "__Reserved__/graphics/tiles/solar-panel.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "b-b",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-solar-panel",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-steam-engine",
    icon = "__Reserved__/graphics/tiles/steam-engine.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "b-a",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-steam-engine",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-steel-plate",
    icon = "__Reserved__/graphics/tiles/steel-plate.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "a-f",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-steel-plate",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-stone-brick",
    icon = "__Reserved__/graphics/tiles/stone-brick.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "a-g",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-stone-brick",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-stone-wall",
    icon = "__Reserved__/graphics/tiles/stone-wall.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "e-b",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-stone-wall",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-sulfuric-acid",
    icon = "__Reserved__/graphics/tiles/sulfuric-acid.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "c-e",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-sulfuric-acid",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  {
    type = "item",
    name = "tile-train-stop",
    icon = "__Reserved__/graphics/tiles/train-stop.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "reserve-tiles",
    order = "c-a",
    stack_size = 500,
    place_as_tile =
    {
      result = "tile-train-stop",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
  
  
  
  
  
  
  
  
  
  }
)
