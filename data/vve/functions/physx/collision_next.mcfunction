#vve:physx/collision_next
#动量守恒求解冲量大小
scoreboard players operation sstempp int = sstempv int
scoreboard players operation sstempp int *= vve_mass int

scoreboard players operation sstempu int = sstempp int
scoreboard players operation sstemp0 int = vve_cmass int
scoreboard players operation sstemp0 int *= vve_cv int
scoreboard players operation sstempu int += sstemp0 int

scoreboard players operation sstemp0 int = vve_cv int
scoreboard players operation sstemp0 int -= sstempv int
scoreboard players operation vve_cbounce int += vve_bounce int
scoreboard players operation vve_cbounce int /= 2 int
scoreboard players operation sstemp0 int *= vve_cbounce int
scoreboard players operation sstemp0 int /= 10000 int
scoreboard players operation sstemp0 int *= vve_cmass int
scoreboard players operation sstempu int += sstemp0 int

scoreboard players operation sstempd int = vve_cmass int
scoreboard players operation sstempd int += vve_mass int
scoreboard players operation sstempu int *= vve_mass int
scoreboard players operation sstempu int /= sstempd int
scoreboard players operation sstemp0 int = vve_cv int
scoreboard players operation sstemp0 int *= vve_mass int
scoreboard players operation sstempu int > sstemp0 int

scoreboard players operation sstempu int -= sstempp int

execute store result score sstempy int store result score sstempz int run scoreboard players operation sstempx int = sstempu int
scoreboard players operation sstempx int *= fvec_x int
execute store result storage math:io vve_impulse.fvec[0] double 0.0001 run scoreboard players operation sstempx int /= 10000 int
scoreboard players operation sstempy int *= fvec_y int
execute store result storage math:io vve_impulse.fvec[1] double 0.0001 run scoreboard players operation sstempy int /= 10000 int
scoreboard players operation sstempz int *= fvec_z int
execute store result storage math:io vve_impulse.fvec[2] double 0.0001 run scoreboard players operation sstempz int /= 10000 int

data modify storage math:io list_impulse append from storage math:io vve_impulse
scoreboard players add impulse_cnt int 1

execute store result storage math:io vve_impulse.fvec[0] double -0.0001 run scoreboard players get sstempx int
execute store result storage math:io vve_impulse.fvec[1] double -0.0001 run scoreboard players get sstempy int
execute store result storage math:io vve_impulse.fvec[2] double -0.0001 run scoreboard players get sstempz int

data modify entity @s Thrower set from storage math:io vve_cuuid
execute on origin run function vve:physx/impulse/_append