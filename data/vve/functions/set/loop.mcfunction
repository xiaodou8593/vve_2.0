#vve:test/loop
data modify storage math:io input set from storage math:io que[0]
execute if data storage math:io input.cube run function vve:cube/_new
execute unless data storage math:io input.cube run function vve:_new
execute store result score @e[tag=result,limit=1] int run data get storage math:io que[0].id

#循环迭代
data remove storage math:io que[0]
scoreboard players remove que_len int 1
execute if score que_len int matches 1.. run function vve:set/loop