tp @s ~ ~ ~
execute store result score #x int run data get entity @s Pos[0] 1000

function bax:func/blocks/tsphere/zzz/loop_y

execute if score #x int <= #maxx int positioned ~1 ~ ~ run function bax:func/blocks/tsphere/zzz/loop_x