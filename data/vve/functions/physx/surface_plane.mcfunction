#vve:physx/surface_plane
tp @s ^1.0 ^ ^
execute store result score stempi0 int run data get entity @s Pos[0] 10000
execute store result score stempi2 int run data get entity @s Pos[2] 10000
tp @s ^ ^1.0 ^
execute store result score stempj0 int run data get entity @s Pos[0] 10000
execute store result score stempj1 int run data get entity @s Pos[1] 10000
execute store result score stempj2 int run data get entity @s Pos[2] 10000
tp @s ^ ^ ^1.0
execute store result score stempk0 int run data get entity @s Pos[0] 10000
execute store result score stempk1 int run data get entity @s Pos[1] 10000
execute store result score stempk2 int run data get entity @s Pos[2] 10000