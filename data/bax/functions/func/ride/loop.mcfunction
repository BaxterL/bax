#> bax:func/ride/loop -> lib
#input _loop_ @s ride
#output
execute store result score x bax.temp run data get entity @s Motion[0] 1000.0
execute store result score z bax.temp run data get entity @s Motion[2] 1000.0
execute if predicate bax:ride run function bax:func/ride/zzz/run