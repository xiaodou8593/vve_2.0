#vve:main
#数据临时化
function vve:_get
scoreboard players set temp_cnt int 0
data modify storage math:io temp set value []
scoreboard players operation tempid int = @s id
execute as @e[tag=vve_cube,distance=..16,tag=!free] if score @s vve_root = tempid int run function vve:physx/cpoints/get
execute if score @s vve_impulse_cnt matches ..0 run scoreboard players set impulse_cnt int 0
data modify storage math:io list_impulse set from entity @s data.list_impulse
scoreboard players operation impulse_cnt int = @s vve_impulse_cnt
data modify entity @s data.list_impulse set value []
scoreboard players set @s vve_impulse_cnt 0
function math:qrot/_get
scoreboard players operation u int = vve_mcu int
scoreboard players operation v int = vve_mcv int
scoreboard players operation w int = vve_mcw int
function math:uvw/_tovec
scoreboard players operation vve_mcx int = 3vec_x int
scoreboard players operation vve_mcy int = 3vec_y int
scoreboard players operation vve_mcz int = 3vec_z int

#微刻模拟
#data modify storage math:io self_uuid set from entity @s UUID
execute positioned 0.0 0.0 0.0 as 0-0-0-8593-0 run function vve:simtick
tag @e[distance=..16] remove tmp

#数据储存化
function math:qrot/_store
function vve:_store

#位置同步
execute store result storage math:io xyzw[0] float 0.0001 run scoreboard players get qrot_x int
execute store result storage math:io xyzw[1] float 0.0001 run scoreboard players get qrot_y int
execute store result storage math:io xyzw[2] float 0.0001 run scoreboard players get qrot_z int
execute store result storage math:io xyzw[3] float 0.0001 run scoreboard players get qrot_w int
data modify storage math:io temp set value []
scoreboard players set temp_cnt int 0
scoreboard players operation tempid int = @s id
execute as @e[tag=vve_node,tag=!free,distance=..16] if score @s int = tempid int run function vve:display
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get x int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get y int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get z int
execute if score temp_cnt int matches 1.. as @e[tag=math_marker,limit=1] run function vve:display/loop