tp @s ~ ~ ~
data modify entity @s Pos[1] set from storage bax:data temp_y
execute at @s unless block ~ ~ ~ #bax:impacts run scoreboard players set bool int 0