#vve:physx/omega/_ssmult
#输入橙子{<ssinp,int>}，修改临时对象的角速度大小，不改变方向
scoreboard players set stemp_sign int 1
execute if score vve_omega int matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation vve_omega int *= stemp_sign int
scoreboard players operation vve_omega int *= ssinp int
scoreboard players operation vve_omega int /= 10000 int
scoreboard players operation vve_omega int *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score vve_omegax int matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation vve_omegax int *= stemp_sign int
scoreboard players operation vve_omegax int *= ssinp int
scoreboard players operation vve_omegax int /= 10000 int
scoreboard players operation vve_omegax int *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score vve_omegay int matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation vve_omegay int *= stemp_sign int
scoreboard players operation vve_omegay int *= ssinp int
scoreboard players operation vve_omegay int /= 10000 int
scoreboard players operation vve_omegay int *= stemp_sign int

scoreboard players set stemp_sign int 1
execute if score vve_omegaz int matches ..-1 run scoreboard players set stemp_sign int -1
scoreboard players operation vve_omegaz int *= stemp_sign int
scoreboard players operation vve_omegaz int *= ssinp int
scoreboard players operation vve_omegaz int /= 10000 int
scoreboard players operation vve_omegaz int *= stemp_sign int