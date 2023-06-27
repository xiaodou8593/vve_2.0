#vve:physx/collision
#沿法向量的速度分量大小
scoreboard players operation sstempv int = vve_vx int
scoreboard players operation sstempv int *= fvec_x int
scoreboard players operation sstemp0 int = vve_vy int
scoreboard players operation sstemp0 int *= fvec_y int
scoreboard players operation sstempv int += sstemp0 int
scoreboard players operation sstemp0 int = vve_vz int
scoreboard players operation sstemp0 int *= fvec_z int
scoreboard players operation sstempv int += sstemp0 int
scoreboard players operation sstempv int /= 10000 int
execute if score sstempv int matches ..-1 run function vve:physx/collision_append