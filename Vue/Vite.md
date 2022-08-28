期望：了解vite的一些常用操作，了解vite能做什么，不能做什么

推荐的和yarn搭配使用

教程

- [入门](https://juejin.cn/post/6910014283707318279#heading-0)
- 基础：https://www.bilibili.com/video/BV1yu411U71S
- docker部署前端项目：https://juejin.cn/post/6869736425953165319#heading-5

特点

- 快，编译和修改都很快

## 问题

有时候别人教你的可能是旧的，跟最新文档是对不上的，所以呢，你要么翻到旧文档，要么按新文档的写法来

我怎么知道全家桶的中的其他东西适配不？

常见操作

- 基本配置
- 查看配置
- 资源（图片、css、其他类型文件）的引入 
- 优化配置（todo）
  - 打包优化
  
  


#### 基本配置

：修改配置好像不用重启项目

**base**

**alias**

文件不加后缀引入会出问题，如不加.vue后缀

静态资源引入

- 在script下，别名生效，
- 在template中别名不生效，解决方案：别名用/开头，而且用相对路径，如"/asset": "./src/assets",
  - https://juejin.cn/post/7009441745301667853

**build**

- 移除console，通过terserOptions

动态引入静态资源，通过import.meta.url

：https://itcn.blog/p/2341691814.html

#### 静态资源

支持导入多种静态资源（如字体、多媒体、图片、json）

- 可以直接导入图片，为url
  - 直接import
  - 加载指定图片资源：或是通过import.meta.url来获取到当前模块的url，然后要构造新的url，则是需要用URL函数

- 支持json，意味着你可以读取package.json文件

**环境变量的读取**

内置的环境变量，不用VITE_前缀

vue文件中

- 直接import.meta.env

vite配置文件

- 通过函数

**css**

- 支持变量，如--main-bg-color:green
- 内置了postcss

#### HMR

默认是开启的，而HMR并不是所有都能热更新的，是需要通过实现的

- tsx热更新可能会失效，你要另外配置一下一个defineComponent

**Glob导入**

- 可以配合正则来按需导入
- 文件名为key，value则是需要通过then来获取，因为是通过import来获取的



## 问题

[构建、编译、打包、区别？](http://www.atdevin.com/4735.html)

- 构建是指项目的构建
- 编译是指源代码编译成可执行或可识别文件
- 打包则代码要上线了

AST哪里看？AST Exeplorer

