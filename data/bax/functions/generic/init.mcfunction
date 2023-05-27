forceload add -1 -1 1 1
#
scoreboard objectives add int dummy
function bax:generic/num

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