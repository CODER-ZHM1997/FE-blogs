前言：本文档主要是记录一些vue3相对vue2学习要点和学习过程的产生的问题，读者通过阅读该文档+官方文档，完成vue3的入门，（注：官方文档有的东西，我不会冗余）

学习计划

- 官方文档+coderwhy的vue3教程

教程

- vue3教程
  - https://www.bilibili.com/video/BV1QA4y1d7xf
  - 全面：https://www.bilibili.com/video/BV1dS4y1y7vd
  - 源码
    - https://www.bilibili.com/video/BV19V4y177gS?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4
    - https://www.bilibili.com/video/BV1Q3411w7SQ?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4
- vue2代码迁移到vue3：https://juejin.cn/post/7064909191210598408
  
- 前端基建
  - 入门：https://juejin.cn/post/6844904145602740231

- 项目部署
  - https://juejin.cn/post/6844903768362860557
  - 常见问题：https://juejin.cn/post/6844904149633466376
- vue3新特性总结：https://juejin.cn/post/6940454764421316644
- 教程：
  - https://www.bilibili.com/video/BV1ra4y1H7ih?vd_source=522153461914a766fc002cc8619314e4
  - 实战：https://www.bilibili.com/video/BV1qt4y1h7Ew?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4
- vue3中如何使用ts？
  - https://juejin.cn/post/6844903633578885128
  - https://juejin.cn/post/6844904063910281230
  - ts教程：https://juejin.cn/post/6844903865255477261#heading-25
  - 项目中使用ts：https://juejin.cn/post/7058868160706904078
  - 

项目推荐
- https://juejin.cn/post/7036745610954801166#heading-4
- 教你vue3如何做集成：https://juejin.cn/post/6951649464637636622

开发插件

- [volar](https://juejin.cn/post/6966106927990308872)

代码迁移

- vue3移除了很多vue2的属性，或者是修改了写法



构建项目

如何把多个文件引入到一个文件？

```js
export {default as AppMain} from './AppMain'
export { default as Sidebar } from './Sidebar'
```



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

[组合api？](https://blog.csdn.net/u011068996/article/details/111337403)

- 原理：基于函数复用逻辑产生
- 使用场景：业务变复杂时，组件越来越大，
- 优点：可读性和可维护性变差，而组合api能够将组件进行拆分，将相关的代码放在一起，保证了可读性和可维护性，而且有良好的复用性
- [教程](https://zhuanlan.zhihu.com/p/146097763)

一般来说怎么算改变？如stu={name:'zeng'}

- 修改name不算改变，而stu={name:"ZENG"}，这种才算改变



解包？

- 是还原成原始对象吗？

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

- 绑定动态属性和动态绑定属性不同
  - 绑定动态属性：基本的用直接写值，复杂的则是直接用调用方法
  - 动态绑定属性：v-bind=“{id:'red'}”如id为red、green

v-on

：用于绑定事件监听器

- 绑定监听器
- 动态绑定监听器，通过绑定一个对象的方式实现

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



#### 生命周期

：口诀，muu，destory已经被修改成为unMounted

教程

- https://juejin.cn/post/7093880734246502414#comment

了解生命周期有啥用，不都是只使用onMounted吗？

- created中可以访问数据了，但是不能访问dom，因为还没挂载上去，直接用setup能够代替create钩子
- mounted的时候则是可以都可以访问了

变量和函数应该按是否实现的是同一个功能来决定是否在同一个分组

- 比如count和add、sub都在一组



#### [组件通信](https://juejin.cn/post/6844903887162310669#heading-7)

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

口诀：ts，用的时候用template，而定义的时候则是用slot

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

：[hooks与mixin的区别](https://www.nswin.cc/39279.html)



## JSX

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

vue3使用setup语法报错，如defineProps

- 而且在template中不用通过props来访问属性，直接用defineProps里面的参数即可，不用写的props.xxx，直接用xxx即可

什么时候不能用解构？说是会破坏响应性？

在script中使用响应式对象需要用value，而在template中使用则是都不用value





#### 项目部署



## 问题

指定template的三种方式：通过template属性、模板、render函数

何为钩子：钩子即帮你把东西勾过来（如代码块），他会在指定的时机（如某个生命周期）执行

有时候应该报错的，但是它只是提示为warning级别，所以警告信息也不能轻易放过

注意有很多包，有些是压缩版，有些是未压缩的（可读），有些是阉割版，有些是完整版，你要搞清楚用的是哪个？什么时候用哪个

- 代码如果需要某些编译支持，就应该选运行时+编译器版本，而不需要则是可以只选运行时runtime版本

如何生成组件声明？

变量应该怎么放？是变量放一起，函数放一起，还是按功能一起放

**组件注册**

- 按需引入
- 全局注册
  - 全局按需注册
  - 全局全量注册

cdn去哪里找

- 框架、库的官网：https://element-plus.gitee.io/zh-CN/guide/installation.html#unpkg
- 或者是直接去cdn的供应商里面找：unpkg、jsdelivr

数据字典咋用？

：后端返回，前端存到sessionStorge即可，每次刷新页面的时候重新获取一下



怎样修改已有类型，而且复用已有类型

