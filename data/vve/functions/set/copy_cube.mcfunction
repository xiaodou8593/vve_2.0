#vve:set/copy_cube
execute store result storage math:io rec[0].temp.pos[0] double 0.0001 run scoreboard players get @s x
execute store result storage math:io rec[0].temp.pos[1] double 0.0001 run scoreboard players get @s y
execute store result storage math:io rec[0].temp.pos[2] double 0.0001 run scoreboard players get @s z

execute store result storage math:io rec[0].temp.xyzw[0] float 0.0001 run scoreboard players get @s qrot_x
execute store result storage math:io rec[0].temp.xyzw[1] float 0.0001 run scoreboard players get @s qrot_y
execute store result storage math:io rec[0].temp.xyzw[2] float 0.0001 run scoreboard players get @s qrot_z
execute store result storage math:io rec[0].temp.xyzw[3] float 0.0001 run scoreboard players get @s qrot_w

execute store result storage math:io rec[0].temp.rmass int 1 run scoreboard players get @s vve_rmass
execute store result storage math:io rec[0].temp.mass int 1 run scoreboard players get @s vve_mass
execute store result storage math:io rec[0].temp.mass_center[0] double 0.0001 run scoreboard players get @s vve_mcu
execute store result storage math:io rec[0].temp.mass_center[1] double 0.0001 run scoreboard players get @s vve_mcv
execute store result storage math:io rec[0].temp.mass_center[2] double 0.0001 run scoreboard players get @s vve_mcw

data modify storage math:io rec[0].temp.tags set from entity @s Tags
execute store result storage math:io rec[0].temp.uvw[0] double 0.0001 run scoreboard players get @s u
execute store result storage math:io rec[0].temp.uvw[1] double 0.0001 run scoreboard players get @s v
execute store result storage math:io rec[0].temp.uvw[2] double 0.0001 run scoreboard players get @s w

execute if entity @s[tag=vve_overwrite] run function vve:set/copy_relxyzw
execute if entity @s[tag=free] run function vve:cube/set/copy_free
execute on passengers run function vve:cube/set/copy_psger