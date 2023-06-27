#vve:cube/_new
#设置默认值
execute unless data storage math:io input.pos as @e[tag=math_marker,limit=1] run function vve:set/default_pos
execute unless data storage math:io input.xyzw run data modify storage math:io input.xyzw set value [0.0f,0.0f,0.0f,1.0f]

#生成uaec
tag @e remove result
summon area_effect_cloud 0 11 0 {Tags:["result","vve_node","vve_cube","upd_aec"],CustomName:'{"text":"vve_cube"}',Passengers:[{id:"minecraft:item_display",Tags:["vve_display"],interpolation_duration:1,transformation:{translation:[0.0f,-0.375f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},CustomName:'{"text":"vve_display"}'}],Duration:2147483647}
execute as @e[tag=result,limit=1] run function vve:cube/set