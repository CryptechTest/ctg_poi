    local all_directions = {
    vector.new(1, 0, 0),
    vector.new(0, 1, 0),
    vector.new(0, 0, 1),
    vector.new(-1, 0, 0),
    vector.new(0, -1, 0),
    vector.new(0, 0, -1),
}
function mese_rift.grow_crystal(pos)
    local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
    local check_node = core.get_node(check_pos)
    local check_node_name = check_node.name
    local param2 = core.dir_to_wallmounted(vector.subtract(pos, check_pos))
    local new_node
    if check_node_name == "air" or check_node_name == "vacuum:vacuum" or check_node_name == "vacuum:atmos_thin"
        or check_node_name == "default:river_water_source" or check_node_name == "default:water_source" then
        new_node = "mese_rift:mese_cluster_small"
    elseif check_node_name == "mese_rift:mese_cluster_small" then
        new_node = "mese_rift:mese_cluster_medium"
    elseif check_node_name == "mese_rift:mese_cluster_medium" then
        new_node = "mese_rift:mese_cluster_large"
    elseif math.random(100) < 25 then
        core.swap_node(pos, {name = "mese_rift:mese_crystal"})
        return
    else return end
    core.swap_node(check_pos, {name = new_node, param2 = param2})
end

-- space abm

core.register_abm({
    label = "Mese cluster growth",
    nodenames = "mese_rift:mese_crystal_budding",
    interval = 160,
    chance = 1,
    min_y = 4000,
    action = function(pos)
        mese_rift.grow_crystal(pos)
    end,
})

core.register_abm({
    label = "Mese cluster growth 2",
    nodenames = "mese_rift:mese_cluster_large",
    interval = 200,
    chance = 2,
    min_y = 4000,
    action = function(pos)
        core.swap_node(pos, {name = "mese_rift:mese_crystal_budding"})
        mese_rift.grow_crystal(pos)
    end,
})

-- ground abm

core.register_abm({
    label = "Mese cluster growth",
    nodenames = "mese_rift:mese_crystal_budding",
    interval = 200,
    chance = 1,
    max_y = 4000,
    action = function(pos)
        mese_rift.grow_crystal(pos)
    end,
})
