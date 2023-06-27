#vve:physx/surface_detect
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
scoreboard players operation sstemp1 int = sstempv int
scoreboard players operation sstemp1 int *= -1 int

execute if score sstemp1 int >= vve_v0 int run scoreboard players set res int -1
execute if score sstempv int >= vve_v0 int run scoreboard players set res int -1
execute if score res int matches 0 run function vve:physx/surface_append