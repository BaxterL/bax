# 帮助文档

反正也没人用我的前置，但是最近记忆力不是很好，防止我健忘，所以我准备写个如何调用函数的说明

> 数据包内置自定义伤害,使用请查看:https://www.mcbbs.net/thread-1373955-1-1.html

## 常用函数

bax/functions/lib/...下的函数

### 数学函数

lib/math/..
字面意思，反正也没人用，而且我都没怎么用，还多几个繁琐的步骤，不如直接根据情况算
return scoreboard bax.sys ->result 

检测math_marker是否存在
`function bax:lib/math/check_math_marker`

### 无动画生成指定朝向的盔甲架

小豆推荐把实体tp到很远的地方再tp回来一样是没有动画的，推荐地图使用，但有的时候实体会消失一段时间

```mcfunction
execute positioned ~ ~ ~ rotated as @s run function bax:lib/rotsum
#返回下面这个实体
data merge entity @e[tag=this_,limit=1,type=armor_stand] {Tags:["other_tag"]}
```

### 两实体测距

倍率1000
```mcfunction
tag @e[tag=1] add bax.distance_1
tag @e[tag=2] add bax.distance_2
function bax:lib/distance
#返回下面这玩意
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
#返回：满足的对象执行function #bax:generic/event/sector
```

### 开平方

int计分板扔x`function bax:lib/sqrt`出结果`scoreboard players get result int`

## 其他函数

### 攻击事件相关检测

在bax:event/...下
> https://www.mcbbs.net/thread-1364191-1-1.html
同时初始化bax.uid也在此函数中

### 史莱姆挤压

一共三个力度
`function bax:func/action/push`
记得自己删除史莱姆
return none

### 控制玩家疾跑

`function bax:entity/player/enable_sprint`执行启用玩家疾跑反之取消
返回值 none

### UAEC

也不会有人用吧...给效果区域云添加uaec标签即可

### 方块触碰检测

```mcfunction
#任意数量marker
summon marker ~ ~ ~ {Tags:[bax.target]}
#全部满足才停止
function bax:entity/check/keep_down_all
#如果满足一个就停止
function bax:entity/check/keep_down_one
#返回执行后的实体，你可以拿去坐标信息
tag @e remove bax.target
```
修改tags/blocks/impacts来控制默认不检测的方块

### 好像是查找死亡实体坐标

循环执行`function bax:entity/pos/loop`
但是再这之前要对实体进行初始化bax.uid
我也忘记我写的啥玩意了，我也看不懂这玩意

### 获取方块版本

`function bax:func/version/minecraft` 最没用函数

### 坐骑状态下WASD检测

你可以查看此函数，让玩家循环执行`function bax:func/ride/loop_with_title`
实际使用`function bax:func/ride/loop`
输出在bax.temp上 w a s d分数为1则是按下

## 数据包结构

懒

## 更新

懒