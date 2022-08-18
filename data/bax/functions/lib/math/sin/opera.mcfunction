execute store result entity @s Rotation[0] float 0.001 run scoreboard players get $input bax.sys
execute rotated as @s rotated ~ 0 positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score result bax.sys run data get entity @s Pos[0] 1000
scoreboard players operation result bax.sys *= -1 int