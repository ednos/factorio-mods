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
	decals_r   	=0.8
	decals_g   	=0.8
	decals_b   	=0.8
	decals_a   	=0.8
	particle_r	=1
	particle_g	=1	
	particle_b	=1	
	particle_a	=0.5
	
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

local tinter = {r=decals_r,g=decals_g,b=decals_b,a=decals_a}


tinter.a=1
for key, tbl in pairs (data.raw.corpse) do
	if tbl.animation and tbl.animation.layers and tbl.animation.layers[2] then
		if  tbl.animation.layers[2].filename == "__base__/graphics/entity/biter/biter-die-mask1.png" and (not tbl.animation.layers[4] or tbl.animation.layers[4].filename ~= "__gore__/graphics/units/"..preset.."biter-die-mask3.png") then
			tbl.final_render_layer = "object"
			local temp = table.deepcopy(tbl.animation.layers[2])
			temp.tint = tinter
			temp.filename = "__gore__/graphics/units/"..preset.."biter-die-mask3.png",
			table.insert(tbl.animation.layers,temp)
		elseif tbl.animation.layers[2].stripes and tbl.animation.layers[1].stripes[1] and tbl.animation.layers[1].stripes[1].filename == "__base__/graphics/entity/spitter/spitter-die-1.png" and (not tbl.animation.layers[3] or not tbl.animation.layers[3].stripes or tbl.animation.layers[3].stripes[1].filename ~= "__gore__/graphics/units/"..preset.."spitter-blood-1.png") then
			tbl.final_render_layer = "object"
			local temp = table.deepcopy(tbl.animation.layers[1])
			temp.tint = tinter
			temp.stripes[1].filename = "__gore__/graphics/units/"..preset.."spitter-blood-1.png"
			temp.stripes[2].filename = "__gore__/graphics/units/"..preset.."spitter-blood-2.png"
			temp.stripes[3].filename = "__gore__/graphics/units/"..preset.."spitter-blood-3.png"
			temp.stripes[4].filename = "__gore__/graphics/units/"..preset.."spitter-blood-4.png"
			table.insert(tbl.animation.layers,temp)
		elseif tbl.animation.layers[1].filename == "__base__/graphics/entity/worm/worm-die.png" and (not tbl.animation.layers[3] or tbl.animation.layers[3].filename ~= "__gore__/graphics/units/"..preset.."worm-die-mask2.png") then
			tbl.final_render_layer = "object"
			local temp = table.deepcopy(tbl.animation.layers[2])
			temp.tint = tinter
			temp.filename = "__gore__/graphics/units/"..preset.."worm-die-mask2.png"
			table.insert(tbl.animation.layers,temp)
		end
	end
end