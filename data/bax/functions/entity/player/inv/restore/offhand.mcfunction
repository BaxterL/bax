item replace block 0 319 -1 container.0 with minecraft:shears{bax_a:1}
data modify block 0 319 -1 Items[0].id set from storage psp:result self.inv[{Slot:-106b}].id
data modify block 0 319 -1 Items[0].Count set from storage psp:result self.inv[{Slot:-106b}].Count
data modify block 0 319 -1 Items[0].tag set from storage psp:result self.inv[{Slot:-106b}].tag
execute if data block 0 319 -1 Items[{id:"minecraft:shears",tag:{bax_a:1}}] run item replace block 0 319 -1 container.0 with air
item replace entity @s weapon.offhand from block 0 319 -1 container.0