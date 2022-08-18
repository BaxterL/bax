execute store result score #temp1 damage.value run data get entity @s ActiveEffects[{Id:11b}].Amplifier 20
scoreboard players add #temp1 damage.value 20
execute if score #temp1 damage.value matches 120.. run scoreboard players set #temp1 damage.value 100

scoreboard players operation #temp damage.value = #100 damage.value
scoreboard players operation #temp damage.value -= #temp1 damage.value

scoreboard players operation #damage damage.value *= #temp damage.value
scoreboard players operation #damage damage.value /= #100 damage.value