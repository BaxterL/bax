#damage=伤害*(1-(min(20,max(防御点数/5,防御点数-伤害/(2+盔甲韧性/4))))/25)
execute store result score #hp damage.value run data get entity @s Health 100
execute store result score #maxhp damage.value run attribute @s generic.max_health get 100
execute store result score #armor damage.value run attribute @s minecraft:generic.armor get 100
execute store result score #armor_toughness damage.value run attribute @s minecraft:generic.armor_toughness get 100

#伤害/(2+盔甲韧性/4)
scoreboard players operation #armor_toughness damage.value /= #4 damage.value
scoreboard players add #armor_toughness damage.value 200

scoreboard players operation #damage damage.value = $value damage.value
scoreboard players operation #damage damage.value *= #100 damage.value
scoreboard players operation #damage damage.value /= #armor_toughness damage.value
#max(防御点数/5,防御点数-...)
scoreboard players operation #temp damage.value = #armor damage.value
scoreboard players operation #temp damage.value -= #damage damage.value
scoreboard players operation #armor damage.value /= #5 damage.value
scoreboard players operation #armor damage.value > #temp damage.value
#min(20,...)/25
scoreboard players operation #armor damage.value < #2000 damage.value
scoreboard players operation #armor damage.value *= #1000 damage.value
scoreboard players operation #armor damage.value /= #2500 damage.value
#伤害*(1-...)
scoreboard players operation #temp damage.value = #1000 damage.value
scoreboard players operation #temp damage.value -= #armor damage.value
#damage
scoreboard players operation #damage damage.value = $value damage.value
scoreboard players operation #damage damage.value *= #temp damage.value
scoreboard players operation #damage damage.value /= #1000 damage.value