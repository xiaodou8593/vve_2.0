#vve:test/surface_cross

# 7554,-113,6551
# 9974,-43,-707
# 0 10000 0

scoreboard players set 3vec_x int 7554
scoreboard players set 3vec_y int -113
scoreboard players set 3vec_z int 6551

scoreboard players set @e[tag=math_marker,limit=1] 3vec_x 9974
scoreboard players set @e[tag=math_marker,limit=1] 3vec_y -43
scoreboard players set @e[tag=math_marker,limit=1] 3vec_z -707

execute as @e[tag=math_marker,limit=1] run function math:3vec/_cross
function math:3vec/_ssprint

scoreboard players set @e[tag=math_marker,limit=1] 3vec_x 0
scoreboard players set @e[tag=math_marker,limit=1] 3vec_y 10000
scoreboard players set @e[tag=math_marker,limit=1] 3vec_z 0

execute as @e[tag=math_marker,limit=1] run function math:3vec/_cross
function math:3vec/_ssprint