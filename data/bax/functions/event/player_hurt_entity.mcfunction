scoreboard players operation .this bax.uid = @s bax.uid
#region match
scoreboard players set #local bax.uid 0
execute if entity @s[advancements={bax:player_hurt_entity={id_1048576=true}}] run scoreboard players add #local bax.uid 1048576
execute if entity @s[advancements={bax:player_hurt_entity={id_524288=true}}] run scoreboard players add #local bax.uid 524288
execute if entity @s[advancements={bax:player_hurt_entity={id_262144=true}}] run scoreboard players add #local bax.uid 262144
execute if entity @s[advancements={bax:player_hurt_entity={id_131072=true}}] run scoreboard players add #local bax.uid 131072
execute if entity @s[advancements={bax:player_hurt_entity={id_65536=true}}] run scoreboard players add #local bax.uid 65536
execute if entity @s[advancements={bax:player_hurt_entity={id_32768=true}}] run scoreboard players add #local bax.uid 32768
execute if entity @s[advancements={bax:player_hurt_entity={id_16384=true}}] run scoreboard players add #local bax.uid 16384
execute if entity @s[advancements={bax:player_hurt_entity={id_8192=true}}] run scoreboard players add #local bax.uid 8192
execute if entity @s[advancements={bax:player_hurt_entity={id_4096=true}}] run scoreboard players add #local bax.uid 4096
execute if entity @s[advancements={bax:player_hurt_entity={id_2048=true}}] run scoreboard players add #local bax.uid 2048
execute if entity @s[advancements={bax:player_hurt_entity={id_1024=true}}] run scoreboard players add #local bax.uid 1024
execute if entity @s[advancements={bax:player_hurt_entity={id_512=true}}] run scoreboard players add #local bax.uid 512
execute if entity @s[advancements={bax:player_hurt_entity={id_256=true}}] run scoreboard players add #local bax.uid 256
execute if entity @s[advancements={bax:player_hurt_entity={id_128=true}}] run scoreboard players add #local bax.uid 128
execute if entity @s[advancements={bax:player_hurt_entity={id_64=true}}] run scoreboard players add #local bax.uid 64
execute if entity @s[advancements={bax:player_hurt_entity={id_32=true}}] run scoreboard players add #local bax.uid 32
execute if entity @s[advancements={bax:player_hurt_entity={id_16=true}}] run scoreboard players add #local bax.uid 16
execute if entity @s[advancements={bax:player_hurt_entity={id_8=true}}] run scoreboard players add #local bax.uid 8
execute if entity @s[advancements={bax:player_hurt_entity={id_4=true}}] run scoreboard players add #local bax.uid 4
execute if entity @s[advancements={bax:player_hurt_entity={id_2=true}}] run scoreboard players add #local bax.uid 2
execute if entity @s[advancements={bax:player_hurt_entity={id_1=true}}] run scoreboard players add #local bax.uid 1
#endregion

advancement revoke @s only bax:player_hurt_entity

execute as @e if score @s bax.uid = #local bax.uid at @s run function #bax:generic/event/player_hurt_entity