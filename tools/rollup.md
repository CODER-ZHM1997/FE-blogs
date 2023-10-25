教程

- 官网：https://cn.rollupjs.org/introduction/
- 指南：https://juejin.cn/post/7069555431303020580?searchId=20231015010014F2C46261895E91F0DF14
- 插件：https://github.com/rollup/awesome



## 驱动问题

核心关注点

- 命令行
- 配置
- 插件
- 

使用场景

- 开发库的时候



#### 核心关注点

- 



## 插件

#### @rollup-plugin-html

html文件会自动生成，但是教程里面没讲这个插件，它是手动引入的



## 问题

rollup与esbuild关系

- 相同点

  - 都是打包工具
- 区别
  - 速度：esbuild更快
  - 生态：rollup生态更好
  - 实现
    - rollup是js
    - esbuild则是用go

动态加载（dynamic load）与按需加载（lazy load）区别

- 动态加载：运行时根据需要来加载模块，加载时机动态和加载对象动态
- 按需加载：也是一种动态加载，加载时机动态，比如访问特定路由时才会加载对应的资源
- 动态加载一定涉及到代码切割

last 2 versions

- 主要是针对新特性，我觉得跟last 1 version没有啥区别



esm支持读取cjs模块，因为node环境支持cjs

- 但是rollup打包后，可能在非node环境执行，所以esm就读取不了cjs了

怎样在本地一个静态资源服务器

- 插件live server：推荐
- vite：但是要安装了vite的项目才支持

