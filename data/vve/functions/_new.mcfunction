#vve:_new
#设置默认值
execute unless data storage math:io input.pos as @e[tag=math_marker,limit=1] run function vve:set/default_pos
execute unless data storage math:io input.xyzw run data modify storage math:io input.xyzw set value [0.0f,0.0f,0.0f,1.0f]

#生成数据根
execute positioned 0 11 0 summon marker run function vve:set