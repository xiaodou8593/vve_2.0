#vve:physx/surface_range
execute store result score sstempu int run data get storage math:io stemp[-1].pos[0] 10000
execute store result score sstempy1 int run data get storage math:io stemp[-1].pos[1] 10000
execute store result score sstempz int run data get storage math:io stemp[-1].pos[2] 10000
execute store result score sstempv int run scoreboard players operation sstempu int -= stempx int
scoreboard players operation sstempy1 int -= stempy int
execute store result score sstempz1 int run scoreboard players operation sstempz int -= stempz int

#u坐标
scoreboard players operation sstempu int *= stempi0 int
scoreboard players operation sstempz int *= stempi2 int
scoreboard players operation sstempu int += sstempz int
scoreboard players operation sstempu int /= 10000 int

#v坐标
scoreboard players operation sstempv int *= stempj0 int
scoreboard players operation sstempy1 int *= stempj1 int
scoreboard players operation sstempz1 int *= stempj2 int
scoreboard players operation sstempv int += sstempy1 int
scoreboard players operation sstempv int += sstempz1 int
scoreboard players operation sstempv int /= 10000 int

#投影
scoreboard players operation sstempu int *= sstempk0 int
scoreboard players operation sstempv int *= sstempk1 int
scoreboard players operation sstempu int += sstempv int
scoreboard players operation sstempu int /= 10000 int
scoreboard players operation stempd int > sstempu int

#循环
data modify storage math:io stemp prepend from storage math:io stemp[-1]
data remove storage math:io stemp[-1]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function vve:physx/surface_range