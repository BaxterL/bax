# 帮助文档

反正也没人用我的前置，但是最近记忆力不是很好，防止我健忘，所以我准备写个如何调用函数的说明

> 数据包内置自定义伤害,使用请查看:https://www.mcbbs.net/thread-1373955-1-1.html

## 常用函数

bax/functions/lib/...下的函数

### 数学函数

lib/math/..
字面意思，反正也没人用，而且我都没怎么用，还多几个繁琐的步骤，不如直接根据情况算

检测math_marker是否存在
`function bax:lib/math/check_math_marker`

### 无动画生成指定朝向的盔甲架

小豆推荐把实体tp到很远的地方再tp回来一样是没有动画的，推荐地图使用，但有的时候实体会消失一段时间

```mcfunction
execute positioned ~ ~ ~ rotated as @s run function bax:lib/rotsum
data merge entity @e[tag=this_,limit=1,type=armor_stand] {Tags:["other_tag"]}
```

### 两实体测距

倍率1000
```mcfunction
tag @e[tag=1] add bax.distance_1
tag @e[tag=2] add bax.distance_2
function bax:lib/distance
scoreboard players get result bax.sys
#自动清除tag,不用你手动
```

### 随机数

int计分板扔最小值min和最大值max`function bax:lib/random`出结果`scoreboard players get random int`

### 扇形选择

```mcfunction
tag @e[type=zombie] add bax.detect
scoreboard players set $angle bax.rot 60
execute as @s at @s run function bax:lib/sector_check
#bax.detect是被检测实体,$angle bax.rot是角度,函数执行者是执行对象
#满足的对象执行function #bax:generic/event/sector
```

### 开平方

int计分板扔x`function bax:lib/sqrt`出结果`scoreboard players get result int`

## 其他函数

### 攻击事件相关检测

> https://www.mcbbs.net/thread-1364191-1-1.html

### 史莱姆挤压

一共三个力度
`function bax:func/action/push`
记得自己删除史莱姆

### 控制玩家疾跑

`function bax:entity/player/enable_sprint`执行启用玩家疾跑反之取消

## 数据包结构

## 更新