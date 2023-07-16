#vve:exploder/explode

scoreboard players set stemp int 1
execute if block ~ ~ ~ #vve:explode_break run scoreboard players set stemp int 0

execute if score stemp int matches 0 run setblock ~ ~ ~ air destroy
execute if score stemp int matches 0 run return 0

function vve:_transform
setblock ~ ~ ~ air
data modify storage math:io input set from storage math:io result
function vve:_new
data modify storage math:io temp set value {uuid:[I;0,0,0,0],pos:[0.0d,0.0d,0.0d],dist:0}
data modify storage math:io temp.uuid set from entity @e[tag=result,limit=1] UUID
tag @e[tag=result,limit=1] remove free
tp @s ~ ~ ~
data modify storage math:io temp.pos set from entity @s Pos
execute store result storage math:io temp.dist int 1 run scoreboard players get sloop int
data modify storage math:io list append from storage math:io temp