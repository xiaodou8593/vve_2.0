#vve:test/box
summon interaction 0.0 0.0 0.0 {Tags:["tmp"]}
execute positioned 0.0 0.5 0.0 as @e[tag=tmp,limit=1] if entity @s[dx=0,dy=0,dz=0] run say 1
execute positioned 0.0 1.5 0.0 as @e[tag=tmp,limit=1] if entity @s[dx=0,dy=0,dz=0] run say 2
tp @e[tag=tmp,limit=1] 0.0 1.0 0.0
execute positioned 0.0 1.5 0.0 as @e[tag=tmp,limit=1] if entity @s[dx=0,dy=0,dz=0] run say 3
kill @e[tag=tmp]