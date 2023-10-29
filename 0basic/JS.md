

前言：本文主要记录一些js的要点和学习过程中产生的问题

教程

- 指南：https://github.com/csxiaoyaojianxian/JavaScriptStudy/tree/master/01-JS%E8%AF%AD%E8%A8%80%E5%9F%BA%E7%A1%80/%E5%AF%B9%E8%B1%A1
- es指南：https://es6.ruanyifeng.com/#README
  - 能读懂这里面的，就能够回答90%的问题了



## 核心问题

#### 关注点

- js三大模块：es、dom、bom
  - es是语言规范，而js才是实现，不同浏览器厂商可能有不同的js实现方式，但是es调用方式都是一样的



## Array

会修改数组的函数：ssr（splice、sort、reverse）



## BOM



## DOM



## websocket

：为了浏览器、服务器能够全双工通信

关注点

- 建立连接
- 客户端通信

websocket连接不会自动断开





## 问题

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
