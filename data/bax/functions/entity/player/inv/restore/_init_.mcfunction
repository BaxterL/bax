#> bax:entity/player/inv/restore/_init_ -> func
#执行这个初始化,然后执行你要恢复的位置
#input @player
setblock 0 319 -1 yellow_shulker_box
function bax:entity/db/self
data modify block 0 319 -1 Items set from storage bax:db self.inv