#vve:set/copy_next
function vve:_copy
execute if entity @s[tag=vve_cube] run data modify storage math:io rec[0].temp.sub_cubes append from storage math:io result
execute if entity @s[tag=vve_obj] run data modify storage math:io rec[0].temp.sub_objs append from storage math:io result