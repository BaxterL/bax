#> bax:lib/sqrt -> lib by ethan
#input x int
#output result int
execute if score x int matches ..-1 run scoreboard players set x int 0


# get half4a

execute if score x int matches 0..15 run scoreboard players set half4a int 2
execute if score x int matches 16..255 run scoreboard players set half4a int 8
execute if score x int matches 256..4095 run scoreboard players set half4a int 32
execute if score x int matches 4096..65535 run scoreboard players set half4a int 128
execute if score x int matches 65536..1048575 run scoreboard players set half4a int 512
execute if score x int matches 1048576..16777215 run scoreboard players set half4a int 2048
execute if score x int matches 16777216..268435455 run scoreboard players set half4a int 8152
execute if score x int matches 268435456.. run scoreboard players set half4a int 32768


# the use of magic

execute store result score plus1 int store result score plus2 int store result score plus3 int store result score result int run scoreboard players operation t int = x int
scoreboard players operation t int /= 4 int
scoreboard players operation t int /= half4a int
scoreboard players operation t int += half4a int


# get a result that may be greater than the actual result

scoreboard players operation plus1 int /= t int
scoreboard players operation t int += plus1 int
scoreboard players operation t int /= 2 int

scoreboard players operation plus2 int /= t int
scoreboard players operation t int += plus2 int
scoreboard players operation t int /= 2 int

scoreboard players operation plus3 int /= t int
scoreboard players operation t int += plus3 int
scoreboard players operation t int /= 2 int

scoreboard players operation result int /= t int
scoreboard players operation result int += t int
execute store result score judgement int run scoreboard players operation result int /= 2 int


# get the final result

scoreboard players operation judgement int *= result int
execute if score judgement int > x int run scoreboard players remove result int 1