#vve:exploder/r_sloop
function math:_particle
execute if block ~ ~ ~ #vve:explode run function vve:exploder/explode
execute unless block ~ ~ ~ #vve:pass run scoreboard players set sloop int 1
#循环迭代
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. positioned ^ ^ ^0.01 run function vve:exploder/r_sloop