scoreboard players operation ry bax.temp = @s wasd
execute store result score @s wasd run data get entity @s Rotation[0] 1.0

scoreboard players operation in int = z bax.temp
scoreboard players operation in1 int = x bax.temp
function bax:func/ride/zzz/atan2
scoreboard players operation dir bax.temp = out int
scoreboard players operation dir bax.temp += ry bax.temp

scoreboard players operation dir bax.temp %= 360 int

execute if score dir bax.temp matches 23..157 run scoreboard players set a bax.temp 1
execute if score dir bax.temp matches 112..248 run scoreboard players set s bax.temp 1
execute if score dir bax.temp matches 203..337 run scoreboard players set d bax.temp 1
execute if score dir bax.temp matches 293..360 run scoreboard players set w bax.temp 1
execute if score dir bax.temp matches 0..67 run scoreboard players set w bax.temp 1

