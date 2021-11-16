[TOC]



## 个人网站

[如何搭建自己的博客？](https://juejin.cn/post/6844903791083388935)

- hexo+gitpage，不过是静态的网站

数据模拟：[mockjs](https://github.com/nuysoft/Mock/wiki/Getting-Started)

思维导图工具：drawio（这个是在线的），自己用xmind（没钱），有钱就用mindmaster（开通一个，买通只需要600）

- 

## log4js

：日志插件

如何防止自己乱输对象？

- 通过定义常量



## mongodb

教程

- [快速入门](https://juejin.cn/post/6844904150635921422)
- [菜鸟教程](https://www.runoob.com/mongodb/mongodb-tutorial.html)

搭配的工具

- robo3t：数据库可视化工具
- [mongoose](http://www.mongoosejs.net/docs/schematypes.html)：用于便捷的操作mongodb
  - 常见操作
    - [基础](https://juejin.cn/post/6844903509356183560)
    - [进阶](https://juejin.cn/post/6844903510421553166)
    - [高级](https://juejin.cn/post/6844903512925552647)



## Express

：太旧了，没必要

[快速入门](https://www.expressjs.com.cn/starter/installing.html)

接口与接口文档是不同的，

- 接口是指详细的字段（参数、返回值），偏重于设计 ，卧槽，前端开发的时候，接口不一定有啊
- 而文档则是用来测试用的，



## koa

[koa2入门](https://juejin.cn/post/6844903780945756174#heading-4)

- [官方文档](https://koa.bootcss.com/#application)
- [koa-router](https://github.com/ZijianHe/koa-router)
- [通过koa-generator快速搭建koa项目](https://koa.bootcss.com/#application)
- [有时候，也可以到github查看一下别人的学习笔记](https://github.com/chenshenhai/koa2-note)

用npm init来初始化的项目是node项目吗？

node命令与npm命令启动项目的区别

没有babel就不能支持export吗？

书写顺序与执行顺序不一定完全相同，（书写：abc，执行：bca）有些执行顺序已经内定了的

[啥是loader？什么是plugin？](https://juejin.cn/post/6944349196539396133#comment)

- 

怎样解决eslint代码校验和修复的问题？

[node项目如何支持es6？](https://blog.csdn.net/weixin_36897085/article/details/79154105)

- 需要引入babel-preset-2015
- 同时创建配置文件：.babelrc文件
- 还需要引入rimraf，能够吧dist里面的旧文件删除

[npm执行脚本有什么用？](https://blog.csdn.net/weixin_40887276/article/details/114294701)

- npm可以执行单条或多条脚本，而且可以控制串行或者是并行，而且脚本可以通过process来获取package.json中的内容



## Egg

egg常见操作

- [egg入门上](https://juejin.cn/user/3245414055936653/posts)
- [入门下](https://juejin.cn/post/6844903858691375118)

- [官方](https://eggjs.org/zh-cn/intro/index.html)



## Webpack

webpack是什么？

：是用于js应用的模块化打包工具，它从一个或者是多个入口构建模块依赖图，将所依赖的模块打包成一个或多个bundle，webpack是基于node环境的

- webpack支持模块化，不然你写commonjs、es module的代码（import、export）也不认识，无法解析

[webpack常见操作](https://juejin.cn/post/6844904031240863758)

- 

[webpack学习笔记](https://juejin.cn/post/6844904142675279886)

- [webpack的学习仓库](https://juejin.cn/post/6844904142675279886)

[模块化？](https://juejin.cn/post/6844903744518389768)

- 一个文件就是一个模块

定义

- 将一个复杂程序分解，封装成几个块，将其组合在一起
- 模块内部数据私有，只向外暴露一些接口与其他模块通信

常见的模块化标准：commonjs模块化，es6模块化，而且es6模块化

[打包？](https://www.zhihu.com/question/30220505)

- 将多个js模块压缩成一个或者是多个包，再也不用引入15个脚本了，哈哈

核心概念

- entry
- output
- loader
- plugin
- mode
- 浏览器兼容性
- 环境

**常见操作**

：我以后的操作、面试都不会超出这些范畴

- loader的引入，配置
  - 常用的loader：css-loader、file-loader、url-loader
- plugin的引入
  - CopyWebpackPlugin
- 代码分割
  - 使用场景：打包出来的bundle太大，影响请求速度
- 报错的定位
  - 设置dev-tools，通过source-map来完成对源代码的映射
- babe的引入
- devServer

webpack只是一个打包工具，你为什么老是想着它充当http服务器呢？它还真有内置一个开发服务器devServer

- 

webpack的坑

- 他的loader是按书写顺序倒序执行的，所以先处理的要写到后面，后面处理的要在前面写

**loader**

：完成特定模块的转换

接口的作用

- 连接2个系统

cli是命令行接口

- 某个工具提供了cli意味着你可以通过命令行与之交互

webpack-cli

：webpack的命令行接口，负责读取用户输入的命令，并执行，可能会调用webpack，总是就是让你更加方便的使用webpack

代码跑在服务器上与直接在浏览器执行的区别

webpack、webpack-cli需要局部安装

- 因为每个项目需要的webpack版本可能不同，你用更高级或低级的项目会报错的

npm可以执行package中定义的脚本，而npx则是更加灵活，可以直接运行自定义脚本

[浏览器为什么不支持commonjs模块化？](https://www.cnblogs.com/lguow/p/10747209.html)

- 因为没有相应的东西

我怎么知道它支持不支持相对路径啊？

- 报错的时候
- 官方文档（提示只支持绝对路径）
- 保守策略，全部用绝对路径，要么你凭借印象去写，全用相对路径，然后记一两个用绝对路径的

打包对象

- html、css（post-css-loader）、js、图片（url-loader）、字体（file-loader）

[css-loader做了什么?](https://www.jianshu.com/p/d2470f719fee)

- 读取css-loader的内容，可能还做了一些转码

[style-loader做了什么](https://www.jianshu.com/p/d2470f719fee)

- 创建style标签，把css-loader解析的内容放进去
- 再把style标签插入到html文件

url-loader

- 图片转uri

没什么内容要传递的话，用字符串，而有东西要传递的话，用对象的方式

```json
use:[
    'css-loader'
]

user:[
    {
        loader:'css-loader',
        options:{
            name:'zeng'
        }
    }
]
```

[ascii编码](http://c.biancheng.net/c/ascii/)，他的编码（0-9和A-Z来组合，一字节就可以存一个字符），和对应的字符（33个控制字符（这些是不可打印字符）和95个可打印字符），它的打印的字符是非常有限的，只支持英文，不支持其他语言，所以后面除了[utf-8编码](https://blog.csdn.net/qiaqia609/article/details/8069678)，它支持很多语言

- base64编码

浏览器直接就能运行js代码了，傻逼，还想着编译成什么？

[post-css](https://segmentfault.com/a/1190000003909268)

- 他是个平台，里面有很多插件，是用来处理css的，比如自动添加浏览器前缀

静态资源服务器？

- 给我们返回文件而已嘛

有时候属性就是不能为字符串，它应该要是一个模块

- 引入模块的方式：require和import

字体图标下载的是字体，而不是图片

url和uri的区别

- url是统一资源定位符，指定资源的位置，格式固定的，协议，主机，端口，路径
- uri则是统一资源标识符，他是url的超集，有多种形式

**Plugin**

：它是贯穿整个webpack生命周期的，执行比较宽泛的任务，如打包优化、资源管理、环境变量的注入



代码分割

：使用场景：包太大



#### babel

：js的转码器，你js高级语法（es2015+）来编写代码，需要通过babel来转码

核心概念

- 

主要操作

- 

npx是直接执行node_module里面.bin文件夹里的对应的二进制（bin）



## Vite

：

[vite常见操作](https://juejin.cn/post/6910014283707318279#heading-5)





## Nginx

[常见操作](https://juejin.cn/post/6844904144235413512#heading-0)

[静态资源，动态资源的区别](https://www.cnblogs.com/paidaxingtwo/p/9267265.html)

刻板印象：点击exe一闪而过就是失败了，其实不是，nginx就给我们上了一课，它就代表任务已完成，服务已经开启

[nginx如何配置多个项目？](https://www.cnblogs.com/zhaoxxnbsp/p/12691398.html)



## Gitlab

：类似宝塔



[常用操作](https://juejin.cn/post/6989411087611330573#heading-7)

- [安装、常用命令](https://juejin.cn/post/6844904065973878791#heading-28)

gitlab的工作流程

- 管理员（一般是组长）创建分支，给开发人员分配分支
- 开发人员完成开发，推送到远程分支，申请合并到主分支
- 组长合并分支

gitlab的作用

- 项目管理
- 权限控制
- 开发者、运维都能看到自己想看的

ssh（secure shell）

- 远程登录服务器：ssh root@<ip>，你需要先配置公钥、私钥



我怎么知道修改了配置要不要重启啊，啊哈哈

## Jenkins

：前端项目部署工具，持续集成、持续部署

[常用操作](https://juejin.cn/post/6887751398499287054#heading-1)



## 前端优化

：基本都是跟你讲性能优化的

[常见操作](https://juejin.cn/post/6844903568130965517)

- [腾讯优化](https://juejin.cn/post/6844903799736254477)
- 基本都是在webpack里面完成的，哈哈

优化你首先要知道项目的流程

优化不是盲目优化，你需要学会测试（人工测试、工具测试）

domain不就是域名吗？我吐了，还主域

render就是渲染啊

雪碧图，将多张icon能组合成一张图片

前端的

## vscode

[各种框架应用开发的vs插件](https://juejin.cn/post/6844903635017531405#heading-7)

- 我早应该找一篇包括插件集合的文章



## 提高办公效率的工具

- [QTTabBar](https://zhuanlan.zhihu.com/p/37012044)：让你像操作浏览器一样操作文件系统，还能预览，不需要进入文件夹
  - 创建文件的快捷键：ctrl+shift+t，就可以，舒服了
  
- 截图工具：Snipaste，常用操作

  - 截图快捷键（不需要做标记什么）：ctrl+f1
  - 要做笔记：直接f1
  - 贴图：f3

  常规组合
  
  - 截图+钉在界面：f1、ctrl+t
  - 截图+贴图：f1、f3
  
  

