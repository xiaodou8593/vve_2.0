#vve:cube/set
#分配编号
execute store result score @s id run scoreboard players add #id id 1
scoreboard players operation @s vve_root = vve_root int
#数据实体化
execute store result score @s x run data get storage math:io input.pos[0] 10000
execute store result score @s y run data get storage math:io input.pos[1] 10000
execute store result score @s z run data get storage math:io input.pos[2] 10000

execute store result score @s qrot_x run data get storage math:io input.xyzw[0] 10000
execute store result score @s qrot_y run data get storage math:io input.xyzw[1] 10000
execute store result score @s qrot_z run data get storage math:io input.xyzw[2] 10000
execute store result score @s qrot_w run data get storage math:io input.xyzw[3] 10000

execute store result score @s vve_rmass run data get storage math:io input.rmass 10000
execute store result score @s vve_mass run data get storage math:io input.mass
execute store result score @s vve_mcu run data get storage math:io input.mass_center[0] 10000
execute store result score @s vve_mcv run data get storage math:io input.mass_center[1] 10000
execute store result score @s vve_mcw run data get storage math:io input.mass_center[2] 10000

data modify entity @s Tags append from storage math:io input.tags[]

execute store result score @s vve_len_cplist if data storage math:io input.collision_points[]

execute if data storage math:io input.uvw run function vve:set/uvw

execute if data storage math:io input.rel_xyzw run function vve:set/rel_xyzw

execute unless data storage math:io input.sub run function vve:cube/set/not_sub

execute on passengers run function vve:cube/set/psger