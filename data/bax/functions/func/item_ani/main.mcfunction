scoreboard players add @s bax.ani 1
summon armor_stand ~ -100 ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["bax.frame"]}
item replace entity @e[type=armor_stand,tag=bax.frame] armor.head from entity @s weapon.mainhand
function #bax:player/frame
kill @e[type=armor_stand,tag=bax.frame]
execute unless score @s bax.ani = @s bax.ani run tag @s remove bax.item_ani