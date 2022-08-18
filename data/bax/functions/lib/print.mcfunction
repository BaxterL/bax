#> bax:lib/print -> lib
#执行以下内容
#setblock -1 319 0 oak_sign
#data modify storage bax:data title set value ['{"text": "你"}','{"text": "好"}']
#function bax:lib/print
################################################################
data modify block -1 319 0 Text1 set value ""
data modify block -1 319 0 Text1 set from storage bax:data title[0]
data modify block -1 319 0 Text2 set value '[{"nbt":"Text2","block": "-1 319 0","interpret": true},{"nbt":"Text1","block": "-1 319 0","interpret": true}]'
data remove storage bax:data title[0]
title @a actionbar {"nbt":"Text2","block": "-1 319 0","interpret": true}
execute if data storage bax:data title[0] run schedule function bax:lib/print 3t append