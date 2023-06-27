#vve:physx/hitbox/solid/return_push
scoreboard players operation sstempx int = 3vec_x int
scoreboard players operation sstempx int -= sstempx0 int
scoreboard players operation sstempz int = 3vec_z int
scoreboard players operation sstempz int -= sstempz0 int

execute if score sstempx int matches 1.. unless block ~1.0 ~ ~ #vve:pass run function vve:physx/hitbox/solid/offset_xp
execute if score sstempx int matches ..-1 unless block ~-1.0 ~ ~ #vve:pass run function vve:physx/hitbox/solid/offset_xn
execute if score sstempy int matches 1.. unless block ~ ~1.0 ~ #vve:pass run function vve:physx/hitbox/solid/offset_yp
execute if score sstempy int matches ..-1 unless block ~ ~-1.0 ~ #vve:pass run function vve:physx/hitbox/solid/offset_yn
execute if score sstempz int matches 1.. unless block ~ ~ ~1.0 #vve:pass run function vve:physx/hitbox/solid/offset_zp
execute if score sstempz int matches ..-1 unless block ~ ~ ~-1.0 #vve:pass run function vve:physx/hitbox/solid/offset_zn

scoreboard players operation sstempx1 int = sstempx int
scoreboard players operation sstempy1 int = sstempy int
scoreboard players operation sstempz1 int = sstempz int

execute if score sstempx int matches ..-1 run scoreboard players operation sstempx1 int *= -1 int
execute if score sstempy int matches ..-1 run scoreboard players operation sstempy1 int *= -1 int
execute if score sstempz int matches ..-1 run scoreboard players operation sstempz1 int *= -1 int

scoreboard players operation sstempx int /= sstempx1 int
scoreboard players operation sstempy int /= sstempy1 int
scoreboard players operation sstempz int /= sstempz1 int

scoreboard players operation sstempd int = sstempx1 int
scoreboard players operation sstempd int > sstempy1 int
scoreboard players operation sstempd int > sstempz1 int

scoreboard players operation sstempx1 int /= sstempd int
scoreboard players operation sstempy1 int /= sstempd int
scoreboard players operation sstempz1 int /= sstempd int

execute store result storage math:io fvec_xyz[0] double 1 store result score fvec_x int run scoreboard players operation sstempx int *= sstempx1 int
execute store result storage math:io fvec_xyz[1] double 1 store result score fvec_y int run scoreboard players operation sstempy int *= sstempy1 int
execute store result storage math:io fvec_xyz[2] double 1 store result score fvec_z int run scoreboard players operation sstempz int *= sstempz1 int

scoreboard players operation fvec_x int *= 10000 int
scoreboard players operation fvec_y int *= 10000 int
scoreboard players operation fvec_z int *= 10000 int

scoreboard players set res int 1