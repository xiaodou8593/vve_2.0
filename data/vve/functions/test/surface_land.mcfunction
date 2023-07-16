#vve:test/surface_land
function vve:_class
execute as @e[tag=test] run function vve:_del

data modify storage math:io input set value {sub_cubes:[],friction:[0.99d,0.99d],gravity:0.3d,bounce:0.35d}
data modify storage math:io input.sub_cubes append from storage math:class vve_cubes[{id:"red_cube"}]
data modify storage math:io input.sub_cubes[0].item.id set value "minecraft:command_block"
#data modify storage math:io input set from storage math:class vve_objs[0]
#data modify storage math:io input merge value {friction:[0.99d,0.99d],gravity:0.3d,bounce:0.25d}
data modify storage math:io input.pos set value [0.0d,-59.4d,0.0d]
data modify storage math:io input.xyzw set value [0.0262f,0.0f,0.0f,0.9997f]
function vve:_new
tag @e[tag=result,limit=1] add test

execute as @e[tag=test,limit=1] run function vve:physx/mass/_upd

scoreboard players set vve_simrate int 1