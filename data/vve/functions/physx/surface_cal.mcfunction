#vve:physx/surface_cal

#着陆平面参数
execute store result score vve_surface_f int run data get storage math:io stemp[0].friction[0] 10000
execute store result score vve_surface_fr int run data get storage math:io stemp[0].friction[1] 10000
execute store result score fvec_x int run data get storage math:io stemp[0].fvec[0] 10000
execute store result score fvec_y int run data get storage math:io stemp[0].fvec[1] 10000
execute store result score fvec_z int run data get storage math:io stemp[0].fvec[2] 10000
execute store result score stempx int run data get storage math:io stemp[0].pos[0] 10000
execute store result score stempy int run data get storage math:io stemp[0].pos[1] 10000
execute store result score stempz int run data get storage math:io stemp[0].pos[2] 10000
scoreboard players set stempdx int 0
scoreboard players set stempdy int 0
scoreboard players set stempdz int 0
data modify storage math:io stemp append from storage math:io stemp[0]
data remove storage math:io stemp[0]
scoreboard players operation sloop int = stemp_cnt int
execute if score sloop int matches 2.. run function vve:physx/surface_sloop
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation fvec_x int /= stemp_cnt int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation fvec_y int /= stemp_cnt int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation fvec_z int /= stemp_cnt int
scoreboard players operation stempdx int /= stemp_cnt int
scoreboard players operation stempdy int /= stemp_cnt int
scoreboard players operation stempdz int /= stemp_cnt int
scoreboard players operation stempx int += stempdx int
scoreboard players operation stempy int += stempdy int
scoreboard players operation stempz int += stempdz int
scoreboard players operation vve_surface_f int /= stemp_cnt int
scoreboard players operation vve_surface_fr int /= stemp_cnt int

#平面坐标系
execute positioned 0.0 0.0 0.0 facing entity @s feet run function vve:physx/surface_plane

#重心投影
scoreboard players operation stempu int = vve_mcx
scoreboard players operation stempu int -= stempx int
scoreboard players operation stempu int *= stempi0 int
scoreboard players operation stemp0 int = vve_mcz int
scoreboard players operation stemp0 int -= stempz int
scoreboard players operation stemp0 int *= stempi2 int
scoreboard players operation stempu int += stemp0 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stempu int /= 10000 int
scoreboard players operation stempv int = vve_mcx int
scoreboard players operation stempv int -= stempx int
scoreboard players operation stempv int *= stempj0 int
scoreboard players operation stemp0 int = vve_mcy int
scoreboard players operation stemp0 int -= stempy int
scoreboard players operation stemp0 int *= stempj1 int
scoreboard players operation stempv int += stemp0 int
scoreboard players operation stemp0 int = vve_mcz int
scoreboard players operation stemp0 int -= stempz int
scoreboard players operation stemp0 int *= stempj2 int
scoreboard players operation stempv int += stemp0 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stempv int /= 10000 int

#指向重心投影的平面单位向量
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score sstempk0 int run data get entity @s Pos[0] 10000
execute store result score sstempk1 int run data get entity @s Pos[2] 10000

#center_dsp
#execute store result entity @s Pos[0] double 0.0001 run scoreboard players get stempx int
#execute store result entity @s Pos[1] double 0.0001 run scoreboard players get stempy int
#execute store result entity @s Pos[2] double 0.0001 run scoreboard players get stempz int
#execute at @s positioned ~ ~0.1 ~ run particle minecraft:end_rod ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @a

#着陆圆圈
scoreboard players set stempd int 0
scoreboard players operation sloop int = stemp_cnt int
execute if score stemp_cnt int matches 3.. run function vve:physx/surface_range

#着陆半径平方
scoreboard players operation stemp0 int = stempd int
scoreboard players operation stempd int /= 10000 int
scoreboard players operation stemp0 int %= 10000 int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int *= stempd int
scoreboard players operation stemp0 int *= 2 int
scoreboard players operation stempd int *= stempd int
scoreboard players operation stempd int *= 10000 int
scoreboard players operation stempd int += stemp0 int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stempd int += stemp1 int

#重心径向距离平方
scoreboard players operation stemp0 int = stempu int
scoreboard players operation stempu int /= 10000 int
scoreboard players operation stemp0 int %= 10000 int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int *= stempu int
scoreboard players operation stemp0 int *= 2 int
scoreboard players operation stempu int *= stempu int
scoreboard players operation stempu int *= 10000 int
scoreboard players operation stempu int += stemp0 int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stempu int += stemp1 int
scoreboard players operation stemp0 int = stempv int
scoreboard players operation stempv int /= 10000 int
scoreboard players operation stemp0 int %= 10000 int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int *= stempv int
scoreboard players operation stemp0 int *= 2 int
scoreboard players operation stempv int *= stempv int
scoreboard players operation stempv int *= 10000 int
scoreboard players operation stempv int += stemp0 int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stempv int += stemp1 int
scoreboard players operation stempu int += stempv int

#比较
execute if score stempu int >= stempd int run function vve:physx/surface_impulse
execute if score stempu int < stempd int run function vve:physx/surface_land

#scoreboard players operation res int = stempd int
#scoreboard players add stempy int 1000
#scoreboard players set loop int 120
#execute if score loop int matches 1.. rotated 0.0 0.0 positioned 0.0 0.0 0.0 run function vve:physx/surface_dsp