scoreboard players operation #temp damage.value = #hp damage.value
scoreboard players operation #hp damage.value -= #damage damage.value
execute store result score #hp damage.value run scoreboard players operation #maxhp damage.value -= #hp damage.value

execute if score #damage damage.value <= #temp damage.value run function damage:private/update
execute if score #damage damage.value > #temp damage.value run function damage:private/die