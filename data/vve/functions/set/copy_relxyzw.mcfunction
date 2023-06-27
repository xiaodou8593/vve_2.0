#vve:set/copy_relxyzw
scoreboard players operation qrot_v0 int = @s qrot_rel0
scoreboard players operation qrot_v1 int = @s qrot_rel1
scoreboard players operation qrot_v2 int = @s qrot_rel2
scoreboard players operation qrot_beta int = @s qrot_theta
execute as @e[tag=math_marker,limit=1] run function math:qrot/pose/_ex-sincos
function math:qrot/pose/_tostoxyzw
data modify storage math:io rec[0].temp.rel_xyzw set from storage math:io xyzw