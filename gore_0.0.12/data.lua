local r
local g
local b
local a
local decals_r
local decals_g
local decals_b
local decals_a
local particle_r
local particle_g
local particle_b
local particle_a
local preset = ""
if settings.startup["preset"].value == "blood-red" then
	preset = "red-"
	r            =0.9
	g            =0
	b            =0.1
	a            =0.7
	decals_r   =0.7
	decals_g   =0
	decals_b   =0.08
	decals_a   =0.7
	particle_r	 =0.63
	particle_g	 =0
	particle_b	 =0.072	
	particle_a	 =0.8	
	
elseif settings.startup["preset"].value == "rainbow" then
	preset = "rainbow-"
	r            =1
	g            =1
	b            =1
	a            =1
	decals_r   =1
	decals_g   =1
	decals_b   =1
	decals_a   =1
	particle_r   =0.95
	particle_g   =0.95	
	particle_b   =0.95	
	particle_a   =0.3
	data.raw.explosion["blood-explosion-small"].created_effect.action_delivery.target_effects.repeat_count = 4
	data.raw.explosion["blood-explosion-big"].created_effect.action_delivery.target_effects[2].repeat_count = 4
	data.raw.explosion["blood-explosion-big"].created_effect.action_delivery.target_effects[1].repeat_count = 7
	data.raw.explosion["blood-explosion-huge"].created_effect.action_delivery.target_effects[2].repeat_count = 4
	data.raw.explosion["blood-explosion-huge"].created_effect.action_delivery.target_effects[1].repeat_count = 7
	
elseif settings.startup["preset"].value == "green" then
	r            =0.11
	g            =0.28
	b            =0.08
	a            =0.88
	decals_r   =0.11
	decals_g   =0.28
	decals_b   =0.05
	decals_a   =0.7
	particle_r   =0.11
	particle_g   =0.28
	particle_b   =0.05
	particle_a   =0.7
elseif settings.startup["preset"].value == "purple" then
	r          	=0.4
	g          	=0.03
	b          	=0.4
	a          	=0.8
	decals_r   	=0.27
	decals_g   	=0.05
	decals_b   	=0.27
	decals_a   	=0.7
	particle_r 	=0.3
	particle_g 	=0.03
	particle_b 	=0.3
	particle_a 	=0.7
elseif settings.startup["preset"].value == "puke" then
	r          	=0.38
	g          	=0.45
	b          	=0.08
	a          	=0.75
	decals_r   	=0.3
	decals_g   	=0.34
	decals_b   	=0.08
	decals_a   	=0.7
	particle_r 	=0.32
	particle_g 	=0.38
	particle_b 	=0.05
	particle_a 	=0.7
else
	r            =settings.startup["r"].value
	g            =settings.startup["g"].value
	b            =settings.startup["b"].value
	a            =settings.startup["a"].value
	decals_r   =settings.startup["splatter-r"].value
	decals_g   =settings.startup["splatter-g"].value
	decals_b   =settings.startup["splatter-b"].value
	decals_a   =settings.startup["splatter-a"].value
	particle_r   =settings.startup["particle-r"].value
	particle_g   =settings.startup["particle-g"].value	
	particle_b   =settings.startup["particle-b"].value	
	particle_a   =settings.startup["particle-a"].value	
end
local scale        =settings.startup["scale"].value
local splatterscale=settings.startup["splatterscale"].value
local splatterduration=math.max(1,settings.startup["splatterduration"].value*60)


local tinter = {r=r,g=g,b=b,a=a}			---changes blood color
local splattertinter = {r=decals_r,g=decals_g,b=decals_b,a=decals_a}





local scaler = scale							--scale of the blood explosions
local splatterscaler = splatterscale 						--scale of the blood decals on the floor
local splatterduration = splatterduration					--duration how long blood decals stay on the floor

local shifter = {0,0.3}
local blender = "normal"
local flagger = {"not-on-map", "placeable-off-grid", "not-flammable"}


