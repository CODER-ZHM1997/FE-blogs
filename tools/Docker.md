

学习要点

- 仓库（镜像（容器））

教程

- 入门：https://juejin.cn/post/7050304120082661407
- 官网：https://docs.docker.com/compose/
- 部署vue项目：https://juejin.cn/post/6992848354753380389#comment



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



## volume 卷



## compose 组合

：用于定义和运行多容器的工具

docker-compose.yml配置文件应该怎么写？

：可以看next-admin里面的docker配置文件是怎么写的！不难

- 而且要配合env文件来写



啥时候要配置卷volume？





## 部署前端项目

：一般单个容器即可



## 部署后端项目

：一般都是多容器，比如mysql、redis、后端服务



## 问题

在win系统跑docker最好是用powershell，而不是git bash

- 不然有错误，都不会给你提示的

部署vue项目

1. 安装、启动docker
2. 编写配置文件
3. 构建镜像（查看镜像）
4. 启动容器
5. 查看、移除镜像

win环境环境能够安装docker？

镜像是什么概念？

- 是复印件的意思吗？

容器？

docker compose有啥用？

docker软件中的怎样执行初始化？比如docker中安装了mysql，如何配置？

哪些是要我改的？写着占位的？哪些则是

什么时候需要重启docker才能生效？什么时候则是需要重新执行package中的脚本才能生效？





为啥mysql连接的数据库不是我本地docker安装的mysql的，而是连接到其他的数据库那边去了？

- 

部署和运行区别？

- 部署是运行前面的准备工作，为运行准备资源

除了镜像仓库，其实还有容器仓库！

- 
