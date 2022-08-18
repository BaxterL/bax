# Baxlib

我也是没想到，这前置还真可以写这么多，既然都写这么多了，那就整个说明文档

## 结构目录

数据包大体结构如下
- advancements
- functions
  - entity
  - event
  - func
  - generic
  - lib
  - list
- item_modifiers
- loot_tables
- predicates
- recipes
- tags
  - ...
  - functions
    - generic
    - player

部分文件夹名称为zzz里面的函数不可修改
可执行的前置函数开头一般带有"#> 函数名"这个标志，大部分函数会说明输入和输出

## 使用说明

本前置会自己初始化，卸载请执行"bax:generic/uninstall"
有些模块需要开启本函数的循环才会开始执行，所以推荐将"bax:main"函数加入循环

#### 基本前置

functions/lib 下有非常多的前置函数供你使用
比如获取两实体的距离可以使用distance前置函数,返回值是100倍
```mcfunction
tag @s add bax.distance_1
tag @e[tag=temp] add bax.distance_2
function bax:lib/distance
```
再比如使用盔甲架生成动画延迟修正函数
```mcfunction
function bax:lib/rotsum
data merge entity @e[tag=this_,type=armor_stand,limit=1] {Tags:["mytag"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}]}
```
其他的就看函数注释吧

#### 事件模块

tags/functions/event 实体/玩家 攻击/击杀 事件检测
使用前需要对实体和玩家进行初始化(function bax:event/init)，如果需要重置请对实体执行(function bax:event/reset)

需要注意事件检测的标签函数中有个扇形检测的函数(sector.json)

#### 实体模块

functions/entity 包含uaec循环、训练假人、玩家属性调整
你可以给aec添加"uaec"的标签，他会实时更新自己nbt Air的值(需要启用该前置)

#### 杂七杂八

functions/list 是列表操作 functions/func 中有一些杂七杂八的函数，比如史莱姆(没有kill)挤压等等，你可以自己摸索

其中有个damage函数需要启用我的另一个自定义伤害前置，否则不会生效