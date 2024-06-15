

教程

- 指南：https://juejin.cn/post/6872111128135073806
- 官网：https://www.tslang.cn/docs/handbook/basic-types.html
- 在线练习
  - 平台：https://www.typescriptlang.org/play
  - 问题：https://github.com/type-challenges/type-challenges/blob/main/README.zh-CN.md
- 视频教程
  - https://www.bilibili.com/video/BV14Z4y1u7pi/?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4
- 工具类型：[一文盘点Typescript中23个内置类型工具! (建议收藏) - 掘金 (juejin.cn)](https://juejin.cn/post/7341669201009655845?searchId=20240515155854D2BA2A0157F403852D00#heading-1)
- [infer | 深入理解 TypeScript (jkchao.github.io)](https://jkchao.github.io/typescript-book-chinese/tips/infer.html#介绍)
- 面试题：https://juejin.cn/post/6999985372440559624



## 关注点

注意事项

- 使不使用ts，跟你的代码好坏没有关系
- ts只有在实战中才能提升，已经发展它的重点
- 会用ts也不会给你加钱，反而增加了工作量

ts是啥？

- js的超集

ts解决了什么问题？

- 支持编译期类型检查：可以提前发现问题，js则是没有编译期
- 支持丰富的类型
- 更加容易维护



薄弱点

- [x] 类
- [ ] 泛型
- [ ] ts的实战



如果定义类型？

- 老老实实写结构，{...}
- 通过typeof来获取类型，比如type InputEmits=typeof inputEmits



如何给变量指定类型？

```ts
// 通过冒号的方式指定
let foo:string;
// 通过类型推断
let foo=ref<HTMLElement>();
```







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

使用场景

- 



**void**

：空类型

变量不能设置为void类型，因为这样就没法给变量赋值了，那这个变量就一点用都没有

- 虽然可以指定 let a:void

只有函数才能指定为void



x is boolean有啥用

- 可以



## 类型推断





## 类型断言

：是开发者告诉编译器将变量视为某个类型，所以类型断言其实是开发者断言给编译器的



## 类型守卫

：这个是运行时行为，跟类型断言互补的，它是运行时检查变量类型

通常以函数或者是表达式的方式被调用



js中typeof只能适用于基础类型的变量，如typeof person.name=="string"

- 而在ts中typeof还可以直接获取变量或函数的类型，比如typeof person
- 而instanceof才适用于对象：p instanceof Person



常用的

- typeof
- instanceof
- is
  - 能够告诉编译器某个变量的类型是啥，这样编译器在后面的语句中知道你是啥类型了
  - 之前以为他没啥卵用，原来是告诉编译器某个变量类型的
- in



## 对象

对象展开运算符...

- 通常却是为了组装对象，哈哈
- 写到等号右边才是展开







## 类





## 接口

优点

- 接口的局限性比较小

常用接口还是类型别名？或者说哪种情况下用的什么？

：常用的是接口

- 只有生成复杂类型的时候才会使用类型别名
  - 涉及到联合，交叉，函数类型时

可以为接口指定多个函数签名，比如

```ts
// 目的是能够满足多种输入类型
interface TooltipEmits {
    (e: "double"): void;
    (e: "click", value?: boolean): void;
}

// 定义变量时，要同时满足接口里面的签名，
const tool: TooltipEmits = (e: string, value?: boolean) => {
    console.log(e, value);
}
```





## 类型别名

优缺点





## 类

常见操作

- 抽象类abstract

- 继承extends

- 重载

- 访问器getter、setter

- 

  





## 泛型

：能够支持更多类型，实现方式：类型参数化，即调用时需要指定类型

擦除？

- 指不同类型的变量能也能赋值，多余的属性在类型推断时擦除了

泛型如果不按规则来会怎样？







#### 工具类型

：一种特殊类型，可以用它计算得到一个新类型

typeof

：也可以用于获取一个类型，比如typeof person

keyof

：也可以用于获取一个类型

in



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



infer：用于推导变量类型，常用于推导参数类型，返回值类型

- extends优先级高，三木运算符优先级低，



## 装饰器



## 配置文件

这个配置文件内容太多了，不建议深入，你按默认的配置即可，这不是我该操心的事情

tsconfig文件除了影响ts文件，还可以影响tsx还有vue文件



需要修改的配置

```json
// 配置模块解析策略，如何找模块
"moduleResolution": "Bundler",
// 配置生成的代码使用哪种模块系统
"module": "ESNext",
// 配置es的语法等级,一般是es6即可
"target": "ESNext"
```





## 技巧

- 语法：可选，类型，值
  - 如name?:string="zeng"

ts可以导出类型，也可以导出变量

- 



## 坑

找不到模块或者是它的类型声明

- 重启一下ts server
  - 跑到js或ts文件下，然后打开c+s+p，然后输入restart
- 重启以下vscode，或者是重新打开一下文件
- 指定一下include属性即可
- 或者是配置以下paths，完成路径映射

找得到模块，但是提示没法找到它的类型声明文件

- 比如import { ElButton } from 'elusa-ui';



## 问题

类型不兼容会怎样？

- ts编译器会报错，但是你可以无视它的报错

- 

比如

```ts
import { withInstall } from "@elusa-ui/utils";
```



ts报错会怎样？

- 会影响构建吗？不会
- 

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

找不到变量，比如__dirname

- 安装一下@types/node，还有@types/jsdom
