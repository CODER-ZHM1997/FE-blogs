

教程

：如果你熟悉react，你能多很多面试机会，而且薪资更高

- 官网：https://zh-hans.react.dev/learn
- 入门：https://www.bilibili.com/video/BV1Mu411p7cV/?spm_id_from=333.788.recommend_more_video.17
- 状态管理库：https://juejin.cn/post/7195513281228898363?searchId=202309101453107D2EB6FCFD72B42FDB0E#comment
- 搭配的hook：https://ahooks.js.org/zh-CN/hooks/use-map
- react17、18的更新：https://segmentfault.com/a/1190000042680491#item-3
- 生态
  - antd
  - pro





## 驱动问题

：多看react的官网，它的官网真的写的非常详细

react是什么？解决了什么问题？

- 是构建用户界面的js库



#### 关注点

- jsx
- 组件
  - 类型
  - 生命周期
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
  - 内置组件
- 应急方案
  - ref
  - effect
- hook
- 生态
  - react-dom
  - 脚手架：create-react-app
  - 路由：react-router
  - 状态管理：redux、redux-toolkit





## 基础

易错点

- 组件引用要大写开头
- return 如果是多行，则是需要用括号



last 2 versions，为啥是最近的2个，而不是1个版本呢，那前面的





## jsx

：即js以xml的格式来编写

哪些不会被渲染：boolean、null、undefined



## 合成事件

为啥要有合成事件？

- 为了兼容，实现跨平台
- 避免垃圾回收



## Hook

：是特殊的函数，用于复用逻辑，跟ui无关，（组件则是复用ui和逻辑，不一样），能够让函数组件中使用react的状态和特性

它解决了什么问题？

- 增加了代码的可读性和可维护性
  - 把不需要要关联的函数进行了拆分
  - 把需要关联的函数进行了合并
- 解决了复用问题，而且无需修改代码结构

使用规则

- 只能在顶层使用，if、循环、子函数都不能使用
- 定义：只能用use开头，一个use占用一个文件

两个组件使用相同的hook也不会共享state，因为每次hook调用的时候，都会得到新的state

两个hook数据共享的问题，只需要通过传参即可，一个给另一个传参

hook触发时机的问题

父组件更新，子组件一定会更新

- 除非你用了缓存，而且满足缓存条件



memo和useCallback、useMemo经常是一起使用的

- memo生效时有条件的，只要组件的prop不同，不管是值还是函数的prop
  - 所以要useCallback、useMemo来确保prop不同

useCallback的依赖项

- 需要：函数里用到了props中的值，为了能够正确获取到props中的值
  - 如果不写，那么缓存函数里的props值是旧的
- 不用：作为缓存函数参数传入的，因为调用函数时传入的值肯定是正确的

memo

- 组件不是props没变，就会自动缓存的，它需要你套一个memo函数



#### useEffect

使用场景

cleanup函数什么时候会被调用？

- 组件卸载时
- 重新执行副作用时：比如依赖发生改变

选择useeffect，还是事件处理函数？

- 



#### useMemo

：用于缓存计算结果



#### useCallback

：基于useMemo，它是用来缓存函数



#### useReducer

：用于状态管理，是升级版的useState



## 状态管理

使用context

- 父子组件都要导入context对象



## state



受控组件和非受控组件区别

- 有



## 应急方案



## react dom

：一定要有，有它你才能把虚拟dom挂载到



## 问题

为啥使用自组件还要写父组件来

- 这样才能引用到，不然会报空指针

组件什么时候会重新渲染？

- state或prop发生改变

state嵌套还是不嵌套，各自的使用场景？

react中的响应式与非响应式区别？

什么是非react组件？

- 浏览器原生的元素，比如div、canvas
- 其他框架生成的组件，比如

渲染分几种类型？有啥区别？

- 初次渲染（组件初次挂载到dom的过程）
  - 会触发componentDidMount生命周期
  - state会被重新初始化

- 更新渲染（挂载到dom后，由于props或者是state改变导致重新渲染过程）
  - 不会触发componentDidMount生命周期


useCallback？

关注一下实现方式！如果自己实现与他们实现会有啥区别？

- 为啥是通过修改状态，而不是存一个已读未读，

什么时候需要父组件给子组件传递函数？

- 比如type、setType

传递组件与函数区别？

- 



- 

所有值的变化都需要重新渲染吗？

- 不是，只有state和prop的值改变才会触发

为啥清除动作需要手动的去做？

- 比如react的ref清除

为啥react可以做到直接import静态资源（比如图片）就可以用？

- 是构建构建做的这件事，比如vite，能拿到这个静态资源的url

什么情况下需要重新渲染？什么情况下需要“跳过渲染”了？

- 

组件卸载和重新渲染是2码事

- 卸载：组件会从dom中移除
  - 父组件重新渲染，而且新的渲染中没有该dom
  - 路由切换
- 重新渲染
  - state、prop修改，此时组件的输出值会被重新计算并渲染到dom

