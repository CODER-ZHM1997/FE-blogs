[TOC]

## css

伪类、伪元素

- [两者区别、常见的伪类、伪元素](https://juejin.cn/post/6976646049456717838)
- [三角、箭头、扇形、梯形、椭圆](https://juejin.cn/post/6844904062593269768#heading-4)
  - 伪类可以方便的设置元素的状态
    - link、hover、active、
  - 伪元素可以方便的插入元素
    - 常用的伪元素：before、after、first-letter、first-line
  - [伪类、伪元素？](https://juejin.cn/post/6844903654756089864)，常用特效
- 伪类是相当于添加类才能达到的效果
- 伪元素则是相当于添加元素才能达到的效果

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



#### 坑

- 伪元素要写content:''，至少为空字符串，不写的话，则是默认没有元素





## sass

：是一种css的预处理器，减少css的重复代码，让css的编写更加高效和模块化，

主要功能：加了嵌套、变量、内置函数、混入、继承、选择器

[常用操作](https://juejin.cn/post/6844903859010158600#comment)

- [官方文档](https://www.sass.hk/guide/)

[指令？](https://www.jianshu.com/p/e29a32d851af)

js中指令与函数的区别？

- 指令是全局的，不需要导入
- 我只知道指令与函数作用基本一直，只是指令形式不同，有些是v-开头，有些是@开头

## less

：狗日的，antd选less

[less常用操作](https://juejin.cn/post/6844903520441729037)

## animate

：动画库

教程

- [官方文档](https://animate.style/)



## 常用的库

[很全](https://juejin.cn/post/6844903683411410951#heading-5)

## 技巧

关键词：布局、浮动、定位、

[常见的布局](https://juejin.cn/post/6844903491891118087#comment)
