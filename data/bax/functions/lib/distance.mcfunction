#> bax:lib/distance -> lib
#input @e[tag=bax.distance_1] @e[tag=bax.distance_2]
#ouput result bax.sys
execute store result score result bax.sys run data get entity @e[tag=bax.distance_1,limit=1] Pos[0] 100000
execute store result score #temp1 bax.temp run data get entity @e[tag=bax.distance_2,limit=1] Pos[0] 100000

scoreboard players operation result bax.sys -= #temp1 bax.temp
execute if score result bax.sys matches ..-1 run scoreboard players operation result bax.sys *= -1 int

execute store result score #temp1 bax.temp run data get entity @e[tag=bax.distance_1,limit=1] Pos[1] 100000
execute store result score #temp2 bax.temp run data get entity @e[tag=bax.distance_2,limit=1] Pos[1] 100000
scoreboard players operation #temp1 bax.temp -= #temp2 bax.temp
execute if score #temp1 bax.temp matches ..-1 run scoreboard players operation #temp1 bax.temp *= -1 int
scoreboard players operation result bax.sys += #temp1 bax.temp

execute store result score #temp1 bax.temp run data get entity @e[tag=bax.distance_1,limit=1] Pos[2] 100000
execute store result score #temp2 bax.temp run data get entity @e[tag=bax.distance_2,limit=1] Pos[2] 100000
scoreboard players operation #temp1 bax.temp -= #temp2 bax.temp
execute if score #temp1 bax.temp matches ..-1 run scoreboard players operation #temp1 bax.temp *= -1 int
scoreboard players operation result bax.sys += #temp1 bax.temp

function bax:lib/math/check_math_marker
execute as @e[type=marker,tag=math_marker] at @e[tag=bax.distance_1] facing entity @e[tag=bax.distance_2,limit=1] feet positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp @s ~ ~ ~

execute store result score #temp1 bax.temp run data get entity @e[type=marker,tag=math_marker,limit=1] Pos[0] 1000
execute if score #temp1 bax.temp matches ..-1 run scoreboard players operation #temp1 bax.temp *= -1 int
execute store result score #temp2 bax.temp run data get entity @e[type=marker,tag=math_marker,limit=1] Pos[1] 1000
execute if score #temp2 bax.temp matches ..-1 run scoreboard players operation #temp2 bax.temp *= -1 int
scoreboard players operation #temp1 bax.temp += #temp2 bax.temp
execute store result score #temp2 bax.temp run data get entity @e[type=marker,tag=math_marker,limit=1] Pos[2] 1000
execute if score #temp2 bax.temp matches ..-1 run scoreboard players operation #temp2 bax.temp *= -1 int
scoreboard players operation #temp1 bax.temp += #temp2 bax.temp

scoreboard players operation result bax.sys /= #temp1 bax.temp

tag @e remove bax.distance_1
tag @e remove bax.distance_2