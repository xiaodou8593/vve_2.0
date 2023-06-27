#vve:physx/mass/_upd
data modify storage math:io rec prepend value {mass:0,mass_center:[0,0,0]}

function math:uvw/_get
function math:uvw/_recstore
scoreboard players operation tempid int = @s id
execute at @s as @e[tag=vve_node,distance=..16,tag=!free] if score @s int = tempid int run function vve:physx/mass/upd_next
execute store result score @s vve_mass store result score vve_mass int run data get storage math:io rec[0].mass
execute store result score vve_mcu int run data get storage math:io rec[0].mass_center[0]
execute store result score vve_mcv int run data get storage math:io rec[0].mass_center[1]
execute store result score vve_mcw int run data get storage math:io rec[0].mass_center[2]
execute store result score @s vve_mcu run scoreboard players operation vve_mcu int /= vve_mass int
execute store result score @s vve_mcv run scoreboard players operation vve_mcv int /= vve_mass int
execute store result score @s vve_mcw run scoreboard players operation vve_mcw int /= vve_mass int

scoreboard players set vve_rmass int 0
scoreboard players operation tempid int = @s id
execute at @s as @e[tag=vve_node,distance=..16,tag=!free] if score @s int = tempid int run function vve:physx/mass/rmass_branch
scoreboard players operation @s vve_rmass = vve_rmass int

data remove storage math:io rec[0]