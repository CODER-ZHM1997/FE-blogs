security能解决什么问题？

：能够提高安全性，不是绝对的安全，但能够提高破解的难度

学习要点

- 

教程

- XSS攻击（cross site scripting：跨站脚本攻击）：https://juejin.cn/post/6844903685122703367
- CSRF攻击（cross site request forgery：跨站请求伪造）：https://juejin.cn/post/6844903689702866952
- SQL注入
- DOS攻击
- 加解密
  - crypto-js：https://github.com/brix/crypto-js
  - https://juejin.cn/post/6844903742370742279




## 问题

xss攻击：往页面注入脚本，读取用户信息

- 验证输入的数据
- 转义特殊字符

crypto

- 加密：encrypt、解密：decrypt
  - 加密的明文可以是name、paddword构成的对象然后JSON.stringify
  - 解密需要指定toString的值为utf8，默认是hex
- 参数：明文、密钥、iv初始向量、mode模式、padding填充
  - iv是跟密钥的功能差不多，不同的iv生成不同的密文
  - mode指定预设模式中的一种
  - padding则是用于填充长度

对称加密、非对称加密

：一般是混合使用，比如在非对称加密中去做对称加密，或者是先对称后非对称

加解密的目的是为了解决信任问题

两者的使用场景

- 

dns劫持

：如果dns被劫持，那么访问到钓鱼网站

怎么解决信任问题？

：通过证书体系，客户端要安装根证书，才能做其他证书（如阿里的证书）的认证，认证通过才能信任