for key, tbl in pairs(data.raw.particle["blood-particle"].pictures) do
tbl.filename = "__gore__/graphics/blood-particle/"..preset.."blood-particle-"..key..".png"
tbl.width = tbl.width*2
tbl.height = tbl.height*2
tbl.scale = 1*settings.startup["particlescale"].value
tbl.blend_mode = blender
tbl.tint = {r=0,g=0,b=0,a=0}  --{r=0.3,g=0,b=0.01,a=0.3}
tbl.tint.r = particle_r
tbl.tint.g = particle_g
tbl.tint.b = particle_b
tbl.tint.a = particle_a
end
--data.raw.particle["blood-particle"].life_time = 60*20
data.raw.particle["blood-particle"].life_time = 30





bigparticle = table.deepcopy(data.raw.particle["blood-particle"])
bigparticle.name = "big-blood-particle"
bigparticle.life_time = math.max(1,settings.startup["particleduration"].value*60)					--duration how long bullet impact particles stay on the floor
bigparticle.render_layer = "decorative"

for key, tbl in pairs(bigparticle.pictures) do
tbl.blend_mode = blender
tbl.render_layer = "decorative"
tbl.tint.r = particle_r
tbl.tint.g = particle_g
tbl.tint.b = particle_b
tbl.tint.a = particle_a
end

for _, tbl in pairs(bigparticle.shadows) do
tbl.scale = 0.01

end

bigfountain = table.deepcopy(data.raw["particle-source"]["blood-fountain"])
bigfountain.name = "big-blood-fountain"
bigfountain.flags = flagger
bigfountain.particle = "big-blood-particle"
bigfountain.vertical_speed = 0.05
bigfountain.vertical_speed_deviation = 0.035
bigfountain.horizontal_speed = 0.035
bigfountain.horizontal_speed_deviation = 0.015
bigfountain.height_deviation = 0.15
bigfountain.time_to_live = 5
bigfountain.time_to_live_deviation = 2
bigfountain.render_layer = "decorative"

