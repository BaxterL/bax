execute if entity @s[type=player,scores={damage.value=0..}] run function damage:private/loop/player
execute if entity @s[type=!player,scores={damage.value=0..}] run function damage:private/loop/entity
scoreboard players reset @s damage.value