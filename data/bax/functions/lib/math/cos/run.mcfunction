#> bax:lib/math/cos/run -> lib
#input $input bax.sys
#output result bax.sys
function bax:lib/math/check_math_marker
execute as @e[tag=bax.math,type=marker] run function bax:lib/math/cos/opera