#vve:test/shake_g
data modify storage math:io input set from storage vve:class saves[{id:"shake_g"}]
function vve:_load

scoreboard players set test_step int 1
execute as @e[tag=vve_obj,tag=free] at @s run function vve:main
tellraw @a "---"
scoreboard players set test_step int 2
execute as @e[tag=vve_obj,tag=free] at @s run function vve:main