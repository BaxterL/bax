#> bax:list/get -> lib
#input $index bax.list / bax:list input[]
#result bax:list output
scoreboard players operation #index bax.list = $index bax.list
data modify storage bax:list temp set from storage bax:list input

data modify storage bax:list move set value []
execute if score #index bax.list matches 1.. run function bax:list/zzz/move

data modify storage bax:list output set from storage bax:list temp[-1]