

前言：本文主要记录一些js的要点和学习过程中产生的问题

教程

- 指南：https://github.com/csxiaoyaojianxian/JavaScriptStudy/tree/master/01-JS%E8%AF%AD%E8%A8%80%E5%9F%BA%E7%A1%80/%E5%AF%B9%E8%B1%A1
- es指南：https://es6.ruanyifeng.com/#README
  - 能读懂这里面的，就能够回答90%的问题了
- [在 web 应用程序中使用文件 - Web API | MDN (mozilla.org)](https://developer.mozilla.org/zh-CN/docs/Web/API/File_API/Using_files_from_web_applications#示例：使用对象_url_来显示图片)



## 核心问题

#### 关注点

- js三大模块：es、dom、bom
  - es是语言规范，而js才是实现，不同浏览器厂商可能有不同的js实现方式，但是es调用方式都是一样的



## Array

会修改数组的函数：ssr（splice、sort、reverse）



## BOM



## DOM





## Web API



## 正则

教程

- https://github.com/pingan8787/Leo-JavaScript/tree/master/Cute-JavaScript/Cute-Regular
- https://juejin.cn/post/6844904021325512717
- 在线正则：https://regex101.com/
  - 可以马上看到匹配的结果

常见的校验类型

- 电话
- 邮箱
- 密码



## canvas

关注点

- 绘制形状
- 绘制文字
- 合成
- 裁剪
- 动画



## debug



## coder review

：简称cr

教程

- https://juejin.cn/post/7052570403029385253
- https://juejin.cn/post/7007026987227152414



## 问题

web api？

：由浏览器支持的，是浏览器开放的接口，js可以通过这些接口跟浏览器交互

常见的web api

- dom
- xhr、fetch
- socket
- storage
- canvas

为什么要有数据类型？

- 可以帮助编程语言有效的存储和处理处理，
- 保证了数据的准确性和完整性：如果一个变量被定义为number，那么它不会包含string

只有esm模块才有模块概念

- 设置script的type为module

啥是回调函数？

- 我的理解，不是开发者主动调用的，就是回调函数，像生命周期钩子

网络请求直接得到的js文件，并不会直接执行

- 需要放到html页面，以html文件作为启动器，它才会执行

面向对象oop与面向过程pop编程区别？

- 基本单位
  - oop：对象
  - pop：函数
- 数据与行为是否耦合
  - oop：数据与行为都封装在对象里面
  - pop：则是数据与行为分离的，数据容易修改
- 高级特性
  - oop：有继承、封装、多态
  - pop：面向过程没有

浏览器的dom更新跟渲染不是一起的

- 通常是dom更新在前：比如对dom节点的curd，dom更新是js操作
- 渲染在后：将多个dom更新合并在一起，一次性渲染

arraybuffer、blob（重点）、buffer、base64、file对象的区别？还有他们之间的转换操作

- buffer是node环境的
- base64可以与很多文件、图片互转

转换操作

- 

normalize（标准化）一个对象有啥好处？

- 能够保证数据完整
- 生成一个新的对象

innerHTML、innnerText、textContent

- innerHTML会把子节点渲染为标签
- innnerText则是会考虑空格、样式之类的
- textContent则是全部渲染为文本，不考虑样式

后端可以重定向到另一个前端页面吗？

- 

**跨页面通信**

：能否跨域

方案

- 同源

  - cookie

  - localstorage

- 非同源

  - websocket
  - postmessage
  - message channel+postmessage

声明与表达式的区别

- 声明主要是用于声明变量、函数、类
  - 声明不产生值
- 表达式：可以作为更大表达式的一部分
  - 产生值

不同上下文是指不同的运行环境

- 比如不同的窗口，不同的web worker、不同的service worker

web worker、service worker

- service worker是升级版

循环

- for in、for of里await才会阻塞执行
- forEach、map则是不会阻塞循环的执行

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

location.href与pushState的区别？

- 



为啥要有blob？

- 

浏览器获取的文件类型的资源，比如图片，通常是通过流的方式来传输，即一点一点传输

- 所以叫流对象

