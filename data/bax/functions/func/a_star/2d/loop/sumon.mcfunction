execute unless entity @s[tag=have] positioned ~1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H1 tal.a_star.temp run summon marker ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b}
execute unless entity @s[tag=have] positioned ~1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H1 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H1 tal.a_star.temp run tag @s add have

execute unless entity @s[tag=have] positioned ~ ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H3 tal.a_star.temp run summon marker ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b}
execute unless entity @s[tag=have] positioned ~ ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H3 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~ ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H3 tal.a_star.temp run tag @s add have

execute unless entity @s[tag=have] positioned ~-1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H2 tal.a_star.temp run summon marker ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b}
execute unless entity @s[tag=have] positioned ~-1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H2 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~-1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H2 tal.a_star.temp run tag @s add have



execute unless entity @s[tag=have] positioned ~ ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H4 tal.a_star.temp run summon marker ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b}
execute unless entity @s[tag=have] positioned ~ ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H4 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~ ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H4 tal.a_star.temp run tag @s add have


