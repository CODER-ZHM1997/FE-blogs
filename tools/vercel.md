vercel 云服务厂商

教程

- 官网：https://vercel.com/docs/projects/project-configuration



## 驱动问题

#### 关注点

- 部署
  - 环境变量
  - 部署静态网站
  - 部署服务端应用，比如node服务
- vercel.json：配置文件
- cdn
- 日志
- webhook
- 插件
- serverless



## 部署

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



## vercel.json

：可以自定义一些东西，比如自定义buildCommand命令





## 日志

：看logs选项

可以看单个部署实例的，也可以看所有部署实例的



## cdn



## webhook



## 插件



## 问题