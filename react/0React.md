什么是react？他能解决什么问题

- 也是构建用户界面的js库
- 前景：react才是未来，他社区很热闹，有很多人回馈社区的

学习要点

- reactjs
  - hooks
- react-router
- umi：脚手架

教程

- 官网：https://zh-hans.reactjs.org/docs/hello-world.html
- 入门
  - https://juejin.cn/post/6960262593265025031
- 状态管理库：https://juejin.cn/post/7195513281228898363?searchId=202309101453107D2EB6FCFD72B42FDB0E#comment

- 



## 核心问题

主要关注点

- jsx
  - 规则
- 组件
  - 类型
  - 属性：props、state
    - props：可以传哪些东西、读取、默认值
      - 可以传递值、可以传递函数（比如事件处理函数）、可以
    - state
      - 怎样算state？
      - state结构
      - 组件间共享state
      - state的保留与重置
      - 托管到reducer
  - 渲染
    - 条件、列表渲染
  - 通信
    - props
    - context
  - 事件
  - 生命周期
- 应急方案
  - ref
  - effect
- 常用的hook
- 内置组件
  - fragment
  - suspense
- react dom
  - 
- 生态
  - 脚手架：create-react-app
  - 路由：react-router
  - 状态管理：redux
- 规则
  - 目录规范
  - 多看文档里面的提到的规则



## 基础

易错点

- 组件引用要大写开头
- return 如果是多行，则是需要用括号



last 2 versions，为啥是最近的2个，而不是1个版本呢，那前面的





## jsx

：即js以xml的格式来编写

哪些不会被渲染：boolean、null、undefined



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



副作用是啥？

：是指函数执行会对系统或环境产生的影响

常见的副作用



## 状态管理

使用context

- 父子组件都要导入context对象



## state



受控组件和非受控组件区别

- 有



## 应急方案





## 问题

为啥使用自组件还要写父组件来

- 这样才能引用到，不然会报空指针

组件什么时候会重新渲染？

- state或prop发生改变

state嵌套还是不嵌套，各自的使用场景？

react中的响应式与非响应式区别？

