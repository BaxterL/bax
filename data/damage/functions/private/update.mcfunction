scoreboard players operation #hp damage.value /= #10 damage.value
function damage:private/update/l2/l2_0

tag @s add customdamage.delay2
effect give @s instant_health 1 100 true
schedule function damage:private/delay 2t append