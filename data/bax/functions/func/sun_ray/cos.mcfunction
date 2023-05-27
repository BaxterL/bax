tp @s 0.0 0.0 0.0
execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get #_d int
execute at @s run tp @s ^ ^ ^1
execute store result score #_d int run data get entity @s Pos[2] 100000
kill @s