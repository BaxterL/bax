#> bax:entity/db/self_store -> database
#选择前置函数bax:entity/db/self
#input 执行对象 | bax:db self
scoreboard players operation $index bax.list = @s bax.db
data modify storage bax:list input set from storage bax:db data
data modify storage bax:list modify set from storage bax:db self
function bax:list/index_set/root
data modify storage bax:db data set from storage bax:list output