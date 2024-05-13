教程

- 异常处理：https://juejin.cn/post/6932620551827488775?searchId=202311171734478FA08540E39199F5004F
- vue中使用jsx：https://juejin.cn/post/7272308621710213161
- 面试题
  - [【🐰中小厂前端面经】三年工作经验求职时会被问些什么? - 掘金 (juejin.cn)](https://juejin.cn/post/7266721485811925033#heading-60)




## 核心问题

#### 关注点

- vue3
- 借助官方的demo：vue3练习的demo应该如何搭建？避免重复学习
  - 官网其实已经很详细了
- 路由vue-router
- 状态管理pinia
- 构建工具vite
- hook风格
- jsx
- 调试能力
- 测试能力：可选
- 兼容问题





#### vue插件

- [vuejs/awesome-vue: 🎉 A curated list of awesome things related to Vue.js (github.com)](https://github.com/vuejs/awesome-vue)



#### 项目

除了管理系统，还有啥好做的？

教程

- [bradtraversy/50projects50days: 50+ mini web projects using HTML, CSS & JS (github.com)](https://github.com/bradtraversy/50projects50days?tab=readme-ov-file)
- 管理系统
  - geeker：[路由、菜单 | Geeker-Admin (spicyboy.cn)](https://docs.spicyboy.cn/guide/router.html)
  - vben：[常见问题 | Vben Admin (vvbin.cn)](https://doc.vvbin.cn/other/faq.html#接口请求问题)




类型

- 数据可视化项目
- 在线教育平台
  - 有些有复杂交互的项目
- 游戏网站
- 地图应用
- 实时通信应用



## 基础

#### 生命周期

：口诀，cmu，destory已经被修改成为unMounted

教程

- https://juejin.cn/post/7093880734246502414#comment





#### [组件通信](https://juejin.cn/post/6844903887162310669#heading-7)

应该要根据组件间关系来学

- 父子
- 兄弟
- 跨层级



#### 插槽

口诀：ts，用的时候用template，而定义的时候则是用slot

ref的对象元素某个元素或者是子组件实例

作用域插槽

- 能访问自身作用域数据的插槽



插槽的入口、出口

- 入口：是用来定义的，在父组件
- 出口：是用来占位的，在子组件



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



#### 响应性api 

什么是响应性？

：我觉得就是数据与其视图是否同步更新，为了保证变量做到响应性，所以要用响应式的api对其进行包装，得到响应性的对象（普通对象不是响应性的），后面你修改值就会有效果了

- 在template中会自动读取value，所以不用.value

值传递修改不会同步，而引用传值则是修改会同步

- 扩展运算符、解构不能随便用，它会导致属性失去响应性，除非你用上toRefs

为什么要组合api来替代选项api？

- 因为选项api的代码逻辑关注点（比如属性）太多了，**拆的太散**，可读性差，难以维护
  - 组合api则是对同一逻辑关注点进行了归类，可读性好，代码可维护了，哈哈

应用场景

- 代码逻辑比较复杂的组件

setup内部不要使用this

ref的重点是他的内部值，而reactive则是返回对象的响应式拷贝，reactive会解包所有深层的ref对象，而且保持响应式，响应式操作指（比如更新视图）

- 

事件总线的监听，监听，触发事件，这个事件（我想到的是叫声，哈哈，我所要做的是监听他的叫声，然后在它叫了之后做某些响应的动作）

vue3中on、emit方法被删了，所以用第三方库才行，

在template中的数据不是所有都要响应式的，因为有些数据是不会改的，比如name

**ref**

ref和reactive都是响应式转换都是深层的

- 推荐使用ref，ref方法是无敌的

**reactive**

：返回的就是proxy对象



vue2与vue3的不同

- 前者通过Object.defineProperty后者通过Proxy来实现响应式

有时候要加入immediate:true才会监听到

**watch**

watch中什么时候要用函数，什么时候直接用值就行？

- 监听响应式对象的时候可以直接用值，而监听普通值的时候则是要用函数

为什么watch直接写属性不能跟踪，而写方法就能响应式的跟踪

```js
// 直接student.age不行，相当于写死一个值，只能通过getter才行
watch(() => student.age, () =>  
console.log('age ' + student.age);
})
```



#### 组合式api

：setup、生命周期钩子、provide|inject

**setup**

：pc，props+context（aees）

props是响应性的对象

attrs则是非响应性对象



## Hooks

：封装（复用）逻辑

怎样才能是保证我的写法是hook风格的？





## JSX

：没必要一定要往jsx靠，vue有自己的风格，就是模板

- https://juejin.cn/post/6846687590704381959
- 语法：https://juejin.cn/post/6996214286292877326
- 语法：https://juejin.cn/post/7029508496756310052

vue中如何引入jsx

- vite

  - 引入jsx插件，无需配置babel
  - 需要在script中配置lang=“jsx”

通过v-slots属性来指定引用插槽

- 而直接用

tsx中不能使用setup语法糖了

什么时候要用括号，我老是花括号用错地方，

- 有表达式的地方就要用花括号，而且是外层用，里层就不用了，比如{arr.length&&console.log('xxx')}



## 兼容

其实这个问题主要靠积累，让测试去验证，出了问题再说



## vue-router



## pinia





## 问题

运行机制

- 初始化：初始化数据、监听器
- 挂载：将组件实例挂在到指定的dom元素上，同时编译模板，生成虚拟dom
- 渲染：将虚拟dom渲染成真实dom
- 更新
- 卸载



渲染更新流程

- 依赖收集
  - 收集组件为响应式的依赖
- 响应式数据更新
- 组件更新：重新执行render函数，生成新的虚拟dom
- diff算法：比如新旧虚拟dom的差异
- 渲染：真实dom更新



应用实例&组件实例

- 应用实例
  - 通过createApp来创建的，一般在main文件里，一个vue应用一般只有一个vue实例
    - 获取：在main中可以直接获取app、其他可以通过函数传参的方式获取

- 应用实例
  - 获取：ref来获取、

- 相同点：都是vue实例
- 不同点：应用实例代表整个当前应用，组件实例只代表当前组件，能够调用的方法也是不同的



怎样修改已有类型，而且复用已有类型

- 

路由懒加载跟异步组件是有区别的

- 路由懒加载一定是用到了异步组件
- 异步组件则不一定是路由懒加载

动态组件&异步组件

- 动态组件一般都不是异步的
- 异步组件则可以是动态的，可以是静态的

vue中使用jsx，还需要用render函数吗？

legacy api：遗留api
