table.insert(data.raw["technology"]["military"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-plate"
    })

table.insert(data.raw["technology"]["military"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-magazine"
    })

table.insert(data.raw["technology"]["military"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-fuel"
    })

if data.raw["item"]["alien-artifact"] then
    table.insert(data.raw["technology"]["automation"].effects,
        {
            type = "unlock-recipe",
            recipe = "alien-artifact-to-ore"
        })
end

table.insert(data.raw["technology"]["automation"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-module-1"
    })

table.insert(data.raw["technology"]["automation"].effects,

    {
        type = "unlock-recipe",
        recipe = "alien-hyper-module-1"
    })

table.insert(data.raw["technology"]["electronics"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-module-2"
    })

table.insert(data.raw["technology"]["advanced-electronics"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-module-3"
    })

table.insert(data.raw["technology"]["advanced-electronics"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-module-4"
    })

table.insert(data.raw["technology"]["advanced-electronics"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-module-5"
    })

table.insert(data.raw["technology"]["solar-energy"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-solarpanel"
    })

table.insert(data.raw["technology"]["electric-energy-accumulators-1"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-accumulator"
    })