scoreboard objectives add bax.sys dummy
##########
#  init  #
##########
scoreboard players set $version bax.sys 140
execute if data storage bax:data version run function bax:func/version/bax_lib
execute store result storage bax:data version int 1 run scoreboard players get $version bax.sys
execute unless score $version bax.sys matches 0 run scoreboard players set $loop bax.sys 1

execute if score $loop bax.sys matches 1 run function bax:generic/init