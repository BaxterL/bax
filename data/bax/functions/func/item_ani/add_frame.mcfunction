#> bax:func/item_ani/add_frame -> baxres
#下一帧
execute store result score #frame bax.ani run data get entity @e[type=armor_stand,tag=bax.frame,limit=1] ArmorItems[3].tag.CustomModelData
execute store result entity @e[tag=bax.frame,limit=1,type=armor_stand] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #frame bax.ani 1
data modify entity @e[tag=bax.frame,limit=1,type=armor_stand] ArmorItems[3].tag.AttributeModifiers append value {AttributeName:"minecraft:generic.attack_speed",Amount:-100,Name:ats,Operation:0,Slot:"mainhand",UUID:[I;4,4,4,3456]}
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=bax.frame,limit=1] armor.head