#vve:set/not_sub
tag @s add free
data modify storage math:io que set value []
scoreboard players set que_len int 0

#初始化速度
execute store result score @s vve_vx run data get storage math:io input.velocity[0] 10000
execute store result score @s vve_vy run data get storage math:io input.velocity[1] 10000
execute store result score @s vve_vz run data get storage math:io input.velocity[2] 10000

#初始角速度
execute store result score 3vec_x int store result score @s vve_omegax run data get storage math:io input.omega[0] 10000
execute store result score 3vec_y int store result score @s vve_omegay run data get storage math:io input.omega[1] 10000
execute store result score 3vec_z int store result score @s vve_omegaz run data get storage math:io input.omega[2] 10000

scoreboard players operation x int = @s x
scoreboard players operation y int = @s y
scoreboard players operation z int = @s z
scoreboard players operation qrot_x int = @s qrot_x
scoreboard players operation qrot_y int = @s qrot_y
scoreboard players operation qrot_z int = @s qrot_z
scoreboard players operation qrot_w int = @s qrot_w
function math:qrot/pose/_xyzwto
function math:qrot/axis/_xyzto
scoreboard players operation @s vve_omega = qrot_alpha int
scoreboard players set qrot_alpha int 0
function math:qrot/_store

scoreboard players operation vve_root int = @s id
scoreboard players operation @s vve_root = vve_root int