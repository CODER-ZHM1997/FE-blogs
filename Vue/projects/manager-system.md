后台管理系统：慕课网的

计划

- 31日：看完到第8章
- 1日：看完到第12章

教程

- token策略：https://juejin.cn/post/6854573219119104014

## 问题

eslint、prettier库与vscode[对应插件的关系](https://juejin.cn/post/6990929456382607374#heading-4)

：总结，如果没有vscode插件，只有库，那么需要我手动执行一下命令，然后才能修改，而 安装vs插件纯粹是为了自己开发方便

组合式api，这个“组合式”体现在哪里？

为什么有些值要写成函数的形式，如路由懒加载的

引入elementPlus

- 安装
- import js库、css库
  - 不用搞什么按需引入，这是小技巧，后面才需要管的
- 再app.use一下

引入icon

jsconfig.js与babel.config.js有啥用？

#### 登录、登出功能

：涉及的点其实还是很多的

- 自动登录
- 维持登录态：refreshToken、accessToken
- 重定向
- 密码传输：md5、aes

**登录页**

可能有倒计时、验证码（随机码）、各种校验（电话、邮箱）结合国际化

验证（年龄、数字是否符合规范、字符长度、）

- 需要写required为true，表示必填
- validator为一个函数，接收的参数依次为rule、value、callback

**验证码**

：https://juejin.cn/post/6906789173055897607

需求

- 随机4位的数字、字符串、字体随机大小、背景色
- 旋转
- 生成5条干扰线、40个随机点

实现

- 需要用到随机的函数，用来生成随机的颜色、随机的某个字符、大小、偏移量、旋转角度如Math.random()*(max-min)+min

**引入svg，编写svg-icon组件**

：引入自定义的svg图片

需求

- 引入自定义svg图片
- 全局注册，不要每次要用都重新引入一下
- 可以指定额外的样式

实现

- 定义一个svgIcon组件，支持指定icon和externalStyle
- 批量引入svg组件，用webpack的require.context函数
- 全局注册icon组件

**密码传输加密**

：一般可用md5库进行加密

**LocalStorage的封装**

：对localStorage的简单封装，有get、set、remove、removeAllItem

- setItem需要判断是否为对象，如果是则是要调用JSON.stringify
- getItem则是需要调用一下JSON.parse来转成真正的对象
- removeAllItem则是直接调用clear即可

调用storage需要把key定义成常量，这样方便维护

功能实现的常用流程

- 定义方法
- 定义动作（里面调用方法），可能是放在vuex的action中
- 触发动作（主动触发、客户触发）

**退出登录**

需求：移除用户在浏览器的信息（如token、userInfo）

场景

- 用户主动退出
- 被动退出，用户登录过期或异地登录导致当前被登出

实现

用户主动退出：比较简单，移除token和userInfo即可

被动退出

- 

用refresh_token去获取新的access_token，refresh_token有效时间比较长，比如一个月，而access_token则是2h左右，如果refresh_token也过期了，那么用户只能重新登录了

#### 动态菜单

需求：菜单树渲染、icon展示、某个菜单是否显示、可点击，外链、点击刷新

实现

- 获取当前用户的路由表
- el-menu里面套用SideItem判断是否有children，有则用子菜单展示（即调用自己SideItem），否则用el-menu-item

#### 面包屑

：展示当前页面的路径，而且可以控制

实现

- 可以通过watch路由来实现，然后获取$route.matched得到匹配的路由

#### [国际化](https://juejin.cn/post/7082730122809180174#heading-5)

需求

- 业务代码、框架代码国际化
- 语言选择的缓存

实现

- 安装插件vue-i18n
- 创建国际化对象，设置message、locale
- 注册国际化对象



#### 换肤

教程：https://juejin.cn/post/7028395505075879967#heading-3

vant的换肤：https://vant-contrib.gitee.io/vant/#/zh-CN/config-provider#shi-li

element-plus换肤：

要点：组件变量、

使用van-config-provider组件，配置它的属性即可

#### 模糊搜索

