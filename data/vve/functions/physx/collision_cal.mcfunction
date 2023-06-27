#vve:physx/collision_cal
#初始化冲量
data modify storage math:io vve_impulse set value {pos:[0.0d,0.0d,0.0d],fvec:[0.0d,0.0d,0.0d]}

#加载被碰物体数据
data modify storage math:io vve_cuuid set from storage math:io classify[-1][0].key
execute store result score vve_cv int run data get storage math:io classify[-1][0].cv
execute store result score vve_cmass int run data get storage math:io classify[-1][0].cmass

#碰撞点和法向量求平均
scoreboard players set fvec_x int 0
scoreboard players set fvec_y int 0
scoreboard players set fvec_z int 0
scoreboard players set sstempx int 0
scoreboard players set sstempy int 0
scoreboard players set sstempz int 0
execute store result score sloop int store result score sstempn int if data storage math:io classify[-1][]
function vve:physx/collision_sloop
scoreboard players operation fvec_x int /= sstempn int
scoreboard players operation fvec_y int /= sstempn int
scoreboard players operation fvec_z int /= sstempn int
execute store result storage math:io vve_impulse.pos[0] double 0.0001 run scoreboard players operation sstempx int /= sstempn int
execute store result storage math:io vve_impulse.pos[1] double 0.0001 run scoreboard players operation sstempy int /= sstempn int
execute store result storage math:io vve_impulse.pos[2] double 0.0001 run scoreboard players operation sstempz int /= sstempn int

#沿法向速度
scoreboard players operation sstempv int = vve_vx int
scoreboard players operation sstempv int *= fvec_x int
scoreboard players operation sstemp0 int = vve_vy int
scoreboard players operation sstemp0 int *= fvec_y int
scoreboard players operation sstempv int += sstemp0 int
scoreboard players operation sstemp0 int = vve_vz int
scoreboard players operation sstemp0 int *= fvec_z int
scoreboard players operation sstempv int += sstemp0 int
scoreboard players operation sstempv int /= 10000 int

execute if score sstempv int <= vve_cv int run function vve:physx/collision_next

#循环
data remove storage math:io classify[-1]
scoreboard players remove classify_cnt int 1
execute if score classify_cnt int matches 1.. run function vve:physx/collision_cal