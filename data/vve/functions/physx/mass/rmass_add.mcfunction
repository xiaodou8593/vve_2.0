#vve:physx/mass/rmass_add
function math:uvw/_get
scoreboard players operation u int = @s vve_mcu
scoreboard players operation v int = @s vve_mcv
scoreboard players operation w int = @s vve_mcw
function math:uvw/_tovec
function math:uvw/_recget
function math:uvw/_vecto

scoreboard players operation u int -= vve_mcu int
scoreboard players operation v int -= vve_mcv int
scoreboard players operation w int -= vve_mcw int
scoreboard players operation u int *= u int
scoreboard players operation v int *= v int
scoreboard players operation w int *= w int
scoreboard players operation u int += v int
scoreboard players operation u int += w int
scoreboard players operation u int /= 10000 int
scoreboard players operation u int *= @s vve_mass
scoreboard players operation vve_rmass int += u int
scoreboard players operation vve_rmass int += @s vve_rmass