data:extend({
	  bigparticle,
	  bigfountain,
	{
		type = "smoke-with-trigger",
		name = "blood1",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood1.png",
			priority = "low",
			width = 170,
			height = 120,
			frame_count = 8,
			animation_speed = 0.3,
			line_length = 4,
			scale = 0.9*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 28,
		fade_away_duration = 13,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood2",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood2.png",
			priority = "low",
			width = 320,
			height = 500,
			frame_count = 6,
			animation_speed = 0.22,
			line_length = 3,
			scale = 0.64*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter,
			hr_version =
			{
				filename = "__gore__/graphics/"..preset.."blood2-hr.png",
				priority = "low",
				width = 640,
				height = 1000,
				frame_count = 6,
				animation_speed = 0.22,
				line_length = 3,
				scale = 0.32*scaler,
				blend_mode = blender,
				apply_runtime_tint=true,
				shift = {shifter[1],shifter[2]+0.12},
				tint = tinter,
			}
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 29,
		fade_away_duration = 13,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood3",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood3.png",
			priority = "low",
			width = 256,
			height = 256,
			frame_count = 6,
			animation_speed = 0.18,
			line_length = 6,
			scale = 0.76*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter,
			hr_version =
			{
				filename = "__gore__/graphics/"..preset.."blood3-hr.png",
				priority = "low",
				width = 512,
				height = 512,
				frame_count = 6,
				animation_speed = 0.18,
				line_length = 6,
				scale = 0.38*scaler,
				blend_mode = blender,
				apply_runtime_tint=true,
				shift = shifter,
				tint = tinter,
			}
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 35,
		fade_away_duration = 15,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood4",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood4.png",
			priority = "low",
			width = 256,
			height = 256,
			frame_count = 6,
			animation_speed = 0.18,
			line_length = 3,
			scale = 0.76*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter,
			hr_version =
			{
				filename = "__gore__/graphics/"..preset.."blood4-hr.png",
				priority = "low",
				width = 512,
				height = 512,
				frame_count = 6,
				animation_speed = 0.18,
				line_length = 3,
				scale = 0.38*scaler,
				blend_mode = blender,
				apply_runtime_tint=true,
				shift = shifter,
				tint = tinter,
			}
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 35,
		fade_away_duration = 15,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood5",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood5.png",
			priority = "low",
			width = 256,
			height = 256,
			frame_count = 6,
			animation_speed = 0.18,
			line_length = 3,
			scale = 0.76*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter,
			hr_version =
			{
				filename = "__gore__/graphics/"..preset.."blood5-hr.png",
				priority = "low",
				width = 512,
				height = 512,
				frame_count = 6,
				animation_speed = 0.18,
				line_length = 3,
				scale = 0.38*scaler,
				blend_mode = blender,
				apply_runtime_tint=true,
				shift = shifter,
				tint = tinter,
			}
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 35,
		fade_away_duration = 15,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood7",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood7.png",
			priority = "low",
			width = 230,
			height = 240,
			frame_count = 4,
			animation_speed = 0.29,
			line_length = 4,
			scale = 0.8*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = {shifter[1],shifter[2]+0.15},
			tint = tinter,
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 15,
		fade_away_duration = 8,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "blood6",
		flags = flagger,
		render_layer = "item-in-inserter-hand",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/"..preset.."blood6.png",
			priority = "low",
			width = 128,
			height = 128,
			frame_count = 7,
			animation_speed = 0.3,
			line_length = 4,
			scale = 1*scaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			shift = shifter,
			tint = tinter,
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = false,
		duration = 26,
		fade_away_duration = 11,
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter1",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter1b.png",
			priority = "low",
			width = 1778,
			height = 1461,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.09*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter2",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter2b.png",
			priority = "low",
			width = 1657,
			height = 1360,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.1*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter3",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter3b.png",
			priority = "low",
			width = 2048,
			height = 1536,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.12*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter4",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter4b.png",
			priority = "low",
			width = 1831,
			height = 1498,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.08*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter5",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter5b.png",
			priority = "low",
			width = 2048,
			height = 1536,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.12*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter6",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter6b.png",
			priority = "low",
			width = 510,
			height = 512,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.25*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	},
	{
		type = "smoke-with-trigger",
		name = "splatter7",
		flags = flagger,
		render_layer = "decorative",
		show_when_smoke_off = true,
		animation =
		{
			filename = "__gore__/graphics/splatter/"..preset.."splatter7b.png",
			priority = "low",
			width = 510,
			height = 512,
			frame_count = 1,
			animation_speed = 0.3,
			line_length = 1,
			scale = 0.25*splatterscaler,
			blend_mode = blender,
			apply_runtime_tint=true,
			--shift = {0.5,0.5},
			tint = splattertinter
		},
		slow_down_factor = 0,
		affected_by_wind = false,
		cyclic = true,
		duration = splatterduration,
		fade_away_duration = math.min(splatterduration/2,600),
		spread_duration = 0,
		movement_slow_down_factor = 0,
		color = { r = 1, g = 1, b = 1},
		
		action_cooldown = 30
	}
	})
	
----------------------						----------------------						----------------------						--corpse updates
	


