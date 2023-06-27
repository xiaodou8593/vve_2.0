#vve:set/rel_xyzw
tag @s add vve_overwrite
data modify storage math:io xyzw set from storage math:io input.rel_xyzw
execute as @e[tag=math_marker,limit=1] run function math:qrot/pose/_stoxyzwto
scoreboard players operation @s qrot_rel0 = qrot_v0 int
scoreboard players operation @s qrot_rel1 = qrot_v1 int
scoreboard players operation @s qrot_rel2 = qrot_v2 int
scoreboard players operation @s qrot_theta = qrot_beta int