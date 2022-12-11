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

1.2更新了一个可用函数说明文档(help.md)

本前置会自己初始化，卸载请执行"bax:generic/uninstall"
有些模块需要开启本函数的循环才会开始执行，所以推荐将"bax:main"函数加入循环

### 基本前置

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

