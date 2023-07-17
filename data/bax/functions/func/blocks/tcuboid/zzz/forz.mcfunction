tp @s ~ ~ ~
execute store result score #z int run data get entity @s Pos[2] 1000

function level:init/block_set

execute if score #z int <= #maxz int positioned ~ ~ ~1 run function bax:func/blocks/tcuboid/zzz/forz