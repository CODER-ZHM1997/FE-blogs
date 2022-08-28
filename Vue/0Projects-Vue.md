[TOC]

# 项目

**无非是围绕表格、表单还有弹窗，共享一下数据，然后再对接一下后台，还有什么东西，没了吧**

- 然后就是熟悉业务+组件封装

项目列表

- [内容管理系统](https://juejin.cn/post/6999558322005213192)

## 核心项目：vue-element-admin（vue2）

：一个后台管理系统

[开发文档](https://panjiachen.github.io/vue-element-admin-site/zh/guide/#%E5%8A%9F%E8%83%BD)

## elementui 的二次封装：avue

开发文档，当然，它是基于 rollup 的，看看代码就行了，需求也没提

## 核心项目：coderwhy 的 cms 系统（vue3）

：一个后台管理系统，

：核心项目就是值得经常反复看的，以后的项目需求差不多都是根据这个衍生的，不会超出这个范畴的，嘿嘿

[开发文档](https://panjiachen.github.io/vue-element-admin-site/zh/guide/)

开工日期：10-24 日

技术栈：ts+vue3+@vue/cli

系统功能

- 用户登录、退出
- 动态菜单的渲染
- 系统管理：用户、角色、部门、菜单
- 商品管理：

你开发的时候，服务器是跑在 webpack 的 devserver 里面的，而不是 nginx 里面

- 所以你开发的时候需要配置 devserver 就行了
- [跨域的定义和影响范围、解决方法](https://www.cnblogs.com/wangpenghui522/p/6284355.html)
  - 主要是通过代理服务器，跨域请求如果不是浏览器发的（如我代理服务器帮你发起跨域请求），就不存在跨域问题，比如我专挑**/api**开头的请求

**项目搭建**

如何做？

- eslint 的配置，直接按照默认的就行

[搞懂 eslint 和 prettier，两者区别](https://zhuanlan.zhihu.com/p/80574300)

- eslint 解决**代码质量问题**，还解决部分的代码风格（格式化）问题
- prettier 则是解决**代码风格问题**
- 格式化配置就是个浑水，不要浪费我做项目的时间，大丈夫要抛得起

那我 vetur 又有什么

为什么代码不会格式化？

- 因为你没有去执行 prettier 的命令，或者是你设置保存的时候自动触发
- 格式化对象不要搞错了，他说的使用单引号不是全部都用单引号，而是 js 那一块才用单引号，而 html 的属性则是用双引号

vscode 中的 prettier 插件与配置文件.prettierrc 不同步怎么办？

- 日了狗了，跑命令的需要是按照 prettierrc 的规定来写的，而 vs 插件提示又是按照它自己默认的，就不能按照我的 prettierrc 配置文件来吗
  - 解决方案，原来是修改了 prettierrc 需要重启 vscode，zz 设计，下次很多配置如果不起效果都要重启一下才行

为了防止自己或别人提交垃圾代码（不按格式来）

- 通过 husky 拦截 commit，进行代码代码校验和格式化，如果不通过则是不会通过 commit 操作的

为了规范 commit 信息，通过 commitizen

- 然后你就可以通过 git cz 命令来提交了

如何防止别人直接通过 git commit 同时乱填写 commit message 来提交？

- 通过 commitlint 来完成限制

类型不要随便写 any 最好指定确切的类型

- 它有提供类型的话则是通过它提供的
- 没有类型要自己创建类型

vuex 对 ts 的支持？

- 居然还有这个问题，我以为是编译了 ts 再去执行 vuex 里面的代码

如何选择组件库？

- 选有团队的
- 组件库
  - 桌面端：element-plus，（ant-desgin-vue 这个没有团队，只有个人在维护，风险大）
  - 移动端：vant
- 组件库的使用很简单的，无非是引入一下，改一下配置即可

一定要有抽象思维

- 比如 main 文件太大了，你可以把同一类的行为抽离出去，比如注册 elemenPlus 的组件，你可以抽离到全局行为中，注册 elemenPlus 的组件又可以抽象为注册组件，所以你只需要负责写一个注册组件的行为，然后引入注册 elemenPlus 这个具体的行为
  - 批量注册可以考虑使用 for of 来循环注册一下，哈哈

别人提供多种写法是为了让你使用更加方便，没想到你却不会用了，哈哈

封装的话，推荐用类

- 类有继承、多态，比你直接封装成对象更加方便

element-plus 组件的批量注册？

-

有时候报错是需要重启项目的，因为热更新没更新到我的底层代码，所以你就重启一下项目吧，嘿嘿

重置一下默认的 css 样式

- 通过下载 normal.css，然后 import 即可

登录拦截？

- 通过前置路由 beforeEach 来实现

[在 vue 项目中引入 svg](https://juejin.cn/post/6900908504635965447)

- svg-sprite-loader

有事没事你都要拆一下，为了提高代码的可读性

- 比如账号、密码的登录和手机号登录
- rules 的抽离，你可以把表单验证的 rules 抽离一下，抽离为 config 配置文件，或者是常量文件
  - 但是响应式的变量抽离的话你则是要放到 hooks 里

**记住密码？**

- 通过 localStorage，这又涉及到一个 localStorage 的二次封装，能保存任意类型

逻辑写在哪里问题

- 是写在父组件还是当前组件？
  - 写在当前组件的话，你组件里的方法哪里都可以调用了，哈哈
- 设计模式需牢记，不然你耦合了都不知道，不要说解耦了

ts 怎么保证减少安全隐患？

- 通过指定具体的类型，不要写 any 类型

**登录功能流程**

- 账号密码登录
  - 验证用户信息
  - 通过，则请求登录；否则不请求
  - 登录后其实还要发其他请求，比如拿到用户信息，再根据用户的角色拿到菜单

哪些数据是共享的，需要放入 vuex 的

- 用户信息
- token
- 权限信息

vuex 又涉及到模块化的问题了（业务一复杂起来就这样）

-

ts 很奇怪的，他是通过 interface 来创建类型啊，哈哈，而不是通过 class

有些东西不能确定的，有些东西不能写死的（你可以通过泛型）

有些东西太繁琐的了，做的话，工作量太大了，还是写 any 比较方便

- 如接口返回的数据类型，你不用给他创建一个数据模型，直接写 any

有些事情解法是有多种的

- 不要死纠结在一种，可能只是好坏的问题

哪些东西需要缓存？

- 用户信息
- token
- 因为这个两个信息用户登录后，是不需要再次获取的

动态菜单的渲染、折叠/展开（通过标识 isCollapse 即可）

- 动态菜单的实现方案
  - 通过后端实现，不同角色，返回的菜单记录不同
  - 通过前端实现，前端根据 meta 中声明的角色去过滤菜单记录
    - 有安全隐患，用户可以直接敲 url 进行访问，也能显示界面，
- 通过 el-menu 遍历，递归

**权限设计：基于角色的访问控制（RBAC:role based access control)**

- 动态菜单
- 按钮权限

如何快速创建深层文件

- 全局安装 coderwhy 的，用 coderwhy 的插件快速生成 vue 文件

如何快速引入路由

- 通过遍历

高阶组件？

- 直接 react 就行，vue 没有 hoc 的概念

**抽象的理念：对表单、表格进行二次封装**，啊，很快，来骗，来偷袭

- 表格的二次封装需要使用到作用域插槽

响应式怎么做？

- 在组件里面做绑定 v-bind

页面重新加载，即重新执行 main.ts 文件

有些代码的执行顺序也决定了你有没有 bug

- 如加载路由与 app.use(Router)

组件的双向绑定（非表单元素）如何实现？

-

哪些东西不能写死？

- 比如有些插槽名则是

工具

- 时间格式化：dayjs
  - utc 转指定格式（1997-10-02 00:00:00）
  - 或者是时间戳转时间格式
- lodash 的使用场景？
  - aaa

国际化的话，elementPlus 也提供了 Provider 来实现

-

url 能拼接就拼接，拼接不了就是用 switch

还能再抽离一层，直接请求都不写在页面（user）中了，而是写在 pageContent 里了

老师写代码的时候就没怎么百度过，牛逼啊，而且反应极快

- 老师的名言：没有什么是分层解决不了的，有的话就再分一层
- 他是经常画图的，所以我要这么模仿

后台接口可能有问题的

- 很多坑的，哈哈，可能改了，然后他不告诉你
- 可能返回结果是错的

哪些属性是需要绑定在一起组成一个对象的

- 比如 pageIndex 和 pageSize

v-modal 还可以玩出花啊，醉了

-

你封装的好的话，写一个页面是非常简单的

-

**按钮权限**

- 实现

代码怎么写？

2. 知道业务流程
3. 知道大致的实现方案
4. 知道如何封装
5. 享受成果，咔咔咔

一个文件被另一个文件引入，他又会执行一遍吗？

组件只是被 import 是不会执行的，只有被 import 而且被调用才会执行

什么时候需要配置 vue.config.js？

-

没加.vue 后缀就无法找到文件，怎么解决？

- 其实不是找不到，只是他的校验提示找不到，这个是 vetur 的报错，你把 vetur 的校验 script 关掉即可

那么 devServe 起什么作用？难道是 devServer 在帮我发送请求？

- 恰恰相反，是它在收请求，开发阶段没有远程的静态资源服务器，自己这台电脑 devServe 就是静态资源服务器，所以你要获取数据的则是需要通过给 devServer 配置代理才行的

导入 vue 包与'@vue/runtime-core'包有什么区别？

-

element-plus 中的 theme-chalk 包与 dist 包的关系?dist 包有什么作用？

-

引入 css

```css
//css文件中，做了@和~
@import "~element-plus/dist/index.css" //js文件中
  import "element-plus/dist/index.css";
```

自动刷新失效怎么办？

-

可以用[coderwhy](https://www.npmjs.com/package/coderwhy)插件迅速生成页面和路由，还可以迅速生成组件，自动生成路由，牛逼坏了

- 还可以指定路径

Postman 的环境变量与全局变量是有区别的

- 环境变量是只在某一个环境下才生效的
- 而全局变量则是不受环境的约束

我的命名规则

- 文件大，文件夹小连

写成类与写成对象的形式有什么区别？

- 比如缓存缓存的二次封装 cache

有时候写一下测试代码也是很有用的

- 比如怎么测试一个类？

#### 项目难点

**项目搭建**

- 引入 ts 你只需要通过脚手架即可
- 还有 eslint 选 prettier 的
- class-component 不要选
- 清除浏览器的默认样式：用 normal.css

  - 你可以全局安装 normal.css 或者是跑到 github 去复制一份出来

- 多端开发的换行问题、锁进问题的解决方案

- 搜索的和文件的显示都要排除 element-plus，翻滚动条恶心死了知道吗？开发一定要爽，不要恶心自己

```json
  "search.exclude": {
    "**/node_modules": true
  },
  "files.exclude": {
    "**/node_modules": true
  }
```

- 引入

- 

什么时候需要编写 babel 配置文件？只编译你的语法，不编译源代码（node-modules）

-

**ts 的引入**

- 你只需要在创建项目的时候，用脚手架帮你创建 ts 即可，它里面配置了 ts.config 了，不用自己去弄，你现在去搞不定的，心跳便是计数器
  - 我要的是效果，我怎么为了所谓的技术深度去把速度降为 0 呢？
- 需要定义 tsconfig.json，默认配置需要去官网下载一个库，然后继承
- 如果既没有在 include 也没有在 exclude 中的文件，怎么算？

**讲二次封装**

：能极大的提高开发效率和代码可维护性

**对表单的二次封装**

- 之后开发我需要引入组件和编写配置文件即可

- 具有响应式的布局，通过 el-row

- 功能

  - [x] 通过传入的配置进行渲染，支持 el-input、el-select、el-datepicker
  - [x] 能实现表单的数据绑定
  - [ ] 有些下拉菜单的数据需要动态获取呢？你怎么处理，而且他的属性不是 children 来关联的话
    - [ ] 这个在 view 里面去完成初始化，他的 options
  - [ ] 表单验证、重置、提交
  - [x] 支持响应式，通过 el-row、el-col 而且在 el-col 里面绑定 xl、lg、md、xs，这个是根据

- 实现
  - 通过传入的配置进行渲染
    - 对传入的数据进行遍历，遍历时同时对类型元素分组，如 input 和 password 放一起，还有 select、datepicker

**读取配置进行表单渲染**

- 有些组件特有的属性（比如开始时间、结束时间）则是放在 otherOptions 里面，而且可以批量绑定，通过 v-bind

表单双向绑定

- 传统做法，通过 v-bind 把 props 穿进去，然后在当前组件监听对应的事件，再来修改 data
- 通过在组件上[v-model](https://v3.cn.vuejs.org/guide/migration/v-model.html#_2-x-%E8%AF%AD%E6%B3%95)，v-model 其实就是 prop 和 emit 的结合，加 watch 的目的是为了及时把最新的书法发送到父组件中

```js
  setup(props, { emit }) {
    // 不要修改父组件的传过来的属性，索要做一份拷贝
    const formData = ref({ ...props.modelValue })
    // 让父组件及时知道子组件发生了改变
    watch(
      formData,
      (newValue) => {
        emit('update:modelValue', newValue)
      },
      { deep: true }
    )
    return { formData }
  }
```

表单校验

- rules 可以绑定到 el-form 里面，也是可以封装到 el-form-item 里面去，效果是一样的

像边距、label 的宽度都是属于表单的配置信息，而不是表单项的配置信息

el-form 和 el-row，el-col 怎么嵌套？

- el-row 和 el-col 必须相邻，在 el-col 里面放 el-form-item 即可

为什么只写 template 会报错，而写<template #default>则是正常

- 官方文档是这样教你的，要么不写 template，要么就写具名插槽

那我就不写 index.js 了，反正它默认导入都是这个鸟样，更好，我效率更高

批量绑定则是可以通过 v-bind=“item.otherOptions"

如何发起请求？

- 在 pageContent 中无条件发起请求一次，然后 watch pageInfo，发声修改的时候再发起请求

怎么去做二次封装？两种方法

1. 你先写一个简易版，然后再去划分层次，慢慢去抽离，这是由上往下的，这是我目前选中的
2. 直接写一个底层的版本，然后被引入，这是由下往上的

**对表格进行二次封装**

需求

- [x] 控制是否显示页头
- [x] 渲染数据，能展示图片和按钮
- [x] 多选、展示序号
- [x] 分页，监听分页信息的改变（用 v-model）
- [ ] 展示树形数据
- [ ] 弹窗（其实就涉及到了弹窗的二次封装，其实也是用到之前的 hyForm 而已）

实现

- 表单数据是放在 component 里面去获取的，而不是通过 views 里面去获取，
- 读取配置信息（配置信息有：表头、表属性的映射（prop 和 label），是否展示行和多选），注意没有分页信息，因为分页信息不是通过配置的
- 把多选、序号、分页抽离出来
- 去遍历传入的节点
- 分页
  - 这个功能直接继承到 table 里面去，分页有关的信息是它自动管理的
  - 坑：v-model 的是用冒号，而不是 . ，点是修饰符，害我半天获取不到更新
- 监听选中的记录

**权限按钮的管理**

：有些按钮是有权限要求的，需要获取到判断当前用户是否有指定的权限（指定的权限是你前端写死的，一般是页面名+某个操作，如 user:create）

实现思路

- 写一个权限判断的 hooks，如 usePermission(pathName,operation)

**表格渲染图片**

：默认直接在 pageContent 组件中定义一个 image 插槽即可

el-image 的注意事项

- 设置宽高通过设置 style
- 还可以设置预览

**表格展示树形数据**

- 通过配置 config 文件，加入 tree-props 属性还有 row-key 属性

如何让 pageContent 组件更加有扩展性

- 他也设置一个插槽，然后再 pageContent 引入时注册插槽

列表查询是需要带有哪些信息

- 关键词+分页信息

template 可以读取哪里的数据？

- 外面直接 import 的不行，只有 props 和 setup return 的才行

格式化时间

- 又引入到一个 lodash 的引入问题



**对弹窗的二次封装**

需求

- [ ] 控制显示与否，直接在 el-dialog 那里控制即可，不用父元素控制一下，然后子元素又控制一下
- [ ] 表单的渲染（新建和编辑）、校验、提交
- [ ]

注意

- base-ui 里面组件是不可能耦合到 vuex 的，所以一般的数据需要 vuex 管理的都放在 Components 里面，而不是 base-ui 里面

**表单验证不执行 validate**（坑死我了）

- 没有给 form 绑定 model，还有要给 form-item 设置 props，rules 可以写在 el-form 上，也可以写在 el-form-item 上，后者直接写成对象形式即可

表单重置

```
// 你直接调用表单的重置就行了，sb，还双向绑定，
const form = ref()
form.value.resetFields()
```

[代理对象与目标对象是同步的](https://www.cnblogs.com/moluy/p/14928184.html)

操作传递传递过来的数据，如果担心会有影响到其他数据，则是通过浅拷贝，

```
const formData = ref({ ...props.modelValue })
```

单向绑定：弹窗传过来的我为什么要做双向绑定，直接单向绑定就行了呀，顶多用个 watch，这种单向绑定又快又爽

```js
// 如果不是为了可以改props的值，我formData都可以不写
const formData = ref({ ...props.data });
watch(
  () => props.data,
  (newValue) => {
    formData.value = props.data;
  },
  { deep: true }
);
```

双向绑定：如果要双向绑定的话，则是通过设置方法即可，这时候就不能用 v-model 的语法糖了，直接拿$event 和 prop 名，然后再 emit 一下即可

```vue
<el-form-item
  :prop="formItem.field"
  :label="formItem.label"
  :rules="formItem.rules"
>
            <el-input
              v-if="formItem.type == 'input' || formItem.type == 'password'"
              @input="handleValueChange($event, formItem.field)"
              :model-value="data[formItem.field]"
              :placeholder="formItem.placeholder"
              size="normal"
              clearable
            ></el-input>

            <el-select
              v-else-if="formItem.type == 'select'"
              @change="handleValueChange($event, formItem.field)"
              :model-value="data[formItem.field]"
              value-key=""
              :placeholder="formItem.placeholder"
              clearable
              filterable
            >
              <el-option
                v-for="item in formItem.options"
                :key="item.value"
                :label="item.label"
                :value="item.value"
              >
              </el-option>
            </el-select>

            <!-- <el-date-picker
              v-else-if="formItem.type == 'datePicker'"
              v-model="formData[formItem.field]"
              v-bind="formItem.otherOptions"
              style="width: 100%"
            >
            </el-date-picker> -->
</el-form-item>

//js const handleValueChange = (value, field) => { emit('update:data', {
...props.data, [field]: value }) }
```

el-dialog 弹窗的话，你可以用这个属性

- destroy-on-close，这样确保每次都是重新绑定，

**对 storage 的二次封装**

- 能够存、取复杂数据类型，主要是通过 JSON.parse 和 JSON.stringify 来实现

**对 echarts 的二次封装**

- 未封装时只能保存字符串，封装后能够保存复杂的数据类型

单独一个 index 文件来导出，是为了更加清晰

导入 store 和使用 useStore 函数有什么区别？

-

[如何批量注册 el-icons？](https://blog.csdn.net/Alloom/article/details/119415984)

- 一个一个导入太恶心了

import X 与 import \* as X 是不同的

- 前者是读取 export default 的，而后者则是读取所有的 export

经常会有这个问题？我数据去哪里拿，无非是三个地方

- vuex
- props 传过来
- localStorage

我操你妈的，插件的代码片段是上个版本的，我吐了，太坑了吧，这 elementui 插件，垃圾，不更新

- element 采用的 el-submenu，而 elementPlus 则是 el-sub-menu

- 使用了 xxx 设计模式？

echarts 的引入

-

cnd 的引入？

-

**登录整体流程**

1. 先校验表单
   1. 验证成功后则读取一下是否需要保存账号、密码
   2. 验证失败，终止
2. 发起登录请求
   1. 登录成功
      1. 保存用户信息（角色、姓名、头像），保存角色菜单树，localStorage 和 vuex 都要存一份，防止界面刷新后不见了，老师把一些加载本地存储的操作都放到一个函数里面去了 loadCache，然后再 main 里面执行，只要用户刷新就会重新执行 main 文件
      2. 跳转到首页
   2. 登录失败则提示用户账号或密码错误

[vue.config 中配置 change origin 为 true 的作用，是为了能够修改 host（目标主机），不然 host 还是你浏览器发过来的 localhost:8080](https://www.cnblogs.com/--here--gold--you--want/p/15223587.html)

[导出类与导出对象的区别？](http://cn.voidcc.com/question/p-poyelapx-ss.html)

- 导出对象是的单例的，而导出对象则是

vuex 里面的文件时按模块来分的

- 比如用户登录模块

值是对象还是数组都没有关系，看我要不要通过 key 来获取值吧，这样就只能通过对象了

代码中出现的这个 hy 是什么鬼？

- hy 是 hybrid 混合的意思，这样我别的地方也可以用

类型推断是怎么个推断法？

-

什么时候不用去指定泛型的类型？

- 定义好之后，我直接调用的时候，
- 如果定义那里未指定类型，那我还是需要指定一下类型的

**引入 vuex**

：注意一下目录结构

- modules 文件夹、index、getters 文件
- index 文件又会设计到一个批量注册模块的方法，你也可以不写这个，哈哈
- 调用其他 actions 需要加{root:true}

**引入 vue-router 流程**

：也是需要写成模块的形式

- modules 文件夹，里面的文件按功能进行划分，
- index 里面把这些模块引入，一些不需要权限进行访问的则是放在 index 文件里面即可，还要有 beforeEach 方法，index 首先需要根据有无 token，
  - 有 token 的话，在判断 to.path，如果是 login，则跳转到首页，非 login 则跳转到对应页面
  - 无 token 的话，则是判断是否在白名单中，在的话也是跳转到对应页面，不再则重定向到登录页

**引入权限控制 RBAC**

：分用户菜单树和菜单按钮，在用户登录时获取到用户菜单树和按钮权限

菜单递归的递归渲染

- 我每次写是直接用插件的代码片段呢，还是用官网复制一下东西？
  - 代码片段有坑，比如 el-submenu 就是坑，官网是 el-sub-menu
- 顶级是菜单 el-menu，而它的子节点可能是子菜单 el-subMenu（他里面的菜单项也要渲染）、或者是菜单项 el-menu-item，可以通过他的 children 属性来判断

菜单的跳转

- 首先要添加路由记录才行，不让你知道跳到哪里也不能跳转成功
- 然后再完成路由与组件的关联

默认激活的菜单

：页面刷新后，默认激活第一个菜单项即可，通过计算属性或者是其他的，没有记录当前选中的菜单项，记得 default-active 是字符串类型的，你写其他的不起作用

- 如果想要获取当前激活的菜单的 id 则是通过 path 映射到菜单的方法
  - 凡是涉及到层级（如 tree）的都可以通过递归操作一下

跳转到主页

- 由于 main 是只有 layout 的，没有任何东西的，所以你要记录一下 firstRoute 的值

菜单的展开折叠

：通过组件通信的方式实现

记住 el-menu 和 el-sub-menu 之间不能有 div，

面包屑

：获取当前的 url，完成 url 与 roleMenus（里面有路径中文名称）的映射即可

运行时校验是什么鬼吗？

-

[import 和 export 的简化写法](https://blog.csdn.net/ixygj197875/article/details/79255454)

- export default 的没有简化的写法

路由是什么？

：完成路径与组件的绑定

字符串方法

- split 分裂，即按某个字符串将字符串分裂成数组，如 1-2-3，分成[1,2,3]
- slice 切片，对字符串进行截取，取出数组的某
- concat 拼接数组
- filter 过滤，是返回为 true，你才能留下来

对于树性结构的遍历

- 你需要边递归（对，不能用 for 了）边收集结果（用一个 result 即可）

[如何将树元素的数组扁平化](https://blog.csdn.net/weixin_45844376/article/details/105999422)

- 无非是数组的拼接嘛，concat

require 与 require.context 的区别？

base-ui 与 Components 的区别？

- base-ui 是非常基础的，其他项目也可以用到的
- 而 components 则是只是在当前项目上用的

coderwhy 插件怎么用的，为什么他能够进行这么多操作的？

- 我的 add3page 会自动添加路由，而 addcpn 则是会默认为 vue2 的模板
- 哈哈，他在 p36 只给我们演示了 add3page

[影藏滚动条怎么玩？](http://caibaojian.com/hide-scrollbar.html)

- 应该加到谁身上？通常通过伪元素来搞::-webkit-scrollbar{width:0 !important}

页面刷新后 404 的问题

- 文件的读取需要一点时间，是异步的

懒加载的方式有很多：[组件懒加载与路由懒加载](https://www.cnblogs.com/xiaoxiaoxun/p/11001884.html)

[数字签名](https://www.cnblogs.com/wgj-master/p/10435753.html)是为了确定数据发送方是谁，还有发送过来的数据是否被改动过

- 数字签名：是使用数据发送方的私钥加密

[crypto](https://juejin.cn/post/6844904058747093000#heading-3)是对响应结果进行加密，把公钥加密（服务端加密），私钥解密（即客户端解密）

- 首先生成一个密钥对
- 用的是 RSA 算法，非对称加密
- 把响应结果进行加密

## 商城

**购物车**

：重点：后台计算

- 购物车列表渲染
  - 商品列表的渲染
  - 价格的渲染
    - 你需要知道的是那些是前端需要做的，哪些是后端做的
  - 数量的渲染
    - 至少为 1
    - 最多这个还是要后台计算的
- 全选、非全选
- 商品的更新与删除
  -
- 结算

svg 如何管理？

-

[常见的需求](https://juejin.cn/post/6895497352120008717#heading-16)

## elementPlus+vue3+koa2

封装 sessionStorage

-

怎样将字符串转数字？

- 通过\*1，比如

主动去推动公司的规范，这样有助于提升自己的能力，而且体现自己

[父组件的样式会影响到自组件吗？](https://www.jianshu.com/p/a82a4a1c08f8)

- 加了 scoped 就不会，但是还是会影响到子组件根元素的样式

如何学习一项技术？

- 你先看官方文档，大致瞄一下
- 然后再去看社区（偷懒的方式，或者是首先看社区快速入门文档）

通用？

-

模块化与组件化的区别？

前端文档怎么写？

什么时候用组合 api？

- 当前模块比较独立的时候，不受业务影响的，比如 window.width、window.height 改变的时候

很多东西都是边开发，边维护的

**侧边折叠**

**侧边栏的生成**

- 主要是通过递归，把

**面包屑**

实现思路：通过 route 的 matched 属性，来获取

- 能点击的部分都是页面，不能点击的则本身不是一个页面



mock 的操作

全局异常处理

通用的 css，需要在 app.vue 里面导入

分别对请求、响应的加密、解密？

中间件？

什么时候用 vue2 的写法，什么时候用 vue3 写法？

- 旧项目用 vue2，
- 高复用的，新项目用 vue3

表单响应对象

-

scss 什么是时候需要 scoped？

- 就是用类无法区分的时候，而且不是在顶层，比如 layout 下的 container 就不行

**动态菜单实现**

：接口可能是返回菜单和按钮

注意事项

- 一级菜单是不需要跳转

**面包屑的实现**

需求：展示层级关系，单独的页面需要能够点击，最后一级如果是非单独页面的话，则是不要求能点击

实现

- 通过在路由的 meta 中保存页面名称
- this.$router.matched 保存了路由层级信息，所以你遍历就行

有时候你可以通过打印相关对象来知道你的信息具体保留在对象的哪里？

- 比如打印一下 this.$route

**JWT**

：jwt 是一种跨域认证解决方案

特点

- 传输简单
- 传输安全，后台验证
- 时效性，过期失效
- 能够做单点登录

中间件的作用？

- 完成拦截

全局的样式与混入的样式有什么区别？

-

将变量转换成 true 或者是 false

- 通过!!a，

**动态菜单管理**

传统的方式维护菜单是通过 json 的方式，效率低下

[业务组件？](https://zhuanlan.zhihu.com/p/33999571)

- 与之相对的是函数式组件

树状的菜单，通过组件即可

通过菜单的状态来控制显示与否

path.resolve 与 path.join 是做什么的？

- resolve 是用来解析成绝对路径的
- join 只是用来填充合适的路劲分隔符

有时候不是父容器设置高度的，而是通过子容器撑起来的，比如

```css
width: 100vw;
height: 100vh;
```

- 

什么时候用 use，什么时候用 app 进行挂载？

- 定义了 install 方法的用 use，否则通过 app 挂载

如何指定背景图？通过 background-image 和 background-size 即可

```css
background-image: url("@/assets/images/404.jpeg");
background-size: cover;
```

像当前用户相关的信息应该从哪里获取？

- 从 state 获取，而 state 又是读取 storage 中的信息

哪些是需要通过网络请求又要通过 vuex 维护的数据？

- 比如 menu

动态菜单刷新后出现空白页的问题？

- 你需要保在页面跳转前，路由能够加载 addRoute 完成，不然肯定是空白页

为什么获取用户列表需要抽离出一个方法来？

- 因为他需要你拼接把用户对象和分页对象拼接成 params 对象

单个删除和批量删除，区别就是参数里用户的 id 是一个还是多个的问题

[狗日的，vue 老是自动导入 runtime 版本](https://www.jianshu.com/p/8810ebf04a54)

element-plus 有些东西改了，不再是 attribute 了，而是被浓缩到一个 attribute 里面去了

```css
:props="{ expandtrigger: 'hover',label:'deptname',value:'userid' }" ;
```

有时候检验不起作用，可能是你属性写错了，不是 require 而是 required

重置表单应该发生在什么时候，是关闭弹窗，或者是点击重置按钮的时候

- 而且重置动作可以记得他就是一个动作，所以重置的对象可以是个变量

如果你没有对请求到的数据做转换，比如 0 映射为在职，那么你需要指定 formatter

[attr 和 prop 有什么区别？](https://zhuanlan.zhihu.com/p/181367329)

- prop 的值主要是 true 和 false，或者是添加该属性名称，该属性就会生效的，其他用 attr
- attr 属性是用户自定义的，prop 是该类 dom 元素本身就有的，

删除有分批量删除和单条删除（是两个方法 handleDelete 和 handleBatchDelete）

- 批量删除只需要获取选中的 id 即可，而且 element 会自动管理这个
- 单条删除则是需要用到作用域插槽，来获取选中的 id

[nextTick](https://www.cnblogs.com/fozero/p/10863667.html)

定义：在下次 dom 更新循环结束后执行延迟回调

使用场景

- 获取 dom 更新后的某处焦点
- 获取 dom 更新后

别的对象里面叫 deptId，但是到了部门对象里面可能就不叫 deptId 了，而是叫\_id

要尽快搞清楚，是谁错了

## 移动端音乐 app

不要无脑用 composition api，逻辑复杂的才要用，option api 他的结构是很清晰的。

有些效果 ui 库给你做好了怎么办？

-

[tab 栏](https://www.jianshu.com/p/b721924f68c1)

编辑器上安装的插件与项目安装的插件有冲突怎么办？

-

你项目里安装的 eslint 只负责提示，会在编译的时候告诉你哪里出错了，而你需要在 vs 安装 eslint 和 pretty 则是负责格式化你的代码（eslint 负责发现和格式化 js，而 pretty 负责格式化）

- [pretty 安装后就要在 setting.json 中配置了](https://blog.csdn.net/hyk521/article/details/104845026/)
- 为什么 vscode 要安装 eslint 插件？
  - eslint 插件能提前帮你发现错误，能够在控制台打印还有 vscode 进行提示，不然你只有编译的时候才知道有错

```js
//vs安装完eslint插件后需要在setting中配置
"editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
}
```

[什么时候用选项 api，什么时候用组合 api？](https://juejin.cn/post/6985493062432587813)

- 逻辑简单的用选项 api，复杂的用组合 api

什么时候知道要跳出循环？

- 就是知道我一定会执行的情况

## 支付

教程：https://juejin.cn/post/7024500631549247518

前提：用户要有微信、支付宝账号，并且账号有钱

#### 微信支付对接



#### 支付宝支付对接



## 自定义脚手架

## 商城（uniapp 开发）

[为什么需要 babel？](https://www.cnblogs.com/lsgxeva/p/7758184.html)

- 因为浏览器的更新速度没跟上 js 的跟新速度，为了新版本的 js 写法也能被浏览器识别，那么就要通过 babel 进行转译
- babel 常用的转移器是 babel-preset-env
- 常用的配置选项是 plugins 和 presets
- 常用的使用场景是在 webpack 中，当然你单独使用也行

哪些情况是开发环境能用，哪些情况是生产环境也能用的

## 项目发布

## 博客

常见的需求

- [项目的痛点](https://juejin.cn/post/6844903632815521799#comment)

## 技巧

怎么去大厂？

- 技术打扎实
- 多一些数据结构和算法罢了，而且前端的算法算是比较简单的

效率问题？

- 我发现我写页面太混乱了，效率卡在这里，下次我先说完思路，再按着思路去写页面，同时回过来验证我的思路还有过程中出了什么问题卡住了

什么是充分条件？什么是必要条件？

- 充分条件是只要条件成立，则足够能推出结论了
- 而必要条件则是只要结论成立，就一定能证明条件

有些东西是需要弹窗的，有关敏感操作都是要这样

- 比如删除，

哪些东西需要做 2 次封装的

- 表格
- 弹窗

哪些东西要被抽离成常量？

你把经典的东西搞定就没什么了

- 比如用户管理啊，工作流啊

可以设置全局都是使用 mock，或者是部分使用 mock

- 能后台实现的就不用 mock 了，比如登录

有些接口是不需要验证的，比如我的登录啊，注册啊

我不管接口是怎么做的，我只要拿到结果就行，哈哈，

画界面：先画骨架再填充内容

多加注释：层次更加清晰一点

类的名称要写语义化一点，比如：user-link

