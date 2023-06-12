项目文档：https://vvbin.cn/doc-next/guide/

讨论群：https://www.kaiheila.cn/app/channels/1386303951534822/6050289365012477

计划：2周看完并仿照一个，11月15日搞定

- 指南、深入、其他：2d
- windicss：1 d
- 重点看一下组件模块，5d
- 模仿：5d
- 验收：1d

技术栈：

预览：https://vvbin.cn/next/#/login?redirect=/dashboard

## 目录结构

：mock、public、types、tests、src（api、asset）

## 项目配置

：环境变量、主题、布局、缓存、多语言



## 路由

需求

- 生成路由
- 路由守卫
- 外链

**注册路由**

- 白名单（默认需要注册的，比如login、404、redirect、其他无需权限访问的页面）
- 动态路由（）
  - 方案1
    - 后端返回路由数据，生成路由记录（把component替换成指定的路由）
    - 然后addRoute

  - 方案2
    - 后端返回菜单数据，然后根据name去匹配前端编写动态路由，得到动态路由


**路由守卫**

- 权限守卫

权限守卫

- 先判断to.path是否为白名单，白名单直接放行
- 判断是否已添加过路由hasAddRoute
  - 没有则请求数据，并构建路由
  - 已添加：则直接跳转
- 判断是否为to.name是否为NOT_FOUND
  - 是：则next到to.path即可，记得设置replace为true，还有查询参数别忘了带上

问题

- 路由与菜单数据结构不一样，路由需要一个layout component，作为父节点，而菜单则是不需要



## 菜单

需求

- 渲染

然后再生成菜单记录，然后把菜单记录保存起来

实现思路

- 
- 

注意

- 返回的path不是完整的而是一部分，要自己手动处理一下，完成拼接或者是后端拼接好

```js
menu: {
    name: t('routes.dashboard.dashboard'),
    path: '/dashboard',

    children: [
      {
        path: 'analysis',
        name: t('routes.dashboard.analysis'),
      },
      {
        path: 'workbench',
        name: t('routes.dashboard.workbench'),
      },
    ],
  },
```

## 权限



## 样式



## mock



## 图标



## 国际化



## 自定义组件



## 异常



## 路由动画

：口诀（rtkc，router-view、transition、keep-alive、component），不能给router-view写key，写了动画就失效了

transition必须在外层，不然会不生效

多个文件依赖同一个文件

：里面的变量是不是共享的？是，因为只导入一份了，a、b都依赖于c



## 问题

什么是混合导航？

- 顶部是一级导航，左侧是二级导航
- 不过我们一般只关注左侧导航即可







