

## 教程

- github项目
  - 入门：https://github.com/FrontEndGitHub/FrontEndGitHub/issues/47
  - 
  - 实战：https://blog.51cto.com/u_15069443/2575927
  - https://juejin.cn/post/6961101653709684772
  - awesome node：https://github.com/sindresorhus/awesome-nodejs
- 入门
  - 学习指南：https://juejin.cn/post/7246689952933625914
  - 实战：https://github.com/csxiaoyaojianxian/JavaScriptStudy/blob/master/17-nodejs/03-buffer.js
  - 7天入门：http://nqdeng.github.io/7-days-nodejs/
  - 快速入门：https://juejin.cn/post/6911853807756378125
  - https://github.com/csxiaoyaojianxian/JavaScriptStudy/blob/master/17-nodejs/02-%E4%BA%8B%E4%BB%B6%E5%BE%AA%E7%8E%AF.js
  - https://juejin.cn/post/6844903767926636558
  - 大纲：https://github.com/ringcrl/node-point/blob/master/README.md
  - 视频：https://www.bilibili.com/video/BV1gM411W7ex
  - [常见操作](https://juejin.cn/post/6844904029219192839#heading-1)
- 视频教程
  - https://www.bilibili.com/video/BV1tZ4y1D7QU/?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4
  - https://www.bilibili.com/video/BV1a34y167AZ/?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4
- 搭建cli：https://juejin.cn/post/7063657010885034020
- liveserver：https://juejin.cn/post/7074620057547964453
- nvm：https://juejin.cn/post/7000652162950758431
  - 安装：直接跑到官网去安装即可：https://github.com/coreybutler/nvm-windows/releases
- 命令行解析工具minimist：https://juejin.cn/post/6975687741761650695
- nodejs的流：https://juejin.cn/post/6854573219060400141
- web worker:https://juejin.cn/post/7176788060619669565
- npx：https://juejin.cn/post/7142666525365764104
- package：https://juejin.cn/post/7240805459288522808?searchId=20230717003123FDFD6C5E378389D16FA2
- 实战：https://juejin.cn/column/7246672925667344441



## 核心问题

node是什么？适用场景有哪些？

- 他是js的运行时环境
- 适用场景：https://juejin.cn/post/7258881840823713848?searchId=20230903234954A6D80AD93A5581AA7891#heading-2

学习项目或博主有哪些？

核心模块有哪些？

- npm
- fs模块
- http模块
- url、path模块
- stream模块
- buffer模块

特点

- 模块化
- 事件驱动
- 异步编程（或者叫非阻塞IO）

生态

- 可以集成哪些框架？

架构

- 

面试题有吗？





## 模块化

模块分类

- 核心
- 第三方
- 自定义

核心

- 导入导出
- 路径解析
- 缓存



主题

- 模块
- 模块初始化
- 模块路劲解析
  - 涉及到查找规则列表和优先级
- 包
  - 入口模块
- 包管理器npm



写的是文件目录，但是它有index文件，那这个文件目录也能当做一个模块

模块的代码只会被初始化1次



如何把注册一个shell命令，然后用新命令来执行js脚本



## 文件操作

主题

- crud
- 同步、异步





#### 流

pipe起到流连接的作用



## Http

socket相当于快递小哥，你要发送和接收数据包只需要对接socket即可

你要思考整个系统是怎么驱动的？

：往往是基于事件驱动的



## Buffer

：用于操作二进制数据

适用场景

- 文件操作
- 网络操作

crud操作

- 比如创建、读取、修改
- 还有比较、合并成一个新的、拷贝、读取长度啥的





## Node Cli

命令行参数的处理：commanders、inquirer

输出：chalk

如何搭建自己的脚手架？

- 推荐工具：plop、yeoman



## 问题

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



