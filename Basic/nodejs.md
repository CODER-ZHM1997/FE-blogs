nodejs能做什么？解决什么问题？

：js的运行时环境，能够让js浏览器之外，也能执行

教程

- 入门：https://juejin.cn/post/6844903767926636558
- [常见操作](https://juejin.cn/post/6844904029219192839#heading-1)
- 7天入门：http://nqdeng.github.io/7-days-nodejs/
- [node官方文档](https://nodejs.org/dist/latest-v14.x/docs/api/)
- npm
  - 入门：https://juejin.cn/post/6911853807756378125
- 视频教程
  - https://www.bilibili.com/video/BV1tZ4y1D7QU/?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4
  - https://www.bilibili.com/video/BV1a34y167AZ/?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4
- 搭建cli：https://juejin.cn/post/7063657010885034020
- liveserver：https://juejin.cn/post/7074620057547964453
- nvm：https://juejin.cn/post/7000652162950758431
  - 安装：直接跑到官网去安装即可：https://github.com/coreybutler/nvm-windows/releases
- 命令行解析工具minimist：https://juejin.cn/post/6975687741761650695



## 问题

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

## 模块机制

加载流程、优先级：

针对不同文件的处理

- .js
- .json
- .node

写的是文件目录，但是它有index文件，那这个文件目录也能当做一个模块

## Http

socket相当于快递小哥，你要发送和接收数据包只需要对接socket即可

你要思考整个系统是怎么驱动的？

：往往是基于事件驱动的

## Node Cli

命令行参数的处理：commanders、inquirer

输出：chalk

如何搭建自己的脚手架？

- 推荐工具：plop、yeoman

## 问题

node的架构是怎样的？



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





