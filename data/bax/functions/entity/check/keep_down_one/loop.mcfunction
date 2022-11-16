execute store result storage bax:data temp_y double 1 run scoreboard players remove y int 1
scoreboard players set bool int 1
execute at @e[tag=bax.target] run function bax:entity/check/keep_down_one/check
execute if score bool int matches 1 run function bax:entity/check/keep_down_one/loop