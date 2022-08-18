kill @e[tag=bax.test_golem]
kill @e[tag=bax.aecdebugdisplayhp]
summon pillager ~ ~ ~ {Attributes:[{Name:"minecraft:generic.max_health",Base:1024}],Health:1024,CustomName:'{"text": "测试假人","italic": false}',CustomNameVisible:1b,Silent:1b,NoAI:1b,NoGravity:1b,Tags:["bax.e","bax.lib.test_golem"],DeathLootTable:"empty"}

execute if block ~ ~ ~ command_block run setblock ~ ~ ~ air