

## 教程

- 指南
  - https://juejin.cn/post/6844904198761349134
  - https://juejin.cn/post/7172115767880581150/
  - https://juejin.cn/post/6917096816118857736?searchId=20230920221401DE543A267612AC31C759#heading-17
- 在线字典：https://wangchujiang.com/linux-command/hot.html
- https://juejin.cn/post/6917096816118857736
- 前端：https://juejin.cn/post/6844904110056013832#comment
- yum：https://juejin.cn/post/7015234288807313444
- 阿里云镜像：https://developer.aliyun.com/packageSearch?word=node

## 核心问题

#### 核心模块

- 开机、关机、重启
- 用户管理
- 登录/注销
- 文件、目录操作
  - crud操作
  - 路劲切换
  - 文件、目录的压缩、解压：用tar就够了
- 权限操作
- 进程
- 磁盘
- 包管理
  - yum
- shell

#### 常见操作

- 查看进程
- 杀死进程



## 开机、关机、重启



## 用户管理、登录/注销



## 文件、目录操作

压缩：tar -czvf xxx

解压：tar -xzvf xxx

列出文件：tar -tvf xxx



## 权限操作



## 进程

查找指定进程

- 根据端口：netstat -an|grep 80
- 根据名称：ps aux|grep xxx

杀死进程

- kill PID

重启进程

- systemctl start

#### systemctl

- start、stop、restart、reload xxx.service

## 磁盘



## 包管理



#### yum



## shell



## 问题

linux有几个类型？

- debian
  - ubuntu
- rehat
  - centos

 *sudo全称*“super user do” 

yum是系统的包管理工具

yum下载、安装、卸载

安装nodejs：https://help.aliyun.com/document_detail/50775.html

- 用nvm
- 然后通过nvm去下载

centos与ubuntu区别？

- centos为首选，不考虑ubuntu

软链接与硬链接的区别

：https://developer.aliyun.com/article/558492

https://juejin.cn/post/6844903438560526343?searchId=20230730190557063E57678BC03335B271

- 硬链接是相当于源文件，但是内容是同步的，相当于源文件的别名
  - 删除了硬链接不会影响到源文件，反过来也不影响
- 软链接则是相当于导航，跳转到源文件地址，仅此而已
  - win中的快捷方式就是这样




usr与etc有啥区别？

：https://blog.csdn.net/black_zt666/article/details/107930679

- usr一般是安装目录，里面有bin
- etc则是配置文件



怎么算子进程？比如export设置了变量到子进程中去了

- 

命令与服务的区别

- 命令一般是用户在终端输入的文本
- 服务则是进程





