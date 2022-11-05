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

：注册路由、多级路由、icon、刷新、跳转、外链、tagview

**注册路由**

- 白名单（默认需要注册的，比如login、404、redirect、其他无需权限访问的页面）

**重置路由**

helper有啥用？



**刷新**

**icon**

**跳转**

**外链**

**tagview**



## 菜单

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

