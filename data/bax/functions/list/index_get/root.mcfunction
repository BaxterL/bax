#> bax:list/index_get/root -> lib
#input $index bax.list / bax:list input[]
#result bax:list output
#最大支持729
scoreboard players operation #index bax.list = $index bax.list
execute if score #index bax.list = #index bax.list run function bax:list/index_get/zzz/tree0_0