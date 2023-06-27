#vve:display/backwrite
execute as @e[tag=math_marker,limit=1] run function math:qrot/_get
data modify storage math:io xyzw set from storage math:io stemp