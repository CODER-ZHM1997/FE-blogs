egg 能解决什么问题？

学习要点

- 官方文档：https://www.eggjs.org/zh-CN/intro

教程

- ejs模板引擎：https://github.com/eggjs/egg-view-ejs


## 问题

企业级框架？

egg与koa、express区别？

项目就结构而言分三类：源代码、配置文件、生成文件

controller和service区别？

- controller没有复杂逻辑，也不会自己产出数据，作用：解析输入、获取返回结果
- service则相反

egg通用函数局限性？

通用函数、框架扩展、内置插件、独立插件

测试

- get请求可以在浏览器上测，而post请求则是要在Postman之类的工具上测试比较容易

你说你连单元测试都不会，你说你有一年工作经验，这我是不信的！

模板引擎：ejs

后端模板引擎的场景：有利于SEO，做单点登录可以用上，

Cookie http请求头的一部分

egg的cookie默认不支持中文，你需要先用base64进行转码

cookie和session区别

- 存储位置、大小
- 可修改的场所
- 使用场景
- 安全性

中间件？

- https://juejin.cn/post/6844903631074885639
- https://juejin.cn/post/6890259747866411022

json.stringify和json.parse的解析：https://juejin.cn/post/7047728813823754254#comment

扩展

：可以egg的现有对象进行扩展，如application、context、request、response，体现了这框架的可扩展性

- this的指向问题
- 在哪个对象上进行扩展？

