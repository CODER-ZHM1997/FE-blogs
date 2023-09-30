本文档主要书写一些nginx的基础知识，以及一些常见的操作和问题。

教程

- 入门：<https://juejin.cn/post/6844904144235413512>

# 核心问题

nginx是啥？
：它是web服务器

为啥要有nginx服务器？我直接把文件放到服务器上不就行了吗？
-

nginx可以做啥？

- 配置代理
-

# 配置文件

listener
server_name

- 写你监听服务器名称或者是ip

listen中的server_name？

里面的变量要了解一下

- $host
- $remote_addr

# 问题

常规操作

- 配置代理转发
- 负载均衡
- 动静分离
- 跨域配置
  - 反向代理
  - CORS

排查问题的关键在于找到日志
：日志能帮我们看到很有用的线索

- 比如网站有网站访问日志，这样我们才能知道具体错在那里？

配置子目录的方式行不通、那就考虑换个端口

location有啥用？
：是匹配策略，不管是动态资源还是静态资源，都可以用location来匹配

- 动态资源用proxy_pass来转发
- 静态资源用alias或root来指定根目录
  - alias与root的区别，root会加上location的路径，而alias不会，一般用alias
- 匹配时只有一个location会生效

nginx配置不生效的问题
：

一个是前缀的，另一个是在location里配置了expire却没有设置root或者是alias，它会去找server节点的root配置，这样会导致404，要学会调试（比如看日志）你才能定位问题啊，不然你就是在瞎猜
：<http://www.webkaka.com/tutorial/server/2017/010814/>

为啥egg和nginx都可以配置跨域？

