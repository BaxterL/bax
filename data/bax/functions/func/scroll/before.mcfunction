#> bax:func/scroll/before
execute as @a unless score @s bax.last_slot = @s bax.last_slot store result score @s bax.last_slot run data get entity @s SelectedItemSlot
