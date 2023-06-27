#vve:physx/mass/_dsp
function math:uvw/_get
scoreboard players operation u int = @s vve_mcu
scoreboard players operation v int = @s vve_mcv
scoreboard players operation w int = @s vve_mcw
execute as @e[tag=math_marker,limit=1] run function math:uvw/_topos
execute at @e[tag=math_marker,limit=1] run function math:particle/_dsp