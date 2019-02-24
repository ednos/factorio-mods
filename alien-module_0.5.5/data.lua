require("prototypes.entity.entity")

require("prototypes.item.alien-module")
require("prototypes.item.alien-components")
require("prototypes.item.alien-warfare")
require("prototypes.item.alien-economy")

require("prototypes.item-group.item-groups-module")

require("prototypes.recipe.alien-module")
require("prototypes.recipe.alien-warfare")

require("prototypes.technology.technology")
require("prototypes.sounds")

function AddLootToEntity(entityType, entityName, probability, countMin, countMax)
    if data.raw[entityType] ~= nil then
        if data.raw[entityType][entityName] ~= nil then
            if data.raw[entityType][entityName].loot == nil then
                data.raw[entityType][entityName].loot = {}
            end
            table.insert(data.raw[entityType][entityName].loot, { item = "artifact-ore", probability = probability, count_min = countMin, count_max = countMax })
        end
    end
end

function AddLootToVanillaEnemies()
    local SMALL_LOOT_PROBABILITY = 0.33
    local MEDIUM_LOOT_PROBABILITY = 0.66
    local BIG_LOOT_PROBABILITY = 0.83

    AddLootToEntity("unit", "small-spitter", SMALL_LOOT_PROBABILITY, 1, 1)
    AddLootToEntity("unit", "small-biter", SMALL_LOOT_PROBABILITY, 1, 1)

    AddLootToEntity("unit", "medium-spitter", MEDIUM_LOOT_PROBABILITY, 1, 2)
    AddLootToEntity("unit", "medium-biter", MEDIUM_LOOT_PROBABILITY, 1, 2)

    AddLootToEntity("unit", "big-spitter", BIG_LOOT_PROBABILITY, 1, 5)
    AddLootToEntity("unit", "big-biter", BIG_LOOT_PROBABILITY, 1, 5)

    AddLootToEntity("unit", "behemoth-spitter", 1, 2, 20)
    AddLootToEntity("unit", "behemoth-biter", 1, 2, 20)

    AddLootToEntity("turret", "little-worm-turret", 1, 1, 5)
    AddLootToEntity("turret", "medium-worm-turret", 1, 1, 10)
    AddLootToEntity("turret", "big-worm-turret", 1, 1, 25)

    AddLootToEntity("unit-spawner", "biter-spawner", 1, 20, 50)
    AddLootToEntity("unit-spawner", "spitter-spawner", 1, 20, 50)
end

-- This is for the Natural Expansion Mod
function AddLootToNEEnemies()
    for i = 1, 20 do
        local loot_probability = math.min(i * 0.04, 1) -- 80 % at highest tier
        local max_loot_amount = math.floor(math.max(i * 0.101, 1))

        AddLootToEntity("unit", "ne-biter-breeder-" .. i, loot_probability, 1, max_loot_amount)
        AddLootToEntity("unit", "ne-biter-fire-" .. i, loot_probability, 1, max_loot_amount)
        AddLootToEntity("unit", "ne-biter-fast-" .. i, loot_probability, 1, max_loot_amount)
        AddLootToEntity("unit", "ne-biter-wallbreaker-" .. i, loot_probability, 1, max_loot_amount)
        AddLootToEntity("unit", "ne-biter-tank-" .. i, loot_probability, 1, max_loot_amount)

        AddLootToEntity("unit", "ne-spitter-breeder-" .. i, loot_probability, 1, max_loot_amount)
        AddLootToEntity("unit", "ne-spitter-fire-" .. i, loot_probability, 1, max_loot_amount)
        AddLootToEntity("unit", "ne-spitter-ulaunch-" .. i, loot_probability, 1, max_loot_amount)
        AddLootToEntity("unit", "ne-spitter-webshooter-" .. i, loot_probability, 1, max_loot_amount)
        AddLootToEntity("unit", "ne-spitter-mine-" .. i, loot_probability, 1, max_loot_amount)
    end

    for i = 2, 3 do
        local MEDIUM_LOOT_PROBABILITY = 0.5
        local BIG_LOOT_PROBABILITY = 1

        AddLootToEntity("unit", "small-spitter-Mk" .. i, MEDIUM_LOOT_PROBABILITY, 1, 1)
        AddLootToEntity("unit", "small-biter-Mk" .. i, MEDIUM_LOOT_PROBABILITY, 1, 1)
        AddLootToEntity("unit", "medium-spitter-Mk" .. i, BIG_LOOT_PROBABILITY, 1, 2)
        AddLootToEntity("unit", "medium-biter-Mk" .. i, BIG_LOOT_PROBABILITY, 1, 2)
        AddLootToEntity("unit", "big-spitter-Mk" .. i, BIG_LOOT_PROBABILITY, 1, 5)
        AddLootToEntity("unit", "big-biter-Mk" .. i, BIG_LOOT_PROBABILITY, 1, 5)
    end

    -- boss unit from NE
    AddLootToEntity("unit", "ne-biter-megladon", 1, 50, 200)
end

-- Rampant mod enemies
function AddLootToRampantEnemies()
    for t = 1, 10 do
        for v = 1, 20 do
            local loot_probability = math.min(t * 0.08, 1) -- 80 % at highest tier
            local max_loot_amount = 1

            AddLootToEntity("unit", "neutral-biter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "neutral-spitter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "acid-biter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "acid-spitter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "physical-biter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "electric-biter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "suicide-biter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "nuclear-biter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "fire-biter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "fire-spitter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "inferno-spitter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "troll-biter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "troll-spitter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "fast-biter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "fast-spitter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "laser-biter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "laser-spitter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "wasp-spitter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "spawner-spitter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("unit", "spawner-biter-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)

            AddLootToEntity("turret", "neutral-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "acid-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "physical-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "electric-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "suicide-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "nuclear-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "fire-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "inferno-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "troll-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "fast-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "laser-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "wasp-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
            AddLootToEntity("turret", "spawner-worm-v" .. v .. "-t" .. t .. "-rampant", loot_probability, 1, max_loot_amount)
        end
    end
end

AddLootToVanillaEnemies()
AddLootToNEEnemies()
AddLootToRampantEnemies()


