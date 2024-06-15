nodejs是js的运行时环境

## 教程

- 入门
  - 学习指南
    - https://juejin.cn/column/7246672925667344441
    - https://github.com/qufei1993/Nodejs-Roadmap
- node18新特性：https://juejin.cn/post/7089353090687565832
- nvm：https://juejin.cn/post/7000652162950758431
  - 安装：直接跑到官网去安装即可：https://github.com/coreybutler/nvm-windows/releases
- 命令行解析工具minimist：https://juejin.cn/post/6975687741761650695
- package.json文件
  - [中高级前端必须掌握的package.json最新最全指南 - 掘金 (juejin.cn)](https://juejin.cn/post/7240805459288522808?searchId=202405281829098AE7D2A0258C9D4222E8)




## 核心问题

#### 关注点

- npm、npx
- module
- fs
- url、path、os
- http
  - 事件、方法、客户端&服务端
- buffer
- stream
  - 流类型、流事件、管道流、数据处理（比如解析、转换、压缩）、错误处理、应用场景（文件处理、网络通信、图像&视频&音频处理）
- net
- dns
- event
- process & thread
  - process：创建&销毁进程、状态、事件、方法、通信、错误处理
  - thread：
- cluster



## nvm

node版本管理工具

你要去nvm-windows下载，不要跑错地方了

- [Releases · coreybutler/nvm-windows (github.com)](https://github.com/coreybutler/nvm-windows/releases)



## npm

包管理工具

关闭https验证

指定新的源

登录失败

- [npm login error "Public registration is not allowed"? - Stack Overflow](https://stackoverflow.com/questions/73147053/npm-login-error-public-registration-is-not-allowed)

发包

- [代码魔法：探秘背后的奇幻-NPM库世界 - 掘金 (juejin.cn)](https://juejin.cn/post/7264900667595702331?searchId=20240527163851488AA75C7FA007B5EC83#heading-23)

包有几种类型

- js包
- ui包
- css包

[自定义Vue前端组件发包到npm - 掘金 (juejin.cn)](https://juejin.cn/post/6953450915940532237?searchId=202405271509366A69C73EDF1971A3E054#heading-2)

- 

如果没有配置.npmignore文件，它会把

前缀跟账号有关，不是任意账号都可以发@vue前缀的包的

- 需要授权，
- 或者是用你自己的账号作为前缀



发包最好也用一条命令搞定

- 









## pnpm

命名和参数的位置不能倒置

- 必须是参数在前，命令在后，比如pnpm -r build



## monorepo

关注点

- 安装
- 打包

教程

- [从构建到发布：Monorepo 的最佳实践 - 掘金 (juejin.cn)](https://juejin.cn/post/7210310775276716092?searchId=202405262009597CF8E51E235A1CEB61CC)
- [Monorepo pnpm模式管理多个web项目（Vue3） - 掘金 (juejin.cn)](https://juejin.cn/post/7117897323014783013?searchId=20240526201519AAE0270EA3B82A42A574#heading-7)

优点

- 能够将多个项目放到同一个代码仓库中，不用每个项目都单独一个仓库
- 而且A项目依赖于B项目，也不需要安装依赖了，直接导入即可



怎么安装，要不要安装，才能引入同个仓库下的其他包？

- 直接全局安装一下即可，这样包就可以导入了

怎么打包？

- 

安装时提示无效包，可以考虑一下删除配置和包，然后再安装

```c
rm -rf node_modules pnpm-lock.yaml
pnpm install
```



怎么发包到npm？







## 插件

#### bumpp

：主要是用于版本提升的时候调用，主要是跟master版本有关的，平时dev分支分支的卡还根本不用调用bumpp

调用方式

- 手动：常见
- 自动：写在在github actions

#### release-it

：可以用于发布到npm



#### nrm

包的源管理工具



## yaml

教程：[YAML 入门教程 | 菜鸟教程 (runoob.com)](https://www.runoob.com/w3cnote/yaml-intro.html)



## basic 基础

架构

- 

特点

- 单线程
- 事件驱动
- 非阻塞式IO

适用场景

- 

event loop

- 



## module 模块系统

[前端的导入导出：「CommonJS」「ES Module」模块化规范 - 掘金 (juejin.cn)](https://juejin.cn/post/6970296913039999007?searchId=20240527160402C18897667B9ADB588673#heading-4)

模块系统

- cjs
  - 最开始是用于服务端的，即nodejs

- esm
  - 适用于浏览器，而且服务端也支持，做到了大一统


模块分类

- 内置模块
- 第三方
- 自定义

常见操作

- 导入导出
- 模块查找
- 缓存



模块查找机制

- 是否为内置模块，是则直接返回内置模块
- 是否已/开头
  - 是则直接设置当前文件为根路径
- 是否已./,../或者是/开头
  - 已文件方式加载
  - 以目录访问加载
- 查找node_modules



源代码可以打包成不同的模块系统吗？

模块的加载与解析、执行

- 加载：只是加载内容，不关心里面有啥
- 解析：则是解析内容，构建依赖关系，解析动作可能会触发其他模块的加载、解析动作
- 执行：做变量初始化等动作
  - 而且只执行1次，多次导入也只会执行1次




nodejs如何加载es模块？

默认是把所有js模块都当成cjs模块的

- 命名模块后缀为mjs
- package文件中type为module



cjs模块也可以兼容esm模块系统，通过加配置，这样就可以直接import这个cjs模块了

- Object.defineProperty(exports, "__esModule", { value: true });



在vite项目的vue文件中无法使用require函数

- 因为vite使用的是es模块系统，由浏览器直接提供支持



esm导入的变量都是单例的

- 如果不是单例的其实没有太大意义，因为状态无法保存



## path 路径

join：拼接路径得到相对路径

- 跟__dirname搭配，可以得到绝对路径

resolve：拼接得到绝对路劲

normalize：格式化路径



## event 事件



## http 请求



socket相当于快递小哥，你要发送和接收数据包只需要对接socket即可





## buffer 缓冲区

：用于处理二进制数据

适用场景

- 文件操作
- 网络操作

crud操作

- 比如创建、读取、修改
- 还有比较、合并成一个新的、拷贝、读取长度啥的



二进制内容跟编码有关，不同的编码会有不同的二进制

- 



## stream 流

：用于处理数据的接口，用于数据的输入、输出，

流的好处

- 分块处理：避免一次性加载全部数据到内存

流动是有方向的

- 可读到可写
- 可写到可写



4种类型

- 可读流Readable：可以从数据源里面读数据
- 可写流Writable：可以往数据目标里写数据
- 双工流Duplex：可读可写
- 转换流Transform：也是Duplex流，但是它可以做一些转换动作，比如压缩、加密、解密



常见的数据源：文件、数据库、网络请求

常见的数据目标：文件、数据库



管道流

：一种流处理技术，可以把数据从一个流输入到另一个流，把多个流连在一起

- 管道：就是连在一起的东西，有输入和输出，有先后关系
- 



## crypto 加解密

：





## process 进程

进程 process & 线程 thread

- 进程：资源分配的基本单位
- 线程：cpu调度的基本单位
- 一个进程可以包括多个线程，一个进程至少一个线程，最重要的线程一般就是主线程

状态：等待、运行、挂起、终止

为啥要有父子进程？

发布&订阅模式方法的搭配

- 发布：emit、其他方法比如send
- 订阅：on



IPC：进程通信

- 父子进程的通信通道是自动创建的，创建子进程后就可以通过on、send来通信了



## thread 线程



## net 网络



## dns 域名解析



## cluster 集群



## node cli

命令行参数的处理：commanders、inquirer

输出：chalk

如何搭建自己的脚手架？

- 推荐工具：plop、yeoman



## npx

：自动安装包（临时安装），然后执行包中的命令，然后卸载

包中的命令是如何定义的？

- 有个匹配机制



## package.json文件解读

bin
：

main啥时候回被触发？

- 

如何发布一个npm包？

main

- 导入包的时候，导入的是bin定义的



## schedule 定时任务

库：node-schedule

关注点

- 定义定时任务：基于你指定的时间点
- 定义间隔任务：基于你指定的时间间隔

适用场景

- 



0,7是周日，其他都是对的上的

有些配置是冲突的，比如表示日期的几号和星期几，其中一个配了，另一个就要用?



定时任务

```js
// 每晚晚八点掘金开奖
* * 20 * * ?

// 每周的1、3、5晚上6点30锻炼身体，
* 30 18 ? * 1,3,5
```





## 问题

怎样算一个node项目？纯前端项目算node项目吗？

- node项目是最终通过nodejs来运行的，如node server.js
- 而纯前端项目它最终则是在浏览器端运行的，所以不是node项目
  - 但是它在构建过程可以借助node的api
  - 但是你不能在运行时调用node的api

node的架构是怎样的？

事件驱动有啥好处？

非阻塞io有啥优点？

path

- resolve与join区别？https://juejin.cn/post/7033394363443740685
- resolve碰到/开头则是直接切到根目录下了，而join不会

[buffer？](https://blog.csdn.net/u011127019/article/details/52512242)

- 是一个专门存放二进制数据的缓冲区

[为什么要用base64？](https://www.jianshu.com/p/14437764eff3)

- base64是使用可打印的64个字符来表示二进制的方法，
- [为什么要引入base64？](https://blog.csdn.net/ly853602/article/details/81430389)
- 应用场景：传入图片等二进制数据
  - 工具：js-base64

npm与npx的区别

- npm是包管理工具，
- npx是执行软件包的工具，如果没有可以先安装，再执行

中间件？如express和koa

- 其实就是粘合层，来应对快速变化的需求，提高工作的效率

[全双工与半双工](https://blog.csdn.net/liangtianmeng/article/details/84726606)

- 全：能同时发和收
- 半：不能同时发和收，
- 单：在任意时刻，都只能发或只能收

代理？

- 代理就是你直接去拿（访问）拿不到，你叫代理去拿（访问）可以拿的到，并且返回给你
- 有正向代理和反向代理

用nodemon插件就能够知道代码发生了修改，会自动重新编译，直接用nodemon命令去执行即可

- 真是个好东西

tmd谁能把跨域工具解释清楚啊？

- 

事件还能自己触发、自己监听，事件监听器牛逼坏了

什么是流？你可以把他当作是吸管，可读可写

- 是用于操作流数据的接口

你要内存读找标准输入流，他是可读取数据的流，你要写入内存则是找标准输出流，他是可写入数据的流

- 口诀：入读

一字节8位二进制，

知道buffer为什么叫buffer缓冲了

- 因为只是临时存放数据



node是什么？

- 基于chrome v8引擎的js运行环境，能解析、执行js代码

[node与浏览器的区别？](https://www.php.cn/website-design-ask-484186.html#:~:text=%E5%8C%BA%E5%88%AB%EF%BC%9A1%E3%80%81%E5%85%A8%E5%B1%80%E7%8E%AF%E5%A2%83%E4%B8%8B,%E7%9A%84%E6%96%87%E4%BB%B6%E6%93%8D%E4%BD%9C%E7%AD%89%E5%8A%9F%E8%83%BD%E3%80%82)

搭配工具

- nodemon：负责热更新
- liveserver：本地服务器，能热更新

为啥直接开跟用liveserver不一样？

：直接打开会有跨域问题



程序为什么能够停住？

- 比如能够监听某个端口



BOM和DOM的区别？



什么是流式数据？

：多个数据源持续生成的数据

**buffer**

：主要是stream数据生产和消费不同速的问题，buffer就是存放二进制数据

使用场景

- 文件、网络操作返回类型为buffer

哪些会自动创建buffer，哪些时候需要手动

Buffer.alloc、Buffer.from

**Stream**

：是一种读取和写入数据的方案

**Event**

**Error**

**URL**

**Process**

**Global**

：有些是看上去是全局变量，其实只是存在于当前模块作用域

```js
__dirname,__filename,module,require
```



缓冲与缓存区别
：缓存是在cpu中的，有三级缓存，一级缓存最快，三级缓存最慢，缓冲是在内存中的



为啥npx xxx 就能跑

：



怎么判断要导出函数还是类？

- 导出函数：没有内部状态的，不需要多次实例化的
- 导出类：需要维护内部状态的，需要多次实例化的



二进制与编码的关系

- 二进制本身是没有编码的，但是为了能够解析二进制数据，就必须知道他的编码才能解析（即解码）
  - 默认编码为utf8



为什么有些要设计成静态方法，有些则是实例方法，如何选择？



devops：https://juejin.cn/post/6965860856311578637?searchId=20230913084100195ECB2552388C28549D



流（stream）模式与缓冲器（buffer）模式的区别
：<https://blog.csdn.net/sunlizhen/article/details/78016323>

如果第三方库没有声明对应的类型文件，那么就需要自己去声明

- 可以通过声明模块的方式来声明
- 也可以通过声明文件的方式来声明

npm i
：没有与

缓冲与缓存区别
：缓存是在cpu中的，有三级缓存，一级缓存最快，三级缓存最慢，缓冲是在内存中的

import与require区别？
：import *是导入所有的，require是导入默认的

- require是动态加载，而import是静态编译

动态编译、静态编译的区别？

- 执行时机不同：静态编译是在编译时编译、动态编译是在运行时编译
- 链接内容大小不同：静态编译只需要链接链接库的一部分内容，动态编译需要链接整个链接库





是选择多进程还是多线程？

网络端口是与进程还是线程绑定的？
：进程

什么情况下需要封装成一个类，什么情况下，则是只用函数就可以了？
：如果需要保存状态，那么就需要封装成一个类，如果不需要保存状态，那么就只需要函数就可以了

为啥要有call、apply？
：为了改变this的指向，那改变this指向又有啥用呢？可以让某个对象方便的去调用不在它身上的方法

形参应该如何设计？

跨域cors原理
：<https://juejin.cn/post/6859351705453068295>

- 跨域被阻塞，其实是浏览器对响应的阻塞，而非对请求的阻塞，它是有发出去请求的

直接import 'xxx'会发生什么？
：会去node_modules中找xxx，如果找不到，那么就会去node_modules中找xxx文件夹，然后找xxx文件夹中的index.js

**pageage.json**

- main入口文件
- bin命令行入口文件
- files指定哪些文件需要被打包，安装的时候才会被安装进去

**commander**

- 命令行的解析是可定义的，取决于你怎么定义
  - boolean选项与带参数的选项

node通过命令行执行脚本时如何给脚本传参？

- 直接传递即可，比如node xxx.js 1 2 3



不同模块系统可以相互导入吗？

- esm可以import cjs的模块吗？不直接支持，需要另外配置babel才支持



升级问题

- 直接npm update 报错咋解？

- 

为啥有些数据通过属性获取比如.name，而有些则是方法来获取比如getName

- 属性：比较简单、次要的
- 方法：比较关键的数据，需要有其他副作用的

