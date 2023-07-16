#vve:_save
#输出帧存档
data modify storage math:io stemp set value {objs:[],cubes:[]}
execute as @e[tag=vve_obj] run function vve:set/save_obj
execute as @e[tag=vve_cube,tag=free] run function vve:set/save_cube
data modify storage math:io result set from storage math:io stemp