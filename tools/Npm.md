前言：本文档主要是记录一些vite学习要点和学习过程的产生的问题，读者通过阅读该文档+官方文档，完成入门，（注：官方文档有的东西，我不会冗余）

推荐的和yarn搭配使用

教程

- npm：https://juejin.cn/post/6844903870578032647
- pnpm：https://juejin.cn/post/7053340250210795557
- npx：https://juejin.cn/post/6844904098534260749
- 发包：https://juejin.cn/post/6844903679162581005
- monorepo：https://juejin.cn/post/7131709376921862158
- workspace：https://juejin.cn/post/7071992448511279141
- npm install常见错误
  - https://blog.csdn.net/meimeib/article/details/121969219


关键名称

- peerDependency:同伴依赖
- legacy过时的，旧的

配置信息

## 问题

常见操作

常见问题

- peer dependency依赖冲突
- pnpm又解决了什么问题？



我怎么知道全家桶的中的其他东西适配不？

npm init xxx，如npm init vite

- 其实是npx create-xxx,然后就会执行

vue add有啥用

- [用于安装插件](https://blog.csdn.net/qq_34086980/article/details/114447578?spm=1001.2101.3001.6650.2&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-2-114447578-blog-108338944.pc_relevant_paycolumn_v3&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-2-114447578-blog-108338944.pc_relevant_paycolumn_v3&utm_relevant_index=5)

pnpm与npm区别？

- 快？

vite2只支持vue3

[vite快速入门](https://juejin.cn/post/6910014283707318279#heading-0)

- 里面教你如何引入各种处理器

npx有啥用？https://juejin.cn/post/6929742176268058631#heading-3

- 能够直接执行命令：他会去node_modules中的.bin还有path下查找命令

npmrc配置文件，需要了解几个

- 

.editconfig：能够跨IDE，实现相同代码格式化

依赖安装自己的依赖能够被顶级访问吗？

：eslint-plugin-vue需要的vue-eslint-parser就被安装到顶级了，

如果我没有下载这个库A，但是我下载的库B引用到了，那么我能用间接这个库吗？

- 因为存在扁平安装

#### script

取决于minimist，看下他的解析

- --mode，则是mode=true
- --mode=dev，则是mode=‘dev’
- 

process.argv数组有啥用？

#### npm配置

- npmrc能够让npm的配置变成全局的，非常有用



#### npm发包

- 准备工作
- 整体流程
- 注意事项



#### npm install

安装机制

- 扁平化安装，先看当前项目的node_modules下的包是否兼容，不兼容则是安装到依赖包下的node_modules中
- 根目录下的node_modules不会安装同一个包的2个版本

包的查找机制

- 会从当前包的node_modules进行查找
- 找不到再向上级查找

安装成功，你的项目不一定能跑起来！

常见的报错及解决思路

- 安装时提示解析报错
  - peerDependency冲突直接给你报错，你可以选择-f，直接安装，不用管报错，这也报错也是醉了


[npm的 --legacy-peer-deps](https://bbs.huaweicloud.com/blogs/349716)

- --legacy-peer-deps（以过时legacy的方式去处理同伴依赖，即不安装伙伴依赖）会不会导致某些包安装缺失？
- [peerdependency冲突咋办？](https://segmentfault.com/q/1010000011571000)
  - 只能安装一个peerdependency，另一个包你只能找合适范围的版本

--force有啥用？

:https://segmentfault.com/q/1010000042600696/a-1020000042600698

npm和pnpm的生成的node_module文件有没有冲突的？

npm报错peer dependency conflict会怎样？

- 我觉得不会冲突，都安装就行了呀

npm的解析流程是怎样的？

什么时候需要安装lock和node_modules文件？

安装了包的不同版本，会不会导致查找出现问题？

[requires有啥用？主要是区别于dependencies](https://juejin.cn/post/6884061044218691598)

- requires是描述当前包所有需要的依赖包（不包括间接依赖），而dependencies则是描述的是安装在当前包的node_modules下的包



pnpm的安装机制是怎样的？

#### npm update

什么情况下需要进行升级操作？

