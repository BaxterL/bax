#> bax:func/blocks/tcuboid/do
#input @s(初始点) [dx int;dy int;dz int] (增量三位小数)
function bax:lib/math/check_math_marker
execute as @e[tag=math_marker,limit=1] run function bax:func/blocks/tcuboid/zzz/go