#vve:test/run
scoreboard players set loop int 1000
execute if score test int matches 0 as @e[tag=math_marker,limit=1] run function vve:test/loop0
execute if score test int matches 1 as @e[tag=math_marker,limit=1] run function vve:test/loop1