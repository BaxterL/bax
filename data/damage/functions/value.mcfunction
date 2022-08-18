#> damage:value  设置指定血量
#
#设置 $value damage.value 然后以实体为对象执行来设置生命值
#分数1倍率

execute if entity @s[type=player] run function damage:private/set_value

execute if entity @s[type=!player] run function damage:private/entity/set_value_entity

function #damage:end