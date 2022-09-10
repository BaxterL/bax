execute store result score @s bax.uid run data get storage bax:list output.uid
data modify entity @s data set from storage bax:list output
data modify entity @s Pos set from storage bax:list output.pos