



什么是react？他能解决什么问题

- 也是构建用户界面的js库

学习路线

- https://juejin.cn/post/6888613308153692174#comment
- https://juejin.cn/post/6844904151487348749#heading-63

学习要点

- reactjs
- react-router
- redux
- umi

教程

- [后台管理系统](https://juejin.cn/post/6844903866052378638)，你把这个项目搞懂即可：[ant-design-pro](https://github.com/ant-design/ant-design-pro)项目即可，其他项目都只是需求不同而已，功能都是基于ant-design-pro来实现的
  - 配套的教程：https://pro.ant.design/zh-CN/docs/getting-started
- 

# 问题

react元素与dom元素是有区别的

- react元素是对象（是你写的dom标签或者是自定义的组件）

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


vscode快捷键口诀

- [x] rfc：函数式组件（kfc）
- [x] rcc：类组件
- [x] edf：默认导出函数
- [ ] props快捷方式如何禁用啊，扑街

模块化、组件化开发？

