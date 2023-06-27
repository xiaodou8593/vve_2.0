#vve:physx/surface_sloop
execute store result score sstemp0 int run data get storage math:io stemp[0].pos[0] 10000
scoreboard players operation stempx int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io stemp[0].pos[1] 10000
scoreboard players operation stempy int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io stemp[0].pos[2] 10000
scoreboard players operation stempz int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io stemp[0].fvec[0] 10000
scoreboard players operation fvec_x int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io stemp[0].fvec[1] 10000
scoreboard players operation fvec_y int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io stemp[0].fvec[2] 10000
scoreboard players operation fvec_z int += sstemp0 int

#data modify entity @s Pos set from storage math:io stemp[0].pos
#execute at @s positioned ~ ~0.1 ~ run particle minecraft:flame ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @a

#循环
data modify storage math:io stemp append from storage math:io stemp[0]
data remove storage math:io stemp[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function vve:physx/surface_sloop