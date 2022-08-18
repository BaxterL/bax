execute store result score #hp damage.value run data get entity @s Health 100
execute unless entity @s[tag=damage.atker] run function damage:private/entity/red
scoreboard players operation #hp damage.value -= $value damage.value
execute if score #hp damage.value matches 1.. store result entity @s Health float 0.01 run scoreboard players get #hp damage.value
execute if score #hp damage.value matches ..0 run function damage:private/die
execute if entity @e[tag=damage.atker] positioned ~ ~ ~ run function damage:private/atker