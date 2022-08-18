tag @s add bax.temp

execute as @e[tag=bax.rotation,type=marker] facing entity @e[tag=bax.temp] feet run tp @s ~ ~ ~ ~ ~
execute store result score @s bax.rot run data get entity @e[tag=bax.rotation,limit=1,type=marker] Rotation[0] 10000
scoreboard players operation @s bax.rot -= @e[tag=bax.rotation,type=marker] bax.rot

execute if score @s bax.rot matches ..0 run scoreboard players operation @s bax.rot *= -1 int

execute if score @s bax.rot matches 1800000.. run scoreboard players remove @s bax.rot 3600000
execute if score @s bax.rot matches ..0 run scoreboard players operation @s bax.rot *= -1 int

execute if score @s bax.rot <= #aim bax.rot at @s run function #bax:generic/event/sector

tag @s remove bax.temp