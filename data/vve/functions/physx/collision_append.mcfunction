#vve:physx/collision_append
execute if score res int matches 1..2 run function vve:physx/load_huge

data modify storage math:io input set value {}
data modify storage math:io input.key set from storage math:io vve_cuuid
data modify storage math:io input.pos set from storage math:io temp[-1].xyz
data modify storage math:io input.fvec set from storage math:io fvec_xyz
execute store result storage math:io input.cv int 1 run scoreboard players get vve_cv int
execute store result storage math:io input.cmass int 1 run scoreboard players get vve_cmass int
execute store result storage math:io input.cbounce int 1 run scoreboard players get vve_cbounce int
function math:classify/_append