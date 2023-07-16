#vve:physx/surface_impulse
#动量初始化
data modify storage math:io vve_impulse set value {pos:[0.0d,0.0d,0.0d],fvec:[0.0d,0.0d,0.0d]}
execute store result storage math:io vve_impulse.pos[0] double 0.0001 run scoreboard players get stempx int
execute store result storage math:io vve_impulse.pos[1] double 0.0001 run scoreboard players get stempy int
execute store result storage math:io vve_impulse.pos[2] double 0.0001 run scoreboard players get stempz int

scoreboard players operation 3vec_x int = vve_omegax int
scoreboard players operation 3vec_y int = vve_omegay int
scoreboard players operation 3vec_z int = vve_omegaz int
scoreboard players operation stempx int -= x int
scoreboard players operation stempy int -= y int
scoreboard players operation stempz int -= z int

#叉乘获取线速度
scoreboard players operation stemp0 int = 3vec_x int
scoreboard players operation 3vec_x int = 3vec_y int
scoreboard players operation 3vec_x int *= stempz int
scoreboard players operation stemp1 int = stempy int
scoreboard players operation stemp1 int *= 3vec_z int
scoreboard players operation 3vec_x int -= stemp1 int
scoreboard players operation stemp1 int = 3vec_y int
scoreboard players operation 3vec_y int = 3vec_z int
scoreboard players operation 3vec_y int *= stempx int
scoreboard players operation stemp2 int = stempz int
scoreboard players operation stemp2 int *= stemp0 int
scoreboard players operation 3vec_y int -= stemp2 int
scoreboard players operation 3vec_z int = stemp0 int
scoreboard players operation 3vec_z int *= stempy int
scoreboard players operation stemp2 int = stempx int
scoreboard players operation stemp2 int *= stemp1 int
scoreboard players operation 3vec_z int -= stemp2 int

#弧度制
scoreboard players operation stemp0 int = 3vec_x int
scoreboard players operation 3vec_x int /= 50000 int
scoreboard players operation 3vec_x int *= 1745 int
scoreboard players operation stemp0 int %= 50000 int
scoreboard players operation stemp0 int *= 1745 int
scoreboard players operation stemp0 int /= 50000 int
scoreboard players operation 3vec_x int += stemp0 int
scoreboard players operation 3vec_x int /= 10000 int

scoreboard players operation stemp0 int = 3vec_y int
scoreboard players operation 3vec_y int /= 50000 int
scoreboard players operation 3vec_y int *= 1745 int
scoreboard players operation stemp0 int %= 50000 int
scoreboard players operation stemp0 int *= 1745 int
scoreboard players operation stemp0 int /= 50000 int
scoreboard players operation 3vec_y int += stemp0 int
scoreboard players operation 3vec_y int /= 10000 int

scoreboard players operation stemp0 int = 3vec_z int
scoreboard players operation 3vec_z int /= 50000 int
scoreboard players operation 3vec_z int *= 1745 int
scoreboard players operation stemp0 int %= 50000 int
scoreboard players operation stemp0 int *= 1745 int
scoreboard players operation stemp0 int /= 50000 int
scoreboard players operation 3vec_z int += stemp0 int
scoreboard players operation 3vec_z int /= 10000 int

#总速度
scoreboard players operation 3vec_x int += vve_vx int
scoreboard players operation 3vec_y int += vve_vy int
scoreboard players operation 3vec_z int += vve_vz int
scoreboard players operation 3vec_x int *= fvec_x int
scoreboard players operation 3vec_y int *= fvec_y int
scoreboard players operation 3vec_z int *= fvec_z int
scoreboard players operation 3vec_x int += 3vec_y int
scoreboard players operation 3vec_x int += 3vec_z int
scoreboard players operation 3vec_x int /= -10000 int

#额外转动惯量
#tellraw @a ["stemp:[",{"score":{"name":"stempx","objective":"int"}},",",{"score":{"name":"stempy","objective":"int"}},",",{"score":{"name":"stempz","objective":"int"}},"]"]
scoreboard players operation stempr int = stempx int
scoreboard players operation stemp0 int = stempr int
scoreboard players operation stempr int /= 10000 int
scoreboard players operation stemp0 int %= 10000 int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int *= stempr int
scoreboard players operation stemp0 int *= 2 int
scoreboard players operation stempr int *= stempr int
scoreboard players operation stempr int *= 10000 int
scoreboard players operation stempr int += stemp0 int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stempr int += stemp1 int

#tellraw @a "~"
#tellraw @a ["stempy:",{"score":{"name":"stempy","objective":"int"}}]
scoreboard players operation stemp0 int = stempy int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp2 int = stemp1 int
scoreboard players operation stemp1 int *= stemp0 int
scoreboard players operation stemp1 int *= 2 int
scoreboard players operation stemp0 int *= stemp0 int
scoreboard players operation stemp0 int *= 10000 int
#tellraw @a ["stemp0:",{"score":{"name":"stemp0","objective":"int"}}]
scoreboard players operation stemp0 int += stemp1 int
scoreboard players operation stemp2 int *= stemp2 int
scoreboard players operation stemp2 int /= 10000 int
scoreboard players operation stemp0 int += stemp2 int
scoreboard players operation stempr int += stemp0 int

