## 该函数来自T算法库 by 天起源
scoreboard objectives add tal.a_star.temp dummy "临时变量"
scoreboard objectives add tal.a_star.cost dummy "代价"
scoreboard objectives add tal.a_star.d dummy "距离"

forceload add -30000000 2022228
forceload add -30000000 2022240
forceload add -30000000 2022221
##2D A*
# 开始位
# summon marker ~ ~ ~ {Tags:["tal.a_star.start","tal.a_star.armor_stand","tal.a_star.new","tal.a_star.new_"]}
# 结束位
# summon marker ~ ~ ~ {Tags:["tal.a_star.end","tal.a_star.armor_stand"]}
# 运行函数
# function bax:func/a_star/2d/start

# 返回值（Double数组类型，最近路线的各个坐标)
# data get storage t_algorithm_lib:others find_path.a_star.points.pos_list
# 清除标记和开始位，结束位
# kill @e[tag=tal.a_star.armor_stand]

##3D A*
# 开始位
# summon marker ~ ~ ~ {Tags:["tal.a_star.start","tal.a_star.armor_stand","tal.a_star.new","tal.a_star.new_"]}
# 结束位
# summon marker ~ ~ ~ {Tags:["tal.a_star.end","tal.a_star.armor_stand"]}
# 运行函数
# function bax:func/a_star/3d/start

# 返回值（Double数组类型，最近路线的各个坐标)
# data get storage t_algorithm_lib:others find_path.a_star.points.pos_list
# 清除标记和开始位，结束位
# kill @e[tag=tal.a_star.armor_stand]