[TOC]

# 项目

**无非是围绕表格、表单还有弹窗，共享一下数据，然后再对接一下后台，还有什么东西，没了吧**

- 然后就是熟悉业务+组件封装

项目列表

- [内容管理系统](https://juejin.cn/post/6999558322005213192)

## 核心项目：vue-element-admin（vue2）

：一个后台管理系统

[开发文档](https://panjiachen.github.io/vue-element-admin-site/zh/guide/#%E5%8A%9F%E8%83%BD)

## 核心项目：coderwhy的cms系统（vue3）

：一个后台管理系统，

：核心项目就是值得经常反复看的，以后的项目需求差不多都是根据这个衍生的，不会超出这个范畴的，嘿嘿

[开发文档](https://panjiachen.github.io/vue-element-admin-site/zh/guide/)

开工日期：10-24日

技术栈：ts+vue3+@vue/cli

系统功能

- 用户登录、退出
- 动态菜单的渲染
- 系统管理：用户、角色、部门、菜单
- 商品管理：

你开发的时候，服务器是跑在webpack的devserver里面的，而不是nginx里面

- 所以你开发的时候需要配置devserver就行了
- [跨域的定义和影响范围、解决方法](https://www.cnblogs.com/wangpenghui522/p/6284355.html)
  - 主要是通过代理服务器，跨域请求如果不是浏览器发的（如我代理服务器帮你发起跨域请求），就不存在跨域问题，比如我专挑**/api**开头的请求

**项目搭建**

如何做？

- eslint的配置，直接按照默认的就行

[搞懂eslint和prettier，两者区别](https://zhuanlan.zhihu.com/p/80574300)

- eslint解决**代码质量问题**，还解决部分的代码风格（格式化）问题
- prettier则是解决**代码风格问题**
- 格式化配置就是个浑水，不要浪费我做项目的时间，大丈夫要抛得起

那我vetur又有什么

为什么代码不会格式化？

- 因为你没有去执行prettier的命令，或者是你设置保存的时候自动触发
- 格式化对象不要搞错了，他说的使用单引号不是全部都用单引号，而是js那一块才用单引号，而html的属性则是用双引号

vscode中的prettier插件与配置文件.prettierrc不同步怎么办？

- 日了狗了，跑命令的需要是按照prettierrc的规定来写的，而vs插件提示又是按照它自己默认的，就不能按照我的prettierrc配置文件来吗
  - 解决方案，原来是修改了prettierrc需要重启vscode，zz设计，下次很多配置如果不起效果都要重启一下才行

为了防止自己或别人提交垃圾代码（不按格式来）

- 通过husky拦截commit，进行代码代码校验和格式化，如果不通过则是不会通过commit操作的

为了规范commit信息，通过commitizen

- 然后你就可以通过git cz命令来提交了

如何防止别人直接通过git commit 同时乱填写commit message来提交？

- 通过commitlint来完成限制

类型不要随便写any最好指定确切的类型

- 它有提供类型的话则是通过它提供的
- 没有类型要自己创建类型

vuex对ts的支持？

- 居然还有这个问题，我以为是编译了ts再去执行vuex里面的代码

如何选择组件库？

- 选有团队的
- 组件库
  - 桌面端：element-plus，（ant-desgin-vue这个没有团队，只有个人在维护，风险大）
  - 移动端：vant
- 组件库的使用很简单的，无非是引入一下，改一下配置即可

一定要有抽象思维

- 比如main文件太大了，你可以把同一类的行为抽离出去，比如注册elemenPlus的组件，你可以抽离到全局行为中，注册elemenPlus的组件又可以抽象为注册组件，所以你只需要负责写一个注册组件的行为，然后引入注册elemenPlus这个具体的行为
  - 批量注册可以考虑使用for of来循环注册一下，哈哈

别人提供多种写法是为了让你使用更加方便，没想到你却不会用了，哈哈

[**axios的封装**](https://juejin.cn/post/6844903652881072141#comment)

- 主要考虑的点是多环境（baseUrl的管理，同一环境也会有baseUrl的不同）、api管理、请求、响应拦截、异常处理、loading的控制（并发请求loading的显示控制）

es6不能直接在对象定义后直接导出，而是定义时可以直接导出，或者是导出一个对象

所有模块对axios的依赖都太耦合了，万一axios在浏览器升级、webpack升级出bug，或者是出现了一个新的工具完胜它，那么我之前用的axios的引用怎么办？

- 所以我要自己封装一个请求工具（特点：**与具体工具无关**），我代码引用的是这个自定义的请求工具，那么以后换axios的时候，我只需要修改我自定义的请求工具即可

封装的话，推荐用类

- 类有继承、多态，比你直接封装成对象更加方便

element-plus组件的批量注册？

- 

有时候报错是需要重启项目的，因为热更新没更新到我的底层代码，所以你就重启一下项目吧，嘿嘿

重置一下默认的css样式

- 通过下载normal.css，然后import即可

登录拦截？

- 通过前置路由beforeEach来实现

[在vue项目中引入svg](https://juejin.cn/post/6900908504635965447)

- svg-sprite-loader

有事没事你都要拆一下，为了提高代码的可读性

- 比如账号、密码的登录和手机号登录
- rules的抽离，你可以把表单验证的rules抽离一下，抽离为config配置文件，或者是常量文件
  - 但是响应式的变量抽离的话你则是要放到hooks里

**记住密码？**

- 通过localStorage，这又涉及到一个localStorage的二次封装，能保存任意类型

逻辑写在哪里问题

- 是写在父组件还是当前组件？
  - 写在当前组件的话，你组件里的方法哪里都可以调用了，哈哈
- 设计模式需牢记，不然你耦合了都不知道，不要说解耦了

ts怎么保证减少安全隐患？

- 通过指定具体的类型，不要写any类型

**登录功能流程**

- 账号密码登录
  - 验证用户信息
  - 通过，则请求登录；否则不请求
  - 登录后其实还要发其他请求，比如拿到用户信息，再根据用户的角色拿到菜单

哪些数据是共享的，需要放入vuex的

- 用户信息
- token
- 权限信息

vuex又涉及到模块化的问题了（业务一复杂起来就这样）

- 

ts很奇怪的，他是通过interface来创建类型啊，哈哈，而不是通过class

有些东西不能确定的，有些东西不能写死的（你可以通过泛型）

有些东西太繁琐的了，做的话，工作量太大了，还是写any比较方便

- 如接口返回的数据类型，你不用给他创建一个数据模型，直接写any

有些事情解法是有多种的

- 不要死纠结在一种，可能只是好坏的问题

哪些东西需要缓存？

- 用户信息
- token
- 因为这个两个信息用户登录后，是不需要再次获取的

动态菜单的渲染、折叠/展开（通过标识isCollapse即可）

- 动态菜单的实现方案
  - 通过后端实现，不同角色，返回的菜单记录不同
  - 通过前端实现，前端根据meta中声明的角色去过滤菜单记录
    - 有安全隐患，用户可以直接敲url进行访问，也能显示界面，
- 通过el-menu遍历，递归

**权限设计：基于角色的访问控制（RBAC:role based access control)**

- 动态菜单
- 按钮权限

如何快速创建深层文件

- 全局安装coderwhy的，用coderwhy的插件快速生成vue文件

如何快速引入路由

- 通过遍历

高阶组件？

- 直接react就行，vue没有hoc的概念

**抽象的理念：对表单、表格进行二次封装**，啊，很快，来骗，来偷袭

- 表格的二次封装需要使用到作用域插槽

响应式怎么做？

- 在组件里面做绑定v-bind

页面重新加载，即重新执行main.ts文件

有些代码的执行顺序也决定了你有没有bug

- 如加载路由与app.use(Router)



组件的双向绑定（非表单元素）如何实现？

- 

哪些东西不能写死？

- 比如有些插槽名则是

工具

- 时间格式化：dayjs
  - utc转指定格式（1997-10-02 00:00:00）
  - 或者是时间戳转时间格式
- lodash的使用场景？
  - aaa

国际化的话，elementPlus也提供了Provider来实现

- 



url能拼接就拼接，拼接不了就是用switch

还能再抽离一层，直接请求都不写在页面（user）中了，而是写在pageContent里了

老师写代码的时候就没怎么百度过，牛逼啊，而且反应极快

- 老师的名言：没有什么是分层解决不了的，有的话就再分一层
- 他是经常画图的，所以我要这么模仿

后台接口可能有问题的

- 很多坑的，哈哈，可能改了，然后他不告诉你
- 可能返回结果是错的

哪些属性是需要绑定在一起组成一个对象的

- 比如pageIndex和pageSize

v-modal还可以玩出花啊，醉了

- 

你封装的好的话，写一个页面是非常简单的

- 

**按钮权限**

- 实现

代码怎么写？

2. 知道业务流程
2. 知道大致的实现方案
3. 知道如何封装
4. 享受成果，咔咔咔

一个文件被另一个文件引入，他又会执行一遍吗？

组件只是被import是不会执行的，只有被import而且被调用才会执行

什么时候需要配置vue.config.js？

- 

没加.vue后缀就无法找到文件，怎么解决？

- 其实不是找不到，只是他的校验提示找不到，这个是vetur的报错，你把vetur的校验script关掉即可

那么devServe起什么作用？难道是devServer在帮我发送请求？

- 恰恰相反，是它在收请求，开发阶段没有远程的静态资源服务器，自己这台电脑devServe就是静态资源服务器，所以你要获取数据的则是需要通过给devServer配置代理才行的

导入vue包与'@vue/runtime-core'包有什么区别？

- 

element-plus中的theme-chalk包与dist包的关系?dist包有什么作用？

- 

引入css

```css
//css文件中，做了@和~
@import '~element-plus/dist/index.css'
//js文件中
import 'element-plus/dist/index.css'
```

自动刷新失效怎么办？

- 

可以用[coderwhy](https://www.npmjs.com/package/coderwhy)插件迅速生成页面和路由，还可以迅速生成组件，自动生成路由，牛逼坏了

- 还可以指定路径



Postman的环境变量与全局变量是有区别的

- 环境变量是只在某一个环境下才生效的
- 而全局变量则是不受环境的约束

我的命名规则

- 文件大，文件夹小连

写成类与写成对象的形式有什么区别？

- 比如缓存缓存的二次封装cache

有时候写一下测试代码也是很有用的

- 比如怎么测试一个类？



#### 项目难点

**项目搭建**

- 引入ts你只需要通过脚手架即可
- 还有eslint选prettier的
- class-component不要选
- 清除浏览器的默认样式：用normal.css
  - 你可以全局安装normal.css或者是跑到github去复制一份出来

- 多端开发的换行问题、锁进问题的解决方案

- 搜索的和文件的显示都要排除element-plus，翻滚动条恶心死了知道吗？开发一定要爽，不要恶心自己

```json
  "search.exclude": {
    "**/node_modules": true
  },
  "files.exclude": {
    "**/node_modules": true
  }
```

- 引入

怎么去开启一个项目？

- 注册elementPlus组件
- 封装axios

什么时候需要编写babel配置文件？只编译你的语法，不编译源代码（node-modules）

- 

**ts的引入**

- 你只需要在创建项目的时候，用脚手架帮你创建ts即可，它里面配置了ts.config了，不用自己去弄，你现在去搞不定的，心跳便是计数器
  - 我要的是效果，我怎么为了所谓的技术深度去把速度降为0呢？
- 需要定义tsconfig.json，默认配置需要去官网下载一个库，然后继承
- 如果既没有在include也没有在exclude中的文件，怎么算？

**讲二次封装**

：能极大的提高开发效率和代码可维护性

**对表单的二次封装**

- 之后开发我需要引入组件和编写配置文件即可

- 具有响应式的布局，通过el-row

- 功能

  - [x] 通过传入的配置进行渲染，支持el-input、el-select、el-datepicker
  - [x] 能实现表单的数据绑定
  - [ ] 有些下拉菜单的数据需要动态获取呢？你怎么处理，而且他的属性不是children来关联的话
    - [ ] 这个在view里面去完成初始化，他的options
  - [ ] 表单验证、重置、提交
  - [x] 支持响应式，通过el-row、el-col而且在el-col里面绑定xl、lg、md、xs，这个是根据

- 实现
  - 通过传入的配置进行渲染
    - 对传入的数据进行遍历，遍历时同时对类型元素分组，如input和password放一起，还有select、datepicker



**读取配置进行表单渲染**

- 有些组件特有的属性（比如开始时间、结束时间）则是放在otherOptions里面，而且可以批量绑定，通过v-bind

表单双向绑定

- 传统做法，通过v-bind把props穿进去，然后在当前组件监听对应的事件，再来修改data
- 通过在组件上[v-model](https://v3.cn.vuejs.org/guide/migration/v-model.html#_2-x-%E8%AF%AD%E6%B3%95)，v-model其实就是prop和emit的结合，加watch的目的是为了及时把最新的书法发送到父组件中

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

- rules可以绑定到el-form里面，也是可以封装到el-form-item里面去，效果是一样的

像边距、label的宽度都是属于表单的配置信息，而不是表单项的配置信息

el-form和el-row，el-col怎么嵌套？

- el-row和el-col必须相邻，在el-col里面放el-form-item即可



为什么只写template会报错，而写<template #default>则是正常

- 官方文档是这样教你的，要么不写template，要么就写具名插槽

那我就不写index.js了，反正它默认导入都是这个鸟样，更好，我效率更高

批量绑定则是可以通过v-bind=“item.otherOptions"

如何发起请求？

- 在pageContent中无条件发起请求一次，然后watch pageInfo，发声修改的时候再发起请求

怎么去做二次封装？两种方法

1. 你先写一个简易版，然后再去划分层次，慢慢去抽离，这是由上往下的，这是我目前选中的
2. 直接写一个底层的版本，然后被引入，这是由下往上的

**对表格进行二次封装**

需求

- [x] 控制是否显示页头
- [x] 渲染数据，能展示图片和按钮
- [x] 多选、展示序号
- [x] 分页，监听分页信息的改变（用v-model）
- [ ] 展示树形数据
- [ ] 弹窗（其实就涉及到了弹窗的二次封装，其实也是用到之前的hyForm而已）

实现

- 表单数据是放在component里面去获取的，而不是通过views里面去获取，
- 读取配置信息（配置信息有：表头、表属性的映射（prop和label），是否展示行和多选），注意没有分页信息，因为分页信息不是通过配置的
- 把多选、序号、分页抽离出来
- 去遍历传入的节点
- 分页
  - 这个功能直接继承到table里面去，分页有关的信息是它自动管理的
  - 坑：v-model的是用冒号，而不是 . ，点是修饰符，害我半天获取不到更新
- 监听选中的记录

**权限按钮的管理**

：有些按钮是有权限要求的，需要获取到判断当前用户是否有指定的权限（指定的权限是你前端写死的，一般是页面名+某个操作，如user:create）

实现思路

- 写一个权限判断的hooks，如usePermission(pathName,operation)

**表格渲染图片**

：默认直接在pageContent组件中定义一个image插槽即可

el-image的注意事项

- 设置宽高通过设置style
- 还可以设置预览

**表格展示树形数据**

- 通过配置config文件，加入tree-props属性还有row-key属性

如何让pageContent组件更加有扩展性

- 他也设置一个插槽，然后再pageContent引入时注册插槽

列表查询是需要带有哪些信息

- 关键词+分页信息

template可以读取哪里的数据？

- 外面直接import的不行，只有props和setup return的才行

格式化时间

- 又引入到一个lodash的引入问题

[对axios的二次封装](https://juejin.cn/post/6968487137670856711#comment)

- [基础的封装](https://www.jianshu.com/p/04a1cfa565a3)

- 能创建使用多个baseUrl
  - 通过vue-cli的.env（如.env.development，.env.production）文件来自动切换
- 添加拦截器
  - 请求和响应拦截器
    - 如果我捕获到错误不继续抛出会怎样？
- 绑定了loading
- 实现
  - 把axios封装成类的形式

**对弹窗的二次封装**

需求

- [ ] 控制显示与否，直接在el-dialog那里控制即可，不用父元素控制一下，然后子元素又控制一下
- [ ] 表单的渲染（新建和编辑）、校验、提交
- [ ] 

注意

- base-ui里面组件是不可能耦合到vuex的，所以一般的数据需要vuex管理的都放在Components里面，而不是base-ui里面

**表单验证不执行validate**（坑死我了）

- 没有给form绑定model，还有要给form-item设置props，rules可以写在el-form上，也可以写在el-form-item上，后者直接写成对象形式即可

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



单向绑定：弹窗传过来的我为什么要做双向绑定，直接单向绑定就行了呀，顶多用个watch，这种单向绑定又快又爽

```js
    // 如果不是为了可以改props的值，我formData都可以不写
    const formData = ref({ ...props.data })
    watch(
      () => props.data,
      (newValue) => {
        formData.value = props.data
      },
      { deep: true }
    )

```

双向绑定：如果要双向绑定的话，则是通过设置方法即可，这时候就不能用v-model的语法糖了，直接拿$event和prop名，然后再emit一下即可

```vue
<el-form-item :prop="formItem.field" :label="formItem.label" :rules="formItem.rules">
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


//js
const handleValueChange = (value, field) => {
	emit('update:data', { ...props.data, [field]: value })
}

```



el-dialog弹窗的话，你可以用这个属性

- destroy-on-close，这样确保每次都是重新绑定，

**对storage的二次封装**

- 能够存、取复杂数据类型，主要是通过JSON.parse和JSON.stringify来实现

**对echarts的二次封装**

- 未封装时只能保存字符串，封装后能够保存复杂的数据类型

单独一个index文件来导出，是为了更加清晰

导入store和使用useStore函数有什么区别？

- 

[如何批量注册el-icons？](https://blog.csdn.net/Alloom/article/details/119415984)

- 一个一个导入太恶心了

import X与import * as X是不同的

- 前者是读取export default的，而后者则是读取所有的export

经常会有这个问题？我数据去哪里拿，无非是三个地方

- vuex
- props传过来
- localStorage

我操你妈的，插件的代码片段是上个版本的，我吐了，太坑了吧，这elementui插件，垃圾，不更新

- element采用的el-submenu，而elementPlus则是el-sub-menu



- 使用了xxx设计模式？

echarts的引入

- 

cnd的引入？

- 



**登录整体流程**

1. 先校验表单
   1. 验证成功后则读取一下是否需要保存账号、密码
   2. 验证失败，终止
2. 发起登录请求
   1. 登录成功
      1. 保存用户信息（角色、姓名、头像），保存角色菜单树，localStorage和vuex都要存一份，防止界面刷新后不见了，老师把一些加载本地存储的操作都放到一个函数里面去了loadCache，然后再main里面执行，只要用户刷新就会重新执行main文件
      2. 跳转到首页
   2. 登录失败则提示用户账号或密码错误

[vue.config中配置change origin为true的作用，是为了能够修改host（目标主机），不然host还是你浏览器发过来的localhost:8080](https://www.cnblogs.com/--here--gold--you--want/p/15223587.html)

[导出类与导出对象的区别？](http://cn.voidcc.com/question/p-poyelapx-ss.html)

- 导出对象是的单例的，而导出对象则是

vuex里面的文件时按模块来分的

- 比如用户登录模块

值是对象还是数组都没有关系，看我要不要通过key来获取值吧，这样就只能通过对象了

代码中出现的这个hy是什么鬼？

- hy是hybrid混合的意思，这样我别的地方也可以用

类型推断是怎么个推断法？

- 

什么时候不用去指定泛型的类型？

- 定义好之后，我直接调用的时候，
- 如果定义那里未指定类型，那我还是需要指定一下类型的

**引入vuex**

：注意一下目录结构

- modules文件夹、index、getters文件
- index文件又会设计到一个批量注册模块的方法，你也可以不写这个，哈哈
- 调用其他actions需要加{root:true}

**引入vue-router流程**

：也是需要写成模块的形式

- modules文件夹，里面的文件按功能进行划分，
- index里面把这些模块引入，一些不需要权限进行访问的则是放在index文件里面即可，还要有beforeEach方法，index首先需要根据有无token，
  - 有token的话，在判断to.path，如果是login，则跳转到首页，非login则跳转到对应页面
  - 无token的话，则是判断是否在白名单中，在的话也是跳转到对应页面，不再则重定向到登录页

**引入权限控制RBAC**

：分用户菜单树和菜单按钮，在用户登录时获取到用户菜单树和按钮权限

菜单递归的递归渲染

- 我每次写是直接用插件的代码片段呢，还是用官网复制一下东西？
  - 代码片段有坑，比如el-submenu就是坑，官网是el-sub-menu
- 顶级是菜单el-menu，而它的子节点可能是子菜单el-subMenu（他里面的菜单项也要渲染）、或者是菜单项el-menu-item，可以通过他的children属性来判断

菜单的跳转

- 首先要添加路由记录才行，不让你知道跳到哪里也不能跳转成功
- 然后再完成路由与组件的关联

默认激活的菜单

：页面刷新后，默认激活第一个菜单项即可，通过计算属性或者是其他的，没有记录当前选中的菜单项，记得default-active是字符串类型的，你写其他的不起作用

- 如果想要获取当前激活的菜单的id则是通过path映射到菜单的方法
  - 凡是涉及到层级（如tree）的都可以通过递归操作一下

跳转到主页

- 由于main是只有layout的，没有任何东西的，所以你要记录一下firstRoute的值



菜单的展开折叠

：通过组件通信的方式实现

记住el-menu和el-sub-menu之间不能有div，

面包屑

：获取当前的url，完成url与roleMenus（里面有路径中文名称）的映射即可

运行时校验是什么鬼吗？

- 

[import和export的简化写法](https://blog.csdn.net/ixygj197875/article/details/79255454)

- export default的没有简化的写法



路由是什么？

：完成路径与组件的绑定



字符串方法

- split分裂，即按某个字符串将字符串分裂成数组，如1-2-3，分成[1,2,3]
- slice切片，对字符串进行截取
- concat拼接数组
- filter过滤，是返回为true，你才能留下来

对于树性结构的遍历

- 你需要边递归（对，不能用for了）边收集结果（用一个result即可）

[如何将树元素的数组扁平化](https://blog.csdn.net/weixin_45844376/article/details/105999422)

- 无非是数组的拼接嘛，concat

require与require.context的区别？

base-ui与Components的区别？

- base-ui是非常基础的，其他项目也可以用到的
- 而components则是只是在当前项目上用的

coderwhy插件怎么用的，为什么他能够进行这么多操作的？

- 我的add3page会自动添加路由，而addcpn则是会默认为vue2的模板
- 哈哈，他在p36只给我们演示了add3page

[影藏滚动条怎么玩？](http://caibaojian.com/hide-scrollbar.html)

- 应该加到谁身上？通常通过伪元素来搞::-webkit-scrollbar{width:0 !important}

页面刷新后404的问题

- 文件的读取需要一点时间，是异步的

懒加载的方式有很多：[组件懒加载与路由懒加载](https://www.cnblogs.com/xiaoxiaoxun/p/11001884.html)



[数字签名](https://www.cnblogs.com/wgj-master/p/10435753.html)是为了确定数据发送方是谁，还有发送过来的数据是否被改动过

- 数字签名：是使用数据发送方的私钥加密



## 商城

**购物车**

：重点：后台计算

- 购物车列表渲染
  - 商品列表的渲染
  - 价格的渲染
    - 你需要知道的是那些是前端需要做的，哪些是后端做的
  - 数量的渲染
    - 至少为1
    - 最多这个还是要后台计算的
- 全选、非全选
- 商品的更新与删除
  - 
- 结算



svg如何管理？

- 

[常见的需求](https://juejin.cn/post/6895497352120008717#heading-16)

## elementPlus+vue3+koa2

封装sessionStorage

- 

怎样将字符串转数字？

- 通过*1，比如

主动去推动公司的规范，这样有助于提升自己的能力，而且体现自己

[父组件的样式会影响到自组件吗？](https://www.jianshu.com/p/a82a4a1c08f8)

- 加了scoped就不会，但是还是会影响到子组件根元素的样式

如何学习一项技术？

- 你先看官方文档，大致瞄一下
- 然后再去看社区（偷懒的方式，或者是首先看社区快速入门文档）

通用？

- 

模块化与组件化的区别？



前端文档怎么写？

什么时候用组合api？

- 当前模块比较独立的时候，不受业务影响的，比如window.width、window.height改变的时候

很多东西都是边开发，边维护的



**侧边折叠**

**侧边栏的生成**

- 主要是通过递归，把

**面包屑**

实现思路：通过route的matched属性，来获取

- 能点击的部分都是页面，不能点击的则本身不是一个页面

**axios的封装**

mock的操作

全局异常处理

通用的css，需要在app.vue里面导入

分别对请求、响应的加密、解密？

中间件？



什么时候用vue2的写法，什么时候用vue3写法？

- 旧项目用vue2，
- 高复用的，新项目用vue3

表单响应对象

- 

scss什么是时候需要scoped？

- 就是用类无法区分的时候，而且不是在顶层，比如layout下的container就不行



**动态菜单实现**

：接口可能是返回菜单和按钮

注意事项

- 一级菜单是不需要跳转

**面包屑的实现**

需求：展示层级关系，单独的页面需要能够点击，最后一级如果是非单独页面的话，则是不要求能点击

实现

- 通过在路由的meta中保存页面名称
- this.$router.matched保存了路由层级信息，所以你遍历就行

有时候你可以通过打印相关对象来知道你的信息具体保留在对象的哪里？

- 比如打印一下this.$route

**JWT**

：jwt是一种跨域认证解决方案

特点

- 传输简单
- 传输安全，后台验证
- 时效性，过期失效
- 能够做单点登录

中间件的作用？

- 完成拦截

全局的样式与混入的样式有什么区别？

- 

将变量转换成true或者是false

- 通过!!a，

**动态菜单管理**

传统的方式维护菜单是通过json的方式，效率低下



[业务组件？](https://zhuanlan.zhihu.com/p/33999571)

- 与之相对的是函数式组件

树状的菜单，通过组件即可

通过菜单的状态来控制显示与否

path.resolve与path.join是做什么的？

- resolve是用来解析成绝对路径的
- join只是用来填充合适的路劲分隔符

有时候不是父容器设置高度的，而是通过子容器撑起来的，比如

```css
width: 100vw;
height: 100vh;
```

axios二次封装

- 无非是添加请求、响应的拦截
- 根据环境变量env动态改变url
- 挂载get、post、put、delete、patch等请求

什么时候用use，什么时候用app进行挂载？

- 定义了install方法的用use，否则通过app挂载

如何指定背景图？通过background-image和background-size即可

```css
  background-image: url('@/assets/images/404.jpeg');
  background-size: cover;
```

像当前用户相关的信息应该从哪里获取？

- 从state获取，而state又是读取storage中的信息

哪些是需要通过网络请求又要通过vuex维护的数据？

- 比如menu

动态菜单刷新后出现空白页的问题？

- 你需要保在页面跳转前，路由能够加载addRoute完成，不然肯定是空白页

为什么获取用户列表需要抽离出一个方法来？

- 因为他需要你拼接把用户对象和分页对象拼接成params对象

单个删除和批量删除，区别就是参数里用户的id是一个还是多个的问题

[狗日的，vue老是自动导入runtime版本](https://www.jianshu.com/p/8810ebf04a54)

element-plus有些东西改了，不再是attribute了，而是被浓缩到一个attribute里面去了

```css
:props="{ expandTrigger: 'hover',label:'deptName',value:'userId' }"
```

有时候检验不起作用，可能是你属性写错了，不是require而是required

重置表单应该发生在什么时候，是关闭弹窗，或者是点击重置按钮的时候

- 而且重置动作可以记得他就是一个动作，所以重置的对象可以是个变量

如果你没有对请求到的数据做转换，比如0映射为在职，那么你需要指定formatter

[attr和prop有什么区别？](https://zhuanlan.zhihu.com/p/181367329)

- prop的值主要是true和false，或者是添加该属性名称，该属性就会生效的，其他用attr
- attr属性是用户自定义的，prop是该类dom元素本身就有的，

删除有分批量删除和单条删除（是两个方法handleDelete和handleBatchDelete）

- 批量删除只需要获取选中的id即可，而且element会自动管理这个
- 单条删除则是需要用到作用域插槽，来获取选中的id

[nextTick](https://www.cnblogs.com/fozero/p/10863667.html)

定义：在下次dom更新循环结束后执行延迟回调

使用场景

- 获取dom更新后的某处焦点
- 获取dom更新后

别的对象里面叫deptId，但是到了部门对象里面可能就不叫deptId了，而是叫_id

要尽快搞清楚，是谁错了

## 移动端音乐app

不要无脑用composition api，逻辑复杂的才要用，option api他的结构是很清晰的。

有些效果ui库给你做好了怎么办？

- 

[tab栏](https://www.jianshu.com/p/b721924f68c1)

编辑器上安装的插件与项目安装的插件有冲突怎么办？

- 

你项目里安装的eslint只负责提示，会在编译的时候告诉你哪里出错了，而你需要在vs安装eslint和pretty则是负责格式化你的代码（eslint负责发现和格式化js，而pretty负责格式化）

- [pretty安装后就要在setting.json中配置了](https://blog.csdn.net/hyk521/article/details/104845026/)
- 为什么vscode要安装eslint插件？
  - eslint插件能提前帮你发现错误，能够在控制台打印还有vscode进行提示，不然你只有编译的时候才知道有错

```js
//vs安装完eslint插件后需要在setting中配置
"editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
}
```

[什么时候用选项api，什么时候用组合api？](https://juejin.cn/post/6985493062432587813)

- 逻辑简单的用选项api，复杂的用组合api

什么时候知道要跳出循环？

- 就是知道我一定会执行的情况

## 自定义脚手架



## 商城（uniapp开发）





[为什么需要babel？](https://www.cnblogs.com/lsgxeva/p/7758184.html)

- 因为浏览器的更新速度没跟上js的跟新速度，为了新版本的js写法也能被浏览器识别，那么就要通过babel进行转译
- babel常用的转移器是babel-preset-env
- 常用的配置选项是plugins和presets
- 常用的使用场景是在webpack中，当然你单独使用也行

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

哪些东西需要做2次封装的

- 表格
- 弹窗

哪些东西要被抽离成常量？

你把经典的东西搞定就没什么了

- 比如用户管理啊，工作流啊

可以设置全局都是使用mock，或者是部分使用mock

- 能后台实现的就不用mock了，比如登录

有些接口是不需要验证的，比如我的登录啊，注册啊

我不管接口是怎么做的，我只要拿到结果就行，哈哈，

画界面：先画骨架再填充内容

多加注释：层次更加清晰一点

类的名称要写语义化一点，比如：user-link

