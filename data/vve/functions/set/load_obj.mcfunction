#vve:set/load_obj
data modify storage math:io input set from storage math:io temp.objs[0]
function vve:_new
#循环迭代
data remove storage math:io temp.objs[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vve:set/load_obj