为什么要引入ts？他能解决什么问题？

- 减少了bug，更加规范
- 引入了类型检查，增强了编译器的功能：如代码补全，提示，跳转

学习要点

- 类型，类型熟悉就算学会一半了
  - 基本：5种+Symbol+BigInt
  - 引用：any、never、unknown、function、interface、class、union、object、array、tuple、enum、内置对象

学习进度

- [x] 2月11日类型、泛型

教程

- 指南：https://ts.xcatliu.com/advanced/enum.html
- 中文网：https://www.tslang.cn/docs/handbook/modules.html
- 高阶：https://jkchao.github.io/typescript-book-chinese/typings/interfaces.html
- 文档：https://ts.xcatliu.com/
- 保姆级：https://juejin.cn/post/6872111128135073806
- 实战：https://juejin.cn/post/7058868160706904078
- 视频教程
  - https://www.bilibili.com/video/BV14Z4y1u7pi/?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4
  - https://www.bilibili.com/video/BV1Xy4y1v7S2?p=2&vd_source=522153461914a766fc002cc8619314e4
- tsconfig：https://www.typescriptlang.org/tsconfig#esModuleInterop
- 工具类型：https://juejin.cn/post/6994102811218673700
- 面试题：https://juejin.cn/post/6999985372440559624



## 问题

配置文件怎么去理解？



什么时候可以用@ts-ignore?



搭建一个ts项目？https://segmentfault.com/a/1190000040416940

- 直接初始化一个node项目
- 安装ts库
- 初始化ts配置文件
- 执行文件：ts-node xxx.ts



为什么要配置服务器，因为服务器才能响应浏览器的请求



类型断言：as，断言可以为true，可以为false

- 使用场景：我们比机器更加知道这个变量的类型时，可以使用这个，可以起到类型判断和类型转换的功能（可以转成更加精确或者是更泛的类型）
- !是非空类型断言

as的使用场景

- 类型能够相互赋值的时候

别名？

- 其实就是为了方便，别名叫什么不重要，重要的是这个别名关联了什么东西

!.与?.的区别？

- 前者是非空判断，后者则是判断当前对象是否有这个属性，有则读取，否则不执行，
- ?.保证了程序运行不会报错，没有值就是undefined

!!与??是什么

- !!是其他类型转boolean类型
- ??左边不为null或undefined时，就返回左值，否则返回右值，相当于有默认值了

类型推导出来的可能不够准确，比如'POST'被推导为string（这是比较宽泛的类型），但是我希望他是METHOD类型（字面量类型）

开箱即用是什么？

- 即软件安装后，无需配置或修改，即可使用的功能

纠结编译期与运行期有意义吗？

- 编译期能够提前发现错误



## 类型

**symbol**

：唯一类型

使用场景：类型可以创建独一无二的值，类型是symbol

**any**

：任意类型

场景

- 显式的any
- 隐式any

他可以赋值给任何对象

**unknown**

：未知类型，类型安全的any，尽量不要用any，用unknown代替

unknown赋值给其他变量，不能直接赋值

- 先判断类型，然后再赋值
- 可以用类型断言来处理，断言用as和尖括号

**void**

：表示空值

**never**

：表示永远不存在值的类型，用来抛出异常的

字面量

：字面量也可以当值，它可以限制变量的值，如let a='red'|'green',let



使用场景：则是你不确定某个变量的类型的时候使用

注意：它可以被任意赋值，且不会报错，故不推荐使用

