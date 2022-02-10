
前言：本文档主要是记录一些vue2学习要点和学习过程的产生的问题，读者通过阅读该文档+[官方文档](https://cn.vuejs.org/v2/guide/)，完成入门，（注：官方文档有的东西，我不会冗余）

## 问题

[mvc、mvvm、mvp的区别？](https://juejin.cn/post/6919373017218809864#heading-3)

- mvc是model手动完成与view的同步，model与view强耦合
- mvvm则是实现了model和view的自动同步

怎么算异步监听？

- 

created与mounted上发起请求，有什么区别？为什么要这么做？

- 

[vue常见的错误是什么？vue错误处理怎么做？](https://juejin.cn/post/6989167699888701476#heading-2)

- 通过Vue.config.errorHandler

防抖节流的运用场景？

- 防抖
  - 用于关键字搜索，用户不断输入，通过防抖读取最后输入的值
  - 窗口大小调整的时候，只对最后一个resize进行响应
- 节流
  - 上拉加载更多的时候，通过节流降低请求频率

命令行接口包括脚手架

一般来说怎么算改变？如stu={name:'zeng'}

- 修改name不算改变，而stu={name:"ZENG"}，这种才算改变

什么是响应式？

- 我觉得就是数据与其视图是否同步更新

优先级是怎样算得？

- 根据种类来划分优先级，比如某些类别的优先级就是高
- 或者是按照书写顺序来决定的，写在后面的优先级高

[通过代理对象Proxy操作有什么好处？](https://juejin.cn/post/7006518993385160711#heading-16)

- 

js的参数传递还是值传递，

- 引用传递就是指传递地址，所以js是引用传递

[js中堆和栈的区别](https://blog.csdn.net/weixin_44468506/article/details/100785756)

- 基本类型的存在栈里，对象类型的保存在堆里

所谓的逻辑关注点就是以数据为单位的，比如仓库列表

响应式的原理是什么？他凭什么能更新显示？

- 

为什么slots和attrs都是非响应式的？

- 

[有状态的对象](https://blog.csdn.net/qq_40635837/article/details/88089548)

- 

[副作用？](https://www.zhihu.com/question/467720551)

- 就是tmd绑定的回调函数啊，

原始对象是不具备响应性的

- 如rawObj={name:'zeng'}，你改动他是不会出现响应性的

Ref对象指什么？

- 

哪些api是不会与源对象发生绑定的，而哪些又会？

- 

什么是代理对象？好处是什么？

- 



怎样算响应式？如何实现响应式？

- 我觉得响应式就是数据与视图能保持同步

哪些能保持连接？哪些不能保持连接？

- 

什么是普通对象？

- 

什么是虚拟dom？

混入？

混入就是我提前写好方法和数据，然后在组件创建的时候注册一下，就可以复用（或者叫分发）这些数据和方法了，



filter与computed区别？



v-bind数据单向绑定，能绑定响应式数据，

- 

如何界定子组件和父组件？

- 父组件是一个容器，里面都是由子组件构成，子组件一般是另一个文件

从vue2迁移到3需要注意哪些事项？

- 有些事通过命令就可以自动完成修改的
- 有些是需要手动修改的

组件的设计原则

- 规范化，组件命名、参数命名需要通俗易懂，
- 场景话，比如一个弹窗，根据场景封装成success、warning之类的
- 一切可配置，如果有必要，组件里面用到中文标点符号还是英文的
- 有详细的文档、变更历史能够知道这个组件是大致功能、新版本增加了什么功能
- 可扩展性，可能前期不需要这个功能，可能后期要，你要预留位置什么的
- 缺省，要提供默认值
- 容错，不能说我传错一个参数你就原地爆炸
- 颗粒话，要把组件拆分出来

[mvc、mvp、mvvm模型的区别？](https://draveness.me/mvx/)

- mvvm
  - model中保存着数据和操作
  - view只负责渲染
  - viewmodel则是完成数据的绑定和事件的监听
  - 优点
    - 如果不用mvvm则是要通过操作原始dom的方式来完成数据的获取和保存，现在则是需要声明式的绑定

mvvm中单条双向箭头跟两条单向箭头的区别？

- 前者是双向绑定，
- 后者是update和notify

哪些东西要在beforeDestory前销毁

为什么有些插件不支持vue3？是因为vue2的某些属性和方法vue3用不了了了吗？所以使用这些插件回报错？

- 

有些方法不会修改原数组，有些会，我怎么判断会不会啊？

为什么要有key？

- 牵引出vnode（本质上也是一个对象），diff算法，
- diff算法就是找不同，有key和没key的操作是不同的嘛
  - 没key3步，有key5步

computed与方法的区别？

- computed是基于缓存的，只要依赖的数据没变，那么就不会触发
- 而方法则是主动调用的，没有缓存

watch的注意实现

- 可以是某个对象，也可以是对象的某个属性
- 深度
- 是否立即执行一下



指令与函数的区别？

- 只是形式不同？指令的本质还是函数吧

v-model是值绑定

- 指令是特殊的属性
- 在select中就是通过value属性
- v-model作用的对象，除了表单还可以作用于组件吗？

事件修饰符（加在事件后面）

- 可以影响事件，比如阻止事件的默认行为，阻止冒泡，

vue-cli还是基于webpack的

[proxy与Object.defineProperty](https://juejin.cn/post/6844903601416978439)



## 基础

vue是什么？

- vue是用于构建用户界面的渐进式框架，就是你要增加功能再来引入，慢慢加



## [组件](https://juejin.cn/post/6844903887162310669#heading-7)

根据通信对象来分

- 父子通信
  - props/$emit、$parent/$children、$refs、provide/inject、$attrs/$listeners
- 兄弟通信
  - vuex、eventBus（2个可选）
- 跨级通信
  - vuex、$attrs/$listeners、provide/inject（3个可选）

事件总线不推荐使用，不方便维护

过滤器已经被删除了，用计算属性和方法方法代替

$nextTick

：将回调延迟到下次dom更新循环后执行

为什么延迟？

- 简单来说，就是vue修改数据之后，dom（视图与dom是绑定在一起的）不会立即更新，而是等同一事件循环(event loop)结束后再跟新dom

使用场景

- 我需要使用到dom结构更新后的dom时，比如create钩子中

```js
//template
<input type="text" v-model="msg" ref="input" />

//js
this.msg = 'APP'
console.log(this.$refs.input.value);//error
this.$nextTick(() => {
console.log('nextTick', this.$refs.input.value);//APP
})
```

#### 插槽

ref的对象元素某个元素或者是子组件实例

作用域插槽

- 能访问自身作用域数据的插槽

#### 过渡、动画

：雕虫小技，没那么重要，动画则是通过animate实现

#### 混入

：mixin使得我们能够为vue组件编写可插拔、可重用的功能

可插拔？

- 插上即实现功能，而移除也不会影响系统正常运行

则是在组件自身钩子调用前调用

#### 指令

：你需要对dom元素进行底层操作（比如聚焦）

[常用的自定义指令](https://juejin.cn/post/6963840401899782175#heading-1)、[2](https://github.com/Michael-lzg/v-directives)

- 权限校验指令
- 复制黏贴指令
- 输入框防抖指令

如何批量注册指令？

- 通过把多个指令定义在一个文件中，通过main来引入，然后遍历注册即可

```js
//方法1，通过forEach，这种是半自动的
import debounce from "./debounce";
const directives = {
  debounce,
};
export default {
  install(vm) {
    //   通过object方法来获取到所有的keys
    Object.keys(directives).forEach((key) => {
      vm.directive(key, directives[key]);
    });
  },
};

//方法2，通过require.context方法，全自动的，但是你需要在webpack环境下才行
```

[require.context](https://www.jianshu.com/p/c894ea00dfec)

- [批量注册组件](https://juejin.cn/post/6844903748712857613)

非main.js文件如何获取vue应用实例？

- 通过install方法，可以传入这个应用实例

js移除当前节点居然是这样操作的：先找到父节点，然后移除自己的子节点

- [js常见的节点操作](https://juejin.cn/post/6976087862689136670)

vue3在template中使用字符串需要在双引号里再加单引号

```text
<button v-permission="'user-delete'">用户删除按钮</button>
```



- 

## 过渡&动画

## 可复用性&组合



## Vue-Router

[基本操作](https://juejin.cn/post/6964779204462247950#heading-11)



## Vuex

[基本操作](https://juejin.cn/post/6928468842377117709#heading-12)

坑

- 就是有些东西不能刷新后也要保存起来，则是需要storage或者是同步到数据库，vuex刷新后就没了



## SSR



## 项目难点

[常见操作](https://juejin.cn/post/6844904122747977741#heading-15)

## 技巧

短发哦我的我

[vue2常用操作](https://juejin.cn/post/6844903548870721549?utm_medium=fe&utm_source=weixinqun#heading-1)

- [专题版](https://juejin.cn/post/6936061897892429855#heading-3)
- [官网](https://v3.cn.vuejs.org/guide/instance.html#%E5%88%9B%E5%BB%BA%E4%B8%80%E4%B8%AA%E5%BA%94%E7%94%A8%E5%AE%9E%E4%BE%8B)，是官网写的不够详细？你还要瞎鸡巴找？
- [hooks](https://juejin.cn/post/6888925879243079687#heading-9)

[vue3常见操作](https://juejin.cn/post/6977004323742220319)

- [专栏](https://juejin.cn/column/6978074740883718151)

将源码的目的是为了更好的理解vue，不是为了讲源码而讲源码

- 

[vue练手项目](https://github.com/chuzhixin/vue-admin-beautiful-pro)

vue3的特点？相比vue2

- 更小
- 更快
  - 
- 更好维护

vue3带来的变化？

：主要从增删改查、优化的方向考虑

- 由选项api改成组合api，但是还是支持选项api
- 支持hook，
  - 其实就是mixins，但是直接的mixins还是有很多的弊端的

- 删除了一些属性和api，$on，$off，
- 优化
  - diff算法优化

合并的规则很关键

- 有些是按照自身的优先级来的，比如我行内样式的优先级就是内联的优先级高啊
- 有些是按照书写的优先级来处理的，比如我写在后面的有优先级高，比较偏的就是写在前面的优先级高

搭配的开发工具

- vscode插件：vetur

写代码不仅仅是要看效果，如果还可以顺便瞄一下他这样做的理由

- 比如动态的添加错误处理

