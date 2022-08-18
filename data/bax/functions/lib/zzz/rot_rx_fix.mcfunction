execute if score rot_rx bax.rot matches ..-91 run scoreboard players set fix bax.rot -90
execute if score rot_rx bax.rot matches 91.. run scoreboard players set fix bax.rot 90
scoreboard players operation rot_rx bax.rot -= fix bax.rot
execute store result score rot_rx bax.rot run scoreboard players operation fix bax.rot -= rot_rx bax.rot
scoreboard players add rot_ry bax.rot 180
execute if score rot_ry bax.rot matches 361.. run function bax:lib/zzz/rot_ry_fix