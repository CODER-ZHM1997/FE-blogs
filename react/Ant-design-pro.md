它解决了什么问题？

：它是基于ant-design封装的，引入新的功能

教程

- 官方文档：https://pro.ant.design/zh-CN/docs/overview
- umi插件：https://v3.umijs.org/zh-CN/plugins/plugin-model



## 问题

如何学习这个项目？

- 先快速过一遍文档，看它能做啥

- 关注重点，重点是常用的功能，比如菜单、路由、数据流、权限

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

