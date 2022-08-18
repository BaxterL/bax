scoreboard players remove #index bax.list 1
data modify storage bax:list move prepend from storage bax:list temp[-1]
data remove storage bax:list temp[-1]
execute if score #index bax.list matches 1.. run function bax:list/zzz/move