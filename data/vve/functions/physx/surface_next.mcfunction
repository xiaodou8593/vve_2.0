#vve:physx/surface_next

function math:qrot/pose/_xyzwto
scoreboard players operation @s 3vec_x = stempk0 int
scoreboard players operation @s 3vec_y = stempk1 int
scoreboard players operation @s 3vec_z = stempk2 int
function math:3vec/_cross
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get 3vec_x int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get 3vec_y int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get 3vec_z int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score 3vec_x int run data get entity @s Pos[0] 10000
execute store result score 3vec_y int run data get entity @s Pos[1] 10000
execute store result score 3vec_z int run data get entity @s Pos[2] 10000
function math:qrot/axis/_vecto
scoreboard players operation @s 3vec_x *= stempu2 int
scoreboard players operation @s 3vec_y *= stempv2 int
scoreboard players operation @s 3vec_z *= stempw2 int
scoreboard players operation @s 3vec_x += @s 3vec_y
scoreboard players operation @s 3vec_x += @s 3vec_z
scoreboard players operation @s 3vec_y = @s 3vec_x
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation @s 3vec_x /= 10000 int
scoreboard players operation @s 3vec_y %= 10000 int
scoreboard players operation @s 3vec_y *= @s 3vec_x
scoreboard players operation @s 3vec_y /= 5000 int
scoreboard players operation @s 3vec_x *= @s 3vec_x
scoreboard players operation @s 3vec_x += @s 3vec_y
scoreboard players set inp int 100000000
scoreboard players operation inp int -= @s 3vec_x
#tellraw @a ["sqrt_inp: ",{"score":{"name":"inp","objective":"int"}}]
function math:_sqrt
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get res int
#tellraw @a ["cos_sin: ",{"nbt":"Pos","entity":"@s"}]
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ~ ~ ~ ~ ~
execute store result score qrot_alpha int run data get entity @s Rotation[0] -5000
#tellraw @a ["qrot_alpha: ",{"score":{"name":"qrot_alpha","objective":"int"}}]
function math:qrot/_xyzw
function math:qrot/_ex-uvw