#vve:_load
#加载帧存档
#会清空当前存档
execute as @e[tag=vve_obj] run function vve:_del
execute as @e[tag=vve_cube] run function vve:cube/_del

data modify storage math:io temp set from storage math:io input

#加载vve_obj
execute store result score loop int if data storage math:io temp.objs[]
execute if score loop int matches 1.. run function vve:set/load_obj

#加载独立的vve_cube
execute store result score loop int if data storage math:io temp.cubes[]
execute if score loop int matches 1.. run function vve:set/load_cube