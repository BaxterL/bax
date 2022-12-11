forceload add -1 -1 1 1
#
scoreboard objectives add int dummy
scoreboard players set 2 int 2
scoreboard players set 4 int 4
scoreboard players set -1 int -1
scoreboard players set 360 int 360
scoreboard players set 100 int 100
scoreboard players set 1000 int 1000
scoreboard players set -46496 int -46496
scoreboard players set 100000 int 100000
scoreboard players set 10000 int 10000
scoreboard players set 5000 int 5000
scoreboard players set 57295 int 57295
scoreboard players set 102400 int 102400
scoreboard players set 1000000 int 1000000

scoreboard objectives add bax.uid dummy
scoreboard objectives add bax.eid dummy
scoreboard objectives add bax.rot dummy
scoreboard objectives add bax.temp dummy
scoreboard objectives add bax.timer dummy
#scoreboard objectives add bax.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add bax.ani dummy
scoreboard objectives add bax.list dummy
scoreboard objectives add bax.db dummy

data modify storage bax:list {} set value {input:[],output:[]}
data modify storage bax:entity source set value [{i:0}]
data modify storage bax:db {} set value {data:[]}

function #bax:init

#need lib
execute if data storage bax:data lib[] run function bax:func/version/need

#主循环
#function bax:main