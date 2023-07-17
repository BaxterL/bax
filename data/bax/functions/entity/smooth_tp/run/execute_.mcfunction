execute positioned ^ ^ ^3.5 run summon marker ~ ~ ~ {Tags:["bax.st_temp"]}

execute as @e[limit=1,tag=bax.st_temp,sort=nearest] at @s facing entity @e[limit=1,tag=bax.st_target,sort=nearest] feet positioned ^ ^ ^0.5 run summon marker ~ ~ ~ {Tags:["bax.st_temp1"]}

execute positioned ^ ^ ^3 if entity @e[tag=bax.st_temp1,distance=..0.1] as @e[limit=1,tag=bax.st_temp1,sort=nearest] run tp ~ ~ ~0.2
execute facing entity @e[limit=1,tag=bax.st_temp1,sort=nearest] feet run tp ~ ~ ~

kill @e[tag=bax.st_temp,limit=1]
kill @e[tag=bax.st_temp1,limit=1]