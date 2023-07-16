#vve:exploder/i_loop
data modify storage math:io vve_impulse set value {fvec:[0.0d,0.0d,0.0d],pos:[0.0d,0.0d,0.0d]}
data modify storage math:io vve_impulse.pos set from storage math:io list[0].pos

data modify entity @s Pos set from storage math:io list[0].pos
execute facing entity @s feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score 3vec_x int run data get entity @s Pos[0] 1000
execute store result score 3vec_y int run data get entity @s Pos[1] 1000
execute store result score 3vec_z int run data get entity @s Pos[2] 1000
execute store result score 3vec_l int run data get storage math:io list[0].dist
scoreboard players operation 3vec_l int > 10 int
scoreboard players operation 3vec_x int *= 3vec_l int
scoreboard players operation 3vec_y int *= 3vec_l int
scoreboard players operation 3vec_z int *= 3vec_l int
execute store result storage math:io vve_impulse.fvec[0] double 0.0000001 run scoreboard players operation 3vec_x int *= stemp int
execute store result storage math:io vve_impulse.fvec[1] double 0.0000001 run scoreboard players operation 3vec_y int *= stemp int
execute store result storage math:io vve_impulse.fvec[2] double 0.0000001 run scoreboard players operation 3vec_z int *= stemp int

data modify entity @s Thrower set from storage math:io list[0].uuid
execute on origin run function vve:physx/impulse/_append
execute on origin run tag @s add free
#循环迭代
data remove storage math:io list[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vve:exploder/i_loop