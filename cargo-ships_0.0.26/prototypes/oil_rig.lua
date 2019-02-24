----------------------------------------------------------------
--------------------------- PUMP -------------------------------
----------------------------------------------------------------

local ship_pump=table.deepcopy(data.raw["pump"]["pump"])

ship_pump.name = "ship_pump"
ship_pump.minable = {mining_time = 1, result = "ship_pump"}
ship_pump.collision_mask = {"object-layer"}
ship_pump.pumping_speed = 400
ship_pump.energy_usage = "50kW"



local pump_marker=table.deepcopy(data.raw["trivial-smoke"]["light-smoke"])

pump_marker.name = "pump_marker"
pump_marker.flags = {"not-repairable", "not-blueprintable", "not-deconstructable", "placeable-off-grid", "not-on-map"}
pump_marker.duration = 3000
pump_marker.spread_duration = 1
pump_marker.fade_away_duration = 1
pump_marker.start_scale = 1
pump_marker.end_scale = 1
pump_marker.color = { r = 1, g = 1, b = 1, a = 1 }
pump_marker.cyclic = true
pump_marker.affected_by_wind = false
pump_marker.show_when_smoke_off = true
pump_marker.movement_slow_down_factor = 0
pump_marker.vertical_speed_slowdown = 0
pump_marker.render_layer = "selection-box"
pump_marker.animation =
{
  filename = "__even-distribution__/graphics/distribution-marker.png",
  width = 128,
  height = 128,
  scale = 0.5,
  frame_count = 1
}

----------------------------------------------------------------
-------------------------DEEP SEA OIL --------------------------
----------------------------------------------------------------

local deep_oil=table.deepcopy(data.raw["resource"]["crude-oil"])
if mods["angelspetrochem"] then
  deep_oil.minable = 
  {
    hardness = 1,
    mining_time = 1, 
    results = 
    {
      {
        type = "fluid", 
        name = "liquid-multi-phase-oil", 
        amount_min = 10, 
        amount_max = 10, 
        probability = 1
      }
    }
  }

end
deep_oil.name = "deep_oil"
deep_oil.infinite_depletion_amount = 40
deep_oil.autoplace = nil
--  deep_oil.collision_mask = {'ground-tile'}




----------------------------------------------------------------
------------------------ OIL PLATFORM --------------------------
----------------------------------------------------------------

local oil_rig=table.deepcopy(data.raw["mining-drill"]["pumpjack"])
oil_rig.name = "oil_rig"
oil_rig.collision_mask = {'ground-tile', 'object-layer'}
oil_rig.minable = {mining_time = 3, result = "oil_rig"}
oil_rig.dying_explosion = "big-explosion"
oil_rig.max_health = 1000
oil_rig.energy_usage = "750kW"
oil_rig.mining_speed = 2
oil_rig.resource_searching_radius = 1.49
oil_rig.collision_box = {{ -3.2, -3.2}, {3.2, 3.2}}
oil_rig.selection_box = {{ -3.3, -3.3}, {3.3, 3.3}}
oil_rig.drawing_box = {{-3.3, -3.3}, {3.3, 8}}
oil_rig.module_specification.module_slots = 3;
oil_rig.energy_source = 
{
  type = "electric",
  -- will produce this much * energy pollution units per tick
  emissions = 0.2,
  usage_priority = "secondary-input"
}
oil_rig.output_fluid_box =
{
  base_area = 10,
  base_level = 10,
  pipe_covers = pipecoverspictures(),
  pipe_connections =
  {
    { position = {0, -4}}
  },
}
oil_rig.base_picture =
{
  sheets =
  {
    {
      filename = "__cargo-ships__/graphics/entity/oil_rig/oil_rig.png",
      priority = "very-low",
      width = 300,
      height = 471,
      shift = util.by_pixel(-2.5, -29),
      scale = 0.9,
    }
  }
}
oil_rig.animations = 
{
  north =
  {
    layers = 
    {
      {
        priority = "high",
        filename = "__cargo-ships__/graphics/blank.png",
        line_length = 8,
        width = 1,
        height = 1,
        frame_count = 40,
        shift = util.by_pixel(-4, -24),
        animation_speed = 0.5,
      }
    }
  }
}
oil_rig.smoke =
{
  {
    name = "light-smoke",
    north_position = {-3.2, -2.5},
    frequency = 0.5,
    starting_vertical_speed = 0.08,
    slow_down_factor = 1,
    starting_frame_deviation = 60
  },
  {
    name = "smoke",
    north_position = {1.4, -2.5},
    frequency = 1,
    starting_vertical_speed = 0.12,
    slow_down_factor = 1,
    starting_frame_deviation = 60
  }
}




