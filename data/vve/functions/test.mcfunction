#vve:test
function vve:_class
execute as @e[tag=test] run function vve:_del

data modify storage math:io input set value {sub_cubes:[],friction:[0.99d,0.99d],gravity:0.3d,bounce:0.75d}
data modify storage math:io input.sub_cubes append from storage math:class vve_cubes[{id:"red_cube"}]
data modify storage math:io input.sub_cubes[0].item.id set value "minecraft:command_block"
#data modify storage math:io input set from storage math:class vve_objs[0]
function vve:_new
tag @e[tag=result,limit=1] add test

execute as @e[tag=test,limit=1] run function vve:physx/mass/_upd

data modify storage math:io vve_impulse set value {fvec:[0.0d,0.0d,1.0d]}
execute as @e[tag=test,limit=1] run function math:uvw/_get
scoreboard players set u int 0
scoreboard players set v int 5000
scoreboard players set w int -5000
function math:uvw/_tosto
data modify storage math:io vve_impulse.pos set from storage math:io xyz
execute as @e[tag=test,limit=1] run function vve:physx/impulse/_append

scoreboard players set vve_simrate int 2