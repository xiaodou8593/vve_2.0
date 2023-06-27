#vve:cube/set/copy_free
execute on passengers run data modify storage math:io rec[0].temp.xyzw set from entity @s transformation.xyzw
data modify storage math:io rec[0].temp.pos set from entity @s Pos