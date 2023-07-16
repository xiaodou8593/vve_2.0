#vve:physx/cpoints/get_loop
execute store result score u int run data get storage math:io stemp[-1][0] 10000
execute store result score v int run data get storage math:io stemp[-1][1] 10000
execute store result score w int run data get storage math:io stemp[-1][2] 10000
function math:uvw/_tosto
#tellraw @a {"nbt":"xyz","storage":"math:io"}
data modify storage math:io temp append value {}
data modify storage math:io temp[-1].xyz set from storage math:io xyz
data modify storage math:io temp[-1].uvw set from storage math:io stemp[-1]
#execute as @e[tag=math_marker,limit=1] run function vve:physx/cpoints/dsp
#循环
data remove storage math:io stemp[-1]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function vve:physx/cpoints/get_loop