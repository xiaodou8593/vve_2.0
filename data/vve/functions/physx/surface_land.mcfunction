#vve:physx/surface_land

#point0
execute store result score sstempu int run data get storage math:io stemp[0].uvw[0] 10000
execute store result score sstempv int run data get storage math:io stemp[0].uvw[1] 10000
execute store result score sstempw int run data get storage math:io stemp[0].uvw[2] 10000
execute store result score stempu0 int run data get storage math:io stemp[0].xyz[0] 10000
execute store result score stempv0 int run data get storage math:io stemp[0].xyz[1] 10000
execute store result score stempw0 int run data get storage math:io stemp[0].xyz[2] 10000
execute store result score stempx0 int run data get storage math:io stemp[0].pos[0] 10000
execute store result score stempy0 int run data get storage math:io stemp[0].pos[1] 10000
execute store result score stempz0 int run data get storage math:io stemp[0].pos[2] 10000
#tellraw @a ["stemp_xyz: [",{"score":{"name":"stempx0","objective":"int"}},{"text":","},{"score":{"name":"stempy0","objective":"int"}},{"text":","},{"score":{"name":"stempz0","objective":"int"}},{"text":"]"}]
data remove storage math:io stemp[0]

#vec1
execute store result score stempx1 int run data get storage math:io stemp[0].pos[0] 10000
execute store result score stempy1 int run data get storage math:io stemp[0].pos[1] 10000
execute store result score stempz1 int run data get storage math:io stemp[0].pos[2] 10000
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stempx1 int -= stempx0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation stempy1 int -= stempy0 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stempz1 int -= stempz0 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score stempx1 int run data get entity @s Pos[0] 10000
execute store result score stempy1 int run data get entity @s Pos[1] 10000
execute store result score stempz1 int run data get entity @s Pos[2] 10000
execute store result score stempu1 int run data get storage math:io stemp[0].xyz[0] 10000
execute store result score stempv1 int run data get storage math:io stemp[0].xyz[1] 10000
execute store result score stempw1 int run data get storage math:io stemp[0].xyz[2] 10000
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stempu1 int -= stempu0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation stempv1 int -= stempv0 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stempw1 int -= stempw0 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score stempu1 int run data get entity @s Pos[0] 10000
execute store result score stempv1 int run data get entity @s Pos[1] 10000
execute store result score stempw1 int run data get entity @s Pos[2] 10000

#vec2
scoreboard players set stemp0 int 120000000
data remove storage math:io stemp[0]
scoreboard players remove stemp_cnt int 2
execute if score stemp_cnt int matches 1.. run function vve:physx/surface_vec

#tellraw @a "---"
#tellraw @a ["xyz: [",{"score":{"name":"x","objective":"int"}},{"text":","},{"score":{"name":"y","objective":"int"}},{"text":","},{"score":{"name":"z","objective":"int"}},{"text":"]"}]
#tellraw @a ["point0_now: [",{"score":{"name":"stempu0","objective":"int"}},{"text":","},{"score":{"name":"stempv0","objective":"int"}},{"text":","},{"score":{"name":"stempw0","objective":"int"}},{"text":"]"}]
#tellraw @a ["point0_mid: [",{"score":{"name":"stempx0","objective":"int"}},{"text":","},{"score":{"name":"stempy0","objective":"int"}},{"text":","},{"score":{"name":"stempz0","objective":"int"}},{"text":"]"}]
#tellraw @a ["vec1_now: [",{"score":{"name":"stempu1","objective":"int"}},{"text":","},{"score":{"name":"stempv1","objective":"int"}},{"text":","},{"score":{"name":"stempw1","objective":"int"}},{"text":"]"}]
#tellraw @a ["vec1_mid: [",{"score":{"name":"stempx1","objective":"int"}},{"text":","},{"score":{"name":"stempy1","objective":"int"}},{"text":","},{"score":{"name":"stempz1","objective":"int"}},{"text":"]"}]
#tellraw @a ["vec2_now: [",{"score":{"name":"stempu2","objective":"int"}},{"text":","},{"score":{"name":"stempv2","objective":"int"}},{"text":","},{"score":{"name":"stempw2","objective":"int"}},{"text":"]"}]
#tellraw @a ["stempk: [",{"score":{"name":"stempk0","objective":"int"}},{"text":","},{"score":{"name":"stempk1","objective":"int"}},{"text":","},{"score":{"name":"stempk2","objective":"int"}},{"text":"]"}]
#tellraw @a ["qrot_xyzw: [",{"score":{"name":"qrot_x","objective":"int"}},{"text":","},{"score":{"name":"qrot_y","objective":"int"}},{"text":","},{"score":{"name":"qrot_z","objective":"int"}},{"text":","},{"score":{"name":"qrot_w","objective":"int"}},{"text":"]"}]

