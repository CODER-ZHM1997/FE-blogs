[TOC]

前言：本文主要记录一些js的要点和学习过程中产生的问题

## 问题

[事件模型？](https://juejin.cn/post/6844903568462331912)

- 捕获、目标、冒泡阶段
  - addEventListener
  - 阻止冒泡：stopPropagation
  - 阻止默认行为：preventDefault

如何绑定方法？

- 



[回调函数中的this指向问题](https://juejin.cn/post/6914474760848506887)

：像setTimeout，setInternal都是window对象下的方法，它里面的this默认都是指向window对象

解决方案

- 可以通过that保存this
- 通过bind来修改
- 通过箭头函数



js就是es5

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

函数定义计算一下还是函数定义，但是表达式（如立即执行函数）执行一下就是可能返回了新的函数



使用场景

- 



A.prototype被重新指向新的原型对象了，那么之前的生成的对象是不收影响的，不要说是直接看A.prototype指向什么，重点是A.prototype当时指向什么

[终于搞懂复杂是啥玩意了，这tm重在对比啊](https://zhidao.baidu.com/question/314930784.html)

- 比如，搜索的一维数组的搜索操作时间复杂度是O(1)是指你10个元素的数组和10000个元素的数组找一个元素都是一样的耗时
- O(n)则是时间复杂度与你的数据规模有关系，比如10个元素的耗时是t，则100个元素的耗时就是10t了，
- O(n的平方)则是时间复杂度与你的数据规模有关系，比如10个元素的耗时是t，则100个元素的耗时就是100t了，这算法写的不行啊，哈哈哈

你要记住，对于引用类型，变量的角色是引用，而非容器



sort默认是升序的，它预计返回是负值，这样就不会调换位置，所以是升序，

for in和for of的区别

- in拿的是键，of拿的是值
- in用来遍历对象（这个是es5的）
- 而of则是遍历数组和set和map（这是es6出的）

[e.target与this的区别？](https://juejin.cn/post/6974662159120728077)

- target是触发事件的对象，而this则是绑定this的对啊ing
- 就举例了ul里面套用3个li的例子，点击li触发的触发的事件，e.target是li，this是ul



## 基础

#### [正则表达式](https://www.runoob.com/regexp/regexp-metachar.html)

- 你要要求字符串***整体***由什么组成，则是需要加上^和$
- test居然是正则表达式的方法，而search居然是返回首个符合的条件的下标，而match才是匹配的结果，match经常与/g，搭配使用

[括号有什么用，](https://www.jb51.net/article/141294.htm)

- 
- 中括号[123]，是多选一
- 小括号(123)，则是

**字符串**

- split，将字符串分割成数组



**对象**

[对象如何遍历？](https://www.cnblogs.com/wangdashi/p/9606182.html)

- for in
- Object.keys、Object.values，返回的可枚举属性

**数组**

数组的常用方法

- [reduce的运用](https://juejin.cn/post/7011096419985522701)

- every、some
- find、findIndex
- [forEach、map、filter](https://juejin.cn/post/6844903807176933384#heading-5)
  - map是返回新数组
  - filter是返回为true的才能被留下来
- 原来string和array都是includes

- [对原数组有影响的函数](https://juejin.cn/post/6844904192671219719)
  - push、pop
  - unshift、shift
  - reverse、sort、splice、fill（简称rssf）
    - splice则是能完成增、删、替换，强的要死



#### 原型与原型链

instanceof

：用来判断实例的原型链上是否能找到该类型的原型

__proto__与prototype的区别？
：普通对象只有__proto__属性，而函数特有的属性是prototype,原型对象他里面保存的是所有实例共享的属性和方法，prototype只是为了方便的拿到原型对象，



#### 闭包

使用场景

- 作为函数返回值
- 作为参数来传递



#### 作用域与作用域链（定义时确定）

：作用域：是变量的存活范围，es6引入了let支持块级作用域，而不是写一对方括号决定的{}，作用域分：全局作用域，函数作用域，块级作用域，

：作用域链，我们一般说的是函数定义的时候的作用域链，



#### [执行上下文（执行时确定）](https://juejin.cn/post/6844903682283143181#heading-2)

- 



执行上下文与作用域链怎么用？

- 确定一个变量的值，就根据作用域链来找



#### 面向对象

继承如何实现？



#### es

**同步，异步**

：什么是同步？同步就是大家按顺序来，上面的事做完再做下面的，异步就秀了，它上面的操作没做完，他就做下面的事，直接跳过，它等同步那些操作完成后再做异步的操作

#### 通信类

什么是源？

- 协议+域名+端口

前后端如何通信？

- ajax（浏览器不允许ajax发送跨域请求，只能同个域下面的）
- websocket（socket肯定可以）
- cros（相当于变种的ajax的，能够发送跨域请求

 

**浏览器的渲染**

- 如何避免reflow重拍
- 如何避免repaint重绘

**js的运行**

- 任务队列
- 事件循环Event Loop

**提升页面的性能**

实现方式

- 资源合并压缩，减少http请求
- 非核心代码异步加载
- 利用浏览器缓存
- 使用CDN
- 预解析DNS

错误监控

：其实就是为了保证代码质量，紧急补救



## 技巧

[js的常见操作](https://juejin.cn/post/6844904136161361933)（你后面所有的操作都不会超出这个）

- [js面试题](https://juejin.cn/post/6940945178899251230)
- [js面试题下](https://juejin.cn/post/6941194115392634888)
- [闭包](https://juejin.cn/post/6937469222251560990#heading-7)

js的常见问题可以去mdn中查看

- [如回调函数中的this指向问题](https://developer.mozilla.org/zh-CN/docs/Web/API/setTimeout)，发现回调函数this指向可能不是你想要的，你可以通过以下三种方法修改this指向：[that，bind，箭头、](https://juejin.cn/post/6914474760848506887)
- window下的方法如setTimeout，setInterval中回调的this是指向window的，严格模式下也是，虽然全局的this是指向undefined的

