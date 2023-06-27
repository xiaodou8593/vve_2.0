#vve:test/qrot
data modify storage math:io xyzw set from entity @s transformation.left_rotation
execute as @e[tag=math_marker,limit=1] run function math:qrot/pose/_stoxyzwto
scoreboard players set 3vec_x int 3000
scoreboard players set 3vec_y int 20000
scoreboard players set 3vec_z int 5000
execute as @e[tag=math_marker,limit=1] run function math:qrot/axis/_xyzto
execute as @e[tag=math_marker,limit=1] run function math:qrot/_stoxyzw
data modify entity @s transformation.left_rotation set from storage math:io xyzw

data modify entity @s interpolation_duration set value 1
data modify entity @s interpolation_start set value -1