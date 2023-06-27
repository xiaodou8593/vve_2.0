#vve:class/test_obj
data modify storage math:io temp set value {gravity:0.0d,friction:[1.0d,1.0d],bounce:1.0d,id:"test_obj",sub_cubes:[],sub_objs:[]}

data modify storage math:io stemp set from storage math:class vve_cubes[{id:"red_cube"}]
data modify storage math:io stemp.uvw set value [1.0d,0.0d,0.0d]
data modify storage math:io temp.sub_cubes append from storage math:io stemp

data modify storage math:io stemp set from storage math:class vve_cubes[{id:"green_cube"}]
data modify storage math:io stemp.uvw set value [0.0d,1.0d,0.0d]
data modify storage math:io temp.sub_cubes append from storage math:io stemp

data modify storage math:io stemp set from storage math:class vve_cubes[{id:"blue_cube"}]
data modify storage math:io stemp.uvw set value [0.0d,0.0d,1.0d]
data modify storage math:io temp.sub_cubes append from storage math:io stemp

data modify storage math:io stemp set from storage math:io temp
data modify storage math:io stemp.uvw set value [0.0d,0.0d,2.5d]
data modify storage math:io stemp.rel_xyzw set value [0.3827f,0.0f,0.0f,0.9239f]
data modify storage math:io temp.sub_objs append from storage math:io stemp

data modify storage math:io stemp.uvw set value [0.0d,2.5d,0.0d]
data modify storage math:io stemp.rel_xyzw set value [-0.3827f,0.0f,0.0f,0.9239f]
data modify storage math:io temp.sub_objs append from storage math:io stemp

data modify storage math:class vve_objs append from storage math:io temp