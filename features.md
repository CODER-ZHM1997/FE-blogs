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





## 验证

图形验证

：接入腾讯的图形验证即可，手写没意义

- 文字点击
- 图形点击
- 拼图

滑动验证

- 



## 登录

流程

- 用户输入账号密码
- 前端使用加密算法对密码进行加密
  - 要跟后端加密算法一致
- 发送账号、密码明文给后端
- 后端会将账号和加密后的密码与数据库中的数据比较
  - 考虑加盐：后端生成盐，而不是前端生成，根据账号取出对应的盐，用这个盐来加密密码，来跟数据库中的加盐加密后的密码比较
- 验证通过后，会生成jwt，返回给前端



## :white_check_mark:单点登录：SSO

教程

- [前端实现单点登录（SSO） - 掘金 (juejin.cn)](https://juejin.cn/post/7282692430117748755?searchId=20240513190719EB99F20A80ADCAFA0C0B)

可以用一个凭证可以登录多个应用程序

对象：sso服务、A应用、B应用

流程

1. 用户在访问应用A，发现没有登录
2. 重定向到sso服务，进行登录，重定向回应用A，重定向的url中会携带凭证
3. 用户访问应用B，也是一样，重复步骤1、2即可







## 第三方登录

：常用OAuth协议来实现，当然还可以选择其他的协议

教程

- [微信登录功能 / 网站应用微信登录开发指南 (qq.com)](https://developers.weixin.qq.com/doc/oplatform/Website_App/WeChat_Login/Wechat_Login.html)



**微信扫码登录**

- 到开放平台，创建网站应用，并申请权限
- 获取code：打开扫码网页
  - 只有正确配置参数才能正常显示二维码

- 获取access_token：调用oauth2/access_token的api获取
  - 它还能返回其他有效信息

- 更新access_token：通过调用调用oauth2/refresh_token来获取



为啥老是要关注access_token是否有效？谁会去判断它的有效性？

- 因为微信的一些接口需要用到有效的access_token才行

谁去刷新access_token？

- 一般是后端，后端去获取，返回给前端
- 其实前端做获取也问题不大，就是不知道应该怎么判断是否需要获取和那里接收的问题



## 用户登出

1. 向后端发出登出请求
2. 清除本地缓存
3. 重定向到首页





## token无感刷新

教程

- [Token无感知刷新，说说我对解决方案的理解~ - 掘金 (juejin.cn)](https://juejin.cn/post/7289741611809587263?searchId=20240513192853BEF9658A30D46F0A58C2#heading-3)
- 

实现步骤

- 用户登录，后端返回access_token和refresh_token

- access_token过期后，使用refresh_token请求新的access_token

  - refresh_token已过期，重定向到登录页

- refresh_token没有过期，则返回新的access_token、refresh_token（它自己可刷新、可不刷新）

- 用新的access_token重发失败的请求（考虑并发情况，可能不止一个失败请求）

  

有效时长

- access_token：2h
- refresh_token：7d



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





## 多主题

需求

- 支持light、dark模式
- 支持多种主题色



**light、dark模式**

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



**多种主题色**

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

后端一般是返回树形菜单，根据菜单生成路由，并非所有的菜单都会展示到侧边栏



## 权限菜单

：不要老是想着搞这些，不会让你天天搞这些的





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

开启，关闭当前，关闭其他





## 字典

更新方式

- 通过刷新后就要更新，而不是重新登录后更新







## 任务调度







## Excel

实现方案

1. 前端做
   - 数据量比较小
   - 不需要验证
2. 后端做
   - 需要验证
   - 数据量比较大



前端导入

- 通过xlsx读取一下文件
- 检验是否正确



导出



## 菜单搜索





## 文件上传

：el-upload

大文件上传

上传交互
：

关注以下这几个属性

- action
- headers
- before-upload
- on-sucess
- auto-upload
- http-request

前端传参的问题

- 后端要的是数字而前端传过去的是boolean
  - 可以前端转成数字
  - 或者是后端转一下

写了http-request，action就报废了

**附件上传、回显的交互**
教程：<https://www.jb51.net/article/257538.htm>

需求

- 显示已上传的文件列表
  - 每个item都显示一下文件名、下载、删除

实现

- 文件列表，用自己的变量来维护，而不是用ele的file-list来维护
  - 文件item的属性：id、name、url

存可以全部存到一个变量，然后发请求的时候去一下你要的值即可

下拉框要不要默认选中一个？
：不需要



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

用户操作日志



系统日志



异常日志





## 富文本





## 代码生成





## 异常处理





## 图片裁剪





## 二维码

：可以时



## 水印





## 内嵌Iframe







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



## svgicon封装





## 实现mvc框架原型





## 实现mvvm模型原型



有些标签不会受到跨域的影响，比如img、link、script、iframe等

- 但是a标签是会受到跨域的影响的



## 适配

教程：https://juejin.cn/post/7163932925955112996?searchId=20231116090826AD824670D0231D196C01

目标：内容能够完全展示，而且保持宽高比

- 方案1：scale

  - 实现步骤
    - 计算缩放比：要么就是屏幕高度/设计稿高度，屏幕宽度/设计稿宽度
    - 监听一下onresize事件，设置一下元素的style.transform属性
    - 其他照着设计稿写即可
  - 注意：代码是按1920*1080写的，而且要展示出全部内容，哪边不够，就满足哪边，宽高比大于16:9，说明屏幕太宽了，那么占满高度即可，缩放比例为：屏幕高度/设计稿高度

- 方案2：rem+vw+vh

  - 实现步骤

    - 引入px转rem的插件，写一下配置
    - 动态计算一下font-size，注意不能写死
      - font-size:1vw，比如1920px的，设置为19px就差不多了
    - 其他按着设计稿写


字体大小问题

- 





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

