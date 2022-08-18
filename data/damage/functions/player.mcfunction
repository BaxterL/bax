#> damage:player  对玩家造成伤害
#
#设置 $value damage.value 然后以玩家为对象执行来造成物理伤害
#分数100倍率
#
#额外参数给实体添加标签"damage.atker"来设置伤害来源,记得自己删tag
##damage:pre在开始计算护甲抵御伤害之前
#
#当玩家/生物阵亡后默认不会kill玩家/生物,你可以在#damage:die中配置

execute if score $armor damage.value matches 1 run function damage:private/check_armor

execute if score $ench damage.value matches 1 run function damage:private/enchprot

execute if score $effect damage.value matches 1 run function damage:private/effect

function damage:private/set_hp

execute if entity @e[tag=damage.atker] positioned ~ ~ ~ run function damage:private/atker

function #damage:end

execute if entity @s[tag=damage.die] run tag @s remove damage.die