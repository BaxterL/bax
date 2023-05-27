execute store result score #_a int run time query daytime
scoreboard players operation #_a int *= 100 int
scoreboard players operation #_a int /= 24 int
scoreboard players operation #_a int -= 25000 int

scoreboard players operation #_b int = #_a int
scoreboard players operation #_b int /= 100000 int
scoreboard players operation #_b int *= 100000 int

scoreboard players operation #_a int -= #_b int

scoreboard players operation #_c int = #_a int
scoreboard players operation #_c int *= 240 int

scoreboard players operation #_d int = #_a int
scoreboard players operation #_d int *= 180 int
execute summon minecraft:marker run function bax:func/sun_ray/cos
scoreboard players operation #_d int *= 60 int

scoreboard players operation #_c int -= #_d int
scoreboard players operation #_c int += 15000000 int
scoreboard players operation #_c int %= 36000000 int
#360-sun_angle=moon_angle
scoreboard players operation $_angle_of_sun int = #_c int