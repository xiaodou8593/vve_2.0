#vve:exploder/_new

tag @e remove result
summon marker 0 11 0 {Tags:["result","vve_exploder"],CustomName:'{"text":"vve_exploder"}'}
execute as @e[tag=result,limit=1] run function vve:exploder/set