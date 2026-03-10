
geodes_lib:register_geode({
    id = 'mese_1',
    wherein = "default:stone",
    y_min = -10000,
    y_max = -4000,
    scarcity = 72,
    generation_chance = 85,
    inner = "mese_rift:mese_crystal",
    inners = {{ name = "amethyst_new:calcite", fill = 30 }, { name = "amethyst_new:amethyst", fill = 47 }, { name = "mese_rift:mese_crystal", fill = 13 },},
    inner_alt = {"mese_rift:mese_crystal_budding", "amethyst_new:amethyst_budding"},
    inner_alt_chance = 55,
    shell = {"amethyst_new:basalt", "amethyst_new:basalt", "amethyst_new:calcite", "amethyst_new:calcite", "amethyst_new:amethyst"},
    cavity = { lower_fill = "default:lava_source", upper_fill = "air", threshold = 10, span = 10 },
    radius_min = 3,
    radius_max = 9,
})

geodes_lib:register_geode({
    id = 'mese_2',
    wherein = "default:stone",
    y_min = -10000,
    y_max = -2000,
    scarcity = 77,
    generation_chance = 60,
    inner = "mese_rift:mese_crystal",
    inners = {{ name = "amethyst_new:calcite", fill = 28 }, { name = "amethyst_new:amethyst", fill = 42 }, { name = "mese_rift:mese_crystal", fill = 7 },},
    inner_alt = {"mese_rift:mese_crystal_budding", "amethyst_new:amethyst_budding"},
    inner_alt_chance = 140,
    shell = {"amethyst_new:basalt", "amethyst_new:basalt", "amethyst_new:calcite", "amethyst_new:calcite"},
    cavity = { lower_fill = "default:river_water_source", upper_fill = "air", threshold = 36, span = 35 },
    radius_min = 4,
    radius_max = 10,
})