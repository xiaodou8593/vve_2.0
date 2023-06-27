#vve:test/surface_rand
data modify storage math:io temp set value {fvec:[0.0d,1.0d,0.0d],pos:[0.0d,-59.9d,0.0d]}
data modify storage math:io test.stemp set value []
scoreboard players set min int 1
scoreboard players set max int 5
function math:_random
scoreboard players set min int -20000
scoreboard players set max int 20000
scoreboard players operation loop int = random int
execute if score loop int matches 1.. run function vve:test/loop2