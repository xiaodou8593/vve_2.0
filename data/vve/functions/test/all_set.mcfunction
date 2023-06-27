#vve:test/all_set
data modify storage math:io test set value []
data modify storage math:io test[].a set value 1b
tellraw @a {"nbt":"test","storage":"math:io"}