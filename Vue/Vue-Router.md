vue-router能解决什么问题？

学习要点

- 

教程

- [基本操作](https://juejin.cn/post/6964779204462247950#heading-11)
- 常见问题：https://juejin.cn/post/6864055255932502030
- 源码：https://juejin.cn/post/6880529850159874062
- 面试题：https://juejin.cn/post/6844903945530245133

## 主题





## 问题



刷新后路由记录会丢失，所以需要重新添加

- 在permission guard上添加
- 然后继续next到指定的地址，这样才能跳转跳转过去

routerview是只能针对一层的，如果路由记录有子节点，那么就需要再写一个routerview了

