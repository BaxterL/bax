scoreboard players operation #old_ bax.eid = #max bax.eid
scoreboard players add #max bax.eid 1
scoreboard players operation #old_ bax.eid *= #max bax.eid
scoreboard players operation #old_ bax.eid /= 2 int
scoreboard players operation #now_ bax.eid += @e bax.eid
execute store result score $index bax.list run scoreboard players operation #old_ bax.eid -= #now_ bax.eid
data modify storage bax:list input set from storage bax:entity list
function bax:list/index_get/root

summon marker 0.0 0.0 0.0 {data:{},Tags:[bax.temp]}
execute as @e[tag=bax.temp] at @s run function bax:entity/pos/findset
tag @e remove bax.temp