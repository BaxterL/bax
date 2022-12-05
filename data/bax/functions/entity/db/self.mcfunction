#> bax:entity/db/self -> database
#初始化
#input @player
#result bax:db self
execute unless score @s bax.db = @s bax.db store result score @s bax.db run data modify storage bax:db data append value {database_init:true}
execute unless score @s bax.db = @s bax.db store result score @s bax.db run scoreboard players add #max bax.db 1
scoreboard players operation $index bax.list = @s bax.db
data modify storage bax:list input set from storage bax:db data
function bax:list/index_get/root
data modify storage bax:db self set from storage bax:list output