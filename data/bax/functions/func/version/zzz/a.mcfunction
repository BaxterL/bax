execute store result score #lib bax.sys run data get storage bax:data lib[{pack:"damage"}].is
execute store success score #lib bax.sys run scoreboard players get #100 damage.value
execute unless score #lib bax.sys matches 100 run function bax:func/version/zzz/b
execute if score #lib bax.sys matches 100 run data remove storage bax:data lib[{pack:"damage"}]