#建立记分板
scoreboard objectives add vve_state dummy
scoreboard objectives add vve_omega dummy
scoreboard objectives add vve_omegax dummy
scoreboard objectives add vve_omegay dummy
scoreboard objectives add vve_omegaz dummy
scoreboard objectives add vve_vx dummy
scoreboard objectives add vve_vy dummy
scoreboard objectives add vve_vz dummy
scoreboard objectives add vve_g dummy
scoreboard objectives add vve_root dummy
scoreboard objectives add vve_len_cplist dummy
scoreboard objectives add vve_impulse_cnt dummy
scoreboard objectives add vve_rmass dummy
scoreboard objectives add vve_mass dummy
scoreboard objectives add vve_mcu dummy
scoreboard objectives add vve_mcv dummy
scoreboard objectives add vve_mcw dummy
scoreboard objectives add vve_friction dummy
scoreboard objectives add vve_friction_r dummy
scoreboard objectives add vve_bounce dummy

#常量设置
scoreboard players set vve_simrate int 3
scoreboard players set vve_v0 int 500

#临时对象
data modify storage math:io fvec_xyz set value [0.0d,0.0d,0.0d]
data modify storage math:io midpos_xyz set value [0.0d,0.0d,0.0d]
data modify storage math:io vve_display set value {xyzw:[0.0f,0.0f,0.0f,1.0f]}
data modify storage math:io vve_impulse set value {not_rot:0b,pos:[0.0d,0.0d,0.0d],fvec:[0.0d,0.0d,0.0d]}

#数据模板
data modify storage math:class vve_tags set value {obj:["vve_obj","vve_node","result"]}
data modify storage math:class vve_cubecps set value [[0.5d,0.5d,0.5d],[0.5d,0.5d,-0.5d],[0.5d,-0.5d,0.5d],[0.5d,-0.5d,-0.5d],[-0.5d,0.5d,0.5d],[-0.5d,0.5d,-0.5d],[-0.5d,-0.5d,0.5d],[-0.5d,-0.5d,-0.5d]]