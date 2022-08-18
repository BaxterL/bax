#魔咒保护
execute if score $type damage.value matches 0 run function damage:private/ench/protection
execute if score $type damage.value matches 1 run function damage:private/ench/projectile_protection