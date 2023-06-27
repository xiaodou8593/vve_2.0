#vve:physx/omega/_mult
#输入vve_obj为执行者，输入橙子{<inp,int>}，修改角速度大小，不改变方向
scoreboard players set stemp_sign int 1
execute if score @s vve_omega matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation @s vve_omega *= stemp_sign int
scoreboard players operation @s vve_omega *= inp int
scoreboard players operation @s vve_omega /= 10000 int
scoreboard players operation @s vve_omega *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score @s vve_omegax matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation @s vve_omegax *= stemp_sign int
scoreboard players operation @s vve_omegax *= inp int
scoreboard players operation @s vve_omegax /= 10000 int
scoreboard players operation @s vve_omegax *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score @s vve_omegay matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation @s vve_omegay *= stemp_sign int
scoreboard players operation @s vve_omegay *= inp int
scoreboard players operation @s vve_omegay /= 10000 int
scoreboard players operation @s vve_omegay *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score @s vve_omegaz matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation @s vve_omegaz *= stemp_sign int
scoreboard players operation @s vve_omegaz *= inp int
scoreboard players operation @s vve_omegaz /= 10000 int
scoreboard players operation @s vve_omegaz *= stemp_sign int