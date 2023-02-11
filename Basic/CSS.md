本文档意在：书写css的常用技术点和注意事项

教程

- 入门：https://juejin.cn/post/6905539198107942919
- flex布局：https://juejin.cn/post/7019075844664459278
- 常用的库：https://juejin.cn/post/6844903683411410951
- https://juejin.cn/post/6941206439624966152
- 常见布局
  - https://juejin.cn/post/6844903574929932301
  - https://juejin.cn/post/6844903491891118087

- 视频：https://www.bilibili.com/video/BV15V411E7co/
- 试题：https://juejin.cn/post/6844904185847087111
- 技巧：https://juejin.cn/post/6844903926110617613
- windicss
  - 官网：https://cn.windicss.org/guide/
  - 入门：https://juejin.cn/post/7071045543639646239
- 动画
  - https://juejin.cn/post/6889226357851553805
  - https://juejin.cn/post/6844904062689738765

- 伪类、伪元素

  - [两者区别、常见的伪类、伪元素](https://juejin.cn/post/6976646049456717838)
  - [三角、箭头、扇形、梯形、椭圆](https://juejin.cn/post/6844904062593269768#heading-4)
- animate：

## 难点

- 响应式怎么实现？常见的实现方式和他们的优缺点是啥
- 移动端如何做适配？
  - 可以用：postcss-px-to-viewport

## CSS

#### 布局

常见的布局？

- table布局
- flex布局
- grid布局

[浮动与定位的区别？](https://blog.csdn.net/weixin_44546554/article/details/87697636)

- 

[浮动](https://www.jianshu.com/p/09bd5873bed4)

：会脱离文档流，并向左或者是向右浮动，知道碰到父容器或者是另一个浮动元素为止

浮动元素肯定是加到普通元素前面去的，加到后面都没影响了，

[浮动会产生什么影响？](https://www.jianshu.com/p/4ea182f0ad12)

- 不占据高度，可能使得父容器高度坍塌
- 对周围普通（非浮动）元素的影响
  - 对于块级元素，则普通元素会在浮动元素的下层，而且无法通过z-index修改，但是他里面的文字或其他行内元素会环绕着浮动元素（这是float属性最初的目的，为了创建环绕图片的文字）
- 对于兄弟元素的元素的影响
  - 

为什么要清除浮动，什么时候需要清除浮动？

- 因为跟在浮动元素后面的普通元素会受到浮动元素的影响

[width设置为auto有什么用？他与width:100%的区别](https://juejin.cn/post/6894068581854478349)

- auto还是挺有用的，哈哈

[最强的布局grid布局](https://juejin.cn/post/6854573220306255880)

- flex是针对一维的
- 而grid则是针对二维的

#### 盒子模型

标准模型和ie盒子模型

- 区别：宽高的计算方式不同，ie盒子的宽高是包括content、padding、border的
- 浏览器默认的盒子模型是标准盒子模型

BFC和IFC

- 

##### BFC

：

bfc的特点

- bfc元素不与float元素（虽然float元素也算bfc元素）重合，
- 

如何获取和设置元素的宽高

- dom.style.width/height



#### Image

object-fit

- contain：保持宽高比，缩放，直到有一边刚好相等
- cover：保持宽高比，缩放，多余的被裁剪
- fill：不保持，直接填满容器
- none：啥都不做

圆形（只对正方形生效）

- border-radius: 50%



啥是响应式布局？

：https://juejin.cn/post/6844903814332432397

- 显示器或者是浏览器窗口的不同，大小和布局会进行一个调整

max-width何时出生效？是不是写了max-width就不会有写width了？



## Flex布局

flex的子元素称为flex item

常见属性

- 
- justify-content
  - 主轴方向：默认靠左justify-content:flex-start，靠右:flex-end
- align-items
  - 交叉轴方向：居中center，默认strech（高度如果未设置，则item占满整个容器高度），
- align-content
  - 是针对多行的

flex布局只能父容器影响子容器，不会影响到孙元素

flex-shink

#### 基础动画

@keyframe：关键帧



#### css的坑

- 伪元素要写content:''，至少为空字符串，不写的话，则是默认没有元素



全局的样式：global.css

重置样式：reset.css

- 或者是用normal.css库

css模块化？

- 全局

#### 伪类

- 伪类可以方便的设置元素的状态
  - link、hover、active、
- 伪元素可以方便的插入元素
  - 常用的伪元素：before、after、first-letter、first-line
- [伪类、伪元素？](https://juejin.cn/post/6844903654756089864)，常用特效

伪类是相当于添加类才能达到的效果

伪元素则是相当于添加元素才能达到的效果

#### 

## sass

：是一种css的预处理器，减少css的重复代码，让css的编写更加高效和模块化，

主要功能：加了嵌套、变量、内置函数、混入、继承、选择器

[常用操作](https://juejin.cn/post/6844903859010158600#comment)

- [官方文档](https://www.sass.hk/guide/)

[指令？](https://www.jianshu.com/p/e29a32d851af)

- @use是引入外部文件
- @mixin是定义方法
- @include则是调用方法

js中指令与函数的区别？

- 指令是全局的，不需要导入
- 我只知道指令与函数作用基本一直，只是指令形式不同，有些是v-开头，有些是@开头

为啥有些class会找不到对应的定义？



## less

[less常用操作](https://juejin.cn/post/6844903520441729037)

文件导入：@import xxx

[指令与函数的区别？](https://blog.csdn.net/Rayshaan/article/details/111636018?spm=1001.2101.3001.6650.8&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-8-111636018-blog-104718018.pc_relevant_multi_platform_featuressortv2dupreplace&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-8-111636018-blog-104718018.pc_relevant_multi_platform_featuressortv2dupreplace&utm_relevant_index=13)

：我们提到的指令是内置的指令，如@mixin、@import，用于定义和调用某些变量或函数的

#### Ts

vite直接支持是用ts，但是它只编译，不检查，你看到的飘红是因为vs自身的支持

- vite虽然支持ts，但又不是完全支持，有些ts的功能在vite项目中不能用



## WindiCSS

常见操作

- 通用
  - 字体样式、排版有关
- 集成
- 基础功能
  - 自动值推导：数字、百分比、尺寸（后缀）、颜色、定位、变量
  - 可变修饰组、shortcut
  - 响应式设计
- 布局
  - 容器
    - 块级、
  - 定位
  - flex
  - grid
- 边框
- 背景
- 动画







