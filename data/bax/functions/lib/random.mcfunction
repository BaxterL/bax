#> bax:lib/random -> lib by xiaodou8593
#input min/max int
#output random int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["temp"]}
execute store result score random int run data get entity @e[tag=temp,limit=1] UUID[0]
execute store result score $stemp int run data get entity @e[tag=temp,limit=1] UUID[1]
scoreboard players operation random int *= $stemp int
kill @e[tag=temp,limit=1]
scoreboard players operation $stemp int = max int
scoreboard players operation $stemp int -= min int
scoreboard players add $stemp int 1
scoreboard players operation random int %= $stemp int
scoreboard players operation random int += min int