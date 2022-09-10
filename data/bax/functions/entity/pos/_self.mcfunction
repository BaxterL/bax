execute store result score @s bax.eid store result storage bax:entity this.i int 1 run scoreboard players add #max bax.eid 1
execute store result storage bax:entity this.uid int 1 run scoreboard players get @s bax.uid
data modify storage bax:entity this.pos set from entity @s Pos
data modify storage bax:entity list append from storage bax:entity this