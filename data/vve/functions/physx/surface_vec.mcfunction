#vve:physx/surface_vec
execute store result score 3vec_x int run data get storage math:io stemp[0].xyz[0] 10000
execute store result score 3vec_y int run data get storage math:io stemp[0].xyz[1] 10000
execute store result score 3vec_z int run data get storage math:io stemp[0].xyz[2] 10000
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation 3vec_x int -= stempu0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation 3vec_y int -= stempv0 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation 3vec_z int -= stempw0 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score 3vec_x int run data get entity @s Pos[0] 10000
execute store result score 3vec_y int run data get entity @s Pos[1] 10000
execute store result score 3vec_z int run data get entity @s Pos[2] 10000

scoreboard players operation stempu3 int = u0 int
scoreboard players operation stempu3 int *= 3vec_x int
scoreboard players operation sstemp0 int = u1 int
scoreboard players operation sstemp0 int *= 3vec_y int
scoreboard players operation stempu3 int += sstemp0 int
scoreboard players operation sstemp0 int = u2 int
scoreboard players operation sstemp0 int *= 3vec_z int
scoreboard players operation stempu3 int += sstemp0 int
scoreboard players operation stempu3 int /= 10000 int
scoreboard players operation stempv3 int = v0 int
scoreboard players operation stempv3 int *= 3vec_x int
scoreboard players operation sstemp0 int = v1 int
scoreboard players operation sstemp0 int *= 3vec_y int
scoreboard players operation stempv3 int += sstemp0 int
scoreboard players operation sstemp0 int = v2 int
scoreboard players operation sstemp0 int *= 3vec_z int
scoreboard players operation stempv3 int += sstemp0 int
scoreboard players operation stempv3 int /= 10000 int
scoreboard players operation stempw3 int = w0 int
scoreboard players operation stempw3 int *= 3vec_x int
scoreboard players operation sstemp0 int = w1 int
scoreboard players operation sstemp0 int *= 3vec_y int
scoreboard players operation stempw3 int += sstemp0 int
scoreboard players operation sstemp0 int = w2 int
scoreboard players operation sstemp0 int *= 3vec_z int
scoreboard players operation stempw3 int += sstemp0 int
scoreboard players operation stempw3 int /= 10000 int

scoreboard players operation sstemp0 int = stempu3 int
scoreboard players operation sstemp0 int *= stempu1 int
scoreboard players operation sstemp1 int = stempv3 int
scoreboard players operation sstemp1 int *= stempv1 int
scoreboard players operation sstemp0 int += sstemp1 int
scoreboard players operation sstemp1 int = stempw3 int
scoreboard players operation sstemp1 int *= stempw1 int
scoreboard players operation sstemp0 int += sstemp1 int
execute if score sstemp0 int matches ..-1 run scoreboard players operation sstemp0 int *= -1 int
execute if score sstemp0 int < stemp0 int run function vve:physx/surface_replace

#循环
data remove storage math:io stemp[0]
scoreboard players remove stemp_cnt int 1
execute if score stemp_cnt int matches 1.. run function vve:physx/surface_vec