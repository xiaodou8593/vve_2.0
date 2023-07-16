#vve:exploder/set

data modify entity @s Pos set from storage math:io input.pos

execute store result score @s vve_exploder_time run data get storage math:io input.time
execute store result score @s vve_exploder_rate run data get storage math:io input.rate
execute store result score @s vve_exploder_dist run data get storage math:io input.distance 100
execute store result score @s vve_exploder_impulse run data get storage math:io input.impulse

data modify entity @s data.list set value []

schedule function vve:exploder/tick 1t replace