scoreboard players operation stemp0 int = stempz int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp2 int = stemp1 int
scoreboard players operation stemp1 int *= stemp0 int
scoreboard players operation stemp1 int *= 2 int
scoreboard players operation stemp0 int *= stemp0 int
scoreboard players operation stemp0 int *= 10000 int
scoreboard players operation stemp0 int += stemp1 int
scoreboard players operation stemp2 int *= stemp2 int
scoreboard players operation stemp2 int /= 10000 int
scoreboard players operation stemp0 int += stemp2 int
scoreboard players operation stempr int += stemp0 int
#tellraw @a ["stempr:",{"score":{"name":"stempr","objective":"int"}}]

scoreboard players operation stemp0 int = stempx int
scoreboard players operation stemp0 int *= fvec_x int
scoreboard players operation stemp1 int = stempy int
scoreboard players operation stemp1 int *= fvec_y int
scoreboard players operation stemp0 int += stemp1 int
scoreboard players operation stemp1 int = stempz int
scoreboard players operation stemp1 int *= fvec_z int
scoreboard players operation stemp0 int += stemp1 int
scoreboard players operation stemp0 int /= 10000 int

scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp2 int = stemp1 int
scoreboard players operation stemp1 int *= stemp0 int
scoreboard players operation stemp1 int *= 2 int
scoreboard players operation stemp0 int *= stemp0 int
scoreboard players operation stemp0 int *= 10000 int
scoreboard players operation stemp0 int += stemp1 int
scoreboard players operation stemp2 int *= stemp2 int
scoreboard players operation stemp2 int /= 10000 int
scoreboard players operation stemp0 int += stemp2 int
scoreboard players operation stempr int -= stemp0 int

scoreboard players operation stempr int *= vve_mass int
scoreboard players operation stemp0 int = stempr int
scoreboard players operation stempr int /= 100000 int
scoreboard players operation stempr int *= 1745 int
scoreboard players operation stemp0 int %= 100000 int
scoreboard players operation stemp0 int *= 1745 int
scoreboard players operation stemp0 int /= 100000 int
scoreboard players operation stempr int += stemp0 int

#比例系数
scoreboard players operation res int = vve_rmass int
scoreboard players operation inp int = vve_rmass int
scoreboard players operation inp int += stempr int
function math:hpo/_3div

#动量
scoreboard players operation 3vec_x int *= vve_mass int
scoreboard players operation 3vec_x int *= res int
scoreboard players operation 3vec_x int /= 1000 int
scoreboard players operation stemp0 int = 3vec_x int
execute store result storage math:io vve_impulse.fvec[0] double 0.00000001 run scoreboard players operation stemp0 int *= fvec_x int
scoreboard players operation stemp0 int = 3vec_x int
execute store result storage math:io vve_impulse.fvec[1] double 0.00000001 run scoreboard players operation stemp0 int *= fvec_y int
scoreboard players operation stemp0 int = 3vec_x int
execute store result storage math:io vve_impulse.fvec[2] double 0.00000001 run scoreboard players operation stemp0 int *= fvec_z int

#tellraw @a {"nbt":"vve_impulse","storage":"math:io"}
data modify storage math:io list_impulse append from storage math:io vve_impulse
scoreboard players add impulse_cnt int 1

scoreboard players operation 3vec_x int = stempx int
scoreboard players operation 3vec_y int = stempy int
scoreboard players operation 3vec_z int = stempz int
scoreboard players operation @s 3vec_x = fvec_x int
scoreboard players operation @s 3vec_y = fvec_y int
scoreboard players operation @s 3vec_z = fvec_z int
function math:3vec/_cross
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get 3vec_x int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get 3vec_y int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get 3vec_z int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score 3vec_x int run data get entity @s Pos[0] 10000
execute store result score 3vec_y int run data get entity @s Pos[1] 10000
execute store result score 3vec_z int run data get entity @s Pos[2] 10000
scoreboard players operation sstempd int = 3vec_x int
scoreboard players operation sstempd int *= vve_omegax int
scoreboard players operation sstemp0 int = 3vec_y int
scoreboard players operation sstemp0 int *= vve_omegay int
scoreboard players operation sstempd int += sstemp0 int
scoreboard players operation sstemp0 int = 3vec_z int
scoreboard players operation sstemp0 int *= vve_omegaz int
scoreboard players operation sstempd int += sstemp0 int
execute if score sstempd int matches ..-1 run function vve:physx/surface_fric

#暂停模拟
#tellraw @a "ready to surface！"
#tellraw @a "impulse"
#scoreboard players set vve_simrate int 0
#scoreboard players set vve_tickloop int 1