本文档主要写一些综合性的问题

教程

- 公钥、私钥、摘要、数字签名、数字证书：https://juejin.cn/post/6995549209348816909



## 性能优化

前端性能优化与测试：https://www.bilibili.com/video/BV1vf4y1h7rg/?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4



## 安全

关注点

- 常见攻击：XSS、CSRF





摘要：通过哈希算法生成，hash算法具有不可逆性

- 常见的hash：ssm，即sha-1、sha-256、md5

数字签名：用于保证数据的完整性、认证数据来源

- 

数字证书：为了安全的的发放公钥

- 

#### xss

：在网站中注入恶意脚本，用户浏览网站时，恶意脚本执行，控制用户的浏览器

危害

- 盗号：通过读取用户的cookie
- 刷流量：强制弹出广告

防御手段

- 浏览器自带：设置x-xxs-protection
- 对特殊字符进行转义
- 配置标签白名单：



#### csrf

：通过让用户点击链接、图片的方式，让用户在不知情情况下以自己的名义发送恶意请求

防御手段

- cookie：使用 samesite cookie
- referer：只有可信的referer才会发处理请求
- token：每次表单提交时都需要携带token

