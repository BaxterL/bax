#uninstall
scoreboard objectives remove int
scoreboard objectives remove bax.uid
scoreboard objectives remove bax.rot
scoreboard objectives remove bax.temp
scoreboard objectives remove bax.timer
#scoreboard objectives remove bax.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives remove bax.ani
scoreboard objectives remove bax.list
scoreboard objectives remove bax.db

data remove storage bax:list {}

scoreboard objectives remove bax.sys
tellraw @a ["",{"text": "[Bax_lib] ","bold": true,"color": "yellow"},{"text": "uninstall","color": "dark_red"}]