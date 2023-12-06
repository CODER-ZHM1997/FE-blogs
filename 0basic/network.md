本文档主要是书写一些网络相关的知识点，包括但不限于：网络协议、网络编程、网络安全等。

教程

- 面试：https://juejin.cn/post/6908327746473033741?searchId=20230921165222F78A9E32FAA216AD7873
- 表单提交：<https://juejin.cn/post/6844903623206371342#heading-2>
- websocket
  - 聊天室：https://juejin.cn/post/7266037480750841896?searchId=2023102410150387D8AB9FD861EADE5DEA
  - 库：sockit.io、ws




## 驱动问题

#### 关注点

- 网络模型
- http、http2、https
- websocket
- tcp、udp
- dns
- CORS
- cookie、session、token
- 性能优化



## 网络模型



## http

如何看http是1还是2

- 在谷歌浏览器》网络》标头选项
- 1：http1.2，2：h2

状态码

- 

## http2



## https



## websocket

：一种双向通信通信协议

**关注点**

- 创建websocket服务
- 创建、断开websocket连接
- 通信：发送&接收
- websocket事件
  - open：连接成功
  - close
  - error
  - message
    - 对应方法send

**实践**

- 实现一个聊天室demo

websocket对象表示的是websocket连接

有些事件是必须要嵌套在其他事件里

- 比如open、message之类的事件必须放到connect之内

全双工&半双工

- 区别
  - 全双工：双方可以同时发送和接受数据，如电话
  - 半双工：在某一时刻只能有一方在发送，另一方在接受数据，如对讲机
- 相同点：都能双向通信



## tcp

可靠传输



## udp



## dns

：<https://www.dns.com/supports/261.html>
配置不生效

- 配置问题
- 缓存问题
  - win本地缓存
  - 路由器缓存
  - 域名服务器缓存

TTL：time to live有效时间

- DNS领域：在有效时间内，不会再次去请求域名服务器
- 缓存领域：在有效时间内，不会再次去请求源服务器



## 网络性能优化



## 问题

每一层分别做了什么工作？

- 

每一层代表的协议有哪些？

- 应用层：http、smtp、ssh、ftp
- 传输层：tcp、udp
- 网络层
- 数据层
- 物理层





查询参数query、路径参数param，还有请求体里面也可以放参数
：简称查路

mime类型常见的类型

- 

mime类型错误会怎样

- 可能导致文件无法正常解析
- 

表单提交有几种格式？
：application/x-www-form-urlencoded、application/json、multipart/form-data、



1MB/s与1Mb/s是有区别的？前者快8倍，1MB/s=8Mb/s，一般都是用比特Mb来表示的
：1MB/s是1兆字节每秒，1Mb/s是1兆比特每秒，1字节=8比特，
：一兆就是1M

端口有啥用？端口跟什么有关？

：端口本身不会做什么动作，它只是类似于一个id，哪个服务监听了这个端口，那么这个端口就指向哪个服务，一个端口只能被一个服务监听，多个服务监听同一个端口会被提示端口被占用

- 服务会监听端口
  - 服务一定要监听至少一个端口，不然它没法监听到请求和提供服务
- 端口



协议、端口的关系

- 有些协议有默认端口的，比如http是80，https则是443，如果你不指定则是用默认端口
- 手动指定则是可以将服务绑定到其他端口

全双工与半双工区别？

：类似于电话和对讲机

- 全双工可以同时发送和接收
- 而半双工只能轮流发送或接收，不能同时

怎么判断是走强缓存还是协商缓存？

- 判断是不是走的是缓存
  - 304的，状态码200也可能是
  - 看大小那一栏，他会指明来源，来自内存、磁盘
- 先看请求头
  - 不缓存的情况：如果请求头里配置了禁止缓存，比如cache-control为no-cache或者是max-age为0，则是不缓存，就是拿最新的
  - 协商缓存：请求头带有If-None-Match或者是有If-Modified-Since，而且Etag或者是时间
- 再看响应头
  - 强缓存：有Cache-Control
  - 协商缓存：一般都是返回304的

带宽：是指客户端带宽+服务端带宽（主要影响）

- 单个下载任务就能够占满客户端带宽了
- 多个下载任务也只是会相互竞争带宽

请求头、请求体：是http协议里的，是应用层的概念，中间差了2层呢

数据帧（帧头、数据、帧尾）：是数据链路层的概念

请求体

- 类型
  - application/url encode
    - 简单表单提交
  - application/json
    - json格式提交
  - multiple/form-data
    - 涉及到文件上传的
