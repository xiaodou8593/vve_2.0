#vve:physx/collision_sloop
#add_pos
execute store result score sstemp0 int run data get storage math:io classify[-1][-1].pos[0] 10000
scoreboard players operation sstempx int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io classify[-1][-1].pos[1] 10000
scoreboard players operation sstempy int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io classify[-1][-1].pos[2] 10000
scoreboard players operation sstempz int += sstemp0 int
#add_fvec
execute store result score sstemp0 int run data get storage math:io classify[-1][-1].fvec[0] 10000
scoreboard players operation fvec_x int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io classify[-1][-1].fvec[1] 10000
scoreboard players operation fvec_y int += sstemp0 int
execute store result score sstemp0 int run data get storage math:io classify[-1][-1].fvec[2] 10000
scoreboard players operation fvec_z int += sstemp0 int
#循环
data remove storage math:io classify[-1][-1]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function vve:physx/collision_sloop