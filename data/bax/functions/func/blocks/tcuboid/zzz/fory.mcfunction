tp @s ~ ~ ~
execute store result score #y int run data get entity @s Pos[1] 1000

function bax:func/blocks/tcuboid/zzz/forz

execute if score #y int <= #maxy int positioned ~ ~1 ~ run function bax:func/blocks/tcuboid/zzz/fory