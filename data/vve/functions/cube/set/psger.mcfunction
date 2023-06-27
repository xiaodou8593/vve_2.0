#vve:cube/set/psger
scoreboard players operation @s vve_root = vve_root int
data modify entity @s item set from storage math:io input.item
data modify entity @s item.tag.cplist set from storage math:io input.collision_points