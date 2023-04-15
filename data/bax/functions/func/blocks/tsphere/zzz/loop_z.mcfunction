tp @s ~ ~ ~
execute store result score #z int run data get entity @s Pos[2] 1000

function bax:lib/distance_pos0
execute if score res int <= r int run function bax:func/blocks/tsphere/zzz/run

execute if score #z int <= #maxz int positioned ~ ~ ~1 run function bax:func/blocks/tsphere/zzz/loop_z