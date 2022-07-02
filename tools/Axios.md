[对 axios 的二次封装](https://juejin.cn/post/6968487137670856711#comment)

#### 需求

：[基础的封装](https://www.jianshu.com/p/04a1cfa565a3)

- 异常处理：失败分两种情况：请求成功但业务失败，请求都失败了
- 能创建使用多个 baseUrl
  - 通过 vue-cli 的.env（如.env.development，.env.production）文件来自动切换
- 添加拦截器
  - 请求和响应拦截
- 绑定了 loading
- 多个请求失败如何处理？
- 请求失败处理（断网、超时、状态码错误）

#### 实现

请求拦截：加上token

响应拦截

- 判断一下是否有业务报错
- 是否token过期？过期需要调用退出登录功能，即：移除token、用户信息、重定向到登录页

响应拦截器中什么时候回进入error回调？

