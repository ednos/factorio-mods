script.on_event(defines.events.on_player_died, function(event)
    if event.cause ~= nil then
        if event.cause.type == 'locomotive' or event.cause.type == 'cargo-wagon' or event.cause.type == 'fluid-wagon' then
			for index,player in pairs(game.connected_players) do
				event.cause.surface.create_entity(
					{name = "train-horn-sound", position = player.position})
			end
        end
    end
	
	if event.cause ~= nil then
        if event.cause.type == 'tank' or event.cause.type == 'car' then
			for index,player in pairs(game.connected_players) do
				event.cause.surface.create_entity(
					{name = "car-horn-sound", position = player.position})
			end
        end
    end
end)
