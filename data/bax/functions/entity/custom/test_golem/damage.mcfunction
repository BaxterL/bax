execute store result score @s bax.temp run data get entity @s Health 100
scoreboard players operation @s bax.temp -= 102400 int
scoreboard players operation @s bax.temp *= -1 int
scoreboard players operation $a bax.temp = @s bax.temp
scoreboard players operation @s bax.temp /= 100 int
scoreboard players operation $a bax.temp %= 100 int
setblock 0 -64 0 oak_sign{Text1:'[{"score": {"name": "@e[tag=bax.test_golem,limit=1]","objective": "bax.temp"},"color": "red"},{"text": ".","color": "red"},{"score": {"name": "$a","objective": "bax.temp"}}]'}
kill @e[tag=bax.aecdebugdisplayhp]
summon minecraft:area_effect_cloud ~ ~1.7 ~ {Age: 0, Duration: 40, WaitTime: 0,CustomName:'{"text": "null"}',CustomNameVisible:1b,Tags:[bax.aectemp,bax.aecdebugdisplayhp]}
data modify entity @e[tag=bax.aectemp,limit=1] CustomName set from block 0 -64 0 Text1
setblock 0 -64 0 air
tag @e[tag=bax.aectemp] remove bax.aectemp
data modify entity @s Health set value 1024.00