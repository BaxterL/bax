scoreboard players operation #hp damage.value = $value damage.value
scoreboard players operation #hp damage.value /= #10 damage.value
function damage:private/set/l2/l2_0

tag @s add customdamage.delay
effect give @s instant_health 2 100 true
schedule function damage:private/delay 2t append