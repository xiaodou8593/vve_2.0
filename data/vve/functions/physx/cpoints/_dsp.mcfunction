#vve:physx/cpoints/_dsp
scoreboard players set temp_cnt int 0
data modify storage math:io temp set value []
scoreboard players operation tempid int = @s id
execute as @e[tag=vve_cube,distance=..16,tag=!free] if score @s vve_root = tempid int run function vve:physx/cpoints/get
execute if score temp_cnt int matches 1.. as @e[tag=math_marker,limit=1] run function vve:physx/cpoints/dsp_loop