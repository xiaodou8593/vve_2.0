#vve:tick
execute unless entity 0-0-0-8593-1 run function math:marker/_uuid
scoreboard players operation vve_tickloop int = vve_simrate int
execute if score vve_tickloop int matches 1.. run function vve:tick_loop