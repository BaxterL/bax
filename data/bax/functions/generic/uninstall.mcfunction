#uninstall
scoreboard objectives remove bax.uid
scoreboard objectives remove bax.eid
scoreboard objectives remove bax.rot
scoreboard objectives remove bax.temp
scoreboard objectives remove bax.timer
#scoreboard objectives remove bax.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives remove bax.ani
scoreboard objectives remove bax.list
scoreboard objectives remove bax.db
scoreboard objectives remove bax.scroll
scoreboard objectives remove bax.slot
scoreboard objectives remove bax.last_slot

data remove storage bax:list input
data remove storage bax:entity source
data remove storage bax:db self
data remove storage bax:db data

scoreboard objectives remove bax.sys
tellraw @a ["",{"text": "[Bax_lib] ","bold": true,"color": "yellow"},{"text": "uninstall","color": "dark_red"}]