scoreboard players operation 3vec_x int = stempu1 int
scoreboard players operation 3vec_y int = stempv1 int
scoreboard players operation 3vec_z int = stempw1 int
#第二次旋转_pre
#function math:uvw/_fvecto
#scoreboard players operation stempu1 int = u int
#scoreboard players operation stempv1 int = v int
#scoreboard players operation stempw1 int = w int

scoreboard players operation @s 3vec_x = stempu2 int
scoreboard players operation @s 3vec_y = stempv2 int
scoreboard players operation @s 3vec_z = stempw2 int
function math:3vec/_cross
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get 3vec_x int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get 3vec_y int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get 3vec_z int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score 3vec_x int run data get entity @s Pos[0] 10000
execute store result score 3vec_y int run data get entity @s Pos[1] 10000
execute store result score 3vec_z int run data get entity @s Pos[2] 10000
scoreboard players operation sstemp0 int = 3vec_x int
scoreboard players operation sstemp0 int *= stempk0 int
scoreboard players operation sstemp1 int = 3vec_y int
scoreboard players operation sstemp1 int *= stempk1 int
scoreboard players operation sstemp0 int += sstemp1 int
scoreboard players operation sstemp1 int = 3vec_z int
scoreboard players operation sstemp1 int *= stempk2 int
scoreboard players operation sstemp0 int += sstemp1 int
#第二次旋转_sign
#scoreboard players set stemp_sign int 1
execute if score sstemp0 int matches ..-1 run function vve:physx/surface_resign
scoreboard players operation stempu2 int = 3vec_x int
scoreboard players operation stempv2 int = 3vec_y int
scoreboard players operation stempw2 int = 3vec_z int

#第一次旋转
#tellraw @a "---第一次旋转---"
#tellraw @a ["vec2_now: [",{"score":{"name":"stempu2","objective":"int"}},{"text":","},{"score":{"name":"stempv2","objective":"int"}},{"text":","},{"score":{"name":"stempw2","objective":"int"}},{"text":"]"}]
#tellraw @a ["stempk: [",{"score":{"name":"stempk0","objective":"int"}},{"text":","},{"score":{"name":"stempk1","objective":"int"}},{"text":","},{"score":{"name":"stempk2","objective":"int"}},{"text":"]"}]
scoreboard players operation sstemp0 int = stempu2 int
scoreboard players operation sstemp0 int -= stempk0 int
scoreboard players operation sstemp0 int *= sstemp0 int
scoreboard players operation sstemp1 int = stempv2 int
scoreboard players operation sstemp1 int -= stempk1 int
scoreboard players operation sstemp1 int *= sstemp1 int
scoreboard players operation sstemp0 int += sstemp1 int
scoreboard players operation sstemp1 int = stempw2 int
scoreboard players operation sstemp1 int -= stempk2 int
scoreboard players operation sstemp1 int *= sstemp1 int
scoreboard players operation sstemp0 int += sstemp1 int
#tellraw @a ["sstemp0: ",{"score":{"name":"sstemp0","objective":"int"}}]
execute if score sstemp0 int matches 80000.. run function vve:physx/surface_next

#第二次旋转
#scoreboard players operation u int = stempu1 int
#scoreboard players operation v int = stempv1 int
#scoreboard players operation w int = stempw1 int
#function math:uvw/_tofvec
#scoreboard players operation stempu1 int = 3vec_x int
#scoreboard players operation stempv1 int = 3vec_y int
#scoreboard players operation stempw1 int = 3vec_z int
#function math:qrot/pose/_xyzwto
#scoreboard players operation 3vec_x int = stempk0 int
#scoreboard players operation 3vec_y int = stempk1 int
#scoreboard players operation 3vec_z int = stempk2 int
#function math:qrot/axis/_vecto
#scoreboard players operation @s 3vec_x = stempu1 int
#scoreboard players operation @s 3vec_y = stempv1 int
#scoreboard players operation @s 3vec_z = stempw1 int
#scoreboard players operation @s 3vec_x *= stempx1 int
#scoreboard players operation @s 3vec_y *= stempy1 int
#scoreboard players operation @s 3vec_z *= stempz1 int
#scoreboard players operation @s 3vec_x += @s 3vec_y
#scoreboard players operation @s 3vec_x += @s 3vec_z
#scoreboard players operation @s 3vec_y = @s 3vec_x
#execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation @s 3vec_x /= 10000 int
#scoreboard players operation @s 3vec_y %= 10000 int
#scoreboard players operation @s 3vec_y *= @s 3vec_x
#scoreboard players operation @s 3vec_y /= 5000 int
#scoreboard players operation @s 3vec_x *= @s 3vec_x
#scoreboard players operation @s 3vec_x += @s 3vec_y
#scoreboard players set inp int 100000000
#scoreboard players operation inp int -= @s 3vec_x
#function math:_sqrt
#execute store result entity @s Pos[0] double 0.0001 run scoreboard players get res int
#execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ~ ~ ~ ~ ~
#execute store result score qrot_alpha int run data get entity @s Rotation[0] -5000
#scoreboard players operation qrot_alpha int *= stemp_sign int
#function math:qrot/_xyzw
#function math:qrot/_ex-uvw

