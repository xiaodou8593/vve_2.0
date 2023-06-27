#vve:physx/mass/rmass_next
scoreboard players operation tempid int = @s id
execute at @s as @e[tag=vve_node,distance=..16,tag=!free] if score @s int = tempid int run function vve:physx/mass/rmass_branch