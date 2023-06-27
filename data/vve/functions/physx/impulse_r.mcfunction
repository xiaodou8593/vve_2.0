#vve:physx/impulse_r
scoreboard players add temp_cnt int 1
scoreboard players operation u int = vve_mcu int
scoreboard players operation v int = vve_mcv int
scoreboard players operation w int = vve_mcw int
function math:uvw/_tovec
execute store result score sstempx int run data get storage math:io list_impulse[0].pos[0] 10000
execute store result score sstempy int run data get storage math:io list_impulse[0].pos[1] 10000
execute store result score sstempz int run data get storage math:io list_impulse[0].pos[2] 10000
scoreboard players operation 3vec_x int -= sstempx int
scoreboard players operation 3vec_y int -= sstempy int
scoreboard players operation 3vec_z int -= sstempz int

scoreboard players operation stempx int = 3vec_x int
scoreboard players operation 3vec_x int = 3vec_y int
scoreboard players operation 3vec_x int *= @s 3vec_z
scoreboard players operation stemp0 int = @s 3vec_y
scoreboard players operation stemp0 int *= 3vec_z int
scoreboard players operation 3vec_x int -= stemp0 int

scoreboard players operation stempy int = 3vec_y int
scoreboard players operation 3vec_y int = 3vec_z int
scoreboard players operation 3vec_y int *= @s 3vec_x
scoreboard players operation stemp0 int = @s 3vec_z
scoreboard players operation stemp0 int *= stempx int
scoreboard players operation 3vec_y int -= stemp0 int

scoreboard players operation 3vec_z int = stempx int
scoreboard players operation 3vec_z int *= @s 3vec_y
scoreboard players operation stemp0 int = @s 3vec_x
scoreboard players operation stemp0 int *= stempy int
scoreboard players operation 3vec_z int -= stemp0 int

scoreboard players operation 3vec_x int /= vve_rmass int
scoreboard players operation 3vec_y int /= vve_rmass int
scoreboard players operation 3vec_z int /= vve_rmass int

scoreboard players operation vve_omegax int -= 3vec_x int
scoreboard players operation vve_omegay int -= 3vec_y int
scoreboard players operation vve_omegaz int -= 3vec_z int