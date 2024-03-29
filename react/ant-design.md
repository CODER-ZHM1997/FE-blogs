它解决了什么问题？

：它是基于ant-design封装的，引入新的功能

教程

- 官方文档：https://pro.ant.design/zh-CN/docs/overview
- umi插件：https://v3.umijs.org/zh-CN/plugins/plugin-model
- 动态路由：https://juejin.cn/post/7150669014044246046#heading-13
- pro文档：https://pro.ant.design/zh-CN/docs/introduction/#webpack-%E5%89%8D%E7%AB%AF%E5%BF%85%E5%AD%A6%E5%BF%85%E4%BC%9A%E7%9A%84%E6%89%93%E5%8C%85%E5%B7%A5%E5%85%B7
- 动态路由：https://github.com/ant-design/ant-design-pro/issues/10714
- 源码调试：https://juejin.cn/post/7158430758070140942



## 驱动问题



#### 核心模块

- ui

  - 基础
    - 按钮、图标


  - 布局


  - 数据录入


  - 数据展示


  - 反馈

- 路由&菜单

- 请求

- 数据流



使用技巧

- 不会去记一些花里胡哨的操作，
  - 只会记最常见的搭配
  - 其他的尽量自己手写，除非手写非常麻烦，就考虑翻一下文档，记一些新的搭配


## form

有哪些关注点？

- 布局
- 初始化
  - 有初始化就有重置
- 绑定
- 校验
- 提交
- 其他：联动

表单组件有哪些

- 输入框
- 下拉框
- 日期选择框



## table

关注点？

- 条件筛选
- 标题
- 内容
- 分页
- 其他
  - 批量操作
  - 自动生成搜索条件

与list的区别

- list通常是竖的
- list交互比较少
  - 比如没有排序



## List

常见操作：卡片列表

- 方式1：



## Route

路由类型：配置式、约定式

怎么判断是哪种路由生效？

- 通过你的写法，如果配置routes，则是配置式，否则为
- 只会生效一种路由类型，没有混合的



根据路由生成菜单

- 一般是把路由全都写上，然后结合access插件来控制，最后生成每个角色对应的菜单

patchClientRoute添加的路由，不显示layout咋办？

- 

他们是怎么确保登陆后才能访问路由的？

- 



## Menu

渲染菜单

- 可以layout插件来根据路由自动生成
- 也可以自己在layout文件里面自定义

为啥点击路由跳转会报错？

- 



## 问题

多用一下集成库

- 他们替你做了很多工作，他们都把业务场景给摸透了



row、col

- 多行也可以只写一个row，结果也会展示多行的，这个row只是一个分组，跟具体实际多少行并不一定关联





如何学习这个项目？

- 先快速过一遍文档，看它能做啥

- 关注重点，重点是常用的功能，比如数据流、菜单、路由、权限

  - 一些补充性的功能可以放到后面去搞：比如国际化啥的

- 

  

项目初始化

- 按他github的文档即可，不然可能会有很多报错，太坑了



我怎么知道要不要删除.umi文件夹？



记住常用的几个组件即可：layout、card、table、form、descriptions、skeleton

项目启动是用start，而不是dev

涉及到计算就要用花括号{},花括号能够套用花括号

一个页面由jsx和less文件构成

：样式可以抽离到一个less文件，class可以动态计算，通过classnames插件，还可以动态的控制class



umi有很多2次封装的插件，封装是基于ant-design的插件的

- 顶层是umi插件，而底层实现则在ant-design插件



同时匹配到多个路由会怎样？

哪些算路由组件？



啥时候要用到suspend组件？

句柄是啥？

：https://www.cnblogs.com/wkun/p/4254347.html

其实就是指针的一种，用于获取对象的

- 柄：就是从一个小东西拎起一大堆东西



热更新失败了！

- 只有刷新浏览器才会显示新的

a标签，如果禁用了默认行为，会导致它不会跳转到href指定的地方

有些东西你没有配置，并不是默认为空，而是会默认给你填一些东西

- 比如layout里面的logo和title

pro项目编译出错停止服务了，怎样才能让他不停止？

- 服务端出错不能重新编译，而客户端出错则是重新编译

构建时配置&运行时配置

- 有些配置是在构建时可以配置，运行时也可以配置的

- 构建是配置运行在服务端，有node环境
  - 构建时配置还起到一个开关的作用，有些插件需要在构建时开启才能编写运行时配置
- 而运行时配置则是运行在浏览器端，有浏览器环境



注意相对路劲不一定是相当于当前目录

- 可能是相对于另一个文件的目录，比如package文件，比如src/pages

我怎么知道某些报错会不会影响到我的渲染？

- 

如果不想依赖于请求任何库，可以依赖于浏览器原生支持的请求库

- 如fetch

为啥组件需要为一个函数？直接写jsx不行？

- 

import函数结合lazy的坑+for循环的坑（其实是时序问题），比如在for循环里执行React.lazy(()=>import(`${xxx}`))

- 因为lazy是异步函数，所以可能执行lazy的时候，for循环里面的变量已经被销毁了，所以你要import能正常工作，有2种方式
  - 方式1：保存变量，用到哪个值先用一个变量来保存
  - 方式2：用await来，比如await React.lazy(()=>import(`${xxx}`))

为啥有些组件是以children的方式挂载，有些则是属性的方式挂载

- props方式（常用）：比较简单的
  - 其实可以全部都设计为props
- children方式：一般的主体内容都放在children那里

谁把我没用到的函数给裁剪掉了？是eslint吗？

- 但是即使没有报错

windi中的font和text有啥区别，其实是css中font和text区别

- font：针对字体，字体族，大小、重量
- text：针对文本，主要跟显示、排版有关：颜色、对齐、高度

ant修改默认样式

- 通过在类外层套一个:global{}即可

为啥会有嵌套组件的设计方案，比如Descriptions、Descriptions.Item

- 
