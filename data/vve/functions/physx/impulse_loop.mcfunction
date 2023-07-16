#vve:physx/impulse_loop
#tellraw @a {"nbt":"list_impulse[0]","storage":"math:io"}
execute store result score @s 3vec_x run data get storage math:io list_impulse[0].fvec[0] 10000
execute store result score @s 3vec_y run data get storage math:io list_impulse[0].fvec[1] 10000
execute store result score @s 3vec_z run data get storage math:io list_impulse[0].fvec[2] 10000

#作用于角速度
execute store result score sstemp0 int run data get storage math:io list_impulse[0].not_rot
execute if score sstemp0 int matches 0 run function vve:physx/impulse_r

#作用于速度
scoreboard players operation @s 3vec_x /= vve_mass int
scoreboard players operation @s 3vec_y /= vve_mass int
scoreboard players operation @s 3vec_z /= vve_mass int
scoreboard players operation vve_vx int += @s 3vec_x
scoreboard players operation vve_vy int += @s 3vec_y
scoreboard players operation vve_vz int += @s 3vec_z

#赋值冲量
execute if data storage math:io list_impulse[0].set_v run function vve:physx/impulse_rev
execute if data storage math:io list_impulse[0].set_omega run function vve:physx/impulse_rer

#循环
data remove storage math:io list_impulse[0]
scoreboard players remove impulse_cnt int 1
execute if score impulse_cnt int matches 1.. run function vve:physx/impulse_loop