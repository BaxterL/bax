execute store result entity @s Rotation[0] float -1 run scoreboard players remove loop int 1
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @s Pos[2] 1000
execute store result score sin int run data get entity @s Pos[0] 1000
scoreboard players operation cos int *= r int
scoreboard players operation sin int *= r int
scoreboard players operation cos int /= 1000 int
scoreboard players operation sin int /= 1000 int

scoreboard players operation temp0 int = tempi0 int
scoreboard players operation temp0 int *= cos int
scoreboard players operation temp1 int = tempj0 int
scoreboard players operation temp1 int *= sin int
scoreboard players operation temp0 int += temp1 int
scoreboard players operation temp0 int /= 1000 int
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation temp0 int += tempx0 int

scoreboard players operation temp0 int = tempi1 int
scoreboard players operation temp0 int *= cos int
scoreboard players operation temp1 int = tempj1 int
scoreboard players operation temp1 int *= sin int
scoreboard players operation temp0 int += temp1 int
scoreboard players operation temp0 int /= 1000 int
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation temp0 int += tempy0 int

scoreboard players operation temp0 int = tempi2 int
scoreboard players operation temp0 int *= cos int
scoreboard players operation temp1 int = tempj2 int
scoreboard players operation temp1 int *= sin int
scoreboard players operation temp0 int += temp1 int
scoreboard players operation temp0 int /= 1000 int
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation temp0 int += tempz0 int

execute at @s run particle end_rod ~ ~ ~ ^ ^ ^ 0 0
execute if score loop int matches 1.. run function bax:lib/zzz/oc.loop