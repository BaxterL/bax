#> bax:func/item_ani/play -> baxres
#开始动画
scoreboard players set @s bax.ani 0
tag @s add bax.item_ani
execute unless score $event bax.ani matches 1 run function bax:func/item_ani/event_loop