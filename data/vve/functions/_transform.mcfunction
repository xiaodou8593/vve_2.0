#vve:_transform
# 将#vve:transform标签的方块转换为vve_obj数据模板
# 需要传入世界实体为执行者
# 输入执行坐标
# 输出数据模板到storage math:io result
data modify storage math:io stemp set value {bounce:0.35d,friction:[0.99d,0.99d],gravity:0.3d,mass:7,mass_center:[0.0d,0.0d,0.0d],rmass:0.625d,pos:[0.0d,0.0d,0.0d],xyzw:[0.0f,0.0f,0.0f,1.0f],sub_cubes:[],tags:[]}
function vve:cube/_transform
data modify storage math:io stemp.sub_cubes append from storage math:io result
data modify storage math:io stemp.pos set from entity @s Pos
data modify storage math:io result set from storage math:io stemp