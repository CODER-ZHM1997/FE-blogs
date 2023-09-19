

前言：本文主要记录一些js的要点和学习过程中产生的问题

教程

- 指南：https://github.com/csxiaoyaojianxian/JavaScriptStudy/tree/master/01-JS%E8%AF%AD%E8%A8%80%E5%9F%BA%E7%A1%80/%E5%AF%B9%E8%B1%A1
- es指南：https://es6.ruanyifeng.com/#README
- 函数有关：https://juejin.cn/post/6864378349512065038
- 闭包：https://juejin.cn/post/6937469222251560990
- [事件模型？](https://juejin.cn/post/6844903568462331912)
- js操作style、class：https://juejin.cn/post/6844903822624555016
- [js的常见操作](https://juejin.cn/post/6844904136161361933)（你后面所有的操作都不会超出这个）
- 正则：
- [js面试题](https://juejin.cn/post/6940945178899251230)
- [js面试题下](https://juejin.cn/post/6941194115392634888)
- [闭包](https://juejin.cn/post/6937469222251560990#heading-7)
- [回调函数中的this指向问题](https://juejin.cn/post/6914474760848506887)
- 函数柯里化：https://juejin.cn/post/7147454421822078984?searchId=202309171653280CE1F848BAC3F921A3DD



## 核心问题

学习目标？

- js三大模块：es、dom、bom
  - es是语言规范，而js才是实现，不同浏览器厂商可能有不同的js实现方式，但是es调用方式都是一样的
- 看这个仓库目录即可：https://github.com/csxiaoyaojianxian/JavaScriptStudy/blob/master/01-JS%E8%AF%AD%E8%A8%80%E5%9F%BA%E7%A1%80/%E6%95%B0%E6%8D%AE%E7%B1%BB%E5%9E%8B%E4%B8%8E%E8%BD%AC%E6%8D%A2/Date.html



## 基础

数据类型（6+1）

- 还有数据类型的判断、转换、遍历动作

#### Error

try catch可以捕获的异常

- 同步代码里抛出的异常

有哪些异常是无法捕获的？

- 编译异常，比如单词拼错了，它会被js引擎先捕获
- 异步代码异常，也是不会被try catch捕获



error有哪些子类？

- 



## 对象

this指向

：跟函数的被调用方式有关，共4种

- 对象方法：o.fn()
- 普通函数：fn()
- 构造函数：new fn()
- call、apply调用：fn.call(o)
  - apply中的第二个参数是对应array，a对a嘛



参数传递：值传递、引用传递

：js两者都有

- 

#### 原型

：不是啥东西都要挂到原型对象对象上的，构造函数

原型链

- 记住2句话，可以知道原型链是如何组织的！
  - 每个对象都由对应的构造器
  - 每个构造器都由对应的原型对象
  - 原型对象本身也是对象
  - 某个具体的函数（如Foo）也是一个特殊的函数对象，它是根据Function构造器生成的对象
    - 所以Foo.__proto__==Function.prototype
  - 而一般对象的原型都是指向构造器的原型，构造器的原型的原型则是指向Oject.prototype
    - 如obj.__proto__==Foo.prototype，Foo.prototype.proto==Object.prototype



proto与prototype区别

- prototype是构造器特有的属性，它指向构造器原型
- proto，则是继承过来的属性，Foo.proto则是指向Function.prototype

对象怎么生成？

- 先去克隆Object.prototype对象
- 然后再执行自己的构造器



## 函数

函数的3中创建方式

- const sum=new Function('a','b',`...`)

三种类型

- 闭包
- 回调函数

闭包（能够访问其他作用域的函数，由外部函数返回）

原理：是作用域访问规则，从下级作用域可以往上访问，而上级则不能往下访问



高阶函数

好处：



函数柯里化

好处

- 缓存参数
- 缓存函数
- 缓存判断





## 正则

## DOM



## 问题

原型与原型链

什么是原型对象？

：系统在构造函数定义时，自动关联的一个对象，目标是能够为构造函数生成的实例提供一些公共的属性和方法（不过一般值加公共方法）

那构造函数的__proto__得到的是啥

instanceof

：用来判断实例的原型链上是否能找到该类型的原型

规则（原型链应该是从顶层开始往下推，你记住那个原型链的图就行了）

：https://juejin.cn/post/6844904093828251662#heading-18

- 所有对象或实例都有构造函数（如Person），而构造函数的原型又是对象，这些对象的构造函数就是Object

- null是Object原型的原型
- 任意构造函数的原型都是Function原型
  - Person.proto==Function.prototype
  - Object.proto==Function.prototype

prototype与proto的区别

- 两者指向的都是同一个东西，如Person.prototype==p.proto，但是调用它们的人不同，前者是prototype来调用，后者是proto
- prototype表示的是类原型，proto则是对象原型



this的上下文是啥意思？

- 即this的指向

[语句与表达式的区别？](https://segmentfault.com/a/1190000021293978)

- 语句是为了做某个动作，如 let name='zeng'
- 而表达式一定会得出某个值

[箭头函数中this的指向，](https://blog.csdn.net/xu4321083/article/details/79753800)

- 指向外层的作用域的this，本身就是就处在函数里，**对象不算一层作用域**，而且是静态作用域（即定义时的作用域）
- [使用场景](https://zhuanlan.zhihu.com/p/60734960)：
- 箭头函数不适用场景
  - 对象的方法（应为我对象方法就是为了操作属性啊）
  - 动态上下文的回调函数（就是我需要你this指向新的对象了，但是你用回调函数就是固定的this指向了)

this指向会被改变的四个场景

- 通过call、apply、bind、
- 构造函数执行
- 作为方法调用
- 普通函数执行
- 箭头函数的this是改不了的



[终于搞懂复杂是啥玩意了，这tm重在对比啊](https://zhidao.baidu.com/question/314930784.html)

- 比如，搜索的一维数组的搜索操作时间复杂度是O(1)是指你10个元素的数组和10000个元素的数组找一个元素都是一样的耗时
- O(n)则是时间复杂度与你的数据规模有关系，比如1个元素的耗时是t，则100个元素的耗时就是10t了，主要是拿1和括号内的东西做对比
- O(n的平方)则是时间复杂度与你的数据规模有关系，比如10个元素的耗时是t，则100个元素的耗时就是100t了，这算法写的不行啊，哈哈哈



闭包

：为什么叫闭包？因为他封闭了一个环境，环境里面有变量和函数





防抖与节流的区别

- 防抖是回城，每重新触发一次事件，就会重新开始计时，计时到了才会执行动作
  - 实现：闭包+定时器，每次触发事件的时候都清除一下定时器
- 节流则是技能：规定时间内只会执行1次动作，如果某一时刻多次触发，那么只会执行1次，因为会进入技能冷却时
  - 实现：闭包+定时器，每次触发时间时看定时器有没有被初始化，如果没有则是初始化一下，有则啥都不做

我怎么知道浏览器支持到es几？

- 跟浏览器版本有关，一般最新的浏览器都是支持到最新的es版本

工厂函数与构造函数的区别？

- 调用方式不同：工厂函数会被当做普通函数调用，而构造函数则是通过new的方式调用
- 返回值不同：工厂函数必须返回对象，而构造函数随便写，默认返回this

语句与表达式的区别？代码中语句分几种类型？

- 表达式是语句的一部分
  - 它一定会有值
  - 可以嵌套
- 语句就不是表达式，但是它可以包含表达式

