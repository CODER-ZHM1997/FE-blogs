

前言：本文主要记录一些js的要点和学习过程中产生的问题

教程

- 指南：[JavaScript 中 try...catch 的 10 个使用技巧 (yuque.com)](https://www.yuque.com/wangpingan/knowledge/rk3glhlqht56o43u#52b77608)
- 面试题：
  - [「2021」高频前端面试题汇总之JavaScript篇（上） - 掘金 (juejin.cn)](https://juejin.cn/post/6940945178899251230#heading-90)
  - [【建议星星】要就来45道Promise面试题一次爽到底(1.1w字用心整理) - 掘金 (juejin.cn)](https://juejin.cn/post/6844904077537574919?searchId=20240518181731471A65E69D8E19117E12#heading-50)

- es指南：https://es6.ruanyifeng.com/#README
- [在 web 应用程序中使用文件 - Web API | MDN (mozilla.org)](https://developer.mozilla.org/zh-CN/docs/Web/API/File_API/Using_files_from_web_applications#示例：使用对象_url_来显示图片)
- [import语句与函数](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Statements/import)



## 关注点

js三大模块：es、dom、bom
- es是语言规范，而js才是实现，不同浏览器厂商可能有不同的js实现方式，但是es调用方式都是一样的









## web api

：由浏览器提供支持的接口，但是通常用js来调用

常见的web api

- dom
- xhr、fetch
- socket
- storage
- canvas
- event



#### event

- target（常用）：指向最先触发事件的元素
- currentTarget：指向事件绑定的元素





#### storage



怎么存？

- 好像存的是一个对象，而不是一个属性一个属性的存

怎么取？

- 你也可以用JSON.parse来将字符串转换成对象，如JSON.parse(localStorage.getItem("userInfo"))
- 一般是pinia帮我们做这件事了，不用我们单独的取

注意

- 遵守同源策略，所以三级域名不能访问二级域名



#### websocket

：一种双向通信通信协议，目的是服务端推送

场景：跟王者一样

- 多人游戏：传输其他玩家的动作和状态
- 聊天室
- 数据监控



全双工&半双工

- 区别
  - 全双工：双方可以同时发送和接受数据，如电话
  - 半双工：在某一时刻只能有一方在发送，另一方在接受数据，如对讲机
- 相同点：都能双向通信



## array

会修改数组的函数：ssr（splice、sort、reverse）



## bom

：浏览器对象模型

bom与dom区别？

- bom是由浏览器提供支持的，基本只能在浏览器端使用

bom对象包括dom对象

- window.document

我喜欢先主后分，因为第一看看到的就是整体，而不是局部



各种宽度，高度，

- 不包括滚动条：document.body.clientWidth，换成document.documentElement.clientWidth也一样
  - 包括滚动条：window.innerWidth
- 内容高度：document.body.scrollHeight
  - 内容高度可能小于clientHeight，也可能大于
- 



## dom

：文档对象模型

dom可以在浏览器提供支持

- 也可以在服务端使用，只要你安装了对应的库









## function

**参数传递**

：都是值传递，不管是基础类型，还是引用类型

- 对于引用类型，它拷贝了一份引用值，然后赋值给参数





**高阶函数**

定义：满足以下条件之一

- 接收函数作为参数
- 返回函数

使用场景

- 用于封装一些常见操作，比如map、filter、reduce
- 封装一个已有函数，返回一个新函数，比如withLogging



**箭头函数**

使用场景

- 不用绑定this，它没有自己的this，他会继承外层this
- 简化函数

不适用场景

- 有动态this的情况



**纯函数**

：

- 相同的输入会有相同的输出
- 不会改变外部环境的状态

使用场景

- 函数式组件：尽量改成纯函数组件
- reducer：
- 高阶组件



**call,apply,bind**

：简称cab，不是cba，都是为了修改函数内的this指向，即修改上下文

如果没有这三个函数，那么就无法指定上下文了，结果就是要么调用函数拿不到值，要么只能拿到固定的值

- 



**立即执行函数**

：有些函数需要先无条件执行1次，比如单例模式的函数



## regex

教程

- https://github.com/pingan8787/Leo-JavaScript/tree/master/Cute-JavaScript/Cute-Regular
- https://juejin.cn/post/6844904021325512717
- 在线正则：https://regex101.com/
  - 可以马上看到匹配的结果

常见的校验类型

- 电话
- 邮箱
- 密码



## prototype

虽然原型链由proto连接，但是编码过程中应该关注prototype，



__proto__属性：每个对象都有的属性，指向它的原型对象

创建构造函数对象时会生成一个原型对象，通过prototype关联

- 创建普通对象时，js引擎会自动关联一个proto属性，指向原型对象

函数是特殊的对象，它也有proto属性

Function.prototype是所有函数对象的原型对象

- 所以Foo.proto,Object.proto都指向它，也继承了它的方法

其实就是“特殊”的proto指向“一般”

- 比如Foo函数，就是特殊的一个Function函数

设计出那个图的人真的牛逼啊





## canvas

关注点

- 绘制形状
- 绘制文字
- 合成
- 裁剪
- 动画







## coder review

：简称cr

教程

- https://juejin.cn/post/7052570403029385253
- https://juejin.cn/post/7007026987227152414



## Proxy

：能够代理某些动作

其实工作中用的不多，可以先放着

getter函数

- target参数指向被拦截的对象
- receiver则是指向proxy对象本身

有了代理对象后，访问属性一般是通过代理对象来访问属性，而不是直接通过原始对象，比如personProxy.name

- 直接通过原始对象访问属性，不会触发拦截操作





## Reflect

：用来代替Object对象，为了操作对象设计的新的API

动态绑定上下文(this)，就能够实现方法借用（或者是复用）

- 比如Reflect.get方法，就支持方法借用

Reflect方法一般在Proxy里面调用





## Promise

：相当于一个容器，保存着一个异步操作的结果

构造函数

- 参数为一个函数，用来指定promise的状态

then函数

- fulfill回调函数
- reject回调函数：可选
- 一般用then+catch来代替

通过链式调用来解决回调地狱的问题

- 回调地狱：指函数多层嵌套的情况

Promise构造函数

- 返回一个目前未知状态（未来可知）的promise对象

Promise.reject

- 直接返回一个reject状态的promise对象





## 异常处理

：[JavaScript 中 try...catch 的 10 个使用技巧 (yuque.com)](https://www.yuque.com/wangpingan/knowledge/rk3glhlqht56o43u#93d71b7d)

场景

- 需要异常时给点提示



try，catch只能捕获同步异常

- 异步的要用await或者是promise.catch方法

没捕获异常会怎样？

- 会抛到浏览器，并且在控制台打印出来



- 





## 问题

js api与web api区别？

- web api是浏览器厂商提供的，必须要在浏览器环境下才能执行
- 前者包括后者

为什么要有数据类型？

- 可以帮助编程语言有效的存储和处理处理，
- 保证了数据的准确性和完整性：如果一个变量被定义为number，那么它不会包含string

只有esm模块才有模块概念

- 设置script的type为module

啥是回调函数？

- 自动触发的函数，比如某个事件发生时

网络请求直接得到的js文件，并不会直接执行

- 需要放到html页面，以html文件作为启动器，它才会执行

normalize（标准化）一个对象有啥好处？

- 能够保证数据完整
- 生成一个新的对象

innerHTML、innnerText、textContent

- innerHTML会把子节点渲染为标签
- innnerText则是会考虑空格、样式之类的
- textContent则是全部渲染为文本，不考虑样式

后端可以重定向到另一个前端页面吗？

- 

声明与表达式的区别

- 声明主要是用于声明变量、函数、类
  - 声明不产生值
- 表达式：可以作为更大表达式的一部分
  - 产生值

不同上下文是指不同的运行环境

- 比如不同的窗口，不同的web worker、不同的service worker

web worker、service worker

- service worker是升级版

data url与object url有啥区别？

- 

为啥img的src不能直接指定为file对象，而是要通过fileReader来读取，然后

为啥访问有些链接会变成预览，而有些则是变成下载？取决于这两个

- content-type：如果设置为图片类型的MIME类型，浏览器会尝试在线预览
- content-disposition
  - inline：也会尝试预览
  - attachment：则是下载

js的null与undefined有啥区别？

- 相同点：都是表示变量值为空
- 不同点：null是手动指定的，是意料之中的，而undefined则是意料之外的



- 

location.href与pushState的区别？

- 

浏览器获取的文件类型的资源，比如图片，通常是通过流的方式来传输，即一点一点传输

- 所以叫流对象

document与document.documentElement

- 前者代表整个文档
- 后者只代表根元素，即html元素
- document.body则是对应body元素

import语句

- 其实与if语句，差不多，都是用于实现特定操作的指令
- import函数会返回一个promise

无论多少处import，都只会生成一个对象

- 

null通常与undefined归类到一起，不跟flase和0归类到一起

- 

uri与url区别？

：uri包括url，url只是uri的一种特殊形式

- uri统一资源标识符，只需要能唯一标识一个资源即可
- url统一资源定位符，包括了地址信息，比如网页url



