execute store result score #need bax.sys run data get storage bax:data temp[0].need 1
execute if score #need bax.sys > $version bax.sys run function bax:func/version/zzz/b
tellraw @a [{"nbt": "packs[0].name", "storage": "bax:data","color": "yellow"},{"text": "需要bax_lib版本大于等于","color": "red"},{"score": {"objective": "bax.sys","name": "#need"},"color": "yellow"}]
data remove storage bax:data temp[0]
execute if data storage bax:data temp[0] run function bax:func/version/zzz/a