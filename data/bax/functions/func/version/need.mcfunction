#注册包
##data modify storage bax:data packs append value {name:"bax_lib",version:100,need:110}
data modify storage bax:data temp set from storage bax:data packs

function bax:func/version/zzz/a

data remove storage bax:data temp