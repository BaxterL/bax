#> bax:func/version/minecraft -> lib
#output minecraft bax.sys
execute store result score #dataversion bax.sys run data get entity @p DataVersion
execute if score #dataversion bax.sys matches 2724..2730 run scoreboard players set #minecraft bax.sys 117
execute if score #dataversion bax.sys matches 2825..2975 run scoreboard players set #minecraft bax.sys 118
execute if score #dataversion bax.sys matches 3066..3120 run scoreboard players set #minecraft bax.sys 119