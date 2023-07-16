#vve:exploder/impulse

scoreboard players operation stemp int = @s vve_exploder_impulse
data modify storage math:io list set from entity @s data.list
execute store result score loop int if data storage math:io list[]
execute if score loop int matches 1.. as @e[tag=uuid_marker,limit=1] run function vve:exploder/i_loop

tp @e[tag=uuid_marker,limit=1] 0 -67 0

kill @s