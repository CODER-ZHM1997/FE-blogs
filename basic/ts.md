

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



## 核心关注点

注意事项

- 使不使用ts，跟你的代码好坏没有关系
- 会用ts也不会给你加钱，反而增加了工作量



ts是啥？

- 能够让你的前端代码可读性更好，还有更加容易维护
- js的超集，增加了静态类型计算和检查，还有一些面向对象的特性：接口、装饰器、枚举



ts解决了什么问题？

- 编译期类型检查：可以提前发现问题，js则是没有编译期
- 支持丰富的类型
- 更加容易维护







## 基础类型

所有类型信息都会在编译后被抹掉

**null**

：



**undefined**

：可以将某个



**any**

：任意类型

所以不管是给any类型赋值还是被any类型赋值，都可以，没有类型检查



**unknown**

：未知类型

为了弥补any类型没有类型保护的缺陷，unknown



**void**

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

