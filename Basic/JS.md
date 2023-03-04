

前言：本文主要记录一些js的要点和学习过程中产生的问题

教程

- 函数有关：https://juejin.cn/post/6864378349512065038
- 闭包：https://juejin.cn/post/6937469222251560990
- js操作style、class：https://juejin.cn/post/6844903822624555016
- [js的常见操作](https://juejin.cn/post/6844904136161361933)（你后面所有的操作都不会超出这个）
- 正则：
- [js面试题](https://juejin.cn/post/6940945178899251230)
- [js面试题下](https://juejin.cn/post/6941194115392634888)
- [闭包](https://juejin.cn/post/6937469222251560990#heading-7)
- [回调函数中的this指向问题](https://juejin.cn/post/6914474760848506887)



## 事件

[事件模型？](https://juejin.cn/post/6844903568462331912)

- 捕获、目标、冒泡阶段
  - addEventListener
  - 阻止冒泡：stopPropagation
  - 阻止默认行为：preventDefault





js就是es5

[箭头函数中this的指向，](https://blog.csdn.net/xu4321083/article/details/79753800)

- 指向外层的作用域的this，本身就是就处在函数里，**对象不算一层作用域**，而且是静态作用域（即定义时的作用域）
- [使用场景](https://zhuanlan.zhihu.com/p/60734960)：
- 箭头函数不适用场景
  - 对象的方法（应为我对象方法就是为了操作属性啊）
  - 动态上下文的回调函数（就是我需要你this指向新的对象了，但是你用回调函数就是固定的this指向了)



## this指向问题

this指向会被改变的四个场景

- 通过call、apply、bind、
- 构造函数执行
- 作为方法调用
- 普通函数执行
- 箭头函数的this是改不了的



函数定义计算一下还是函数定义，但是表达式（如立即执行函数）执行一下就是可能返回了新的函数



使用场景

- 



A.prototype被重新指向新的原型对象了，那么之前的生成的对象是不收影响的，不要说是直接看A.prototype指向什么，重点是A.prototype当时指向什么

[终于搞懂复杂是啥玩意了，这tm重在对比啊](https://zhidao.baidu.com/question/314930784.html)

- 比如，搜索的一维数组的搜索操作时间复杂度是O(1)是指你10个元素的数组和10000个元素的数组找一个元素都是一样的耗时
- O(n)则是时间复杂度与你的数据规模有关系，比如10个元素的耗时是t，则100个元素的耗时就是10t了，
- O(n的平方)则是时间复杂度与你的数据规模有关系，比如10个元素的耗时是t，则100个元素的耗时就是100t了，这算法写的不行啊，哈哈哈

你要记住，对于引用类型，变量的角色是引用，而非容器



## 遍历问题

for in和for of的区别

- in拿的是键，of拿的是值
- in用来遍历对象（这个是es5的）
- 而of则是遍历数组和set和map（这是es6出的）

**对象**

[对象如何遍历？](https://www.cnblogs.com/wangdashi/p/9606182.html)

- for in
- Object.keys、Object.values，返回的可枚举属性

**数组**

数组的常用方法

- [reduce的运用](https://juejin.cn/post/7011096419985522701)

- every、some
- find（找元素）、findIndex（找下标）、indexOf（找下标）
- [forEach、map、filter](https://juejin.cn/post/6844903807176933384#heading-5)
  - map是返回新数组
  - filter是返回为true的才能被留下来
- 原来string和array都是includes

- slice
  - 取出数组的某个，或某几个元素

- [对原数组有影响的函数](https://juejin.cn/post/6844904192671219719)
  - push、pop
  - unshift、shift
  - reverse、sort、splice、fill（简称rssf）
    - splice则是能完成增、删、替换，强的要死



## 原型与原型链

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

## 闭包

使用场景

- 作为函数返回值
- 作为参数来传递



#### 作用域与作用域链（定义时确定）

：作用域：是变量的存活范围，es6引入了let支持块级作用域，而不是写一对方括号决定的{}，作用域分：全局作用域，函数作用域，块级作用域，

：作用域链，我们一般说的是函数定义的时候的作用域链，



## 问题

this的上下文是啥意思？

- 即this的指向



