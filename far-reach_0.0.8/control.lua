
function far_reach_apply_settings()
    local settings = settings.global
    for _,player in pairs(game.players) do
        if player.character then
            player.character_build_distance_bonus = settings["far-reach-build-distance-bonus"].value
            player.character_reach_distance_bonus = settings["far-reach-reach-distance-bonus"].value
            player.character_resource_reach_distance_bonus = settings["far-reach-resource-reach-distance-bonus"].value
        end
    end
end

script.on_init(far_reach_apply_settings)

script.on_configuration_changed(
	function(data)
		far_reach_apply_settings()
	end
)

script.on_event({defines.events.on_runtime_mod_setting_changed, defines.events.on_player_joined_game, defines.events.on_player_changed_force, defines.events.on_player_respawned},
	function(event)
		far_reach_apply_settings()
	end
)
