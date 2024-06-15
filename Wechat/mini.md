

为什么要学习小程序？

：因为有与微信联动的使用场景啊

教程

- 入门：https://juejin.cn/post/6844903670589423623
- [强烈推荐的微信小程序开发总结 - 掘金 (juejin.cn)](https://juejin.cn/post/6961317489225498631?searchId=2024051415031453497C767F2AF6038789#heading-3)
- 如何挑选合适的小程序来开发？
  - 通过小程序的数据分析平台，比如阿拉丁，可以看到热门的小程序



## 关注点

- 架构
- 开发工具
- 页面布局
- 数据交互
- 生命周期
- 组件
- 性能优化
- debug

- 打包
  - 分包



## 坑

文档

- 小程序的示例代码和文档对不上，比如头像昵称的获取
  - 有些是示例代码版本落后，以文档为主吧

是否收费

- 它的api有些是收费的，比如获取手机号的api，你要搜一下关键字，如收费

getUserInfo,getUserProfile接口已经报废了，要么不弹窗，要么返回无效数据

- [小程序用户头像昵称获取规则调整公告 | 微信开放社区 (qq.com)](https://developers.weixin.qq.com/community/develop/doc/00022c683e8a80b29bed2142b56c01)







## 架构





## 开发工具

创建

发布



## 页面

#### 布局



#### 路由

常用

- wx.navigateTo：只有这个是保存的
  - wx.navigateBack
- wx.redirectTo
- wx.switchTab



**保存&重置页面数据**



**页面之间通信**

- 通过url传递
  - 在onLoad回调中获取
- 通过globaldata



**数据绑定**

- 加model前缀即可，如model:value="{{name}}"
  - vue的话加了个v前缀v-model:value




**数据获取与设置**

- 获取this.data
- 设置：this.setData



#### 事件

事件绑定，一般是通过bind或catch

- 单击bind:tap
- 长按bind:longpress



target与currentTarget

- target是最先触发事件的组件，一般用这个
- currentTarget是绑定事件的组件







#### 生命周期

App的生命周期则是ls

- onLaunch
- onShow



Page生命周期：lsr

- onLoad/onUnload
- onShow/onHide
- onReady
- 上拉加载更多：onReachBottom
- 下拉刷新：onPullDownRefresh



上滑，下滑就是对应你的手势

- 上滑：之前的内容被滑上去了，但是你的视角是固定的看某个块位置的
- 下滑：之前的内容被滑下去了



组件生命周期：card

- 



## 数据交互

常见操作

- 发送请求
- 解析响应
- 



## 组件

：这里指内置组件

常用组件

- input
- button
- 
- image





## 自定义组件





## API







## 性能优化





## debug







## 开放能力

：就是小程序特供的一些能力，本质上是开放的一些接口

调用方式

- 函数方式：wx.login
- 标签方式：button标签、input
  - 有些还不能直接在回调用获取：比如获取手机号，只能拿到code，然后再用code去解密，返回给前端

#### 授权

- 发起授权请求：wx.authorize
  - 如果授权请求被拒绝了，你需要引导用户开启授权，用到了getSetting，还有openSetting





## 云开发

：不推荐

[云开发涨价真的有这么夸张吗？ | 微信开放社区 (qq.com)](https://developers.weixin.qq.com/community/develop/doc/0000ae24364f905f023e73baf56400)



## 坑

小程序的根目录跟项目根目录不是同一个东西，小程序的是项目根目录下的miniprogram

开发者工具一堆问题

- 某些配置改了，然后运行一次，可能不生效，要重启才能正确运行



## 常见业务

#### 用户登录

：获取用户openid，unionid，session_key

教程

- [小程序的登录流程 - 掘金 (juejin.cn)](https://juejin.cn/post/7141839721809838094?searchId=202405141906316C3F776A92A75C2064CB)

流程

- 调用wx.login获取code，拿这个code请求后端
- 后端通过code2session接口获取openid，unionid，session_key，生成jwt，返回给前端
- 前端保存这个jwt，之后请求时携带这个jwt即可
- 



#### 获取用户头像、昵称

采用它的快速填写能力即可，通过button组件



#### 请求拦截器

- 需要自己封装一个request函数，里面绑定interceptor属性



#### 分包问题

教程：[基础能力 / 分包加载 / 使用分包 (qq.com)](https://developers.weixin.qq.com/miniprogram/dev/framework/subpackages/basic.html)

分包的原则是啥？如何避免错分？

- 





## 问题

微信公众平台与开放平台有啥区别？

- 公众平台是同一个主体下的公众号、小程序，比如同一公司
- 开放平台用于管理不同主体下的公众号，则是给服务商用的，比如软件开发公司

订阅号、服务号区别

- 订阅号是比较基础的，有很多限制，不能提供交易服务
- 服务号则是支持交易，

重点是做一个完整的项目

- ui库用哪个其实问题不大

小程序的文档写的跟屎一样，容易误导人，不要被他牵着走

- 有些是说一半不说完整
- 或者是直接抛出一个新概念，又不解释说明

app.json配置文件与project.config.json区别

- app跟业务有关的，常用
- project跟编译有关的

小程序中页面跟组件是2个概念

- vue中则是任意一个组件都可以是页面

位图、矢量图区别

- 位图用像素的方式描述图像
- 矢量图则是以数学公式的方式描述图像，比如线段、曲线



有些接口时需要授权后才能访问的



webview是啥？

- 

tabbar页面是啥？

- 带底部标签栏的页面，选项栏则是底部的一条
- 通过app.json中tabBar属性指定

为啥要关注access_token是否有效？

- 一些敏感的接口会检验它的有效性
- 获取：后端获取
- 保存：后端保存
- 前端都不用管，前端一般是获取一下code，然后拿code去换东西即可



如何获取、设置全局数据？

- 设置：通过在app.js中定义globalData对象，然后定义获取数据的方法
- 获取：通过getApp方法拿到app实例，然后调用appInstance.globalData即可获取
