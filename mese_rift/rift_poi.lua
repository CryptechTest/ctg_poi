
local poi_tick = 0
local poi_tick_max = 30

local poi_pos = {x = 0, y = 21000, z = 0}

local function spawn_particle(pos)

    local dir_x = 0.3;
    local dir_y = 0.4;
    local dir_z = 0.3;
    local acl_x = 0.5;
    local acl_y = 0.5;
    local acl_z = 0.5;

    local size = 1
    local time = 3.2
    local amount = 32

    local texture = {
        name = "mese_rift_particle.png",
        blend = "alpha",
        scale = 1,
        alpha = 1.0,
        alpha_tween = {1, 0.1},
        scale_tween = {{
            x = 1.5,
            y = 1.5
        }, {
            x = 0.1,
            y = 0.2
        }}
    }

    local prt = {
        texture = texture,
        vel = 1,
        time = (time or 6),
        size = (size or 1),
        glow = math.random(6, 10),
        cols = false
    }

    local rx = dir_x * prt.vel * -math.random(0.3 * 100, 0.7 * 100) / 100
    local ry = dir_y * prt.vel * -math.random(0.3 * 100, 0.7 * 100) / 100
    local rz = dir_z * prt.vel * -math.random(0.3 * 100, 0.7 * 100) / 100
    minetest.add_particlespawner({
        amount = amount,
        -- pos = pos,
        minpos = {
            x = pos.x + -0.65,
            y = pos.y + -0.65,
            z = pos.z + -0.65
        },
        maxpos = {
            x = pos.x + 0.65,
            y = pos.y + 0.65,
            z = pos.z + 0.65
        },
        minvel = {
            x = -rx,
            y = -ry,
            z = -rz
        },
        maxvel = {
            x = rx,
            y = ry,
            z = rz
        },
        minacc = {
            x = -acl_x,
            y = -acl_y,
            z = -acl_z
        },
        maxacc = {
            x = acl_x,
            y = acl_y,
            z = acl_z
        },
        time = prt.time + 2,
        minexptime = prt.time - math.random(1, 3),
        maxexptime = prt.time,
        minsize = ((math.random(0.57, 0.63)) * 2 + 1.0) * prt.size,
        maxsize = ((math.random(0.77, 0.93)) * 2 + 1.0) * prt.size,
        collisiondetection = prt.cols,
        vertical = false,
        texture = texture,
        -- animation = animation,
        glow = prt.glow
    })
end

function mese_rift.tick_poi()
    local h = 8

    for y = poi_pos.y - (h+1), poi_pos.y + (h+1) do
        if math.random(100) <= 60 then
            local pos = vector.new(poi_pos.x, y, poi_pos.z)
            spawn_particle(pos)
        end
    end

    poi_tick = poi_tick + 1
    if poi_tick < poi_tick_max then
        return
    end
    poi_tick = 0

    local buds = {}
    for y = poi_pos.y - h, poi_pos.y + h do
        if math.random(100) <= 80 then
            local pos = vector.new(poi_pos.x, y, poi_pos.z)
            local poi_node = core.get_node(pos)
            if poi_node.name ~= "mese_rift:mese_crystal_budding" and poi_node.name ~= "mese_rift:mese_crystal" then
                core.set_node(pos, {name="mese_rift:mese_crystal_budding"})
                table.insert(buds, pos)
            end
        end
    end

    for _,pos in ipairs(buds) do
        mese_rift.grow_crystal(pos)
    end

end