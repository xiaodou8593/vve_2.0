#vve:physx/impulse_rer
scoreboard players add temp_cnt int 1
execute store result score vve_omegax int run data get storage math:io list_impulse[0].set_omega[0] 10000
execute store result score vve_omegay int run data get storage math:io list_impulse[0].set_omega[1] 10000
execute store result score vve_omegaz int run data get storage math:io list_impulse[0].set_omega[2] 10000