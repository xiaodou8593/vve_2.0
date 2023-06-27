#vve:test/run1
tp @s ~ ~ ~
execute store result score 3vec_x int run data get entity @s Pos[0] 10000
execute store result score 3vec_y int run data get entity @s Pos[1] 10000
execute store result score 3vec_z int run data get entity @s Pos[2] 10000

function math:particle/_dsp

function vve:physx/_cpdetect
tellraw @a "---"
tellraw @a {"score":{"name":"res","objective":"int"}}
execute if score res int matches 0..1 run tellraw @a [{"text":"fvec:["},{"score":{"name":"fvec_x","objective":"int"}},{"text":","},{"score":{"name":"fvec_y","objective":"int"}},{"text":","},{"score":{"name":"fvec_z","objective":"int"}},{"text":"]"}]
execute if score res int matches 0 run tellraw @a [{"text":"midpos:["},{"score":{"name":"midpos_x","objective":"int"}},{"text":","},{"score":{"name":"midpos_y","objective":"int"}},{"text":","},{"score":{"name":"midpos_z","objective":"int"}},{"text":"]"}]