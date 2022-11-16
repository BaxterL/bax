function bax:lib/math/check_math_marker
execute store result score y int run data get entity @e[tag=bax.target,limit=1] Pos[1]
execute as @e[tag=math_marker,limit=1] run function bax:entity/check/keep_down_one/loop
scoreboard players add y int 1
execute as @e[tag=marker] store result entity @s Pos[1] double 1 run scoreboard players get y int