[unknown类型](https://www.jianshu.com/p/4a1fd4550f2d)

：表示类型还不确定的变量

特点：它会报错，如果没有类型断言或基于控制流的细化也会报错，只有做了这些控制，你才能进行操作

tuple类型

：元素类型指定、长度固定的数组

使用场景

- 可以保证操作这个数组元素上的操作是安全的

注意你的写法是否安全？

- 比如arr[0].length，如果没有指定数组元素的类型，那么就是不安全的额

泛型与any的关系

- 泛型是定义时未确定，使用时确定的类型
- 而any则是任意类型

函数类型的写法是怎样的，只需要指明参数列表和返回类型即可

- 如(newState:any)=>void，表明是函数类型

注意你的修改是否具有破坏性？如何保证不会破坏

- 类型限制的话，通过never来保证

编辑器只负责源代码的编辑，而编译器负责转换成浏览器、node可执行的代码

- 编辑器也会提示一些语法错误，能规避一些错误，但是编辑器提示的错误不一定是真的错误
- 编译器也能规避一些错误
- 但是运行的时候还是可能会报错误，这些错误是编辑器、编译器都没发现的

联合类型

- 注意事项：谨慎使用，除非你对变量可能出现的类型都做了相应的处理
- 多选一，而且能够切换类型

类型推断&类型断言区别？

- 前者是编译器做的事，而后者是开发者手动设置的

别名type与let的区别？type定义的是一个类型，而let则是定义了一个变量，前者是右值，后者是左值

## 泛型

：是为了进一步保证类型安全，提高代码的安全性

实现方式：类型参数化（即类型不是固定的，他取决于你传入的实参类型），调用时需要传入类型

擦除？

- 指不同类型的变量能也能赋值，多余的属性在类型推断时擦除了

泛型如果不按规则来会怎样？



## 模块化

模块分：全局、文件模块

怎样算一个文件模块？（一个文件不一定就是一个模块，它还可能是全局脚本）

- 在顶层使用import或export，
- 或者是使用namespace

作用域

定义方式

- 通过命名空间：namespace，而且其他模块要用的话，还需要你本身是要导出的export

类型声明

- 可以通过ts的官网找一个对应的**类型声明**文件（如lodash），然后下载，它会提供映射，一个模块如果没有对应的类型声明文件，导入编译都不能通过
  - 通过插件自带的
- 如何**自定义类型声明文件**，哈哈
  - 声明模块、类、方法、变量、

声明命名空间有啥用：declare namespace

export = xxx？

import与require的区别？

不写export会怎样呢？变成全局变量声明文件吗？

- 

仅仅是import 不写变量有啥用?

- 一般是import css

仅导入模块？

- import 'xxx'，有啥用？



## tsconfig文件

教程：https://juejin.cn/post/6844904178234458120#heading-16

什么时候编译器会主动提示，什么时候是编译的时候才会提示？

- 可以规定ts代码可以怎么写，不可以怎么写，如果不遵守规定则是编译不通过，编译通过才会执行嘛

有些属性是有优先级的，配置了a，就先看a的，不用看b，如果a没指定，才看b的

[include和exclude联系](https://juejin.cn/post/6844904166180159495)

## 声明文件

一般都会有社区编写声明文件

ts-node是不会主动去找类型声明文件的，所以你直接用tsc编译整个项目，然后再node执行指定的文件才行

可以在src下

- 创建types目录
- 创建

声明全局变量和函数只是为了应对实际实际有变量值，或者是有函数的情况，但是编译不通过的情况

- 比如声明jQuery函数

global.d.ts，declare global{}有啥用？

- https://stackoverflow.com/questions/57040272/what-is-declare-global-in-typescript

## 接口

接口与类型别名的区别

- 接口只能表示对象形状或者是函数签名，不能表示基础类型，而类型别名可以
- 接口可以声明多次，再合并，而类型别名则是只能声明一次

继承与实现的区别？

标记为可实例化

- new ():string

## 函数

可实例化：

## 其他

map文件有啥作用？

loader（加载器）有啥用，用于解析语法，实现读取，如webpack打包时可能要用到，loader要配置rules

小写与大写有啥区别？

- string、String

提示不是一个某个ts文件不是一个模块时，你需要把它声明为一个模块

- 可以用export {}
- 或export 某个类型，如export type a=xxx

类型守卫

- is有啥用？
- typeof只能写boolean，number，string吗？

类型别名不就包括联合类型吗？

任意类型的值都可以给unknow，但是unknow则是只能赋值给any和unknown



想要扩展类型？

：通过interface

修改覆盖已有类型？



declare与export有啥区别？

ts与d.ts文件的区别？https://juejin.cn/post/6987735091925483551

- d.ts不会有js输出到output，而且使用的功能是ts文件的子集

d.ts文件里声明的声明的变量是全局的吗？

：不是，只有通过declare的才能声明全局变量，模块，命名空间

namespace与modules区别？

：https://blog.csdn.net/qq_31967569/article/details/98629070#:~:text=%E5%A6%82%E6%9E%9C%E8%A6%81%E7%94%A8%E4%B8%80%E5%8F%A5%E8%AF%9D,%E7%9A%84%EF%BC%8C%E4%B8%80%E4%B8%AA%E6%96%87%E4%BB%B6%E4%B8%80%E4%B8%AAmodule%E3%80%82

- namespace等同于包名，而module则是相当于文件，推荐使用namespace

export default后面要跟表达式，而export后面则是可以跟定义



ts-node命令有坑啊

：有些会检查不到，比如跨文件的时候

- 

d.ts好像就不用写啥export之类的

赋值与断言的区别？https://stackoverflow.com/questions/69399211/typescript-why-does-as-unknown-as-x-work

- 断言则是只要有一边可以赋值即可，要松一点，A能被B赋值，或者是B能被A赋值即可

声明全局变量



第三方库怎么做到全局的类型声明的？不是要导入类型吗才能控制吗？

：比如jest的test、expect



类实现implement类是啥操作？

如何自己搭建ts项目跑起来，不通过他们配置好了的

