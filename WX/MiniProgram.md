

为什么要学习小程序？

：因为有与微信联动的使用场景啊

教程

- 入门：https://juejin.cn/post/6844903670589423623
- 原生项目：https://zhuanlan.zhihu.com/p/463950919
- uni-app项目：



## 问题

为啥选择uni-app？

- https://zhuanlan.zhihu.com/p/87685252



为什么不选原声

小程序与h5的区别：api不同、开发方式、运行环境不同

目录结构？

- pages、utiils

首页

- 要么靠指定，要么靠默认

wxml

- 小程序有自己的一套标签，h5有的它没有（div、span、img、a）对应（view、text、image、navigator）

wxss

- 常用的选择器都支持
- 新增单位rpx

宿主环境

- 程序运行所必须依赖的环境，如andriod系统，ios系统，各种软件都需要在对应的宿主环境，e而小程序的则是微信这软件

mini分2部分：渲染层、逻辑层



#### 通信

有两组对象：渲染层与逻辑层、逻辑层与第三方服务器的通信

小程序的启动过程，页面的渲染过程

#### wxml

view、scroll-view、swiper与swiper-item

view与scroll-view的区别？

- view高度只能撑开，不能让内容滚动，scroll-view设置宽度，高度，看你是横向还是纵向滚动吧

block与view的区别？

- block在源代码中不会显示，比如它内容的为空的时候，可以用block，用view还是会有残留

hidden则是控制显示与否

什么时候需要must语法，指定名字不用，比如指定key、index

**rpx**

- 在小程序中不用考虑百分比布局，css写的像素原来是逻辑像素，dpr设备像素比则是物理像素/css像素

建议以iphone6为作为视觉设计稿

页面的结构的划分

- navigationBar、background（下拉才能显示）、页面主体

有些格式不支持的，即他不认，如设置navigationBar的颜色，你只能用16进制的格式，不能直接用文本类的，如red



#### 事件

：渲染层与逻辑层的通信方式

主要的属性：type、target、currentTarget、detail（事件的额外信息，比如value）、

target是事件触发的源头组件，currentTarget则是绑定事件的组件，常用target，

数据的存储、访问、修改、删除

- 放在data，this.data.*，this.setData

事件的参数传递，通过data-*



#### Api

分类：事件监听（on开头），同步（sync结尾），异步的api（需要用success、fail、error来接收结果）

**请求**

其实需要配置合法域名不然，出于安全考虑

下拉刷新不要再全局开启，会死人的，因为只有部分页面才需要下拉刷新

#### 项目开发流程

一个成员可能有多个角色（管理员、开发、运营、体验者），体验人员是非项目成员，

不同角色有不同的权限，

**版本管理**

- 分开发版本、体验版本、正式版

**发布**

## 坑

模拟器并不能100%模拟真手机的效果，有些模拟器上没问题，真机有

tabbar页面必须放在pages路由记录的前几个，不然不显示，醉了，首页必须放第一位置

## 技巧

不要什么都想着记住，什么都写下，这会严重影响你的效率和学习体验，很多东西都需要现场判断的

[文档](https://developers.weixin.qq.com/miniprogram/dev/framework/)



[快速入门](https://juejin.cn/post/6864740285303324686)

- 引入scss的支持
- https://juejin.cn/post/6854573214992072717

小程序引入第三方库还是通过npm，哈哈，我还以为你会不一样

- 

[vscode安装的插件](https://www.cnblogs.com/EasyLive2006/p/12870364.html)

可以通过getSystemInfo判断是否iphone或者是Iphonex

- 

可以通过wx.getMenuButtonBoundingClientRect来获取胶囊信息，如胶囊的高度

微信分享实现

- 需要设置button的background-image，而且这个image是线上的，我吐了

常见的配置可以在：框架》小程序配置，那里可以看到好多的配置