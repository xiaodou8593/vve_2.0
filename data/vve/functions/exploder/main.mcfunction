#vve:exploder/main

scoreboard players set particle int 4
data modify storage math:io list set value []
scoreboard players operation loop int = @s vve_exploder_rate
execute if score loop int matches 1.. run function vve:exploder/r_loop
data modify entity @s data.list append from storage math:io list[]

scoreboard players remove @s vve_exploder_time 1
execute if score @s vve_exploder_time matches 1.. run schedule function vve:exploder/tick 1t replace
execute if score @s vve_exploder_time matches ..0 run function vve:exploder/impulse