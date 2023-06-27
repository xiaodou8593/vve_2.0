#vve:display/tolr
execute store success score ssstemp int run data modify entity @s transformation.left_rotation set from storage math:io xyzw
execute if score ssstemp int matches 1 run data modify entity @s start_interpolation set value 0