Nginx能解决什么问题？

学习要点

- 安装
- 基本命令：启动、查看、修改配置
- 部署前端项目

教程

- 官网：https://nginx.org/en/docs/switches.html
- 大全：https://segmentfault.com/a/1190000022673232
- 基础：https://juejin.cn/post/6864085814571335694
- 部署前端项目：https://juejin.cn/post/6887135998099062792#heading-3
- 教程：https://www.bilibili.com/video/BV1zJ411w7SV
- nginx中location的详解：https://juejin.cn/post/7048952689601806366
- proxy_pass详解：https://juejin.cn/post/7007053840419651592#heading-6

## 问题

常见需求

- 配置到网站子目录：通过alias
- 配置反向代理：通过proxy_pass
- 配置https
- 配置gzip

部署要点：server、port、root、index，还有error、404可能也要配置一下

配置软链接：nginx -s 安装地址 自定义的命令名称，如nginx -s /user/aaa/bbb/ccc  ccc

常见命令

- 重启、重加载：-s reopen -s reload
- 测试配置：-t
- 查看当前配置：-T
- 查看帮助：-h

域名、DNS、服务器、

nginx中location的详解

proxy_pass为啥要带上的域名后面要带上/,不然他会拼接前面的匹配路径部分

：https://stackoverflow.com/questions/16157893/nginx-proxy-pass-404-error-dont-understand-why

会重定向的问题：30x重定向会导致post变成get请求

https://blog.csdn.net/weixin_40580582/article/details/102967419

部署https（不然会发生重定向）

- 

