#vve:test/transform
execute as @e[tag=test] run function vve:_del

setblock ~ ~ ~ stone
execute as @e[tag=math_marker,limit=1] run function vve:_transform
setblock ~ ~ ~ air
data modify storage math:io input set from storage math:io result
data modify storage math:io input.tags set value ["test"]
function vve:_new

scoreboard players set vve_simrate int 1