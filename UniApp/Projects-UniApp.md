[TOC]

## 小程序

有些接口是企业认证才能调用的，个人开发者不给的，叼毛微信

- 接口回调的detail中可以看到提示，要么提示你没有权限

真机预览与真机调试的区别？

- 只有体验版没有问题才能真的发布
- 预览的环境是开发者工具里配置的，而真机则是本机环境

什么时候需要检查以及维护登录状态？

- 

怎么自动自动预览？

- 我的自动预览失效了



#### 常用功能

用户登录流程

：登录、获取用户信息等属于第三方服务

- 使用场景
  - 需要拿到用户的openid和unionid的时候

怎样拿到openid？

- 通过uni.login和code2Session，就可以返回了

常用api（基本都是uni开头的）

- 获取用户信息：uni.getUserProfile
- 

[获取用户手机号流程](https://www.jianshu.com/p/b0b214dd0d91)

1. 前提是用户登录过了，拿到code
2. 这个不能直接通过api来直接获取，而是需要通过用户点击button（设置button open-type），通过code拿到session-key，
3. session_key+app_id两个参数+微信提供的解密工具+crypto来解密
4. 解密后的数据就可以拿到用户的手机号码了



#### 坑

- 有些api是不能嵌套调用的，比如login和getUserProfile，只能同级调用，不能放在回调里面，会调用失败
- 有些api会因为用户的上次对这个api的选择有一些默认行为，比如授权的，如果上次用户拒绝了某个授权，这次则是需要结合获取用户的设置和打开设置，

## 视频点播APP



## 技巧

有些api是需要用户点击button，才能调用api的，

- 你直接调用的话是无效的（直接进入fail回调）

[uni.getUserProfile(OBJECT)](https://uniapp.dcloud.io/api/plugins/login?id=getuserprofile)

- 居然是只给给微信小程序准备的，哈哈，每次调用都会发起授权请求

微信公告里面有提示api的改版信息

- 推荐你新的用法，新的坑，哈哈