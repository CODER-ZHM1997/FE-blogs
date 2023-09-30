Nginx能解决什么问题？

学习要点

- 安装
- 基本命令：启动、查看、修改配置
- 部署前端项目

教程

- 官网：https://nginx.org/en/docs/
- 基础：https://juejin.cn/post/6844904144235413512?searchId=20230927203004AEB3B8B306A05C2F0FC5#heading-29
- 部署前端项目：https://juejin.cn/post/6887135998099062792#heading-3
- 教程：https://www.bilibili.com/video/BV1zJ411w7SV
- nginx中location的详解：https://juejin.cn/post/7048952689601806366
- proxy_pass详解：https://juejin.cn/post/7007053840419651592#heading-6



## 核心问题

nginx是啥？

- 一个开源、高性能http服务器+静态资源服务器

#### 核心模块

- 反向代理
- 跨域
- 动静分离
- 负载均衡
- 集群（高可用）



## 问题

常见需求

- 配置到网站子目录：通过alias
- 配置反向代理：通过proxy_pass
- 配置https
- 配置gzip

部署要点：server、port、root、index，还有error、404可能也要配置一下

配置软链接：nginx -s 安装地址 自定义的命令名称，如nginx -s /user/aaa/bbb/ccc  ccc

域名、DNS、服务器、

nginx中location的详解

proxy_pass为啥要带上的域名后面要带上/,不然他会拼接前面的匹配路径部分

：https://stackoverflow.com/questions/16157893/nginx-proxy-pass-404-error-dont-understand-why

会重定向的问题：30x重定向会导致post变成get请求

https://blog.csdn.net/weixin_40580582/article/details/102967419

部署https（不然会发生重定向）

- 

如果不部署nginx服务器，会怎样？

- 无法找到路径
- 服务器不会响应http请求

nginx会把匹配到的部分拼接还是替换？

- 会替换掉，所以有些前缀还是要写上，比如/api

nginx中的server_name有啥用

- 可以对请求进行匹配，即使是请求到了这台服务器上，但是server_name不匹配，那么nginx也是不会处理这个请求的



