execute store result entity @s Health float 0.1 run scoreboard players get $damage.value damage.value
execute if entity @e[tag=damage.atker] run function damage:private/atker