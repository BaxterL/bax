execute store result score #temp1 damage.value run data get entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #temp2 damage.value run data get entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #temp3 damage.value run data get entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #temp4 damage.value run data get entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #temp1 damage.value += #temp2 damage.value
scoreboard players operation #temp3 damage.value += #temp4 damage.value
scoreboard players operation #temp1 damage.value += #temp3 damage.value
scoreboard players operation #temp1 damage.value *= #4 damage.value
execute if score #temp1 damage.value matches 81.. run scoreboard players set #temp1 damage.value 80

scoreboard players operation #damage damage.value *= #temp1 damage.value
scoreboard players operation #damage damage.value /= #100 damage.value
