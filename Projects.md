[TOC]

## 项目

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

禅道要自己多用，不然会死人的

- 如何查看自己的任务
- 如何提交自己的日志
- 如何提交修复bug的

#### elementPlus+vue3+koa2

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

#### 移动端音乐app

不要无脑用composition api，逻辑复杂的才要用，option api他的结构是很清晰的。

有些效果ui库给你做好了怎么办？

- 

[tab栏](https://www.jianshu.com/p/b721924f68c1)

编辑器上安装的插件与项目安装的插件有冲突怎么办？

- 

你项目里安装的eslint只负责提示，会在编译的时候告诉你哪里出错了，而你需要在vs安装eslint和pretty则是负责格式化你的代码（eslint负责发现和格式化js，而其他由pretty负责）

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

#### 自定义脚手架

#### 移动端书店商城

哪些场景要归vuex管理？哪些则是直接通过请求来获取就可？

很多东西都是都给你做好了，你开发起来更快，而且代码质量更好

commons和es6的模块系统能相互引用吗？

- 不能，那我怎么怎么知道用哪个？用import还是require？

[顶底固定、中间自适应的方式？](https://www.cnblogs.com/leiting/p/8204303.html)

- 我的方案是整体为flex布局，顶底设置fixed布局，然后中间为flex:1,margin-top:50px;margin-bottom:50px;

[怎样通过ref来获取指定元素？](https://blog.csdn.net/yusirxiaer/article/details/114755949)

[看看人家做的笔记，我人麻了](https://blog.csdn.net/weixin_45817780/article/details/105211368)



#### 商城（uniapp开发）

## 忙羊补牢

#### koa

[koa2入门](https://juejin.cn/post/6844903780945756174#heading-4)

- [官方文档](https://koa.bootcss.com/#application)
- [koa-router](https://github.com/ZijianHe/koa-router)
- [通过koa-generator快速搭建koa项目](https://koa.bootcss.com/#application)
- [有时候，也可以到github查看一下别人的学习笔记](https://github.com/chenshenhai/koa2-note)

用npm init来初始化的项目是node项目吗？

node命令与npm命令启动项目的区别

没有babel就不能支持export吗？

书写顺序与执行顺序不一定完全相同，（书写：abc，执行：bca）有些执行顺序已经内定了的

[啥是loader？什么是plugin？](https://juejin.cn/post/6944349196539396133#comment)

- 

怎样解决eslint代码校验和修复的问题？

[node项目如何支持es6？](https://blog.csdn.net/weixin_36897085/article/details/79154105)

- 需要引入babel-preset-2015
- 同时创建配置文件：.babelrc文件
- 还需要引入rimraf，能够吧dist里面的旧文件删除

[npm执行脚本有什么用？](https://blog.csdn.net/weixin_40887276/article/details/114294701)

- npm可以执行单条或多条脚本，而且可以控制串行或者是并行，而且脚本可以通过process来获取package.json中的内容



[为什么需要babel？](https://www.cnblogs.com/lsgxeva/p/7758184.html)

- 因为浏览器的更新速度没跟上js的跟新速度，为了新版本的js写法也能被浏览器识别，那么就要通过babel进行转译
- babel常用的转移器是babel-preset-env
- 常用的配置选项是plugins和presets
- 常用的使用场景是在webpack中，当然你单独使用也行

哪些情况是开发环境能用，哪些情况是生产环境也能用的

#### egg

koa和egg的区别？egg是增强版

入门

- [官方文档](https://eggjs.org/zh-cn/intro/quickstart.html)



## 博客

常见的需求

- [项目的痛点](https://juejin.cn/post/6844903632815521799#comment)

vue

- [愣锤](https://juejin.cn/user/3333374984065608/posts)
- [vue教程](https://juejin.cn/post/6942492146725290020#heading-0)
- 

## 技巧

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

