#vve:simtick
#重力阻力
execute unless score vve_state int matches -1 run function vve:physx/fricgrav
#依次访问碰撞点
data modify storage math:io classify set value []
scoreboard players set classify_cnt int 0
data modify storage math:io stemp set value []
scoreboard players set stemp_cnt int 0
execute if score temp_cnt int matches 1.. run function vve:physx/cpoints/loop
#撞击冲量
execute if score classify_cnt int matches 1.. positioned 0 -85 0 as @e[tag=uuid_marker,limit=1,type=item,distance=..1] run function vve:physx/collision_cal
#着陆处理
execute if score stemp_cnt int matches 1.. run function vve:physx/surface_cal
#冲量处理
#execute if score impulse_cnt int matches 1.. run scoreboard players set vve_simrate int 0
execute if score impulse_cnt int matches 1.. run function vve:physx/impulse
#速度迭代
scoreboard players operation x int += vve_vx int
scoreboard players operation y int += vve_vy int
scoreboard players operation z int += vve_vz int
#角速度迭代
scoreboard players operation qrot_alpha int += vve_omega int
function math:qrot/_xyzw
function math:qrot/_ex-uvw