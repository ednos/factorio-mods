
script.on_event(defines.events.on_entity_died, function(event)
if not event.entity.has_flag("breaths-air") or event.entity.type == "tree" then return end
local rnd = math.floor(math.random()*6.6+1)
local entity = event.entity
entity.surface.create_entity({
			name="blood"..rnd,
			position=entity.position})
rnd = math.floor(math.random()*6.99+1)
entity.surface.create_entity({
			name="splatter"..rnd,
			position=entity.position})
end)

script.on_event(defines.events.on_entity_damaged, function(event)
if not event.entity.has_flag("breaths-air") or event.entity.type == "tree" then return end

	if event.final_damage_amount > event.entity.prototype.max_health/250 then
		if(event.damage_type.name == "physical" or event.damage_type.name == "laser") then
			if event.damage_type.name == "physical" then
				event.entity.surface.create_entity({
								name="big-blood-fountain",
								position=event.entity.position
								})  
			end
			event.entity.surface.create_entity({
							name="big-blood-fountain",
							position=event.entity.position
							})  
		end
	end
end)