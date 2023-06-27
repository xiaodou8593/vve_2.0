#vve:test/surface_range
execute store result entity @s Pos[0] double 0.0001 run scoreboard players set vve_mcx int 50000
execute store result entity @s Pos[1] double 0.0001 run scoreboard players set vve_mcy int -599000
execute store result entity @s Pos[2] double 0.0001 run scoreboard players set vve_mcz int 50000
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @a
data modify storage math:io stemp set from storage math:io test.stemp
execute store result score stemp_cnt int if data storage math:io stemp[]
function vve:physx/surface_cal