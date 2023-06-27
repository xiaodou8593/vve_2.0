#vve:tick
summon item 0 -85 0 {Tags:["uuid_marker"],Item:{id:"minecraft:glass",Count:1b}}
scoreboard players operation vve_tickloop int = vve_simrate int
execute if score vve_tickloop int matches 1.. run function vve:tick_loop
execute positioned 0 -85 0 run kill @e[tag=uuid_marker,type=item,distance=..1]