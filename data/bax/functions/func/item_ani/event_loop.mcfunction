execute as @a[tag=bax.item_ani] at @s run function bax:func/item_ani/main
execute store success score $event bax.ani if entity @a[tag=bax.item_ani]
execute if score $event bax.ani matches 1 run schedule function bax:func/item_ani/event_loop 1t append