

## 问题



角色：

- 用户
- 微信开放平台
- 第三方（指服务商，就是开发者，我就是开发者）
- 微信公众号、小程序

为什么要刷新access_token（2h）？专门用来刷新access_token的refresh_token有什么用？

- refresh_token（30d）过期后，就真的完蛋了，这次用户要重新登录了

微信授权登录方式

- 扫码（内嵌和非内嵌）
- 拉起网页

[open_id和union_id的区别？](https://blog.csdn.net/qq_42030417/article/details/90602068)

- 都不是跟用户绑定的，而是与应用或者是微信公众有关的，主要目的都是为了隐藏微信号

审核不通过的问题

- 

小程序破事很多的，你先要用户授权，才能去获取用户信息





## 小程序开发

[常见的面试题](https://www.cnblogs.com/teahouse/p/11504361.html)

生命周期方法（5个，是对称的）

- onLoad
- onShow
- onReady
- onHide
- onUnload

[页面栈只有10层](https://blog.csdn.net/weixin_34910865/article/details/113490644)，页面跳转的主要方法（前两个是跳转到新页面，最后一个是返回到上一个页面）

- wx.navigateTo
  - 只有新页面入栈
- wx.redirectTo
  - 当前页面出栈，新页面入栈
  - 如果重复调用wx.redirectTo(B)则是栈中存在2个B页面
- wx.navigateBack
  - 只有页面出栈

[小程序如何生成图片？](https://developers.weixin.qq.com/community/develop/article/doc/0006c2e7f885c0d16a49a5d2c56013)

- 思路：通过canvas，
- 实现
  - 用别人的代码：海报生成插件，[QrcodePoster](https://ext.dcloud.net.cn/plugin?id=2146#detail)，或者是[QS-SharePoster](https://ext.dcloud.net.cn/plugin?id=471#rating)
  - 自己通过canvas写一个

微信公众平台与微信开放平台不同

- 公众平台给运维看的，可以选择公众号登录、也可以选择小程序登录
- 开放平台给开发看的

小程序码

- 载体是图片
- 可以被微信扫一扫识别，

## 公众号开发

