
local time = 0.0
local time_interval = 3

core.register_globalstep(function(dtime)
    
    time = time + dtime
    if time < time_interval then
        return
    end
    time = 0

    mese_rift.tick_poi()

end)