前言：本文档主要是记录一些vite学习要点和学习过程的产生的问题，读者通过阅读该文档+官方文档，完成入门，（注：官方文档有的东西，我不会冗余）

推荐的和yarn搭配使用

教程

- npm：https://juejin.cn/post/6844903870578032647
- pnpm
  - 官网：https://pnpm.io/zh/motivation

- npx：https://juejin.cn/post/6844904098534260749
- 发包：https://juejin.cn/post/6844903679162581005
- monorepo：https://juejin.cn/post/7131709376921862158
- workspace：https://juejin.cn/post/7071992448511279141
- npm install常见错误
  - https://blog.csdn.net/meimeib/article/details/121969219
- 模块系统
  - https://juejin.cn/post/6935973925004247077


关键名称

- peerDependency:对等依赖
- legacy：旧、遗留

配置信息



## npm

依赖几种？

- 5种：生产、开发、对等、可选、链接



有些工具需要加--来传递参数，有些不用，区别在于解析方式不同，我倾向于要加--

![image-20231019103326550](https://raw.githubusercontent.com/CODER-ZHM1997/picture/main/imgsimage-20231019103326550.png)





## pnpm

#### 核心关注点

- 如何引入包？
  - 有第三方包和第一方包（自定义的）
- 如何对某个包进行发布？



pnpm xxx与pnpm run xxx都是一样的

- 

pnpm run是跑package定义的脚本的

pnpm exec除了可以跑脚本，还可以跑项目.bin中的可执行文件



pnpm相比npm的优势

- 更快：全局安装模块，安装过的不会再安装，而且硬链接共享
  - 解决了幽灵依赖问题

- 支持workspace

- 更小：磁盘占用更小
  - 采用符号链接，依赖全局存放，而不是每个项目存一份依赖



pnpm引入引入其他模块

- 可以通过修改它的package文件即可，不是通过pnpm i xxx的方式来安装，这样安装只会安装到线上的

```json
 "dependencies": {

  "@zeng/back": "workspace:back@*",

  "react": "^18.2.0"

 }
```

别名一般写在前面





## 模块系统

esm模块是主流，在前后端都可以用

- 用来代替cjs（适用后端），amd（实用前端）

umd是cjs和amd的组合



## monorepo

：单一仓库，多个项目放到一个仓库中

通过workspaces实现对依赖的快速引用





## 问题

依赖解析是怎么玩的？

- 

怎样算同一个包？

- 主版本相同即可

依赖分几种？

- 
