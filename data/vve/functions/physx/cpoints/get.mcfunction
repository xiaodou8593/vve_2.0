#vve:physx/cpoints/get
scoreboard players operation temp_cnt int += @s vve_len_cplist
function math:uvw/_get
execute on passengers run data modify storage math:io stemp set from entity @s item.tag.cplist
scoreboard players operation sloop int = @s vve_len_cplist
execute if score sloop int matches 1.. run function vve:physx/cpoints/get_loop
tag @s add tmp