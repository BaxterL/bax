#> bax:func/scroll/loop
# 循环执行
#execute unless score @s bax.last_slot = @s bax.last_slot store result score @s bax.last_slot run data get entity @s SelectedItemSlot

scoreboard players set @s bax.scroll 0
execute store result score @s bax.slot run data get entity @s SelectedItemSlot

scoreboard players operation @s bax.slot -= @s bax.last_slot
scoreboard players operation @s bax.slot %= 9 int
execute if score #now bax.slot matches 1..4 run scoreboard players set @s bax.scroll -1
execute if score #now bax.slot matches 5..8 run scoreboard players set @s bax.scroll 1

scoreboard players operation @s bax.last_slot = @s bax.slot

#execute as @a[scores={bax.scroll=1}] run title @s actionbar "你正在向上滚动滚轮"
#execute as @a[scores={bax.scroll=-1}] run title @s actionbar "你正在向下滚动滚轮"