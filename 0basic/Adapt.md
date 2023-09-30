为什么要引入适配，他能解决什么问题

学习要点

- 适配的基本概念：dpr
- 常用的适配方案
- 特定机型的适配
- 测试适配的方法

教程

- 

常用的适配方案

- flexible+flex+px+rem（旧方案）
- 重点：vw/vh，结合postcss-px-to-viewport使用（新方案）

## 问题

#### 响应式

响应式与自适应的区别？

- 响应式是针对pc和移动端的
- 而自适应则是只针对pc或移动端的

结构、内容、布局

- 结构：是固定的，如一个房子肯定有厨房、厕所、卧室
- 布局：对结构内容的排版（大小，方位）
- 先分析、写结构、在写布局

栅格系统

：它是响应式布局的一种实现方案

行是可以是有无数行的，而列则是不会，一般被划分成24列（也可以分成12，4，3，2）

栅格系统针对的对象是容器，而非屏幕，容器不一定占满屏幕

屏幕按尺寸分为5种：超小xs、小sm、中md、大屏lg、超大屏xl

- 屏幕越小，一行显示的内容越少（一行显示1个、2个），屏幕越大，显示越多，这才是合理的
- 从超小屏开始考虑，移动端优先

样式的一些重置，如图片边框、a链接默认、list的默认样式list-style:none

如何扩大可点击区域？设置高度为100%（相对父容器的），这样就不用点击元素本身的时候才能触发

动画是怎样是怎样触发的？

- 通过添加和移除class来触发

为什么他的写法是两层容器，一个Container，里面是row，我写的话则是直接Container

#### 移动端

视口viewport

meta标签可以存在多个，它只是为了描述一个属性值、对象值，

```html
<meta name="viewport"，content="width=device-width,init-scale=1,user-scable=1,init-scalable=1,maximum-scalable=1,miximum-scalable=1">
```

为了兼容性会重复一些属性

获取视口宽度：let viewWidth=window.documentElement.clientWidth||window.innerWidth

获取dpr：let dpr=window.devicePixelRatio

总之你要知道物理像素是固定的，你缩小的话，一个css像素对应的物理像素变少了（这样才会缩小），所以你就需要用多几个css才能描述完整，放大则是你一个css像素

设备独立像素是一个特定值，如375*667

