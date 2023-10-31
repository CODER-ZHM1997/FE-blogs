本文档主要书写一些后台管理系统相关的业务

教程

- 项目难点
  - https://juejin.cn/post/7274883755478564922


## 项目难点

可以把性能优化、封装、基建、线上问题定位、监控扯一下

- 其实就是没有碰到挑战性特别大的，哈哈





## 请求

需求

- 请求拦截
- 多接口地址

#### axios



## 验证码





## 普通登录





## 第三方登录





## 用户登出

1. 向后端发出登出请求
2. 清除本地缓存
3. 重定向到首页





## 主题

需求

- 支持light、dark模式
- 支持多种主题色



#### light、dark模式

1. 定义样式：在index.html
   - 也可以指定具体的组件样式
2. 切换模式：通过document.body.setAttribute("data-theme", "dark");

```css
// index.html
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





## 路由



## 访问控制



## 多页签





## 字典









## 任务调度







## Excel



#### 导入



#### 导出



## 搜索





## 大文件分片下载

主流程

1. 获取文件大小
2. 计算文件分片
3. 下载分片
4. 转换
5. 组装
6. 保存成1个文件

适用情况

- 客户端带宽>>>服务端带宽

分块下载一般都是多线程



## 大文件上传

客户端

- 文件切片
- 上传切片
- 发送合并切片请求

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



## 内嵌Iframe





## 适配





## 安全



## 自定义工作流

：用户可以配置跳过某些环节，比如编辑》审核》发布，可以把审核跳过



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

