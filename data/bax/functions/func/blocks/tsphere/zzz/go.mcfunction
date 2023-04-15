tp @s ~ ~ ~
function bax:lib/math/store_pos0

scoreboard players operation #x int = #x0 int
scoreboard players operation #y int = #y0 int
scoreboard players operation #z int = #z0 int
#scoreboard players operation r int *= 1000 int
scoreboard players operation #x int -= r int
scoreboard players operation #y int -= r int
scoreboard players operation #z int -= r int
function bax:lib/math/modify_pos

scoreboard players operation #maxx int = #x0 int
scoreboard players operation #maxy int = #y0 int
scoreboard players operation #maxz int = #z0 int
scoreboard players operation #maxx int += r int
scoreboard players operation #maxy int += r int
scoreboard players operation #maxz int += r int
scoreboard players remove #maxx int 1000
scoreboard players remove #maxy int 1000
scoreboard players remove #maxz int 1000

execute at @s run function bax:func/blocks/tsphere/zzz/loop_x