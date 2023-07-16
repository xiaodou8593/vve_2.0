#vve:test/explode

#scoreboard players operation test int = rand_seed int
scoreboard players operation rand_seed int = test int

execute as @e[tag=vve_obj] run function vve:_del
clone 3 -64 5 11 -62 13 3 -61 5

summon tnt 7 -60 9 {Fuse:50}

data modify storage math:io input set value {time:50,rate:15,impulse:35,distance:6.5,pos:[7.5d,-60.0d,9.5d]}
function vve:exploder/_new