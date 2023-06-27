#vve:physx/omega/reset
#tellraw @a "---"
#tellraw @a ["xyzw:[",{"score":{"name":"qrot_x","objective":"int"}},",",{"score":{"name":"qrot_y","objective":"int"}},",",{"score":{"name":"qrot_z","objective":"int"}},",",{"score":{"name":"qrot_w","objective":"int"}},"]"]
function math:qrot/pose/_xyzwto
scoreboard players operation 3vec_x int = vve_omegax int
scoreboard players operation 3vec_y int = vve_omegay int
scoreboard players operation 3vec_z int = vve_omegaz int
#tellraw @a ["3vec:[",{"score":{"name":"3vec_x","objective":"int"}},",",{"score":{"name":"3vec_y","objective":"int"}},",",{"score":{"name":"3vec_z","objective":"int"}},"]"]
function math:qrot/axis/_xyzto
scoreboard players operation vve_omega int = qrot_alpha int
scoreboard players set qrot_alpha int 0