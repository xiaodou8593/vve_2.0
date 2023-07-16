#vve:test/run1
data modify entity @s Item set value {id:"minecraft:glass",Count:1b}
tellraw @a {"nbt":"Item","entity":"@s"}
say @s