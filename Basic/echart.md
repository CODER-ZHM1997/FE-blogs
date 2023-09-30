本文档主要书写一下echart的一些使用技巧

教程

- 官网：<https://echarts.apache.org/handbook/zh/concepts/axis>
- echarts demo网站：<https://blog.csdn.net/qq_46034942/article/details/123660953>
- 根据数组去生成一组echarts图例：https://www.cnblogs.com/ren17/p/12836005.html

# 驱动问题

如何学好使用echarts

- 明确概念，知道哪个属性负责哪个配置
- 多种实现方式
  - 比如富文本不支持，你可以考虑搞成主+副标题的方式来实现
  - 部分可以选择跳过，因为实现的时间精力成本太高了，不划算啊

常见问题

- 不知如何配置
- 拿不到数据
  - 注意他取值的方式，直接写{value}即可，不是用js的变量取值方式
- 配置不生效
  - 配错了对象
  - 值写错了
  - 不支持的配置

配置技巧

- 有些是可以写属性名称，有些则是需要加点前缀
  - 比如title下，可以直接写textStyle，而在yAxis下，则是要加点前缀才行，比如nameTextStyle

- 有些是挂在到某个属性下才行，有些则是直接可以写

  - 比如legend配置定位相关的，则是直接写top、left之类的

我怎么知道取当前配置应该归属到哪个属性下？
- 多看核心概念，xAxis、yAxis、series

series，每个元素都对应一个序列，如果出现多个元素则是穿插其中的

# 问题

稀有名称

- 水球图

特殊echarts实现

- 可以通过找别人现成的改一下
- 很多也是通过添加配置，或者是关掉某些配置来实现的
- 通过ai的来进行图像识别来实现

formatter、rich
：formatter负责写模板，而rich则是负责控制样式

legend与tooltip的区别？
：legend是图例组件，可以控制某一组数据是否显示，tooltip是提示框

常见配置

- 双y轴
  - 把yAxis配置为一个数组
