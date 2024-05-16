

学习要点

- 仓库（镜像（容器））

教程

- 入门

  - https://juejin.cn/post/7050304120082661407
  - [Docker从入门到部署项目 - 掘金 (juejin.cn)](https://juejin.cn/post/7266721485812547625?searchId=20240513204052C646BBB88D0A330F8E0C#heading-24)

- 官网：https://docs.docker.com/compose/

  

## 驱动问题

Docker是啥？

- 是容器化平台，用于部署、运行应用程序，容器化就是可以把你的应用打包到一个独立、可移植的容器中，可以在不同环境下运行这个容器都没有差异



#### 核心模块？

- cli
- container
- image
- compose
- volume



#### 优点

：口诀：轻环可生

- 轻量级：相比虚拟机
- 环境隔离：当前容器的东西不会收到其他容器或者是宿主的影响
- 可移植：不会受到操作系统的影响，不用修改一行源代码，就能部署一样的代码
- 生态良好：有大量的镜像

#### 常见操作

- 部署前端项目
- 部署后端项目
- 镜像的备份和还原，即迁移
- 



#### 常见问题

- 容器启动失败



## cli

docker --help可以查看到所有命令





## container 容器

：镜像运行的实例，一个容器里面只能有一个镜像

crud

- 创建：docker create
- 删除：docker rm
- 查看
  - 查看所有容器：docker ps
  - 查看某个详情：docker inpect

启动关闭移除：start、stop、kill、remove

容器迁移

- 导入
- 导出

分组问题

- 如何给创建分组

什么时候需要重新构建容器或者是镜像？

- 分本地环境和线上环境

开发过程中能否使用docker来开启服务？

- 比如后端服务用docker来开启



## image 镜像

crud

- 创建
  - docker build
    - 也可以从本地构建，也可以从远程开始构建
  - docker pull
  - docker run
    - 可以根据镜像创建一个容器并运行（这里面包括了2个动作）
- 删除：docker rmi

一般不需要指定命令，每个镜像上传后都会默认指定命令的

- 后面你使用这个镜像的时候就不需要配置啥命令了，除非你想自定义启动

镜像迁移

- 备份：docker save xxx
- 还原：docker load xxx



## volume 卷

：用于保存数据，目的：跟容器生命周期解耦，避免容器挂了后数据丢失

什么时候需要指定卷？



啥时候要配置卷volume？

- 数据持久化
  - 不然重启容器后会数据丢失
- 容器间数据共享



## compose 组合

：用于定义和运行多容器的工具，一般是单个容器就够了吧？

常见操作

- 启动、关闭：docker compose up、down

我好想没看到docker哪里配置了具体的启动命令啊



docker-compose.yml配置文件应该怎么写？

：可以看next-admin里面的docker配置文件是怎么写的！不难

- 而且要配合env文件来写

- 



## 部署前端项目

：一般单个容器即可

教程

- 



## 部署后端项目

：一般都是多容器，比如mysql、redis、后端服务



## 问题

在win系统跑docker最好是用powershell，而不是git bash

- 不然有错误，都不会给你提示的

