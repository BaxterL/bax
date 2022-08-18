scoreboard players operation #temp int = in int
scoreboard players operation #temp1 int = in1 int
execute if score #temp int matches ..-1 run scoreboard players operation #temp int *= -1 int
execute if score #temp1 int matches ..-1 run scoreboard players operation #temp1 int *= -1 int
scoreboard players operation #temp2 int = #temp int
scoreboard players operation #temp2 int < #temp1 int
scoreboard players operation #temp3 int = #temp int
scoreboard players operation #temp3 int > #temp1 int
scoreboard players operation #temp2 int *= 1000 int
scoreboard players operation #temp2 int /= #temp3 int
#
scoreboard players operation #temp3 int = #temp2 int
scoreboard players operation #temp3 int *= #temp3 int
scoreboard players operation #temp3 int /= 1000 int
#
scoreboard players operation out int = #temp3 int
scoreboard players operation out int *= -46496 int
scoreboard players operation out int /= 100000 int
scoreboard players add out int 1593
scoreboard players operation out int *= #temp3 int
scoreboard players operation out int /= 1000 int
scoreboard players remove out int 3276
scoreboard players operation out int *= #temp3 int
scoreboard players operation out int /= 1000 int
scoreboard players operation out int *= #temp2 int
scoreboard players operation out int /= 10000 int
scoreboard players operation out int += #temp2 int
execute if score #temp1 int > #temp int run scoreboard players remove out int 1570
execute if score #temp1 int > #temp int run scoreboard players operation out int *= -1 int
execute if score in int matches ..-1 run scoreboard players remove out int 3141
execute if score in int matches ..-1 run scoreboard players operation out int *= -1 int
execute if score in1 int matches ..-1 run scoreboard players operation out int *= -1 int
#
scoreboard players operation out int *= 57295 int
scoreboard players operation out int /= 1000000 int