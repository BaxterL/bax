#> bax:lib/_oblique_circle -> lib by xiaodou8593
#input r int
function bax:lib/math/check_math_marker
execute at @s as @e[tag=bax.math,limit=1] positioned 0.0 0.0 0.0 run function bax:lib/zzz/oc.get_ij
execute store result score tempx0 int run data get entity @s Pos[0] 1000
execute store result score tempy0 int run data get entity @s Pos[1] 1000
execute store result score tempz0 int run data get entity @s Pos[2] 1000
scoreboard players set loop int 360
execute as @e[tag=bax.math,limit=1] run function bax:lib/zzz/oc.loop
kill @e[tag=bax.math]