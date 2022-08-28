为什么要引入浏览器，他能解决什么问题

为什么要学习网络

学习要点

教程

- 入门：https://juejin.cn/post/6947936223126093861
- http、https：https://juejin.cn/post/6844904100035821575
- cookie、session、token：https://juejin.cn/post/6844904034181070861
- curl：https://juejin.cn/post/7020291189832155166

#### 网络模型

5层网络模型

为什么要了解网络模型？各个层次有啥注意事项？



#### HTTP

：超文本协议

版本：0.9、1.1、1.2、2.0，大公司的协议大多是2.0

socket

：套接字，类似生活中的插座，通过这个插座你能够往网络里传输数据，socket能够操作操作http的

#### HTTPS

：安全超文本协议

 set-cookie无效是什么鬼？

http与tcp、ip协议有啥区别？

curl的代替工具：postman、apifox

请求方法：常用的4种，还有不常用的4种：option、patch、trace

#### 状态码

304：web服务器能够知道他返回的资源有没有变，没变则是不返回资源，那么直接给你返回304

401：未登录

403：拒绝访问

502：网关错误，可能是域名、ip、防火墙配置有问题

但是很多服务端开发不遵循状态码规范

refer能够得到打开当前网页的上一个网页地址

#### TCP

：可靠通信

#### UDP

：与tcp的区别？

- 不可靠通信：没有虚拟连接、不校验、不保证顺序、不重发，但是它更加自由

使用场景：

#### Http2.0

特点

- 多路复用
- 防止阻塞
- http请求头压缩
- 服务端推送



#### Cookie

path决定了你在哪个路由下可以访问到该cookie，

- domain无需配置一半指定为当前域名即可

- httpOnly则是设置不能通过脚本来读取cookie信息

cookie会有跨域问题吗？

- https://juejin.cn/post/6969483500722323469#comment
- https://stackoverflow.com/questions/27406994/http-requests-withcredentials-what-is-this-and-why-using-it
  - 需要设置一些属性，前后端都要，而且要分get请求和非get请求

axios配置withCredentials（不管是否跨域cookie都将被视为使用凭证）为true，只需要在里设置即可：https://stackoverflow.com/questions/43002444/make-axios-send-cookies-in-its-requests-automatically



schema不要翻译为约束，而应该翻译为方案

## 问题

为什么要了解http的请求？

- 能够快速解决一些网络问题
- 能够优化性能体验

