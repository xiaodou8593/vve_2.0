#vve:physx/surface_dsp
tp @s ^ ^ ^1.0
execute store result score sstempx int run data get entity @s Pos[0] 10000
execute store result score sstempy int run data get entity @s Pos[1] 10000
execute store result score sstempz int run data get entity @s Pos[2] 10000
scoreboard players operation sstempx int *= res int
scoreboard players operation sstempy int *= res int
scoreboard players operation sstempz int *= res int
scoreboard players operation sstempx int /= 10000 int
scoreboard players operation sstempy int /= 10000 int
scoreboard players operation sstempz int /= 10000 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation sstempx int += stempx int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation sstempy int += stempy int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation sstempz int += stempz int
execute at @s run function math:particle/_dsp
#循环
scoreboard players remove loop int 1
execute if score loop int matches 1.. rotated ~3.0 0.0 run function vve:physx/surface_dsp