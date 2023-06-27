#vve:physx/cpoints/dsp_loop
data modify entity @s Pos set from storage math:io temp[0].xyz
execute at @s run function math:particle/_dsp
#循环
data remove storage math:io temp[0]
scoreboard players remove temp_cnt int 1
execute if score temp_cnt int matches 1.. run function vve:physx/cpoints/dsp_loop