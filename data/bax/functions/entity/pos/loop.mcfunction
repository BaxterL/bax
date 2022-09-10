#> bax:entity/pos/loop -> lib
#input _loop_ 
#after generic/score
scoreboard players add #max bax.eid 0
scoreboard players set #old bax.eid 0
execute store result score #now bax.eid if entity @e[scores={bax.eid=0..},type=!marker]
execute if score #now bax.eid < #max bax.eid run function bax:entity/pos/find

scoreboard players reset * bax.eid
data modify storage bax:entity list set from storage bax:entity source

execute as @e[type=!marker] if score @s bax.uid = @s bax.uid unless score @s bax.eid = @s bax.eid run function bax:entity/pos/_self

