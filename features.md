本文档主要书写一些后台管理系统相关的业务

教程

- 项目难点
  - https://juejin.cn/post/7274883755478564922
- 前端常用库
  - [前端高效开发必备的 js 库梳理 - 掘金 (juejin.cn)](https://juejin.cn/post/6898962197335490573?searchId=2024051718215951D006058CD09CC333AA#heading-2)

- 登录方案大全：https://juejin.cn/post/7129298214959710244
- 无感刷新token：https://juejin.cn/post/7254572706536734781
- table封装：https://juejin.cn/post/7166068828202336263
- 



## 项目亮点

- 复杂功能

  - 大文上传
  - 动态表单
  - 多人协作
  - 虚拟列表
  - 性能优化

  - 比如渲染卡顿，数据处理

- 性能优化

- 代码质量

  - 模块化
  - 自动化测试

- 项目管理

  - 如ci/cd工作

- 



推荐方向

- 3d
- 项目监控
- 视频
- 音频
- 富文本编辑器
- 



## 自己来造一些轮子

：多做一些有趣的项目，不管是常规的还是ai有关的

- [ ] 脚手架
- [ ] 滑动验证
- [ ] 引导页
- [ ] 拖拽库
- [ ] element-plus的所有组件
- [ ] 基于websocket可以做聊天室，多人在线编辑，实时数据传输
- [ ] 富文本编辑器









## 验证

图形验证

：接入腾讯的图形验证即可，手写没意义

- 文字点击
- 图形点击
- 拼图

滑动验证

- 



## :white_check_mark:登录

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







## :white_check_mark:第三方登录

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



## :white_check_mark:用户登出

1. 向后端发出登出请求
2. 清除本地缓存
3. 重定向到首页



## 网页刷新

要做什么动作？

- 重新请求字典api
- 



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



## ✅axios封装

需求

- 自定义配置：针对整个项目的请求，而不是单个请求
  - baseurl
  - 超时时间
  - 针对单个的可以通过get、post方法传入配置
- 请求拦截
  - 重复请求控制
    - 取消或不取消

  - loading控制
    - 有个计数器，在++

- 响应拦截
  - 检查code
    - 正常，返回data
    - 异常，返回reject的Promise

- 封装get、post、delete、download方法



可选功能

- 重复请求取消



实现

- 定义一个Request类
- 只需要一个axios对象即可，不需要多次创建，所以直接导出一个对象即可，不用导出类

哪些请求会被axios拦截？

- xhr类型的请求
- document，font，css，fetch类型的请求都不会被拦截，

axios怎么判定是否为重复请求？

- 其实我来判定的



## fetch





## ✅多主题

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

教程

- [安装 | Vue I18n (kazupon.github.io)](https://kazupon.github.io/vue-i18n/zh/installation.html#兼容性说明)

**组件注册**

**编写配置文件**

- 

**渲染**

- $t("hello")

**切换语言**

- 修改$i18n.locale的值即可




## 权限菜单

：不要老是想着搞这些，不会让你天天搞这些的

实现步骤

- 请求







## 按钮按钮

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

## 权限路由





## 多页签

需求

- 渲染
- 拖拽：可选

- 关闭当前
- 关闭其他
- 关闭所有



## 文件上传

[字节跳动面试官：请你实现一个大文件上传和断点续传 - 掘金 (juejin.cn)](https://juejin.cn/post/6844904046436843527?searchId=20240522154535442FF7D27861036DFBD3#heading-8)

文件传输到后端，只有2种方式

- 要通过form-data编码方式提交，通过FormData对象
  - 文件可以是file对象，blob对象



#### 普通文件上传

实现

- 提供el-upload的default、file插槽内容
- 并且定义自己的empty、tip插槽
- 



写了http-request，action就报废了，写个空字符串即可

- 



一般是选完文件马上上传到后端，而不是提交表单的时候再上传





#### 大文件上传

需求

- 分片上传
- 断点续传

客户端

- 文件切片
  - 通过file.slice
- 上传切片
  - 方案1（常用），同步上传：同步需要按顺序上传，用for in+await
  - 方案2，异步上传：使用promise.all，



文本传输与二进制传输的区别？

- 文本传输
  - 可读性好：直接是字符
  - 
- 二进制传输
  - 可读性差：没办法直接阅读
  - 传输效率高，直接是二进制数据，没有编码
    - 编码会让传输的内容变成变多

http网络文件传输一般都是不带编码的

- 



## ✅文件下载

：没有什么必要性，了解原理即可，如果是比较大的文件，你直接用专门的下载工具即可

实现方式

- 借助插件file-saver即可
- 写个a标签下载





## Excel导出



导入

- 



导出

- 前端导出，导出所选内容
- 后端导出





## 树形筛选器











## 字典

更新方式

- 通过刷新后就要更新，而不是重新登录后更新









## 菜单搜索



## 富文本

图片自定义上传



视频自定义上传







## 图片裁剪

工具：cropperjs













## 模板工具

：plop





## 长列表渲染

实现方案

- 分页
- 懒加载：也是分页的一种，滚动到底部的时候自己加载下一页
- 虚拟列表：通过vue-virtual-scroller，只渲染能看到的部分





## ✅链接分享功能

采用og协议来优化你的网页在社交媒体上的分享效果，在配置一下meta标签即可

教程

- [开放图谱协议( The Open Graph protocol ) 简称 OG 学习记录~ - 掘金 (juejin.cn)](https://juejin.cn/post/7032663290631159838?searchId=20240516160850DE2F2FC688561601D65E)
- 怎么h5唤起app？通过url scheme
  - [H5如何实现唤起APP - 掘金 (juejin.cn)](https://juejin.cn/post/7097784616961966094#heading-13)



og协议的目的

- 美化分享链接，增强营销效果

```html
<head>
  <meta property="og:title" content="你的网页标题" />
  <meta property="og:description" content="你的网页描述" />
  <meta property="og:image" content="你的图片 URL" />
  <meta property="og:url" content="你的网页 URL" />
  <meta property="og:type" content="website" />
</head>
```



## ✅分享海报

步骤

- 设置海报页面结构，包括背景图，文本，二维码位置
- 使用qrcode库将链接转成二维码，并挂载到二维码的dom上
- 使用html2canvas库将html转换成图片





## 画图

：学会画时序图即可

- 







## 适配

#### 移动端适配



#### 数据大屏适配

教程

- [一次搞懂数据大屏适配方案 (vw vh、rem、scale) - 掘金 (juejin.cn)](https://juejin.cn/post/7163932925955112996?searchId=2024051615394432E614E6895E11241D1C)

适配

- 大屏容器显示在屏幕中心
  - 通过fix
- 缩放
  - 计算缩放比，再通过scale
- 添加监听
  - mounted还有resize的时候触发一下缩放处理

代码是按1920*1080写的，而且要展示出全部内容，哪边不够，就满足哪边，宽高比大于16:9，说明屏幕太宽了，那么占满高度即可，缩放比例为：屏幕高度/设计稿高度

注意高度需要写百分比

- 不过我写px好像也没啥问题，因为计算好了缩放比
- 相当于用contain的显示方式





## ✅防抖&节流

防抖

节流

：能够保证某个函数在指定周期内只能触发1次，比如每2s最多执行1次，即使你按1s点一次的频率也没用



## 定时任务

如果是后端配置的话，门槛较高

- 前端配置可以降低门槛







## 表单

**查看**

查看其实是表单禁用状态，直接禁用表单即可

- 除非产品说不能出现哪些框框了



**编辑**





#### 动态表单



## ✅自定义指令

常见操作

- 指令定义
  - 生命周期函数
  - 参数el、binding
- 指令注册



权限校验：v-auth

：





复制：v-copy

：通过点击来复制

实现

- 绑定点击事件，在点击时写入粘贴板
- 



水印：v-waterMarker

- 通过canvas生成图片
- 然后再把这个图片设置成背景图，可重复



## ✅跨域资源共享

因为浏览器有同源策略的限制，但是平时又需要跨域资源共享，比如请求不同域下的资源

如何实现？

- CORS：后端解决
- proxy：如vite正向代理，nginx反向代理，
  - 通过服务器转发来避免跨域问题
- iframe
  - 引用
  - iframe的postMessage
- jsonp
- websocket

**jsonp**

实现

- script标签不受同源策略限制，
- 动态生成script内容，然后里面是方法调用，这样就实现了数据跨域传递

缺点

- 只支持get方法



是否跨域是以当前的页面的url为参考的

- 



## ✅qs库

：查询字符串的解析库，可序列化和反序列化，可以对对象进行序列化

JSON则是主要针对对象的，qs库的功能更加强大



## 组件封装

教程

- [Vue实战之路投稿视频-Vue实战之路视频分享-哔哩哔哩视频 (bilibili.com)](https://space.bilibili.com/3546561390840629/video)

一个好的组件封装有哪些特点？按重要性

- 可复用

  - 不能是使用条件太苛刻，只能满足一个页面，没法复用

- 易用

  - 不能随便出错，不能用起来非常麻烦

- 可扩展

- 文档支持

- 低耦合

  - 不要依赖于外部环境

  - 保持单一职责，比如表单封装，不能显示和编辑都做到同一个组件，应该分成2个组件

- 性能

- 可测试



#### table封装

#### svgicon封装





## ✅性能优化

：从整条链路上分析

[Vue 项目性能优化 — 实践指南（网上最全 / 详细） - 掘金 (juejin.cn)](https://juejin.cn/post/6844903913410314247?searchId=2024052112333761486FE535E4F1CBDF3A#heading-21)

链路

- 代码编写
- 打包
- 网络传输
- 浏览器缓存



代码编写

- 组件按需引入
  - 比如element-plus的组件
- 图片懒加载
- 异步组件
- 列表
  - 虚拟化列表
  - 滚动加载
- 减少重排、重绘操作
  - 合理使用css，多用opacity，transform，而不是top`、`left`、`width`、`height
  - 使用防抖、节流
  - 使用fragment来批量更新dom，而不是来一个插入一次



打包

- 图片压缩



网络传输

- gzip
  - 在nginx中开启，大多数浏览器都支持的
- cdn



浏览器缓存

- 在nginx开启对静态资源的缓存



为啥叫虚拟化列表？

- 因为它没有真正将所有数据加到页面上显示，而是动态的渲染可视区域



## ✅CDN

vite中如何引入cdn？

[【vite 4.3 + vue 3.2 项目优化实战】配置 CDN 服务 - 掘金 (juejin.cn)](https://juejin.cn/post/7248118049584332856?searchId=20240521134545A95BF5F2432C165D2C7F#heading-14)

[MMF-FE/vite-plugin-cdn-import: Import modules from CDN with vite plugin (github.com)](https://github.com/mmf-fe/vite-plugin-cdn-import#readme)

- 安装插件vite-plugin-cdn-import
- 指定包名，路径名

注意

- 使用了cdn的包，就不会参与打包了，更不要说啥按需引入了



## hybrid

：混合开发



## 预览

[前端实现word、excel、pdf、ppt、mp4、图片、文本等文件的预览 - 掘金 (juejin.cn)](https://juejin.cn/post/7071598747519549454?searchId=20240521144859FDE72BA1166DD161A768)



## 模块化





## 代码生成





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