----------------------------------------------------------------
----------- OIL PLATFORM SLAVE ENTITES--------------------------
----------------------------------------------------------------

local or_power=table.deepcopy(data.raw["generator"]["steam-engine"])
or_power.flags = {"not-blueprintable"}
or_power.name = "or_power"
or_power.collision_box= nil
or_power.selection_box= nil
or_power.collision_mask= {}
or_power.fast_replaceable_group = nil
or_power.fluid_usage_per_tick = 1
or_power.fluid_box =
    {
      base_area = 1,
      height = 1,
      base_level = -1,
      pipe_covers = nil,
      pipe_connections = {},
      production_type = "input-output",
      filter = "steam",
      minimum_temperature = 100.0
    }
or_power.horizontal_animation = 
{
  layers =
        {
          {
            filename = "__cargo-ships__/graphics/blank.png",
            width = 1,
            height = 1,
            frame_count = 32,
            line_length = 8,
          }
        }
}
or_power.vertical_animation = 
{
  layers =
  {
    {
      filename = "__cargo-ships__/graphics/blank.png",
      width = 1,
      height = 1,
      frame_count = 32,
      line_length = 8,
    }
  }
}
or_power.smoke =
{
  {
    name = "light-smoke",
    north_position = {-3.2, -4.5},
    frequency = 0.5,
    starting_vertical_speed = 0.08,
    slow_down_factor = 1,
    starting_frame_deviation = 60
  },
  {
    name = "smoke",
    north_position = {1.4, -4.5},
    frequency = 1,
    starting_vertical_speed = 0.12,
    slow_down_factor = 1,
    starting_frame_deviation = 60
  }
}



local or_pole=table.deepcopy(data.raw["electric-pole"]["medium-electric-pole"])
or_pole.name = "or_pole"
or_pole.flags = {"not-blueprintable"}
or_pole.collision_box= nil
or_pole.selection_box= nil
or_pole.collision_mask= {}
or_pole.fast_replaceable_group = nil
or_pole.maximum_wire_distance = 0
or_pole.pictures =
{
  filename = "__cargo-ships__/graphics/blank.png",
  width = 1,
  height = 1,
  direction_count = 4,
  line_length = 4,
}
or_pole.supply_area_distance = 4.5



local or_lamp=table.deepcopy(data.raw["lamp"]["small-lamp"])
or_lamp.name = "or_lamp"
or_lamp.flags = {"not-blueprintable"}
or_lamp.collision_box= nil
or_lamp.selection_box= nil
or_lamp.collision_mask= {}
or_lamp.picture_off = 
{  
  filename = "__cargo-ships__/graphics/blank.png",
  width = 1,
  height = 1,
}
or_lamp.pciture_on = {}

local or_radar=table.deepcopy(data.raw["radar"]["radar"])
or_radar.name= "or_radar"
or_radar.flags = {"not-blueprintable"}
or_radar.collision_mask={}
or_radar.collision_box= nil
or_radar.selection_box= nil
or_radar.pictures=
{
  filename = "__cargo-ships__/graphics/blank.png",
  width = 1,
  height = 1,
  direction_count = 4,
  line_length = 4,
}
or_radar.max_distance_of_sector_revealed = 0
or_radar.energy_usage = "50kW",


data:extend({ship_pump, --[[pump_marker,]] oil_rig, or_power, or_pole, or_radar, or_lamp, deep_oil})

