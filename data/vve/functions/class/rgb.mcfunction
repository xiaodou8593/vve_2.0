#vve:class/rgb
#red_cube
data modify storage math:io temp set value {rmass:0.625d,mass:7,mass_center:[0.0d,0.0d,0.0d],id:"red_cube",item:{id:"minecraft:red_wool",Count:1b}}
data modify storage math:io temp.collision_points set from storage math:class vve_cubecps
data modify storage math:class vve_cubes append from storage math:io temp

#green_cube
data modify storage math:io temp set value {rmass:0.625d,mass:7,mass_center:[0.0d,0.0d,0.0d],id:"green_cube",item:{id:"minecraft:green_wool",Count:1b}}
data modify storage math:io temp.collision_points set from storage math:class vve_cubecps
data modify storage math:class vve_cubes append from storage math:io temp

#blue_cube
data modify storage math:io temp set value {rmass:0.625d,mass:7,mass_center:[0.0d,0.0d,0.0d],id:"blue_cube",item:{id:"minecraft:blue_wool",Count:1b}}
data modify storage math:io temp.collision_points set from storage math:class vve_cubecps
data modify storage math:class vve_cubes append from storage math:io temp