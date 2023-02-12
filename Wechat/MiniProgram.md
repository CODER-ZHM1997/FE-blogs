

为什么要学习小程序？

：因为有与微信联动的使用场景啊

教程

- 入门：https://juejin.cn/post/6844903670589423623
- 原生项目：https://zhuanlan.zhihu.com/p/463950919
- uni-app项目：
- 微信公众号开发：https://blog.csdn.net/woshisangsang/article/details/122669018
- 微信支付接入：https://pay.weixin.qq.com/wiki/doc/apiv3/index.shtml



## 问题

小程序的文档写的跟屎一样，容易误导人，不要被他牵着走

- 有些是说一半不说完整
- 或者是直接抛出一个新概念，又不解释说明

小程序的开放能力的流程要搞清楚

- 登录
- 获取手机号
- 支付
- 头像昵称

#### 开放能力

unionID与openid的区别？

- 同一用户在同一个微信开放平台账号下的不同应用，他的unionID是相同的
  - 注意是需要同一个微信开放平台账号

授权（有些接口要授权后才能调用）

- 会不会出现这么一个场景：授权拒绝了，之后在调用接口时不会再弹窗了，那就可能会被认为时bug了

手机号

：这个是先要获取code，然后后端拿code去获取phone

https调用与第三方调用有啥区别？

post请求参数：可以放到url中也可以放到body中

云开发有啥好处？

- 

不绑定开发者账号的小程序

- 

微信公众号开发

- 主要是浏览器不同，微信公众号是用微信内置浏览器打开的



为啥选择uni-app？

- https://zhuanlan.zhihu.com/p/87685252

为啥要分商户和支付商？

- 

