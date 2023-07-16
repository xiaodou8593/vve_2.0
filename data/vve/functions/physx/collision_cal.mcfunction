#vve:physx/collision_cal

#初始化冲量
data modify storage math:io vve_impulse set value {pos:[0.0d,0.0d,0.0d],fvec:[0.0d,0.0d,0.0d]}

#加载被碰物体数据
data modify storage math:io vve_cuuid set from storage math:io classify[-1][0].key
execute store result score vve_cv int run data get storage math:io classify[-1][0].cv
execute store result score vve_cmass int run data get storage math:io classify[-1][0].cmass
execute store result score vve_cbounce int run data get storage math:io classify[-1][0].cbounce

#碰撞点和法向量求平均
scoreboard players set fvec_x int 0
scoreboard players set fvec_y int 0
scoreboard players set fvec_z int 0
execute store result score sstempx int run data get storage math:io classify[-1][-1].pos[0] 10000
execute store result score sstempy int run data get storage math:io classify[-1][-1].pos[1] 10000
execute store result score sstempz int run data get storage math:io classify[-1][-1].pos[2] 10000
scoreboard players set sstempdx int 0
scoreboard players set sstempdy int 0
scoreboard players set sstempdz int 0
execute store result score sloop int store result score sstempn int if data storage math:io classify[-1][]
function vve:physx/collision_sloop
scoreboard players operation fvec_x int /= sstempn int
scoreboard players operation fvec_y int /= sstempn int
scoreboard players operation fvec_z int /= sstempn int
scoreboard players operation sstempdx int /= sstempn int
scoreboard players operation sstempdy int /= sstempn int
scoreboard players operation sstempdz int /= sstempn int
execute store result storage math:io vve_impulse.pos[0] double 0.0001 run scoreboard players operation sstempx int += sstempdx int
execute store result storage math:io vve_impulse.pos[1] double 0.0001 run scoreboard players operation sstempy int += sstempdy int
execute store result storage math:io vve_impulse.pos[2] double 0.0001 run scoreboard players operation sstempz int += sstempdz int

#线速度
scoreboard players operation 3vec_x int = vve_omegax int
scoreboard players operation 3vec_y int = vve_omegay int
scoreboard players operation 3vec_z int = vve_omegaz int
scoreboard players operation 3vec_x int *= 1745 int
scoreboard players operation 3vec_y int *= 1745 int
scoreboard players operation 3vec_z int *= 1745 int
scoreboard players operation 3vec_x int /= 50000 int
scoreboard players operation 3vec_y int /= 50000 int
scoreboard players operation 3vec_z int /= 50000 int
scoreboard players operation @s 3vec_x = sstempx int
scoreboard players operation @s 3vec_x -= x int
scoreboard players operation @s 3vec_y = sstempy int
scoreboard players operation @s 3vec_y -= y int
scoreboard players operation @s 3vec_z = sstempz int
scoreboard players operation @s 3vec_z -= z int
function math:3vec/_cross
#tellraw @a "---"
#tellraw @a ["v: [",{"score":{"name":"vve_vx","objective":"int"}},{"text":","},{"score":{"name":"vve_vy","objective":"int"}},{"text":","},{"score":{"name":"vve_vz","objective":"int"}},{"text":"]"}]
#tellraw @a ["3vec: [",{"score":{"name":"3vec_x","objective":"int"}},{"text":","},{"score":{"name":"3vec_y","objective":"int"}},{"text":","},{"score":{"name":"3vec_z","objective":"int"}},{"text":"]"}]

#沿法向速度
scoreboard players operation sstempv int = vve_vx int
scoreboard players operation sstempv int += 3vec_x int
scoreboard players operation sstempv int *= fvec_x int
scoreboard players operation sstemp0 int = vve_vy int
scoreboard players operation sstemp0 int += 3vec_y int
scoreboard players operation sstemp0 int *= fvec_y int
scoreboard players operation sstempv int += sstemp0 int
scoreboard players operation sstemp0 int = vve_vz int
scoreboard players operation sstemp0 int += 3vec_z int
scoreboard players operation sstemp0 int *= fvec_z int
scoreboard players operation sstempv int += sstemp0 int
scoreboard players operation sstempv int /= 10000 int

execute if score sstempv int <= vve_cv int run function vve:physx/collision_next

#暂停模拟
#tellraw @a "collision"
#scoreboard players set vve_simrate int 0
#scoreboard players set vve_tickloop int 1

#循环
data remove storage math:io classify[-1]
scoreboard players remove classify_cnt int 1
execute if score classify_cnt int matches 1.. run function vve:physx/collision_cal