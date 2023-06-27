#vve:test/loop2
function math:_random
execute store result storage math:io temp.pos[0] double 0.0001 run scoreboard players operation random int += vve_mcx int
function math:_random
execute store result storage math:io temp.pos[2] double 0.0001 run scoreboard players operation random int += vve_mcz int
data modify storage math:io test.stemp append from storage math:io temp
#循环
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vve:test/loop2