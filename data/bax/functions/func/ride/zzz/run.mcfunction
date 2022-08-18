scoreboard players set w bax.temp 0
scoreboard players set a bax.temp 0
scoreboard players set s bax.temp 0
scoreboard players set d bax.temp 0
scoreboard players set dir bax.temp 0
execute if score z bax.temp matches 0 if score x bax.temp matches 0 run scoreboard players set dir bax.temp -999
execute unless score dir bax.temp matches -999 run function bax:func/ride/zzz/calc_range