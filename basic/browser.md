本文档主要是关注浏览器存储、缓存、安全、渲染，我只是了解一些基础概念，还有能做的一些操作，太细的我也不去关注

教程

- 指南：https://juejin.cn/post/6844904021308735502?searchId=2023093012473540958898A29203090DB9



## 驱动问题

#### 关注点

：口诀（本地渲染、同事安全）

- 本地存储
- 缓存
- 渲染机制
- 同源策略
  - 跨域

- 事件
- 安全策略
- 垃圾回收







## :star:存储

：cookie、sessionStorage、localStorage

按生命周期分：会话级、持久化类型的

sessionStorage在不同标签并不会同步

- 



## :star:缓存

：主要是强缓存，协商缓存那些

页面刷新的优先级比强缓存更高

- 浏览器这样设计确保用户刷新后能够拿到最新的资源





## :star:同源策略

：[同源限制 - JavaScript 教程 - 网道 (wangdoc.com)](https://wangdoc.com/javascript/bom/same-origin)

#### 实现跨域

因为浏览器有同源策略的限制，但是平时又需要跨域资源共享，比如请求不同域下的资源

如何实现？按实现方式分

- 靠服务器的
  - cors：这个是靠服务器解决的，前端不用做啥
  - proxy：如vite正向代理，nginx反向代理，
    - 通过服务器转发来避免跨域问题

- iframe
  - iframe+postMessage
    - 通过window.frames来获取指定的iframe
    - 通过window.parent来获取父窗口对象
- websocket
- jsonp
- url
  - 单向通信，而且只能传递1次




**jsonp**

实现

- script标签不受同源策略限制，
- 动态生成script内容，然后里面是方法调用，这样就实现了数据跨域传递

缺点

- 只支持get方法



是否跨域是以当前的页面的url为参考的

- 





## :star:安全策略

常见的攻击

- xss：跨站脚本攻击
  - 获取敏感数据
  - 

- csrf：跨站请求伪造，利用了cookie机制
  - 利用用户的登录状态向服务器发请求，拿到敏感数据

- mitm：中间人攻击



如何防御？

- xss
  - 设置cookie为http-only，不让脚本去读
- csrf
  - 检查一下referer，必须是可信的refer才行



## :star:事件机制

事件循环

事件委托





## 垃圾回收

内存泄漏问题？

：跟内存溢出不同，它是指已分配的内存没有得到释放，长时间占用

- 使用未声明的变量，导致这个变量一直挂载在全局
- 定时器未清除，它内部的变量有对外部变量的引用，那它就不会被回收
- dom元素的引用，dom元素都被删除了，
- 闭包，不合理的使用
- 



## 渲染机制

渲染流程？



文档的解析流程？





## 问题

null与undefined在json中的区别？
：<https://blog.csdn.net/u010730126/article/details/107795297>

- undefined在json中表示不存在，null表示存在但是为空

请求中要传递数组的话
：是直接传递数组，还是用逗号分割来存储？

查询参数获取到的值都是字符串吗？
：但是数据库查询就是需要你传递对应的类型的值的，要数字类型的，你传递了字符串就是查不到的

跨域问题
：跨域不是发不出去请求，而是请求发出去了，也拿到了数据，只是被浏览器拦截了，不让你使用

xhr与fetch有啥区别？

- xhr是旧的，fetch是新的