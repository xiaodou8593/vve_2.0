#vve:physx/impulse
scoreboard players set temp_cnt int 0

#依次处理冲量
function vve:physx/impulse_loop

execute if score temp_cnt int matches 1.. run function vve:physx/omega/reset