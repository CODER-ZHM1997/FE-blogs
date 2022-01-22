[TOC]

什么是react？

- 也是构建用户界面的js库

## 问题

[前端的规范](https://github.com/niceboybao/front-end-develop-standard)

- 小写，用连字符-(即中划线)拼接

react元素与dom元素是有区别的

- react元素是对象（是你写的dom标签或者是自定义的组件）

eslint的配置文件需要好好了解一下：.eslintrc.js

- 

类class组件才有state，函数组件没有

- 

eslint它有个默认配置，但是你想自己定义配置的话则是需要新建一个.eslintrc.js配置文件如，写上基本内容，然后再添加你的rules

组件的render函数什么时候会再次触发？

- 修改了state的时候

react中没有插槽，全是通过props来实现

如何关闭window某个端口如3000上的服务（net是网络，stat则是statistic统计）

1. netstat -ano|findstr 3000
2. taskkill /F /PID xxx

react生命周期口诀

- muu
- vue则是cmud

hook的好处是结合对比者class来做的

- 通过class实现的功能会有冗余
- 而hook实现则是低冗余

[什么是插件话开发？](https://juejin.cn/post/6844904118591422472)

- 就是当前插件只依赖核心，不依赖于其他插件
  - 就像是微信小程序依赖于微信app

#### react-router

：是一个映射关系，键是path，值是函数（后端）或者是组件（前端），

关注点

- 主要就是注册、嵌套、跳转、传参

单页面应用，实现了页面不刷新的前提下而局部刷新

push与replace的区别

- 影响你的前进和后退，但是调用replace时url不会改动

组件分路由组件和一般组件

- 路由组件放在pages，而且路由组件能接受到router传入的信息
- 一般组件则是放components



## 坑



## 技巧

[react入门](https://juejin.cn/post/6844904183934484494#comment)

- [react面试上](https://juejin.cn/post/6941546135827775525)
- [react面试下](https://juejin.cn/post/6940942549305524238)

重点

- react-router
- redux
- [umi](https://juejin.cn/post/7021358536504393741#comment)
  - 可扩展的企业级前端应用框架，支持配置式和约定式路由，拥有完整的插件体系，内置路由、构建、部署、测试，他是一个容器
- [dva：聚合了redux、react-router、react-soga](https://juejin.cn/post/6844904093756948488#comment)
  - 定位：基于redux和redux-soga的数据流方案，简化开发体验
  - 名字由来：D.va-守望先锋的一部机甲

- [react hook](https://juejin.cn/post/6846687601357750280#heading-1)



vscode快捷键口诀

- [x] rfc：函数式组件（kfc）
- [x] rcc：类组件
- [x] edf：默认导出函数
- [ ] props快捷方式如何禁用啊，扑街

[项目搭建](https://juejin.cn/post/6844903897954254861)

- create-react-app xxx
- 引入路由： npm i react-router-dom



react怎么学？

- 看一下别人主要学什么
- 过一下官方文档（看和练习，记得要搭建一个好一点的学习项目）
- 模仿一下模范项目(antd-pro-master那个项目)
- 去接触其他react项目，先把广度扩展一下

[react与react-native的区别](https://www.jianshu.com/p/ca294ca9f5d4)

