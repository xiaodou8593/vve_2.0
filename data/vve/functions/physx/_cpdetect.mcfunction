#vve:physx/_cpdetect
scoreboard players set res int -1

execute if score res int matches -1 unless block ~ ~ ~ #vve:pass run function vve:physx/hitbox/solid
execute if score res int matches -1 unless block ~ ~-0.025 ~ #vve:pass positioned ~ ~-0.025 ~ run function vve:physx/hitbox/solid