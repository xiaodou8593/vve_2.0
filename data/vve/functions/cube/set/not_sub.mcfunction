#vve:set/not_sub
tag @s add free
execute on passengers run data modify entity @s transformation.left_rotation set from storage math:io input.xyzw
data modify entity @s Pos set from storage math:io input.pos