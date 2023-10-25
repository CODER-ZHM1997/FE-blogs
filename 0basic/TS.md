

教程

- 指南：https://juejin.cn/post/6872111128135073806
- 官网：https://www.tslang.cn/docs/handbook/basic-types.html
- 在线练习
  - 平台：https://www.typescriptlang.org/play
  - 问题：https://github.com/type-challenges/type-challenges/blob/main/README.zh-CN.md
  - https://ghaiklor.github.io/type-challenges-solutions/zh/
  - https://juejin.cn/post/6994102811218673700?searchId=2023102310013171261D37BB241D1A8272#heading-7
  
- 视频教程
  - https://www.bilibili.com/video/BV14Z4y1u7pi/?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4
  - https://www.bilibili.com/video/BV1Xy4y1v7S2?p=2&vd_source=522153461914a766fc002cc8619314e4
- tsconfig：https://www.typescriptlang.org/tsconfig#esModuleInterop
- 工具类型：https://juejin.cn/post/6994102811218673700
- 面试题：https://juejin.cn/post/6999985372440559624



## 核心问题

#### ts是啥？

- js的超集，增加了静态类型计算和检查，还有一些面向对象的特性：接口、装饰器、枚举



#### ts解决了什么问题

- 编译期类型检查：可以提前发现问题，js则是没有编译期
- 支持丰富的类型
- 更加容易维护



#### 核心关注点

- 博客里面写了
- 类型声明
  - 第三方库的类型声明
  - 类型定义

- 初始化ts项目



## 初始化ts项目

方式1：自己搭建

- pnpm init
- pnpm i typescript @types/node -D
- pnpm exec tsc --init

方式2：通过vite搭建

- pnpm create vite  demo-ts --template=vanilats，或者是vue-ts、react-ts



## 基础类型

所有类型信息都会在编译后被抹掉

#### null

：

#### undefined

：可以将某个

#### any

：任意类型

所以不管是给any类型赋值还是被any类型赋值，都可以，没有类型检查



#### unknown

：未知类型

为了弥补any类型没有类型保护的缺陷，unknown



#### void

：空类型

变量不能设置为void类型，因为这样就没法给变量赋值了，那这个变量就一点用都没有

- 虽然可以指定 let a:void

只有函数才能指定为void



x is boolean有啥用

- 可以



## 类型推断



## 类型断言

：是编译时行为，是开发者告诉编译器将变量视为某个类型，所以类型断言其实是开发者断言给编译器的



## 类型守卫

：这个是运行时行为，跟类型断言互补的，它是运行时检查变量的类型

通常以函数或者是表达式的方式被调用



js中typeof只能适用于基础类型的变量，如typeof person.name=="string"

- 而在ts中typeof还可以直接获取变量或函数的类型，比如typeof person
- 而instanceof才适用于对象：p instanceof Person



常用的：iiit

- in
- instanceof
- is
- typeof



## 类



## 接口

接口与类型别名的区别

：接口的限制比较多

- 接口只能表示对象形状或者是函数签名，不能表示基础类型，而类型别名可以
- 接口可以声明多次，再合并，而类型别名则是只能声明一次

继承与实现的区别？

标记为可实例化

- new ():string



## 泛型

：是为了进一步保证类型安全，提高代码的安全性

实现方式：类型参数化（即类型不是固定的，他取决于你传入的实参类型），调用时需要传入类型

擦除？

- 指不同类型的变量能也能赋值，多余的属性在类型推断时擦除了

泛型如果不按规则来会怎样？



#### 工具类型

：可以通过工具类型计算得到一个新类型

需要了解各个工具类型的使用场景，想不到场景你就找gpt要

- Partial：得到新类型，所有属性变成可选，注意是全部属性啊
- Required：所有属性都变成必选
- Record<K,V>：key都是K类型的，value都是V类型的
- Pick<T,K>：从T中读取属性K的值，作为新的类型
- Omit<T,K>：从T中删除属性K，
- Exclude<T,U>：从T中删除U类型及其子类型
- Extract<T,U>：从T中提取U类型及其子类型
  - Exclude和Extract都跟key没有关系的，一般都是用在联合类型上的，
- NotNullable<T>：排除掉T中null、undefined类型
  - 这个T一般是联合类型，比如type T=Person|null
- ReturnType<T>：获取到函数类型T的返回值类型



infer：只能用于条件类型的extends子句中

- type RT<T>=T extends (...args:any[])=>infer R ? R : any;