#function math:uvw/_ssprint
#tellraw @a ["point0_now: [",{"score":{"name":"stempu0","objective":"int"}},{"text":","},{"score":{"name":"stempv0","objective":"int"}},{"text":","},{"score":{"name":"stempw0","objective":"int"}},{"text":"]"}]
scoreboard players operation u int = sstempu int
scoreboard players operation v int = sstempv int
scoreboard players operation w int = sstempw int
function math:uvw/_tovec
#tellraw @a ["stemp_xyz: [",{"score":{"name":"stempx0","objective":"int"}},{"text":","},{"score":{"name":"stempy0","objective":"int"}},{"text":","},{"score":{"name":"stempz0","objective":"int"}},{"text":"]"}]
scoreboard players operation 3vec_x int -= stempx0 int
scoreboard players operation 3vec_y int -= stempy0 int
scoreboard players operation 3vec_z int -= stempz0 int
scoreboard players operation x int -= 3vec_x int
scoreboard players operation y int -= 3vec_y int
scoreboard players operation z int -= 3vec_z int
#tellraw @a ["xyz: [",{"score":{"name":"x","objective":"int"}},{"text":","},{"score":{"name":"y","objective":"int"}},{"text":","},{"score":{"name":"z","objective":"int"}},{"text":"]"}]

data modify storage math:io vve_impulse set value {fvec:[0.0d,0.0d,0.0d],set_v:[0.0d,0.0d,0.0d],set_omega:[0.0f,0.0f,0.0f]}
scoreboard players operation sstemp0 int = vve_vx int
scoreboard players operation sstemp0 int *= stempk0 int
scoreboard players operation sstemp1 int = vve_vy int
scoreboard players operation sstemp1 int *= stempk1 int
scoreboard players operation sstemp0 int += sstemp1 int
scoreboard players operation sstemp1 int = vve_vz int
scoreboard players operation sstemp1 int *= stempk2 int
scoreboard players operation sstemp0 int += sstemp1 int
scoreboard players operation sstemp0 int /= 10000 int
scoreboard players operation sstemp2 int = stempk0 int
scoreboard players operation sstemp2 int *= sstemp0 int
scoreboard players operation sstemp2 int /= 10000 int
execute store result storage math:io vve_impulse.set_v[0] double -0.0001 run scoreboard players operation sstemp2 int -= vve_vx int
scoreboard players operation sstemp2 int = stempk1 int
scoreboard players operation sstemp2 int *= sstemp0 int
scoreboard players operation sstemp2 int /= 10000 int
execute store result storage math:io vve_impulse.set_v[1] double -0.0001 run scoreboard players operation sstemp2 int -= vve_vy int
scoreboard players operation sstemp2 int = stempk2 int
scoreboard players operation sstemp2 int *= sstemp0 int
scoreboard players operation sstemp2 int /= 10000 int
execute store result storage math:io vve_impulse.set_v[2] double -0.0001 run scoreboard players operation sstemp2 int -= vve_vz int
scoreboard players operation sstemp0 int = vve_omegax int
scoreboard players operation sstemp0 int *= stempk0 int
scoreboard players operation sstemp1 int = vve_omegay int
scoreboard players operation sstemp1 int *= stempk1 int
scoreboard players operation sstemp0 int += sstemp1 int
scoreboard players operation sstemp1 int = vve_omegaz int
scoreboard players operation sstemp1 int *= stempk2 int
scoreboard players operation sstemp0 int += sstemp1 int
scoreboard players operation sstemp1 int = sstemp0 int
scoreboard players operation sstemp0 int /= 10000 int
execute store result storage math:io vve_impulse.set_omega[0] double 0.00000001 run scoreboard players operation stempk0 int *= sstemp0 int
execute store result storage math:io vve_impulse.set_omega[1] double 0.00000001 run scoreboard players operation stempk1 int *= sstemp0 int
execute store result storage math:io vve_impulse.set_omega[2] double 0.00000001 run scoreboard players operation stempk2 int *= sstemp0 int
#tellraw @a {"nbt":"vve_impulse","storage":"math:io"}
data modify storage math:io list_impulse prepend from storage math:io vve_impulse
scoreboard players add impulse_cnt int 1
#tellraw @a ["qrot_xyzw: [",{"score":{"name":"qrot_x","objective":"int"}},{"text":","},{"score":{"name":"qrot_y","objective":"int"}},{"text":","},{"score":{"name":"qrot_z","objective":"int"}},{"text":","},{"score":{"name":"qrot_w","objective":"int"}},{"text":"]"}]

scoreboard players set vve_surface int 1

#暂停模拟
#tellraw @a "ready to surface！"
#tellraw @a "land"
#scoreboard players set vve_simrate int 0
#scoreboard players set vve_tickloop int 1