#vve:physx/fricgrav

execute if score vve_surface int matches 1 run function vve:physx/fric_replace

scoreboard players operation vve_vy int -= vve_g int

scoreboard players set stemp_sign int 1
execute if score vve_vx int matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation vve_vx int *= stemp_sign int
scoreboard players operation vve_vx int *= vve_friction int
scoreboard players operation vve_vx int /= 10000 int
scoreboard players operation vve_vx int *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score vve_vy int matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation vve_vy int *= stemp_sign int
scoreboard players operation vve_vy int *= vve_friction int
scoreboard players operation vve_vy int /= 10000 int
scoreboard players operation vve_vy int *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score vve_vz int matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation vve_vz int *= stemp_sign int
scoreboard players operation vve_vz int *= vve_friction int
scoreboard players operation vve_vz int /= 10000 int
scoreboard players operation vve_vz int *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score vve_omega int matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation vve_omega int *= stemp_sign int
scoreboard players operation vve_omega int *= vve_friction_r int
scoreboard players operation vve_omega int /= 10000 int
scoreboard players operation vve_omega int *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score vve_omegax int matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation vve_omegax int *= stemp_sign int
scoreboard players operation vve_omegax int *= vve_friction_r int
scoreboard players operation vve_omegax int /= 10000 int
scoreboard players operation vve_omegax int *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score vve_omegay int matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation vve_omegay int *= stemp_sign int
scoreboard players operation vve_omegay int *= vve_friction_r int
scoreboard players operation vve_omegay int /= 10000 int
scoreboard players operation vve_omegay int *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score vve_omegaz int matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation vve_omegaz int *= stemp_sign int
scoreboard players operation vve_omegaz int *= vve_friction_r int
scoreboard players operation vve_omegaz int /= 10000 int
scoreboard players operation vve_omegaz int *= stemp_sign int