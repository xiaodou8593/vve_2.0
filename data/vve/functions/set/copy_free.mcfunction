#vve:set/copy_free
data modify storage math:io rec[0].temp merge value {velocity:[0.0d,0.0d,0.0d],omega:[0.0f,0.0f,0.0f]}
execute store result storage math:io rec[0].temp.velocity[0] double 0.0001 run scoreboard players get @s vve_vx
execute store result storage math:io rec[0].temp.velocity[1] double 0.0001 run scoreboard players get @s vve_vy
execute store result storage math:io rec[0].temp.velocity[2] double 0.0001 run scoreboard players get @s vve_vz
execute store result storage math:io rec[0].temp.omega[0] double 0.0001 run scoreboard players get @s vve_omegax
execute store result storage math:io rec[0].temp.omega[1] double 0.0001 run scoreboard players get @s vve_omegay
execute store result storage math:io rec[0].temp.omega[2] double 0.0001 run scoreboard players get @s vve_omegaz