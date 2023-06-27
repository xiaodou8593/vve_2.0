#vve:test/new_cube
execute as @e[tag=test,tag=vve_obj] run function vve:_die
execute as @e[tag=test,tag=vve_cube] run function vve:cube/_die
data modify storage math:io input set from storage math:class vve_cubes[{id:"test_cube"}]
data modify storage math:io input.xyzw set value [0.3827f,0.0f,0.0f,0.9239f]
function vve:cube/_new
tag @e[tag=result,limit=1] add test