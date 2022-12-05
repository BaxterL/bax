item replace block 0 319 -1 container.0 with minecraft:shears{bax_a:1}
data modify block 0 319 -1 Items[0].id set from storage psp:result self.inv[{Slot:103b}].id
data modify block 0 319 -1 Items[0].Count set from storage psp:result self.inv[{Slot:103b}].Count
data modify block 0 319 -1 Items[0].tag set from storage psp:result self.inv[{Slot:103b}].tag
execute if data block 0 319 -1 Items[{id:"minecraft:shears",tag:{bax_a:1}}] run item replace block 0 319 -1 container.0 with air
item replace entity @s armor.head from block 0 319 -1 container.0
item replace block 0 319 -1 container.0 with minecraft:shears{bax_a:1}
data modify block 0 319 -1 Items[0].id set from storage psp:result self.inv[{Slot:102b}].id
data modify block 0 319 -1 Items[0].Count set from storage psp:result self.inv[{Slot:102b}].Count
data modify block 0 319 -1 Items[0].tag set from storage psp:result self.inv[{Slot:102b}].tag
execute if data block 0 319 -1 Items[{id:"minecraft:shears",tag:{bax_a:1}}] run item replace block 0 319 -1 container.0 with air
item replace entity @s armor.chest from block 0 319 -1 container.0
item replace block 0 319 -1 container.0 with minecraft:shears{bax_a:1}
data modify block 0 319 -1 Items[0].id set from storage psp:result self.inv[{Slot:101b}].id
data modify block 0 319 -1 Items[0].Count set from storage psp:result self.inv[{Slot:101b}].Count
data modify block 0 319 -1 Items[0].tag set from storage psp:result self.inv[{Slot:101b}].tag
execute if data block 0 319 -1 Items[{id:"minecraft:shears",tag:{bax_a:1}}] run item replace block 0 319 -1 container.0 with air
item replace entity @s armor.legs from block 0 319 -1 container.0
item replace block 0 319 -1 container.0 with minecraft:shears{bax_a:1}
data modify block 0 319 -1 Items[0].id set from storage psp:result self.inv[{Slot:100b}].id
data modify block 0 319 -1 Items[0].Count set from storage psp:result self.inv[{Slot:100b}].Count
data modify block 0 319 -1 Items[0].tag set from storage psp:result self.inv[{Slot:100b}].tag
execute if data block 0 319 -1 Items[{id:"minecraft:shears",tag:{bax_a:1}}] run item replace block 0 319 -1 container.0 with air
item replace entity @s armor.feet from block 0 319 -1 container.0