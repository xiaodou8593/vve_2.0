#vve:physx/surface_sloop
execute store result score sstemp0 int run data get storage math:io stemp[0].pos[0] 10000
scoreboard players operation sstemp0 int -= stempx int
scoreboard players operation stempdx int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io stemp[0].pos[1] 10000
scoreboard players operation sstemp0 int -= stempy int
scoreboard players operation stempdy int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io stemp[0].pos[2] 10000
scoreboard players operation sstemp0 int -= stempz int
scoreboard players operation stempdz int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io stemp[0].fvec[0] 10000
scoreboard players operation fvec_x int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io stemp[0].fvec[1] 10000
scoreboard players operation fvec_y int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io stemp[0].fvec[2] 10000
scoreboard players operation fvec_z int += sstemp0 int

execute store result score sstemp0 int run data get storage math:io stemp[0].friction[0] 10000
scoreboard players operation vve_surface_f int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io stemp[0].friction[1] 10000
scoreboard players operation vve_surface_fr int += sstemp0 int

#data modify entity @s Pos set from storage math:io stemp[0].pos
#execute at @s positioned ~ ~0.1 ~ run particle minecraft:flame ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @a

#循环
data modify storage math:io stemp append from storage math:io stemp[0]
data remove storage math:io stemp[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 2.. run function vve:physx/surface_sloop