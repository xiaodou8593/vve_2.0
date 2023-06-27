#vve:set/init_free
function math:qrot/_get
function math:qrot/_xyzw
function math:qrot/_ex-uvw
function math:qrot/_store

#加载位置
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