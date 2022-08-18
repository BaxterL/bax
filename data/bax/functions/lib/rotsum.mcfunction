#> bax:lib/rotsum -> lib
#input @s pos
#result @e[tag=this_]
execute store result score rot_ry bax.rot run data get entity @s Rotation[0]
execute if score rot_ry bax.rot matches ..-1 run scoreboard players add rot_ry bax.rot 360
function bax:lib/rotsum/l3/l3_0