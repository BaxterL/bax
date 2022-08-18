execute unless score @s bax.uid = @s bax.uid store result score @s bax.uid run scoreboard players add #max bax.uid 1

#region init
scoreboard players operation #local bax.uid = @s bax.uid
execute if score #local bax.uid matches 1048576.. run tag @s add bax.id_1048576
execute if score #local bax.uid matches 1048576.. run scoreboard players remove #local bax.uid 1048576
execute if score #local bax.uid matches 524288.. run tag @s add bax.id_524288
execute if score #local bax.uid matches 524288.. run scoreboard players remove #local bax.uid 524288
execute if score #local bax.uid matches 262144.. run tag @s add bax.id_262144
execute if score #local bax.uid matches 262144.. run scoreboard players remove #local bax.uid 262144
execute if score #local bax.uid matches 131072.. run tag @s add bax.id_131072
execute if score #local bax.uid matches 131072.. run scoreboard players remove #local bax.uid 131072
execute if score #local bax.uid matches 65536.. run tag @s add bax.id_65536
execute if score #local bax.uid matches 65536.. run scoreboard players remove #local bax.uid 65536
execute if score #local bax.uid matches 32768.. run tag @s add bax.id_32768
execute if score #local bax.uid matches 32768.. run scoreboard players remove #local bax.uid 32768
execute if score #local bax.uid matches 16384.. run tag @s add bax.id_16384
execute if score #local bax.uid matches 16384.. run scoreboard players remove #local bax.uid 16384
execute if score #local bax.uid matches 8192.. run tag @s add bax.id_8192
execute if score #local bax.uid matches 8192.. run scoreboard players remove #local bax.uid 8192
execute if score #local bax.uid matches 4096.. run tag @s add bax.id_4096
execute if score #local bax.uid matches 4096.. run scoreboard players remove #local bax.uid 4096
execute if score #local bax.uid matches 2048.. run tag @s add bax.id_2048
execute if score #local bax.uid matches 2048.. run scoreboard players remove #local bax.uid 2048
execute if score #local bax.uid matches 1024.. run tag @s add bax.id_1024
execute if score #local bax.uid matches 1024.. run scoreboard players remove #local bax.uid 1024
execute if score #local bax.uid matches 512.. run tag @s add bax.id_512
execute if score #local bax.uid matches 512.. run scoreboard players remove #local bax.uid 512
execute if score #local bax.uid matches 256.. run tag @s add bax.id_256
execute if score #local bax.uid matches 256.. run scoreboard players remove #local bax.uid 256
execute if score #local bax.uid matches 128.. run tag @s add bax.id_128
execute if score #local bax.uid matches 128.. run scoreboard players remove #local bax.uid 128
execute if score #local bax.uid matches 64.. run tag @s add bax.id_64
execute if score #local bax.uid matches 64.. run scoreboard players remove #local bax.uid 64
execute if score #local bax.uid matches 32.. run tag @s add bax.id_32
execute if score #local bax.uid matches 32.. run scoreboard players remove #local bax.uid 32
execute if score #local bax.uid matches 16.. run tag @s add bax.id_16
execute if score #local bax.uid matches 16.. run scoreboard players remove #local bax.uid 16
execute if score #local bax.uid matches 8.. run tag @s add bax.id_8
execute if score #local bax.uid matches 8.. run scoreboard players remove #local bax.uid 8
execute if score #local bax.uid matches 4.. run tag @s add bax.id_4
execute if score #local bax.uid matches 4.. run scoreboard players remove #local bax.uid 4
execute if score #local bax.uid matches 2.. run tag @s add bax.id_2
execute if score #local bax.uid matches 2.. run scoreboard players remove #local bax.uid 2
execute if score #local bax.uid matches 1.. run tag @s add bax.id_1
execute if score #local bax.uid matches 1.. run scoreboard players remove #local bax.uid 1

tag @s[tag=!bax.id_1048576] add bax.nil_1048576
tag @s[tag=!bax.id_524288] add bax.nil_524288
tag @s[tag=!bax.id_262144] add bax.nil_262144
tag @s[tag=!bax.id_131072] add bax.nil_131072
tag @s[tag=!bax.id_65565] add bax.nil_65536
tag @s[tag=!bax.id_32768] add bax.nil_32768
tag @s[tag=!bax.id_16384] add bax.nil_16384
tag @s[tag=!bax.id_8192] add bax.nil_8192
tag @s[tag=!bax.id_4096] add bax.nil_4096
tag @s[tag=!bax.id_2048] add bax.nil_2048
tag @s[tag=!bax.id_1024] add bax.nil_1024
tag @s[tag=!bax.id_512] add bax.nil_512
tag @s[tag=!bax.id_256] add bax.nil_256
tag @s[tag=!bax.id_128] add bax.nil_128
tag @s[tag=!bax.id_64] add bax.nil_64
tag @s[tag=!bax.id_32] add bax.nil_32
tag @s[tag=!bax.id_16] add bax.nil_16
tag @s[tag=!bax.id_8] add bax.nil_8
tag @s[tag=!bax.id_4] add bax.nil_4
tag @s[tag=!bax.id_2] add bax.nil_2
tag @s[tag=!bax.id_1] add bax.nil_1
#endregion

tag @s add bax.id_init