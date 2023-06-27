#vve:display/overwrite
execute as @e[tag=math_marker,limit=1] run function math:qrot/_store
data modify storage math:io stemp set from storage math:io xyzw

scoreboard players operation u int = @s u
scoreboard players operation v int = @s v
scoreboard players operation w int = @s w
function math:uvw/_toxyz

#相对姿态
execute as @e[tag=math_marker,limit=1] run function math:qrot/pose/_xyzwto
scoreboard players operation u int = @s qrot_rel0
scoreboard players operation v int = @s qrot_rel1
scoreboard players operation w int = @s qrot_rel2
function math:qrot/axis/_uvwto
scoreboard players operation qrot_alpha int = @s qrot_theta
execute as @e[tag=math_marker,limit=1] run function math:qrot/_stoxyzw
function math:qrot/_ex-uvw