#vve:cube/_transform
# 将#vve:transform标签的方块转换为vve_cube数据模板
# 需要传入世界实体为执行者
# 输入执行坐标
# 输出数据模板到storage math:io result
data modify storage math:io result set value {mass:7,mass_center:[0.0d,0.0d,0.0d],rmass:0.625d,pos:[0.0d,0.0d,0.0d],xyzw:[0.0f,0.0f,0.0f,1.0f],uvw:[0.0d,0.0d,0.0d],rel_xyzw:[0.0f,0.0f,0.0f,1.0f],item:{id:"minecraft:command_block",Count:1b},collision_points:[],tags:[]}
data modify storage math:io result.collision_points set from storage math:class vve_cubecps
execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
data modify storage math:io result.pos set from entity @s Pos
loot replace block 29999984 0 8592 container.0 mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage math:io result.item.id set from block 29999984 0 8592 Items[0].id