#> bax:list/index_set/root -> lib
#input $index bax.list / bax:list input[] / bax:list modify
#result bax:list output
#最大支持729
scoreboard players operation #index bax.list = $index bax.list
execute if score #index bax.list = #index bax.list run function bax:list/index_set/zzz/tree0_0
data modify storage bax:list output set from storage bax:list input