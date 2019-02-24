if playerUtilsG then
    return playerUtilsG
end
local playerUtils = {}

-- imports

local mathUtils = require("MathUtils")

-- imported functions

local euclideanDistanceNamed = mathUtils.euclideanDistanceNamed

-- module code

function playerUtils.validPlayer(player, natives)
    return player and player.valid and player.connected and player.character and player.character.valid and (player.character.surface.index == natives.activeSurface)
end

function playerUtils.playersWithinProximityToPosition(players, position, distance, natives)
    for _,player in pairs(players) do
	if (player ~= nil) and player.connected and (player.character ~= nil) and player.character.valid and (player.character.surface.index == natives.activeSurface) then
	    if (euclideanDistanceNamed(player.character.position, position) < distance) then
		return true
	    end
	end
    end
    return false
end

playerUtilsG = playerUtils
return playerUtils
