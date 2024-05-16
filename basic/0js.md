

前言：本文主要记录一些js的要点和学习过程中产生的问题

教程

- 指南：https://github.com/csxiaoyaojianxian/JavaScriptStudy/tree/master/01-JS%E8%AF%AD%E8%A8%80%E5%9F%BA%E7%A1%80/%E5%AF%B9%E8%B1%A1
- [「2021」高频前端面试题汇总之JavaScript篇（上） - 掘金 (juejin.cn)](https://juejin.cn/post/6940945178899251230#heading-90)
- es指南：https://es6.ruanyifeng.com/#README
  - 能读懂这里面的，就能够回答90%的问题了
- [在 web 应用程序中使用文件 - Web API | MDN (mozilla.org)](https://developer.mozilla.org/zh-CN/docs/Web/API/File_API/Using_files_from_web_applications#示例：使用对象_url_来显示图片)
- [import语句与函数](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Statements/import)



## 关注点

js三大模块：es、dom、bom
- es是语言规范，而js才是实现，不同浏览器厂商可能有不同的js实现方式，但是es调用方式都是一样的



## web api

web api？

：由浏览器提供支持的接口，js可以通过这些接口跟浏览器交互

常见的web api

- dom
- xhr、fetch
- socket
- storage
- canvas



## array

会修改数组的函数：ssr（splice、sort、reverse）



## bom

：浏览器对象模型

bom与dom区别？

- bom是由浏览器提供支持的，基本只能在浏览器端使用

bom对象包括dom对象

- window.document

我喜欢先主后分，因为第一看看到的就是整体，而不是局部



## dom

：文档对象模型

dom可以在浏览器提供支持

- 也可以在服务端使用，只要你安装了对应的库





- 



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



## 原型

虽然原型链由proto连接，但是编码过程中应该关注prototype



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

- 

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
- 后者只代表根元素，如html标签

import语句

- 其实与if语句，差不多，都是用于实现特定操作的指令
- import函数会返回一个promise

