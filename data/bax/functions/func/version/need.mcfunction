function #bax:lib
execute store result score #lib bax.sys run data get storage bax:data lib[{pack:"bax_lib"}].version
execute if score #lib bax.sys > $version bax.sys run function bax:func/version/zzz/b
execute if score #lib bax.sys <= $version bax.sys run data remove storage bax:data lib[{pack:"bax_lib"}]

execute if data storage bax:data lib[] run function bax:func/version/zzz/a