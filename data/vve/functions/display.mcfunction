#vve:display
execute store result score tempc0 int if entity @s[tag=vve_overwrite]
execute store result score tempc1 int if entity @s[tag=vve_obj]

execute if score tempc0 int matches 0 run function vve:display/extend
execute if score tempc0 int matches 1 run function vve:display/overwrite
function math:qrot/_store

execute if score tempc1 int matches 0 run function vve:display/toposlr
execute if score tempc1 int matches 1 run function vve:display/loop_append

execute if score tempc0 int matches 0 run function vve:display/contract
execute if score tempc0 int matches 1 run function vve:display/backwrite