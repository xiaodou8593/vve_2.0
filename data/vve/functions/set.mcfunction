#vve:set
data merge entity @s {data:{list_impulse:[]},CustomName:'{"text":"vve_obj"}'}
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

execute if data storage math:io input.uvw run function vve:set/uvw
execute if data storage math:io input.rel_xyzw run function vve:set/rel_xyzw

execute store result score @s vve_rmass run data get storage math:io input.rmass 10000
execute store result score @s vve_mass run data get storage math:io input.mass
execute store result score @s vve_mcu run data get storage math:io input.mass_center[0] 10000
execute store result score @s vve_mcv run data get storage math:io input.mass_center[1] 10000
execute store result score @s vve_mcw run data get storage math:io input.mass_center[2] 10000

execute store result score @s vve_friction run data get storage math:io input.friction[0] 10000
execute store result score @s vve_friction_r run data get storage math:io input.friction[1] 10000
execute store result score @s vve_bounce run data get storage math:io input.bounce 10000
execute store result score @s vve_g run data get storage math:io input.gravity 100

execute unless data storage math:io input.sub run function vve:set/not_sub

#sub组件
data modify storage math:io stemp set from storage math:io input.sub_cubes
execute store result score stemp int if data storage math:io input.sub_cubes[]
data modify storage math:io stemp[].sub set value 1b
data modify storage math:io stemp[].cube set value 1b
execute store result storage math:io stemp[].id int 1 run scoreboard players get @s id
execute if score stemp int matches 0 run data modify storage math:io stemp set value []
data modify storage math:io que append from storage math:io stemp[]
scoreboard players operation que_len int += stemp int

data modify storage math:io stemp set from storage math:io input.sub_objs
execute store result score stemp int if data storage math:io input.sub_objs[]
data modify storage math:io stemp[].sub set value 1b
execute store result storage math:io stemp[].id int 1 run scoreboard players get @s id
execute if score stemp int matches 0 run data modify storage math:io stemp set value []
data modify storage math:io que append from storage math:io stemp[]
scoreboard players operation que_len int += stemp int

execute unless data storage math:io input.sub if score que_len int matches 1.. run function vve:set/loop

tag @e remove result
data modify entity @s Tags append from storage math:class vve_tags.obj[]
data modify entity @s Tags append from storage math:io input.tags[]

#数据根初始化
execute if entity @s[tag=free] at @s run function vve:set/init_free