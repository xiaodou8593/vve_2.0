#vve:display/loop_append
#临时数据
execute store result storage math:io vve_display.xyzw[0] float 0.0001 run scoreboard players get qrot_x int
execute store result storage math:io vve_display.xyzw[1] float 0.0001 run scoreboard players get qrot_y int
execute store result storage math:io vve_display.xyzw[2] float 0.0001 run scoreboard players get qrot_z int
execute store result storage math:io vve_display.xyzw[3] float 0.0001 run scoreboard players get qrot_w int

data modify storage math:io vve_display.pos set from entity @s Pos
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get x int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get y int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get z int
data modify storage math:io vve_display.xyz set from entity @s Pos

execute store result storage math:io vve_display.u0 double 0.0001 run scoreboard players get u0 int
execute store result storage math:io vve_display.u1 double 0.0001 run scoreboard players get u1 int
execute store result storage math:io vve_display.u2 double 0.0001 run scoreboard players get u2 int
execute store result storage math:io vve_display.v0 double 0.0001 run scoreboard players get v0 int
execute store result storage math:io vve_display.v1 double 0.0001 run scoreboard players get v1 int
execute store result storage math:io vve_display.v2 double 0.0001 run scoreboard players get v2 int
execute store result storage math:io vve_display.w0 double 0.0001 run scoreboard players get w0 int
execute store result storage math:io vve_display.w1 double 0.0001 run scoreboard players get w1 int
execute store result storage math:io vve_display.w2 double 0.0001 run scoreboard players get w2 int

execute store result storage math:io vve_display.id int 1 run scoreboard players get @s id

scoreboard players add temp_cnt int 1
data modify storage math:io temp append from storage math:io vve_display