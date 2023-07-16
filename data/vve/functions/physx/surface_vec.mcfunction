#vve:physx/surface_vec
execute store result score stempu3 int run data get storage math:io stemp[0].xyz[0] 10000
execute store result score stempv3 int run data get storage math:io stemp[0].xyz[1] 10000
execute store result score stempw3 int run data get storage math:io stemp[0].xyz[2] 10000
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stempu3 int -= stempu0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation stempv3 int -= stempv0 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stempw3 int -= stempw0 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score stempu3 int run data get entity @s Pos[0] 10000
execute store result score stempv3 int run data get entity @s Pos[1] 10000
execute store result score stempw3 int run data get entity @s Pos[2] 10000

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