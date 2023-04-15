tp @s ~ ~ ~
execute store result score #x int run data get entity @s Pos[0] 1000

function bax:func/blocks/tcuboid/zzz/fory

execute if score #x int <= #maxx int positioned ~1 ~ ~ run function bax:func/blocks/tcuboid/zzz/forx