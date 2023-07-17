execute as @e[tag=bax.st_self] at @s if entity @e[tag=bax.st_target] run tp ^ ^ ^0.2
#execute as @e[tag=bax.st_self] at @s if entity @e[tag=bax.st_target] run particle flame
function bax:entity/smooth_tp/run/execute
schedule function bax:entity/smooth_tp/loop/do 1t append