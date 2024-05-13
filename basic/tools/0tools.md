本文档主要是写一些软件有关的使用方法

教程

- 图床：https://juejin.cn/post/7267847052988628992?searchId=202310021850269D88995DED4633C2A986



## Gitlab

：类似宝塔



[常用操作](https://juejin.cn/post/6989411087611330573#heading-7)

- [安装、常用命令](https://juejin.cn/post/6844904065973878791#heading-28)

gitlab的工作流程

- 管理员（一般是组长）创建分支，给开发人员分配分支
- 开发人员完成开发，推送到远程分支，申请合并到主分支
- 组长合并分支

gitlab的作用

- 项目管理
- 权限控制
- 开发者、运维都能看到自己想看的

ssh（secure shell）

- 远程登录服务器：ssh root@<ip>，你需要先配置公钥、私钥



我怎么知道修改了配置要不要重启啊，啊哈哈

## 

：前端项目部署工具，持续集成、持续部署

[常用操作](https://juejin.cn/post/6887751398499287054#heading-1)



## vscode

[各种框架应用开发的vs插件](https://juejin.cn/post/6844903635017531405#heading-7)

- 我早应该找一篇包括插件集合的文章



## 提高办公效率的工具

- [QTTabBar](https://zhuanlan.zhihu.com/p/37012044)：让你像操作浏览器一样操作文件系统，还能预览，不需要进入文件夹
  
  - 创建文件的快捷键：ctrl+shift+t，就可以，舒服了
  
- 截图工具：Snipaste，常用操作

  - 截图快捷键（不需要做标记什么）：ctrl+f1
  - 要做笔记：直接f1
  - 贴图：f3

  常规组合
  
  - 截图+钉在界面：f1、ctrl+t
  - 截图+贴图：f1、f3
  
  

## Window

右键shift+f10

#### 谷歌

分网页操作、浏览器操作

插件：https://juejin.cn/post/7064912262095437861

快捷键：https://juejin.cn/post/7020574670097219621

打开新标签页：ctrl+t

不小心关掉了标签页，要恢复：ctrl+alt+t

快速清除记录：ctrl+shift+delete

当前页重置为主页：alt+home

alt有替换的意思、shift则是由回退、反向的意思

刷新当前网页：ctrl+r

最小化：alt+space，然后直接n，大则是x，不过一般用alt+tab

如果想要快速关闭某个窗口，可以在切换的时候，按一下delete



#### 掘金插件

快速搜索：jj



亿图

插入注释：ctrl+T

## 图床

picgo



## vercel

vercel 云服务厂商

教程

- 官网：https://vercel.com/docs/projects/project-configuration

#### 关注点

- deploy
  - 环境变量
  - 部署静态网站
  - 部署服务端应用，比如node服务
- vercel.json：配置文件
- cdn
- log
- webhook
- plugin
- serverless
- database



#### deploy

环境变量

- 可以用cross-env库

部署静态网站

- 创建github仓库
- 从vercel中导入

部署服务端应用

- 定义build脚本
- 部署：vercel

部署到指定环境环境

- vercel：到preview预览环境，内部人员看的
- vercel --prod：部署到生产环境
  - 但是不会自动设置NODE_ENV的值，需要你手动设置

监控

- deployments：单个项目里看到很多部署实例



#### vercel.json

：可以自定义一些东西，比如自定义buildCommand命令





## 问题

