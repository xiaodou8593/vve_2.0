#vve:physx/mass/init_next
execute if entity @s[tag=vve_obj] run function vve:physx/mass/_upd

execute store result score vve_mass int run data get storage math:io rec[0].mass
execute store result score vve_mcu int run data get storage math:io rec[0].mass_center[0]
execute store result score vve_mcv int run data get storage math:io rec[0].mass_center[1]
execute store result score vve_mcw int run data get storage math:io rec[0].mass_center[2]

execute store result storage math:io rec[0].mass int 1 run scoreboard players operation vve_mass int += @s vve_mass

function math:uvw/_get
scoreboard players operation u int = @s vve_mcu
scoreboard players operation v int = @s vve_mcv
scoreboard players operation w int = @s vve_mcw
function math:uvw/_tovec
function math:uvw/_recget
function math:uvw/_vecto

scoreboard players operation u int *= @s vve_mass
scoreboard players operation v int *= @s vve_mass
scoreboard players operation w int *= @s vve_mass

execute store result storage math:io rec[0].mass_center[0] int 1 run scoreboard players operation vve_mcu int += u int
execute store result storage math:io rec[0].mass_center[1] int 1 run scoreboard players operation vve_mcv int += v int
execute store result storage math:io rec[0].mass_center[2] int 1 run scoreboard players operation vve_mcw int += w int