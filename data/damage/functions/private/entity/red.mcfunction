effect give @s resistance 1 4 true
execute if entity @s[type=!#damage:undeadmobs] run effect give @s instant_damage 1 0 true
execute if entity @s[type=#damage:undeadmobs] run effect give @s instant_health 1 0 true

#effect clear @s
tag @s add damage.clearres
schedule function damage:private/entity/clearres 2t append 