#> bax:func/ride/loop_with_title -> lib
#input _loop_ @s ride
#output title
function bax:func/ride/loop

title @s title ""
data remove storage bax:data tempt
execute if score w bax.temp matches 1 run data modify storage bax:data tempt append value '{"text":"W","color":"aqua"}'
execute if score s bax.temp matches 1 run data modify storage bax:data tempt append value '{"text":"S","color":"aqua"}'
execute if score a bax.temp matches 1 run data modify storage bax:data tempt append value '{"text":"A","color":"aqua"}'
execute if score d bax.temp matches 1 run data modify storage bax:data tempt append value '{"text":"D","color":"aqua"}'
title @s subtitle [{"nbt":"tempt[]","storage":"bax:data","interpret":true,"separator":{"text":""}}]