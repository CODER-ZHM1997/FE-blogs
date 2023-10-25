教程

- 指南：
  - https://juejin.cn/post/6844903993240453134
- 官网：https://redis.io/docs/data-types/strings/
- 

## 驱动问题

redis是啥？

- 开源、高性能的内存数据库

#### 核心模块

- cli
- 数据类型
- redis client（客户端）：如ioredis

#### 常见操作

缓存

- 计数器
- 会话缓存
- 队列

发布、订阅

事务

集群 cluster



## cli

redis-cli

：客户端

- 进入交互模式：直接redis-cli，我们一般都是通过客户端来操作，它封装了很多api，方便我们调用

redis-server

：redis服务端，一般是用来启动关闭redis服务的

- redis-server stop
- 客户端也可以关：redis-cli shutdown



## 数据类型

#### string

#### hash

#### list

set

sort-set



## redis client



## 问题

redis-cli与ioredis有啥区别？

- 前者只适合练习，不合适编程，不适合在应用中嵌入
- 后者是在node环境下的，适合编程，而且功能更加强大，可以在应用中嵌入



