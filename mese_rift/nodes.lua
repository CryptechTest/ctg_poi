
core.register_node("mese_rift:mese_crystal", {
    description = "Mese Crystal Block",
    tiles = {"mese_crystal_block.png"},
    light_source = 2,
    paramtype = "light",
    groups = {cracky = 3, level = 2, radioactive = 1},
    sounds = default.node_sound_glass_defaults(),
})

core.register_node("mese_rift:mese_crystal_budding", {
    description = "Budding Mese Crystal Block",
    tiles = {"mese_crystal_block.png^[combine:16x80:0,-48=crack_anylength.png"},
    light_source = 3,
    paramtype = "light",
    groups = {cracky = 3, level = 1, radioactive = 1, not_in_creative_inventory = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get budding with 1/70 chance
                items = {'mese_rift:mese_crystal_budding'},
                rarity = 30,
            },
            {
                -- player will get regular node only if he get no budding,
                -- this is because max_items is 1
                items = {'mese_rift:mese_crystal'},
            }
        }
    },
    sounds = default.node_sound_glass_defaults(),
})

core.register_node("mese_rift:mese_cluster_small", {
    description = "Small Mese Cluster",
    tiles = {"mese_cluster_small.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 4,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-4/16, -7/16, -4/16, 4/16, -3/16, 4/16},
    },
    groups = {cracky = 3, not_in_creative_inventory = 1},
    drop = {
        max_items = 1,
        items = {
            items = {"default:mese_crystal"},
            rarity = 3,
        }
    },
    sounds = default.node_sound_glass_defaults(),
})

core.register_node("mese_rift:mese_cluster_medium", {
    description = "Medium Mese Cluster",
    tiles = {"mese_cluster_medium.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 7,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, -2/16, 5/16},
    },
    groups = {cracky = 3, not_in_creative_inventory = 1},
    drop = {
        max_items = 2,
        items = {
            {
                items = {"default:mese_crystal"},
                rarity = 5
            },
            {
                items = {"default:mese_crystal"},
            }
        }
    },
    sounds = default.node_sound_glass_defaults(),
})

core.register_node("mese_rift:mese_cluster_large", {
    description = "Large Mese Cluster",
    tiles = {"mese_cluster_large.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 9,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, not_in_creative_inventory = 1},
    drop = {
        max_items = 3,
        items = {
            {
                items = {"default:mese_crystal"},
                rarity = 3
            },
            {
                items = {"default:mese_crystal"},
                rarity = 2
            },
            {
                items = {"default:mese_crystal"},
            }
        }
    },
    sounds = default.node_sound_glass_defaults(),
})