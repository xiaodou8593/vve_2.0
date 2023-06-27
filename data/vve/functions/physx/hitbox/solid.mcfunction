#vve:physx/hitbox/solid
execute align xyz run tp @s ~0.5 ~0.5 ~0.5
execute store result score sstempx0 int run data get entity @s Pos[0] 10000
execute store result score sstempy0 int run data get entity @s Pos[1] 10000
execute store result score sstempz0 int run data get entity @s Pos[2] 10000
scoreboard players operation sstempy int = 3vec_y int
scoreboard players operation sstempy int -= sstempy0 int

execute if score sstempy int matches 5001.. run function vve:physx/hitbox/solid/return_surface
execute if score sstempy int matches ..5000 at @s run function vve:physx/hitbox/solid/return_push