#vve:test/impulse

#清空冲量池
data modify entity @s data.list_impulse set value []
scoreboard players set @s vve_impulse_cnt 0


data modify storage math:io temp set value {pos:[0.0d,0.0d,0.0d],fvec:[0.0d,0.0d,0.0d]}
function math:uvw/_get

scoreboard players set min int -8000
scoreboard players set max int 8000
function math:_random
scoreboard players operation 3vec_x int = random int
function math:_random
scoreboard players operation 3vec_y int = random int
function math:_random
scoreboard players operation 3vec_z int = random int
function math:3vec/_ssprint

function math:3vec/_polar

scoreboard players operation 3vec_x int *= max int
scoreboard players operation 3vec_y int *= max int
scoreboard players operation 3vec_z int *= max int

execute store result score u int run scoreboard players operation @s 3vec_x += 3vec_x int
execute store result score v int run scoreboard players operation @s 3vec_y += 3vec_y int
execute store result score w int run scoreboard players operation @s 3vec_z += 3vec_z int
function math:uvw/_tosto
data modify storage math:io temp.pos set from storage math:io xyz

execute store result score u int run scoreboard players operation @s 3vec_x += 3vec_x int
execute store result score v int run scoreboard players operation @s 3vec_y += 3vec_y int
execute store result score w int run scoreboard players operation @s 3vec_z += 3vec_z int
function math:uvw/_tosto
data modify entity @e[tag=math_marker,limit=1] Pos set from storage math:io xyz

execute store result score u int run scoreboard players operation 3vec_x int *= -1 int
execute store result score v int run scoreboard players operation 3vec_y int *= -1 int
execute store result score w int run scoreboard players operation 3vec_z int *= -1 int
function math:uvw/_tovec
execute store result storage math:io temp.fvec[0] double 0.0001 run scoreboard players operation 3vec_x int -= x int
execute store result storage math:io temp.fvec[1] double 0.0001 run scoreboard players operation 3vec_y int -= y int
execute store result storage math:io temp.fvec[2] double 0.0001 run scoreboard players operation 3vec_z int -= z int

data modify entity @s data.list_impulse append from storage math:io temp
scoreboard players add @s vve_impulse_cnt 1

scoreboard players operation 3vec_x int *= 1375 int
scoreboard players operation 3vec_x int /= 1000 int
scoreboard players operation 3vec_y int *= 1375 int
scoreboard players operation 3vec_y int /= 1000 int
scoreboard players operation 3vec_z int *= 1375 int
scoreboard players operation 3vec_z int /= 1000 int

scoreboard players set particle int 4
scoreboard players set 3vec_n int 100
execute at @e[tag=math_marker,limit=1] run function math:3vec/_dsp-ex