scoreboard players set $version bax.sys 0
execute unless score $loop bax.sys matches 0 run scoreboard players set $loop bax.sys 0
tellraw @a ["",{"text": "[Bax_lib] ","bold": true,"color": "yellow"},{"text": "old version","color": "dark_red"}]