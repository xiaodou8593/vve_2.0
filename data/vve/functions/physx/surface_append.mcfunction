#vve:physx/surface_append
scoreboard players add stemp_cnt int 1
data modify storage math:io stemp append from storage math:io temp[-1]
data modify storage math:io stemp[-1].pos set from storage math:io midpos_xyz
data modify storage math:io stemp[-1].fvec set from storage math:io fvec_xyz
data modify storage math:io stemp[-1].friction set from storage math:io surface_friction