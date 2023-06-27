#vve:_die
scoreboard players operation tempid int = @s id
execute at @s as @e[distance=..16,tag=vve_node,tag=!free] if score @s int = tempid int run function vve:die_branch
kill @s