function biterdieanimation(scale, tint1, tint2)
  return
  {
    layers=
    {
      {
        width = 190,
        height = 129,
        frame_count = 17,
        direction_count = 16,
        shift = {scale * 0.621094, scale * -0.1875},
        scale = scale,
        stripes =
        {
          {
            filename = "__base__/graphics/entity/biter/biter-die-1.png",
            width_in_frames = 9,
            height_in_frames = 8
          },
          {
            filename = "__base__/graphics/entity/biter/biter-die-2.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = "__base__/graphics/entity/biter/biter-die-3.png",
            width_in_frames = 9,
            height_in_frames = 8
          },
          {
            filename = "__base__/graphics/entity/biter/biter-die-4.png",
            width_in_frames = 8,
            height_in_frames = 8
          }
        }
      },

      {
        filename = "__base__/graphics/entity/biter/biter-die-mask1.png",
        flags = { "mask" },
        width = 120,
        height = 109,
        frame_count = 17,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -0.574219},
        scale = scale,
        tint = tint1
      },

      {
        filename = "__base__/graphics/entity/biter/biter-die-mask2.png",
        flags = { "mask" },
        width = 115,
        height = 108,
        frame_count = 17,
        direction_count = 16,
        shift = {scale * 0.128906, scale * -0.585938},
        scale = scale,
        tint = tint2
      },
	  {
        filename = "__gore__/graphics/units/"..preset.."biter-die-mask3.png",
        flags = { "mask" },
        width = 120,
        height = 109,
        frame_count = 17,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -0.574219},
        scale = scale,
        tint = splattertinter
      },
    }
  }
end

function spitterdyinganimation(scale, tint)
  return
  {
    layers =
    {
      {
        width = 225,
        height = 174,
        frame_count = 16,
        direction_count = 16,
        shift = {scale * 0.546875, scale * 0.21875},
        priority = "very-low",
        scale = scale,
        stripes =
        {
          {
            filename = "__base__/graphics/entity/spitter/spitter-die-1.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = "__base__/graphics/entity/spitter/spitter-die-2.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = "__base__/graphics/entity/spitter/spitter-die-3.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = "__base__/graphics/entity/spitter/spitter-die-4.png",
            width_in_frames = 8,
            height_in_frames = 8
          }
        }
      },
      {
        flags = { "mask" },
        width = 166,
        height = 144,
        frame_count = 16,
        direction_count = 16,
        shift = {scale * 0, scale * -0.0625},
        priority = "very-low",
        tint = tint,
        scale = scale,
        stripes =
        {
          {
            filename = "__base__/graphics/entity/spitter/spitter-die-mask-1.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = "__base__/graphics/entity/spitter/spitter-die-mask-2.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = "__base__/graphics/entity/spitter/spitter-die-mask-3.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = "__base__/graphics/entity/spitter/spitter-die-mask-4.png",
            width_in_frames = 8,
            height_in_frames = 8
          }
        }
      },
	  {
        width = 225,
        height = 174,
        frame_count = 16,
        direction_count = 16,
        shift = {scale * 0.546875, scale * 0.21875},
        priority = "very-low",
        scale = scale,
		tint=splattertinter,
        stripes =
        {
          {
            filename = "__gore__/graphics/units/"..preset.."spitter-blood-1.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = "__gore__/graphics/units/"..preset.."spitter-blood-2.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = "__gore__/graphics/units/"..preset.."spitter-blood-3.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = "__gore__/graphics/units/"..preset.."spitter-blood-4.png",
            width_in_frames = 8,
            height_in_frames = 8
          }
        }
      }
    }
  }
end

function worm_die_animation(scale, tint)
  return
  {
    layers=
    {
      {
        filename = "__base__/graphics/entity/worm/worm-die.png",
        line_length = 6,
        width = 198,
        height = 171,
        frame_count = 24,
        shift = {scale * 0.953125, scale * -0.625},
        direction_count = 1,
        scale = scale
      },
      {
        filename = "__base__/graphics/entity/worm/worm-die-mask.png",
        flags = { "mask" },
        line_length = 6,
        width = 143,
        height = 133,
        frame_count = 24,
        shift = {scale * 0.5625, scale * -1.21875},
        direction_count = 1,
        scale = scale,
        tint = tint
      },
      {
        filename = "__gore__/graphics/units/"..preset.."worm-die-mask2.png",
        flags = { "mask" },
        line_length = 6,
        width = 143,
        height = 133,
        frame_count = 24,
        shift = {scale * 0.5625, scale * -1.21875},
        direction_count = 1,
        scale = scale,
        tint = splattertinter
      }
    }
  }
end