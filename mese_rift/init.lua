
mese_rift = {}

local default_path = core.get_modpath("mese_rift")

dofile(default_path .. '/' .. "nodes.lua")
dofile(default_path .. '/' .. "crafting.lua")
dofile(default_path .. '/' .. "budding.lua")
dofile(default_path .. '/' .. "rift_step.lua")
dofile(default_path .. '/' .. "rift_poi.lua")

if core.get_modpath("geodes_lib") and core.get_modpath("amethyst_new") then
    dofile(default_path .. '/' .. "geodes.lua")
end