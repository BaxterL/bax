tag @s add bax.facing_target
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #x0 int
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #y0 int
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #z0 int