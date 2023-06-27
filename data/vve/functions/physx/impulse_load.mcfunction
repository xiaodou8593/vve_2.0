#vve:physx/impulse_load
data modify storage math:io list_impulse set from entity @s data.list_impulse
scoreboard players operation impulse_cnt int = @s vve_impulse_cnt
data modify entity @s data.list_impulse set value []
scoreboard players set @s vve_impulse_cnt 0