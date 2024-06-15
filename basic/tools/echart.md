本文档主要书写一下echart的一些使用技巧

教程

- 官网：<https://echarts.apache.org/handbook/zh/concepts/axis>
- echarts demo网站：<https://blog.csdn.net/qq_46034942/article/details/123660953>
- 根据数组去生成一组echarts图例：https://www.cnblogs.com/ren17/p/12836005.html
- 快速查找效果：[全网echarts案例资源大总结和echarts的高效使用技巧（细节版） - 掘金 (juejin.cn)](https://juejin.cn/post/7078834647005822983)



## 关注点

如何学好使用echarts

- 明确概念，知道哪个属性负责哪个配置
- 多种实现方式
  - 比如富文本不支持，你可以考虑搞成主+副标题的方式来实现
  - 部分可以选择跳过，因为实现的时间精力成本太高了，不划算啊

难点

- 响应式布局
- 性能优化
  - 大量数据如何处理？

- 数据同步



## 响应式布局

通过缩放即可，就不用考虑响应式布局了





## 性能优化

比如处理大量数据时

- 数据方面：数据的过滤
- 渲染



## 数据同步

方式1：定时器

场景

- 实时性要求不高

方式2：websocket

场景

- 实时性要求高

可以多个图表对应一个ws连接

- 

服务端推送的数据，也是要转成json对象的

- 一般是推全量数据，比如给我返回最新的5条数据

更新渲染？

- 调用一下setOptions即可



## 问题

常见问题

- 不知如何配置
- 拿不到数据
  - 注意他取值的方式，直接写{value}即可，不是用js的变量取值方式
- 配置不生效
  - 配错了对象
  - 值写错了
  - 不支持的配置



formatter、rich
：formatter负责写模板，而rich则是负责控制样式

legend与tooltip的区别？
：legend是图例组件，可以控制某一组数据是否显示，tooltip是提示框

常见配置

- 双y轴
  - 把yAxis配置为一个数组
