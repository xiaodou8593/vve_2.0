#vve:cube/set/copy_psger
data modify storage math:io rec[0].temp.collision_points set from entity @s item.tag.cplist
data remove entity @s item.tag
data modify storage math:io rec[0].temp.item set from entity @s item