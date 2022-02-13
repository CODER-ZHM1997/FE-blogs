

什么是react？他能解决什么问题

- 也是构建用户界面的js库

学习要点

- reactjs
- react-router
- redux
- umi

项目

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

- 







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

