#vve:tick_loop
execute as @e[tag=vve_obj,tag=free] at @s run function vve:main
#循环迭代
scoreboard players remove vve_tickloop int 1
execute if score vve_tickloop int matches 1.. run function vve:tick_loop