data:extend({
    {
        type = "explosion",
        name = "train-horn-sound",
        flags = {"not-on-map"},
        animations = {
            {
                filename = "__core__/graphics/empty.png",
                priority = "low",
                width = 1,
                height = 1,
                frame_count = 1,
                line_length = 1,
                animation_speed = 1
            }
        },
        light = {intensity = 0, size = 0},
        sound = {
            {
                filename = "__Better-TrainHorn__/sound/horn.ogg",
                volume = 1.0
            }
        }
    },
	
	{
        type = "explosion",
        name = "car-horn-sound",
        flags = {"not-on-map"},
        animations = {
            {
                filename = "__core__/graphics/empty.png",
                priority = "low",
                width = 1,
                height = 1,
                frame_count = 1,
                line_length = 1,
                animation_speed = 1
            }
        },
        light = {intensity = 0, size = 0},
        sound = {
            {
                filename = "__Better-TrainHorn__/sound/car-horn.ogg",
                volume = 0.5
            }
        }
    }
})


