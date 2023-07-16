#vve:physx/surface_fric
data modify storage math:io vve_impulse set value {fvec:[0.0d,0.0d,0.0d],set_omega:[0.0d,0.0d,0.0d]}

scoreboard players operation sstempd int /= 10000 int
scoreboard players operation sstempd int *= vve_rf int
scoreboard players operation sstempd int /= 10000 int

scoreboard players operation 3vec_x int = vve_omegax int
scoreboard players operation 3vec_x int *= sstempd int
scoreboard players operation 3vec_x int /= 10000 int
execute store result storage math:io vve_impulse.set_omega[0] double -0.0001 run scoreboard players operation 3vec_x int -= vve_omegax int

scoreboard players operation 3vec_y int = vve_omegay int
scoreboard players operation 3vec_y int *= sstempd int
scoreboard players operation 3vec_y int /= 10000 int
execute store result storage math:io vve_impulse.set_omega[1] double -0.0001 run scoreboard players operation 3vec_y int -= vve_omegay int

scoreboard players operation 3vec_z int = vve_omegaz int
scoreboard players operation 3vec_z int *= sstempd int
scoreboard players operation 3vec_z int /= 10000 int
execute store result storage math:io vve_impulse.set_omega[2] double -0.0001 run scoreboard players operation 3vec_z int -= vve_omegaz int

data modify storage math:io list_impulse insert -2 from storage math:io vve_impulse
scoreboard players add impulse_cnt int 1