#vve:test/qrot_1

scoreboard players set qrot_x int 6573
scoreboard players set qrot_y int -28
scoreboard players set qrot_z int 6607
scoreboard players set qrot_w int 11

function math:qrot/pose/_xyzwto
scoreboard players operation 3vec_x int = vve_omegax int
scoreboard players operation 3vec_y int = vve_omegay int
scoreboard players operation 3vec_z int = vve_omegaz int
function math:qrot/axis/_xyzto
scoreboard players operation vve_omega int = qrot_alpha int
scoreboard players set qrot_alpha int 0