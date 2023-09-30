本文档主要记录一些服务器有关的操作

教程

- jenkins：<https://juejin.cn/post/7152393684183416846#heading-4>
- shell 命令：<https://juejin.cn/post/7003978701360611341>
- 常见的 http 错误码：<https://juejin.cn/post/7189824874804674621>
- 网络统计 netstat：<https://juejin.cn/post/6950235187938590756>
- pm2：<https://juejin.cn/post/6844903816454733837>
- 服务器搭建：<https://juejin.cn/post/7226737543249788984#heading-5>
- ssh 远程登录：<https://zhuanlan.zhihu.com/p/257430478>
- 宝塔账号密码找回：<https://www.mabiji.com/bt/wangjizhanghaomima.html>
- curl：

# 问题

哪些东西是只能在服务器上，哪些又是只能在宝塔做的？
开发 ip 访问
：通过在防火墙那里可以进行放开

添加、解除 ip 访问限制

- 进入服务器实例：搜索“轻量”
- 然后进入防火墙
- 添加规则，或者是修改已有规则
  - 要输入自己的外网 ip

通过 ssh 登录服务器
：ssh root@<ip>

如何建立地址与目录的映射？

- 阿里云只是解析域名到 ip，然后 ip 到目录的映射是在服务器上做的
  - 这个到目录的映射是在宝塔上的 php 项目里面配置的
  - nginx 配置：则是可以跑到宝塔上的每个域名管理里面都有自己的 nginx 配置

# gitea

如何启动 gitea？

- 需要进入服务器
- 然后进入到指定的目录，然后通过./gitea web 来启动即可

如何配置钩子？

pm2 如何去部署项目？
:如何与 npm 的脚本建立联系？

解决端口占用
：通过 netstat -tunlp | grep <端口号>来查看占用的进程，然后通过 kill <进程号>来杀死进程

怎么去看服务是否启动着？

- 根据名称或者是端口号

shell 参数分开写为啥会有区别呢？

服务器数据迁移流程

- ssh 登录
- 安装宝塔
- 开放端口
- 安装其它软件
  - nginx
  - node

绑定了密钥有啥用？

服务器安装了镜像有啥用，我怎么知道里面有啥东西？

宝塔的账号密码与服务器的账号密码区别？
：不是同一个东西，安装完宝塔会自动生成一个账号密码

宝塔配置

前端如何不通过域名，发布到 ip 上部署？
：通过 nginx 配置，将 ip 与目录进行映射

nginx 配置的 location 为啥不生效？

先按最基础的实践一下

nginx 配置一下

- server_name
- 还有可能是端口的问题

阿里云只是负责将域名解析（映射到）某个 ip 上

- 端口那里完成映射？

# pm2

启动一个服务

- pm2 start --name=test npm -- run start

fork 模式与 cluster 模式的区别？
：<https://www.cnblogs.com/c-x-a/p/12011501.html>

重定向过多
：<https://blog.csdn.net/zxh7770/article/details/103284914>

502网关错误
：<https://juejin.cn/post/7155280646112280613?searchId=20230906192153688C03AE2C6554A89C42>

- 缓存的问题，你用手机访问一下，只要有一处可以就行了
- 防火墙问题：端口没有开放
- 端口没有开放，之前服务用的是82，而不是3000

# 迁移

- 检查的

配置服务器的首页？

# 域名解析

server name可以是域名、也可以是ip

- 你也可以配置为别人的域名，如juejin.cn
  - 但是是不是跳转到你配置的内容则是

一级、二级域名、三级怎么区分？
：<https://www.zhihu.com/question/29998374>

- 站在购买者的角度来看：juejin.cn是一级域名，而从域名分级的角度看它是二级域名

配置二级域名

你不能直接在宝塔里面配置二级域名
：也是要通过在阿里云配置域名解析才行，不然会被拦截

# 备案

域名要走域名备案
访问腾讯云资源又要走腾讯云备案

- 腾讯云备案比较慢

有些服务器会被拦截，有些又不会被拦截

url访问端口跟实际端口可以不一致!!
：只要你写了转发（代理），就可以
配置如下

```nginx
    location ^~ / {
      proxy_pass http://119.29.225.77:80;
      proxy_set_header Host $host;
      proxy_set_header X-Real-IP $remote_addr;
      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
      proxy_set_header REMOTE-HOST $remote_addr;
      proxy_set_header Upgrade $http_upgrade;
      proxy_set_header Connection $connection_upgrade;
      proxy_http_version 1.1;
      # proxy_hide_header Upgrade;
      add_header X-Cache $upstream_cache_status;
    }
```

# 部署

跨服务器拉取git仓库代码

- 可以通过gitea创建一个协作者账号，然后再服务器上配置这个协作者账号信息，就可以拉取了

# 配置证书

服务器一直在重启中，如何解决？

ip访问可以申请ssl证书码？
：不可以
