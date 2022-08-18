#> bax:lib/sector_check -> lib by c60
#input @s / $angle bax.rot / @e[tag=bax.detect]
#output #func event/sector
scoreboard players operation #aim bax.rot = $angle bax.rot
scoreboard players operation #aim bax.rot *= 5000 int

summon marker ~ ~ ~ {Tags:["bax.rotation"]}
tp @e[tag=bax.rotation] @s
execute as @e[tag=bax.rotation] store result score @s bax.rot run data get entity @s Rotation[0] 10000

execute as @e[tag=bax.detect] run function bax:lib/zzz/sec_r

kill @e[tag=bax.rotation,type=marker]