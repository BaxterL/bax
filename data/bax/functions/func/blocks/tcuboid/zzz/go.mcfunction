tp @s ~ ~ ~
function bax:lib/math/store_pos0

scoreboard players operation #x int = #x0 int
scoreboard players operation #y int = #y0 int
scoreboard players operation #z int = #z0 int
function bax:lib/math/modify_pos

scoreboard players operation #maxx int = #x0 int
scoreboard players operation #maxy int = #y0 int
scoreboard players operation #maxz int = #z0 int
scoreboard players operation #maxx int += dx int
scoreboard players operation #maxy int += dy int
scoreboard players operation #maxz int += dz int
scoreboard players remove #maxx int 1000
scoreboard players remove #maxy int 1000
scoreboard players remove #maxz int 1000

execute at @s run function bax:func/blocks/tcuboid/zzz/forx