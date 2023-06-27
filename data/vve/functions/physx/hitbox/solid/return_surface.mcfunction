#vve:physx/hitbox/solid/return_surface
scoreboard players operation midpos_y int = sstempy0 int
execute store result storage math:io midpos_xyz[0] double 0.0001 run scoreboard players operation midpos_x int = 3vec_x int
execute store result storage math:io midpos_xyz[1] double 0.0001 run scoreboard players add midpos_y int 125
execute store result storage math:io midpos_xyz[2] double 0.0001 run scoreboard players operation midpos_z int = 3vec_z int

data modify storage math:io fvec_xyz set value [0.0d,1.0d,0.0d]
scoreboard players set fvec_x int 0
scoreboard players set fvec_y int 10000
scoreboard players set fvec_z int 0

scoreboard players set res int 0