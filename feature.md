本文档主要书写一些后台管理系统相关的业务

教程

- 项目难点
  - https://juejin.cn/post/7274883755478564922
- 登录方案大全：https://juejin.cn/post/7129298214959710244
- 无感刷新token：https://juejin.cn/post/7254572706536734781
- table封装：https://juejin.cn/post/7166068828202336263
- 表单设计器
  - [form-generator](https://github.com/JakHuang/form-generator/tree/master)
  - [x-render](https://github.com/alibaba/x-render)
  - [form-create-designer演示](http://www.form-create.com/designer/)





## 项目难点

难点类型

- 功能
- 基建
- 优化



## 图形验证

：接入腾讯的图形验证即可，也可以手写

- 文字点击
- 图形点击
- 拼图





## 滑动验证





## 普通登录





## 单点登录：SSO

可以用一个凭证可以登录多个应用程序

对象：sso服务、A应用、B应用

流程

1. 用户在访问应用A，发现没有登录
2. 重定向到sso服务，进行登录，重定向回应用A，重定向的url中会携带凭证
3. 用户访问应用B，也是一样，重复步骤1、2即可



## 第三方登录

：常用OAuth协议来实现，当然还可以选择其他的协议

#### 微信扫码登录

- 要引入微信提供的js文件+实例化对象来实现，它会自己发定时请求来判断二维码是否被扫，还有是否已经授权了，还有跳转，基本都是微信帮你做了，你只需要做配置和引用即可



## token无感刷新

实现步骤

- 用户登录，后端返回access_token和refresh_token
- access_token过期后，使用refresh_token请求新的access_token
  - refresh_token没有过期，则返回新的access_token、refresh_token（它自己可刷新、可不刷新）
    - 用新的access_token重发失败的请求（考虑并发情况，可能不止一个失败请求）
  - refresh_token已过期，重定向到登录页



## 用户登出

1. 向后端发出登出请求
2. 清除本地缓存
3. 重定向到首页





## axios封装

需求

- 自定义配置
  - baseurl
  - 超时时间
- 取消重复请求
- 请求重试
- 请求暂停
  - 其实是假暂停，只是用下个请求不在发出
- 全局的loading
- 请求、响应拦截
  - 比如做加点属性、一些转换、提取




**取消重复请求**

：本质上是移除某个pengding状态的请求，所以我们只需要维护好pending状态的请求即可，用map

- 请求拦截器
  - 取消一个重复的pending请求，前提是要重复的请求，重复是根据key来判断的
    - 生成key
    - 用key做匹配
  - 添加一个请求
- 响应拦截器
  - 移除一个pending请求，否则会一直遗留




**请求重试**

实现步骤

- 响应拦截器的异常处理回调中
  - 初始化一个重试次数retryCount的变量，并挂在到config上
  - 未达到最大次数，retryCount+1，直接axios(config)
  - 达到最大次数时，比如3，则是return Promise.reject



axios提供了一个默认实例，所以你可以直接用实例就能发送请求，比如axios(config)



## fetch





## 登录

流程

- 用户输入账号密码
- 前端使用加密算法对密码进行加密
  - 要跟后端加密算法一致
- 发送账号、加密后的密码给后端
- 后端会将账号和加密后的密码与数据库中的数据比较
  - 考虑加盐：后端生成盐，而不是前端生成，根据账号取出对应的盐，用这个盐来加密密码，来跟数据库中的加盐加密后的密码比较
- 验证通过后，会生成jwt，返回给前端



## 多主题

需求

- 支持light、dark模式
- 支持多种主题色



#### light、dark模式

1. 定义样式：在index.html
   - 也可以指定具体的组件样式
2. 切换模式：通过document.body.setAttribute("data-theme", "dark");

```css
// index.css
body[data-theme="light"] {
    background-color: #f4f4f4;
    color: #333;
}

body[data-theme="dark"] {
    background-color: #333;
    color: #f4f4f4;
}
```



#### 多种主题色

：跟light、dark模式差不多，只是力度更细

1. 定义样式变量，
2. 引用样式变量：在组件的css中使用对应的变量，此时颜色值不能直接写死，要写为变量了，比如var(--theme-primary-color)
3. 切换主题色：修改对应的css变量值，比如

```css
/* themes.css */
:root {
  --theme-primary-color: #3498db;
  --theme-background-color: #f2f2f2;
  /* 添加更多主题颜色变量 */
}
```

```js
function changeTheme(theme) {
  const root = document.documentElement;

  if (theme === 'light') {
    root.style.setProperty('--theme-primary-color', '#3498db');
    root.style.setProperty('--theme-background-color', '#f2f2f2');
    // 设置其他主题颜色变量
  } else if (theme === 'dark') {
    root.style.setProperty('--theme-primary-color', '#e74c3c');
    root.style.setProperty('--theme-background-color', '#333333');
    // 设置其他主题颜色变量
  }
  // 添加更多主题
}
```





## 多语言

：一般都用不上的





## 菜单

直接左侧渲染即可



## 路由

后端一般是返回树形菜单，根据菜单生成路由，并非所有的菜单都会展示到侧边栏



## 访问控制

实现步骤

获取用户权限

- 可以是权限code：['add_user','delete_user']
- 也可以是角色列表：['user','admin']

存储权限

- 最好做一下持久化

校验权限

- 通过则显示
- 失败则隐藏或者是给出提示

校验权限

场景

- 自定义指令
- 路由





## 多页签





## 字典









## 任务调度







## Excel

实现方案

1. 前端做
   - 数据量比较小
   - 不需要验证
2. 后端做
   - 需要验证
   - 数据量比较大



#### 前端导入

- 通过xlsx读取一下文件
- 检验是否正确



#### 导出



## 搜索





## 大文件下载

：没有什么必要性，了解原理即可，如果是比较大的文件，你直接用专门的下载工具即可

实现方式

- 借助插件file-saver即可
- 写个a标签下载
- 切片下载
  - 获取文件大小
  - 计算文件分片
  - 下载分片
  - 转换
  - 组装
  - 保存成1个文件



## 大文件上传

需求

- 分片上传
- 断点续传

客户端

- 文件分片
  - 通过file.slice

- 上传分片
  - 用for in+await

- 发送合并分片请求
  - 在最后一个分片上传成功后触发


服务端

- 接收切片
- 合并切片





## 断点续传

操作

- 暂停
- 恢复



## 图表



## 日志

#### 用户操作日志



#### 系统日志



#### 异常日志





## 富文本





## 代码生成





## 异常处理





## 图片裁剪





## 二维码

：可以时



## 水印





## 内嵌Iframe





## 适配

教程：https://juejin.cn/post/7163932925955112996?searchId=20231116090826AD824670D0231D196C01

目标：内容能够完全展示，而且保持宽高比

- 方案1：scale
  - 实现步骤
    - 计算缩放比：要么就是屏幕高度/设计稿高度，屏幕宽度/设计稿宽度
    - 在body下设置一下transform:scale(缩放比)
    - 其他照着设计稿写即可
  - 注意：代码是按1920*1080写的，而且要展示出全部内容，哪边不够，就满足哪边，宽高比大于16:9，说明屏幕太宽了，那么占满高度即可，缩放比例为：屏幕高度/设计稿高度
- 方案2：rem+vw+vh
  - 实现步骤
    - 引入px转rem的插件，写一下配置
    - 动态计算一下font-size，注意不能写死
      - font-size:1vw，比如1920px的，设置为19px就差不多了
    - 其他按着设计稿写



## 安全



## table二次封装





## 模板工具

：plop





## 自定义工作流

：用户可以配置跳过某些环节，比如编辑》审核》发布，可以把审核跳过



## 长列表渲染

实现方案

- 分页
- 懒加载：也是分页的一种，滚动到底部的时候自己加载下一页
- 虚拟滚动：通过vue-virtual-scroller，只渲染能看到的部分



## 分享功能

采用og协议来优化你的网页在社交媒体上的分享效果，在配置一下meta标签即可

```html
<head>
  <meta property="og:title" content="你的网页标题" />
  <meta property="og:description" content="你的网页描述" />
  <meta property="og:image" content="你的图片 URL" />
  <meta property="og:url" content="你的网页 URL" />
  <meta property="og:type" content="website" />
</head>
```



## 画图

：学会画时序图即可

- 



## 组件封装技巧

应该关注什么？

- 复用性
- 可读性
- 可维护性
- 简便性
  - 不能用起来很痛苦

好的封装技巧？

- 业务无关
- 提供默认值，或者是默认操作



## 单设备登录



## 表单设计器





## svgicon封装





## 实现mvc框架原型





## 实现mvvm模型原型





## 问题

项目开发中涉及到的常见的角色有哪些？

- 用户、或企业
- 开发者：一般是我们自己
- 云服务商：如阿里云、腾讯云、华为云等

saas、paas、iaas ，其实还有很多东西faas、daas、naas、
：<https://juejin.cn/post/6942823896676565029>

- 区别
  - 云服务商提供的模块不同：saas是啥都提供、paas是提供平台、iaas是提供基础设施
  - 对应的用户不同：saas是给用户用的、paas是给开发者用的、iaas是个运维用的
- 分别由哪些模块
  - saas：啥都要服务商提供
  - paas：只提供平台，其他的都是开发者自己去做，如数据、应用
  - iaas：只提供基础设施，其他的都是开发者自己去做，如数据、应用、

私有云、公有云、混合云、边缘云

- 区别
  - 私有云：自己搭建的云
  - 公有云：云服务商提供的云
  - 混合云：私有云和公有云的混合
  - 边缘云：边缘计算，将计算资源放到离用户最近的地方，如手机、路由器、智能家电等



前台、中台、后台区别？
对应的用户不同

- 前台是给用户用的
- 中台是给
- 后台主要是给后台管理人员用的
  ：<https://baijiahao.baidu.com/s?id=1709357728349852624&wfr=spider&for=pc>
  <https://juejin.cn/post/6944875536925917191>

如何去做架构分层？
：<https://juejin.cn/post/7242129428511113272#heading-2>

有哪些端？
：平台端、管理端、用户端

本文档主要是书写有些项目的demo
：原型可以去企业微信或者是钉钉里面找应用

什么是数字孪生（其实就是twins）？
：其实是对实体对象的进行数据层面的动态仿真，重点是数字孪生体会动，可以同步实体的数据，还有对外界条件进行反应

什么情况下允许多次提交？

有些中间态不是我想要的
：比如

啥是混合开发技术？
：混合开发技术是指在原生应用中嵌入webview，然后通过webview来加载h5页面，这样就可以通过h5来实现原生应用的功能，比如微信小程序、uniapp、flutter、react native等等

啥是第一、第二、第三方框架？
：区别在于它跟你或你的组织密切程度

- 第一方框架：自己开发的框架
- 第二方框架：跟你有合作关系的框架
- 第三方框架：跟你没有合作关系的框架