连属性名也不能写死的时候

- 你就用in遍历出来

```ts
type Record<T extends string|number|symbol,V>={[k in T]:V}
```



## 装饰器



## 模块化

文件分：全局文件、模块文件

- 没有import或者是export的文件就是全局文件
- 一旦有import或export的就是模块文件
  - 使用模块文件可以减少污染

不是所有文件都是被当成模块的！成为模块是有条件的，项目内有module、non-module

- 在顶层使用import或export，



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



什么时候编译器会主动提示，什么时候是编译的时候才会提示？

- 可以规定ts代码可以怎么写，不可以怎么写，如果不遵守规定则是编译不通过，编译通过才会执行嘛

有些属性是有优先级的，配置了a，就先看a的，不用看b，如果a没指定，才看b的

[include和exclude联系](https://juejin.cn/post/6844904166180159495)

moduleSolution：指定ts模块的解析策略，大白话就是允许你在模块中使用哪种导入方式

- 常用：nodenext、bundler
- 比如nodenext就支持import和require混用
- bundler要结合打包器来使用，typescript包不是打包器

module：指定生成js用的模块系统

- 常用esnext、nodenext
- 与package中的type相对应，type是指定项目中默认的模块类型
  - type
    - module，则是不能使用require函数
    - commonjs，则是不能使用import指令

target：指定生成代码的对应的es版本

- 常用es6

cjs模块并不原生支持es6特性

- 需要用到babel来转码

ts中支持esm和cjs模块混合操作，即在模块中同时使用import和require

- 注意需要配置package文件中指定type为commonjs

如果同时配置include和exclude

- 则是在符合include的文件里再做一些裁剪

isolatedModules

：隔离模块，需要显式导入，但不是将所有文件都变成模块

types指定类型包

- 默认：node_modules/@types下的所有类型都是全局类型
- 自定义：types:['node']，



## 声明文件

类型按作用域分为几种？

- 全局类型：
- 模块类型：模块内可见
- 局部：一般是在函数中
- 嵌套：嵌套在其他类型中，而且只在当前类型可见

ts与d.ts文件区别？

- ts包含可执行代码
- d.ts文件则是不包含可执行代码，全都是类型声明

一般都会有社区编写声明文件

- 比如@types/node

ts-node是不会主动去找类型声明文件的，所以你直接用tsc编译整个项目，然后再node执行指定的文件才行

可以在src下

- 创建types目录
- 创建

声明全局变量和函数只是为了应对实际实际有变量值，或者是有函数的情况，但是编译不通过的情况

- 比如声明jQuery函数

global.d.ts，declare global{}有啥用？

- https://stackoverflow.com/questions/57040272/what-is-declare-global-in-typescript

module：决定了当前项目的模块系统哪种？

- 一般都是esnext或者是es6，越新的则是支持越多新特性，比如顶级的await

moduleResolution：则是模块解析策略

- 给定一个模块标识符，怎么去找到这个模块，一般为node即可

target：指定生成的代码

- 一般为es5，如果配置成esnext

类型需要手动导入吗？

- 我觉得一般是不用的，因为类型会自动导入，比如 import path from 'path'

declare module、declare namespace区别

- 没啥区别，都是为了声明命名空间，可是
- 使用场景：补充模块（比如.vue文件）或者是库的类型声明

declare global有啥用？能不写吗？

- 是为了在模块作用域中往全局作用域中加点类型声明
  - 因为使用了import或export导致当前的声明文件变成了文件模块

声明文件中啥时候需要用export？

- 当你需要类型为模块类型时，就用export，这样不会污染全局类型

对第三方库、或模块进行类型声明扩展，而不是覆盖

```ts
declare global {
  interface Window {
    myName: string;
  }
  module "*.vue"{
      export default {
          name:string
      }
  }
}
```





## 问题

常用的是对象数组还是数组对象？

- 是对象数组，它是由对象构成的数组

值有类型

- 但是值本身也可以作为一个类型，比如type Name="name"，这种是字面量类型

类型计算

- 也可以根据其他类型来计算得出：keyof Person
- 根据变量计算出：typeof name

如果不按照ts中定义的类型来传值，会怎样？

- ts编译报错
- 甚至是运行出错

如果某个断言是错误的，会怎样？

- 编译不会报错
- 但是运行出错

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



动态语言与静态语言有啥区别？

- 

ts转码与babel转码的区别？

- ts是ts转js
- babel则是高版本的js转低版本

- 
