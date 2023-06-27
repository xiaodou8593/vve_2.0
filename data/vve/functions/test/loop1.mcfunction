#vve:test/loop1
execute store result score 3vec_x int run data get entity @s Pos[0] 10000
execute store result score 3vec_y int run data get entity @s Pos[1] 10000
execute store result score 3vec_z int run data get entity @s Pos[2] 10000
#循环
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vve:test/loop1