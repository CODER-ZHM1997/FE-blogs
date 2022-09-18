什么是react？他能解决什么问题

- 也是构建用户界面的js库
- 前景：react才是未来，他社区很热闹，有很多人回馈社区的

学习要点

- reactjs
  - hooks
- react-router
- umi：脚手架

教程

- 入门
  - https://www.kancloud.cn/tjs5945111/react/887920
  - https://juejin.cn/post/6960262593265025031

- api：https://juejin.cn/post/6950063294270930980
- jsx：https://juejin.cn/post/7112595039863177223
- 纯函数、副作用：https://juejin.cn/post/7057376945939415053
- 官网：https://zh-hans.reactjs.org/docs/hello-world.html
- [后台管理系统](https://juejin.cn/post/6844903866052378638)，你把这个项目搞懂即可：[ant-design-pro](https://github.com/ant-design/ant-design-pro)项目即可，其他项目都只是需求不同而已，功能都是基于ant-design-pro来实现的
  - 配套的教程：https://pro.ant.design/zh-CN/docs/getting-started



react能解决什么问题？

- 

项目构建

- 

生命周期口诀

- react的是：muu
- vue也是：muu

大小写

- 组件名：大驼峰
- 事件命名：小驼峰

为啥不能直接用值来更新，而是使用

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



hook的好处是结合对比者class来做的

- 通过class实现的功能会有冗余
- 而hook实现则是低冗余

[什么是插件话开发？](https://juejin.cn/post/6844904118591422472)

- 就是当前插件只依赖核心，不依赖于其他插件
  - 就像是微信小程序依赖于微信app

模块化、组件化开发？



哪些是表达式？

：万物皆是，除非是保留字、关键字

保留字与关键字区别？没啥区别，使用者都不能把它们作为变量名或函数名使用

https://blog.csdn.net/weiyi89/article/details/9992669



**jsx**

- 能够让我们像html一样书写js
- jsx能放表达式是，你直接放到括号里即可，如{name}，当然，它本身也是表达式

哪些不会被渲染：boolean、null、undefined

**portal**

- 将子组件渲染到父组件之外



他能够

元素与组件、dom节点的关系



纯函数

- 不修改入参
- 相同的入参，相同的结果



**类组件**

只有初始化的时候才能给state赋值，后面修改只能通过setState

为啥直接指定函数会导致this丢失，写成箭头函数却不会

- 是因为直接写的情况下：调用的时候丢失了？

react 事件的写法更加简单，直接onXXX即可，不用@，不用emit

子组件也是通过props来访问，props.children，当然如果不希望一起渲染的话，则是不能用子组件来渲染，而是挂在到组件的prop上

Fragments：为了去除根元素，直接返回组件列表，有些不能套根元素，比如tr下的td，td上面不能套div

ref转发：把ref通过组件自动的传递到其子组件上

**context**

：为了实现组件间数据共享，但是只能是有父子关系的组件间，而且只能是向下传递，向上和同级都不能

使用场景

- 需要向所有子组件广播（共享）某些数据的时候，比如theme、locale

**错误边界**

它是组件，用于捕获子组件异常的，但是只能是组件，比如事件处理器出问题了就捕获不了，只能用try、catch

**api**

**双向绑定**

1. 把value和state绑一下，显示用state，监听修改事件，然后更新state即可
2. 通过状态管理



## Hooks

：是特殊的函数，能够让你钩入react的特性，能够让你不编写class组件的情况下使用state

它解决了什么问题？

- 增加了代码的可读性和可维护性
  - 把不需要要关联的函数进行了拆分
  - 把需要关联的函数进行了合并
- 解决了复用问题，而且无需修改代码结构

hook的类型：state、effect hook

规则

- 只能在顶层使用，if、循环、子函数都不能使用
- 定义：只能用use开头，一个use占用一个文件

两个组件使用相同的hook也不会共享state，因为每次hook调用的时候，都会得到新的state

两个hook数据共享的问题，只需要通过传参即可，一个给另一个传参



## 问题

last 2 versions，为啥是最近的2个，而不是1个版本呢，那前面的

Suspense
