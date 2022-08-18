#> damage:entity  对实体造成伤害
#[!]此函数无法计算玩家血量[!]
#
#设置 $value damage.value 然后以实体为对象执行来造成真实伤害
#分数100倍率
#
#额外参数给实体添加标签"damage.atker"来设置伤害来源,记得自己删tag
#
#当玩家/生物阵亡后默认不会kill玩家/生物,你可以在#damage:die中配置

function #damage:pre

function damage:private/entity/damagemob

execute if entity @s[tag=damage.die] run tag @s remove damage.die

function #damage:end