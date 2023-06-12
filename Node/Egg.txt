本文档主要记录一下学习egg的一些疑问？

教程

- 官方文档：https://eggjs.github.io/zh/guide/
- express、koa、egg、midway、nest，这四者的区别：https://juejin.cn/post/6998355750917505061



学习日记

- 

## 驱动问题

- 如何快速测试接口？
- 异常处理要怎么做？
- 怎么去做划分，比如怎样算划分为一个controller、一个service、一个model？
- controller、service、model分别应该做什么？
- 应用、框架、插件三者的区别



## 插件

主要了解插件的使用、自定义插件、还有一些内置插件

插件与中间件有啥区别？



## 内置对象

app本身是可以通过this或者是注入的方式获取

ctx则是在this上获取，或通过注入方式获取（中间层）

- 其他大多对象都是从ctx上获取，如ctx.request，ctx.response



## 路由

校验规则文档在哪？

：他是通过validate插件来实现的：https://github.com/eggjs/egg-validate

连表查询的应该怎么命名？



## 中间件



## Controller

接收：不用写接收的参数，一般都是直接从请求体中获取

返回：统一的响应格式，

controller模块是怎样划分的？

- 难道一个实体，一个controller？

egg内置controller和service的方法口诀：ciud,还有个s，即show，他的d是destroy

- mongoose则是有自己的一套：cfud，它的d是delete

请求参数不完整的情况，

- 要放到哪里去校验？controller？还是service？
- 返回的提示要怎么设计？
- 有没有机会做批量校验？
- 有没有校验工具？

响应多余的场景

- 有些参数是不需要的，比如内部的一些属性，需要裁剪吗？



## Service

接收：一般都是接收处理好的参数，可以传入params，然后通过点来访问，或者是具体的参数

返回：返回的是数据库的操作结果

什么时候可以不用service？

- 

单个service模块如何测试？我访问要通过controller来测试的，不可能专门写一个controller来搞把？

- 也可以通过测试用例来对服务进行测试

如果只是修改某个状态，则是用updateXXX命名



## 问题

驱动问题

- 如何去debug api
- 如何去定位问题？



怎么调试接口？

- 用console：debugger不能直接写，要以命令行的方式开启debugger
- 配合postman



mvc设计、mvp、mvvm设计有啥好处？是为了解决啥问题？如果不分层会怎样？

：https://juejin.cn/post/7043716896767606798#heading-6

- 他画的图，我看不懂，直接去B站搜索把

很多东西都是从上下文ctx中获取的

- 比如cookie、session

有些是从app中去，比如



啥时候要重启服务才能生效？

- 默认不重启，除非你知道要重启或者是当前不生效，你才需要重启

我怎么知道你是属于进程还是线程？

中间层是要写2个方法吗？

- 因为按照洋葱模型是要请求和响应的

插件

- egg-bin
- egg-script

内置对象如何组织的？为啥要这样设计？

- 比如我想要访问config

有些是按照文件名，有些则是会按他的规则生成

- 大写开头：定义model命名用的是user，但是访问的时候却是要用User
- 按小写+s：我model名为user，但是关联的表却，如users来找

- 



resource怎样保证接口crud是完整的？

 如何判断数据库操作成功了？

- 不管返回值，只看有没有异常发生吗？

- 



_id有啥用？

报错如何定位？

如何快速提高熟练度？

- 通过记录常见操作和常见问题，不断地复利，以达到提高熟练度的目的



常见的404问题

- 可能是地址没写对
- 请求方法对不上
- 或者是你没有返回

组合操作的要怎么弄？

- 比如选课，如何防止重复选中同一门课？我需要先判断一下用户有没有选中这门课先，没有选中我才能选这门课

常见的报错原因

- 参数值传入不符合规范，比如



能不能选中代码片段来执行

- 

注意下这几类对象挂载的位置的区别？

- controller挂载到app下
- service和model则是挂载到context下，基本都是挂载context下

