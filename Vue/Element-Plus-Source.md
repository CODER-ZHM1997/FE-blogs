本文档主要编写elementPlus的源码

教程

- elementPlus的源码解读：https://juejin.cn/post/7158846359175430158
  - 视频：https://666java.com/8489.html

- https://juejin.cn/post/7017957779176423454

- 如何贡献：https://blog.csdn.net/Ther_su/article/details/110633311

- popper（弹框）
  - https://bbs.huaweicloud.com/blogs/326994
  - https://juejin.cn/post/6904483260110209037

## 问题

通过指定prop，来修改变量值，而style又是通过读取变量值来定义的

样式全都是按全局的style来加载了，那为啥还要定义自己的style文件

同时支持prop和slot时，slot的优先级高，而且slot的默认值为prop

- 注意下多个slot的场景

如果属性需要暴露出到父组件去传入，则是需要将属性暴露出来，然后当成父组件的属性（而且可能是多个组装到一起的）

- 参考tooltip，

onXXX本身是个函数，而不是参数是函数

为啥要把根元素作为组件？有啥好处？

- 可以

怎样去修改他的默认样式？

- 有些组件是不能局部修改的，他是要全局修改的，比如弹窗组件
- 一般用::v-deep来修改

role属性有啥用？

归到vue包有啥用？

- 主要是跟vue相关的一些配置，比如构造props、install方法

组件与插件的区别？

那些属性应该暴露出来？

- 暴露出来的el、size、type有啥用？

props是啥类型？仅仅是普通对象

为啥tooltip要把trigger和reference（引用元素）分开，不是同一个东西吗？

- 因为trigger是

为啥有些hook放到组件下，而有些确实放到项目根目录下的hook目录？

为啥要自定义属性构造器？

- 

dialog为啥要分为2个变量去控制？visible和modelValue

- 为了绕开属性不能逆向修改的机制，visible可以随便改，而modelValue则是不可以逆向改动

用inject来实现初始化

- 比如dialog的style就是通过inject来初始化

draggable是怎么实现的？

- 通过useDraggable来实现

如果一个class在当前组件找不到咋办？它会向上查找吗

- 

mouse-down和mouse-up长按的时候会触发吗？

- 长按不会触发

组件根元素为组件有啥用？

el-focus-trap有啥用？

- 填充背景，设置内容的居中样式

createVNode真的要好好看下

- 连事件、class、style、slot都可以用它来注册

全屏的实现机制

- 通过修改css变量，设置为100%，margin-top为0

关闭时销毁

- 只需要在el-dialog-content上注册一个v-if，用一个shouldRender变量去控制即可

slot元素上绑定属性和事件有啥用？

namespace和block的区别？

- block又是块名称（与命名空间有关的），只是刚好重名了，
- element是附加元素，比如el-button下的text



- 

属性的aria前缀有啥用？accessible rich internet 

：https://juejin.cn/post/6844903875615391752

createVNode（与h函数相似）有啥用？

- 返回VNode，VNode有啥用？
- 动态的创建元素，还有动态指定style和props，还能指定子节点



如果不写template，setup要返回啥？

- 可以返回一个函数，函数本身则是返回VNode
- 或者是你看下setup函数的声明

拿到子节点（插槽格式）

- 可以用renderSlot，default的方式

为啥有时需要为把handler定义为变量，而不是用事件的方式去触发？

有啥把把函数以参数形式暴露出来？比如el-dialog的关闭确认

- 因为有时候我不能确定什么时候调用这个函数！所以需要把函数暴露，给用户去调用

为啥要把closed和visible分开？不是同一个东西吗

- 

withCtx和withDirectives有啥用？

## 组件

#### button

需求

- 见文档



#### Container



#### avatar

- 为啥要有hasError，其实是加一道保险，出错了默认显示一下插槽内的东西



#### popover

：与tooltip差不多，只是触发方式不同



#### tooltip

需求

- 可配置开关（而且可以自定义出发方式，默认为hover），默认是自动开关
- 指定内容、位置，而且可以配置是否解析为html
- 自定义主题
- 配置虚拟触发器



#### alert

需求

- 指定type、icon、title、desc
- 可关闭



#### dialog

需求

- 可打开、关闭
- 弹窗结构：title、content、footer，都可自定义
- 可配置关闭时销毁
- 可拖拽



#### drawer

需求

- 与dialog相似
- 可以设置位置



#### divider

需求

- 能够配置分割内容和位置
- 能够配置样式（点/直线，水平/垂直）

实现思路

- 结构
  - 父容器负责边框，子容器负责内容



## 