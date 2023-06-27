#vve:physx/surface_land

#局部坐标系point0
execute store result score stempu0 int run data get storage math:io stemp[0].xyz[0] 10000
execute store result score stempv0 int run data get storage math:io stemp[0].xyz[1] 10000
execute store result score stempw0 int run data get storage math:io stemp[0].xyz[2] 10000
data remove storage math:io stemp[0]
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

#局部坐标系vec1
scoreboard players operation stempu1 int = u0 int
scoreboard players operation stempu1 int *= 3vec_x int
scoreboard players operation sstemp0 int = u1 int
scoreboard players operation sstemp0 int *= 3vec_y int
scoreboard players operation stempu1 int += sstemp0 int
scoreboard players operation sstemp0 int = u2 int
scoreboard players operation sstemp0 int *= 3vec_z int
scoreboard players operation stempu1 int += sstemp0 int
scoreboard players operation stempu1 int /= 10000 int
scoreboard players operation stempv1 int = v0 int
scoreboard players operation stempv1 int *= 3vec_x int
scoreboard players operation sstemp0 int = v1 int
scoreboard players operation sstemp0 int *= 3vec_y int
scoreboard players operation stempv1 int += sstemp0 int
scoreboard players operation sstemp0 int = v2 int
scoreboard players operation sstemp0 int *= 3vec_z int
scoreboard players operation stempv1 int += sstemp0 int
scoreboard players operation stempv1 int /= 10000 int
scoreboard players operation stempw1 int = w0 int
scoreboard players operation stempw1 int *= 3vec_x int
scoreboard players operation sstemp0 int = w1 int
scoreboard players operation sstemp0 int *= 3vec_y int
scoreboard players operation stempw1 int += sstemp0 int
scoreboard players operation sstemp0 int = w2 int
scoreboard players operation sstemp0 int *= 3vec_z int
scoreboard players operation stempw1 int += sstemp0 int
scoreboard players operation stempw1 int /= 10000 int

#局部坐标系vec2
scoreboard players set stemp0 int 100000000
data remove storage math:io stemp[0]
scoreboard players remove stemp_cnt int 2
execute if score stemp_cnt int matches 1.. run function vve:physx/surface_vec

#暂停模拟
#tellraw @a "ready to surface！"
#tellraw @a "land"
#scoreboard players set vve_simrate int 0
#scoreboard players set vve_tickloop int 1