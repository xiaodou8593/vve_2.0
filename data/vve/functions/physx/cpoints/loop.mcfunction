#vve:physx/cpoints/loop
data modify entity @s Pos set from storage math:io temp[-1].xyz
execute store result score 3vec_x int run data get storage math:io temp[-1].xyz[0] 10000
execute store result score 3vec_y int run data get storage math:io temp[-1].xyz[1] 10000
execute store result score 3vec_z int run data get storage math:io temp[-1].xyz[2] 10000

execute at @s run function vve:physx/_cpdetect
execute if score res int matches 0 run function vve:physx/surface_detect
execute if score res int matches 1.. run function vve:physx/collision_append
#循环
data remove storage math:io temp[-1]
scoreboard players remove temp_cnt int 1
execute if score temp_cnt int matches 1.. run function vve:physx/cpoints/loop