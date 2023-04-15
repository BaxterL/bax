#> bax:lib/distance -> lib
#input @s and pos0[x0 int;y0 int;z0 int] (输入四位小数)
#ouput res int (输出四位小数)
scoreboard players operation #tempx int = #x0 int
scoreboard players operation #tempy int = #y0 int
scoreboard players operation #tempz int = #z0 int

scoreboard players operation #tempx int /= 10 int
scoreboard players operation #tempy int /= 10 int
scoreboard players operation #tempz int /= 10 int

execute store result score inp int run data get entity @s Pos[0] 100
execute store result score #temp1 int run data get entity @s Pos[1] 100
execute store result score #temp2 int run data get entity @s Pos[2] 100
scoreboard players operation inp int -= #tempx int
scoreboard players operation #temp1 int -= #tempy int
scoreboard players operation #temp2 int -= #tempz int

scoreboard players operation inp int *= inp int
scoreboard players operation #temp1 int *= #temp1 int
scoreboard players operation #temp2 int *= #temp2 int

scoreboard players operation #temp1 int += #temp2 int
scoreboard players operation inp int += #temp1 int
function bax:lib/sqrt/do
scoreboard players operation res int *= 10 int
