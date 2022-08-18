#> bax:lib/rotation -> lib
#废弃函数



summon marker ~ ~ ~ {Tags:[bax.rot]}
execute rotated as @s run tp @e[tag=bax.rot] 0.0 0.0 0.0 ~ ~

execute store result score rot_ry bax.rot run data get entity @e[type=marker,tag=bax.rot,limit=1] Rotation[0]
execute store result score rot_rx bax.rot run data get entity @e[type=marker,tag=bax.rot,limit=1] Rotation[1]

execute if score rot_ry bax.rot matches ..-1 run scoreboard players add rot_ry bax.rot 360
scoreboard players operation rot_ry bax.rot += ry bax.rot

scoreboard players operation rot_rx bax.rot += rx bax.rot
execute unless score rot_rx bax.rot matches -90..90 run function bax:lib/zzz/rot_rx_fix

execute store result entity @e[type=marker,tag=bax.rot,limit=1] Rotation[0] float 1 run scoreboard players get rot_ry bax.rot
execute store result entity @e[type=marker,tag=bax.rot,limit=1] Rotation[1] float 1 run scoreboard players get rot_rx bax.rot

execute rotated as @e[tag=bax.rot] run tp @s ~ ~ ~ ~ ~
kill @e[type=marker,tag=bax.rot]