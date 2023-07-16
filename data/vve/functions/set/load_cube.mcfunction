#vve:set/load_cube
data modify storage math:io input set from storage math:io temp.cubes[0]
function vve:cube/_new
#循环迭代
data remove storage math:io temp.cubes[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vve:set/load_cube