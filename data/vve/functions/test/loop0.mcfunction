#vve:test/loop0
data modify storage math:io temp set from entity @s Pos
execute store result score 3vec_x int run data get storage math:io temp[0] 10000
execute store result score 3vec_y int run data get storage math:io temp[1] 10000
execute store result score 3vec_z int run data get storage math:io temp[2] 10000
#循环
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vve:test/loop0