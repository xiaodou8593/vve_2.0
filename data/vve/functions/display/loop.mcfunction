#vve:display/loop
#数据临时化
data modify storage math:io xyzw set from storage math:io temp[0].xyzw
execute store result score qrot_x int run data get storage math:io xyzw[0] 10000
execute store result score qrot_y int run data get storage math:io xyzw[1] 10000
execute store result score qrot_z int run data get storage math:io xyzw[2] 10000
execute store result score qrot_w int run data get storage math:io xyzw[3] 10000

execute store result score x int run data get storage math:io temp[0].xyz[0] 10000
execute store result score y int run data get storage math:io temp[0].xyz[1] 10000
execute store result score z int run data get storage math:io temp[0].xyz[2] 10000

execute store result score u0 int run data get storage math:io temp[0].u0 10000
execute store result score u1 int run data get storage math:io temp[0].u1 10000
execute store result score u2 int run data get storage math:io temp[0].u2 10000
execute store result score v0 int run data get storage math:io temp[0].v0 10000
execute store result score v1 int run data get storage math:io temp[0].v1 10000
execute store result score v2 int run data get storage math:io temp[0].v2 10000
execute store result score w0 int run data get storage math:io temp[0].w0 10000
execute store result score w1 int run data get storage math:io temp[0].w1 10000
execute store result score w2 int run data get storage math:io temp[0].w2 10000

execute store result score tempid int run data get storage math:io temp[0].id
data modify entity @s Pos set from storage math:io temp[0].pos
execute at @s as @e[tag=vve_node,tag=!free,distance=..16] if score @s int = tempid int run function vve:display
#循环迭代
data remove storage math:io temp[0]
scoreboard players remove temp_cnt int 1
execute if score temp_cnt int matches 1.. run function vve:display/loop