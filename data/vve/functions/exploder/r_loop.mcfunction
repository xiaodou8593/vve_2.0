#vve:exploder/r_loop

scoreboard players set min int -1800000
scoreboard players set max int 1800000
function math:_random
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get random int
scoreboard players set min int -900000
scoreboard players set max int 900000
function math:_random
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players get random int

scoreboard players operation sloop int = @s vve_exploder_dist
execute if score sloop int matches 1.. at @s as @e[tag=math_marker,limit=1] run function vve:exploder/r_sloop

#循环迭代
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vve:exploder/r_loop