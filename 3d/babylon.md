本文档主要书写一些babylon的使用方法，以及一些常用的方法，以及一些常见的问题

# 教程

- 入门：<https://juejin.cn/post/7208455629819019322>
- 官网：<https://doc.babylonjs.com/features/introductionToFeatures/chap1>
- 中文文档
  - <https://doc.cnbabylon.com/7-0-materials/>
- 项目
  - demo：<https://www.babylonjs.com/community/>
  - <https://example.cnbabylon.com/>
  - <https://github.com/Symbitic/awesome-babylonjs>

# 驱动问题

babylon能做什么？

- 游戏建模
- 交互式应用程序
- 3d建模

babylon与threejs的区别，各自有啥优缺点？分别适用于哪些场景？
：<https://www.zhihu.com/question/457815533>

- babylon是一个游戏引擎，threejs是一个3d渲染引擎
- threejs有功能很多是依赖插件，而babylon是自带的
- 使用场景
  - babylon：游戏、交互式应用程序
  - threejs：3d建模

学习的目标是什么？需要能做到哪种程度？

- 能够完成交互式应用程序的开发
- 简单设置一下模型

3d交互式应用程序的开发工作流？

核心对象有哪些？

- 场景
- 灯光
- 摄像机  
- 网格
- 材质
  - 纹理  
- 模型
- GUI
- 环境
- 动画
- 精灵
- 粒子
- 物理
- 雾
- 阴影
- 后期处理

哪里可以看demo？

- playgroud
- 还有api里面都可以看demo

数据问题

- 数据结构
- 数据的存
- 取

常见的效果有哪些？

右侧的编辑器由哪些模块？

- nodes
- merterial

3d这块很复杂
：靠猜是很难前进的，要看下专业的课程

# 坑

:主要记录一些容易被误导的地方，还有怎样避免？

不要去关心怎么网格怎么构建、怎么组合的、的问题，模型一般是有专门的软件来生成的，比如blender，3dmax，maya，sketchup，等等，你只需要关心怎么加载就行了
：因为可以通过拖拽来调整，你只需要关注怎么去移动、旋转、缩放

# 场景

# 网格

：我们移动的时候，只是移动了视角，并不是旋转了网格，要旋转网格，只能是先选中网格，然后再旋转

创建

- 盒子：MeshBuilder.CreateBox
- 圆：MeshBuilder.CreatePhere
- 平面：MeshBuilder.CreateGround
- 面板：MeshBuilder.CreatePlane

怎样关联材质
：通过material属性来指定

网格绑定另一个网格？
：可以通过parent属性

# 材质

：美化物体的，而且跟灯光有关系的，不同的材质对灯光会有不同的反应，包括颜色、光照、透明度、纹理等等，

创建

- 标准材质：StandardMaterial

怎样关联纹理？
：通过纹理相关的属性去绑定，如diffuseTexture属性、bumpTexture属性来指定

有时候不会显式的创建材质

- 比如在创建网格的时候，会自动创建一个材质，这个材质是标准材质，然后会把这个材质赋值给网格的material属性
- 有时候则是通过创建纹理的方式来创建材质，比如创建纹理的时候，会自动创建一个材质，比如
  - BABYLON.GUI.AdvancedDynamicTexture.CreateForMesh(mash);

材质可以设置颜色，而纹理也可以设置颜色，那么这两者有什么区别？
：材质的颜色是整个网格的颜色，而纹理的颜色是网格上的纹理的颜色

# 纹理

：用来设置贴图的，还能够设置文字和图片

由几种创建方式，分别应用与哪些场景？
创建

- 静态纹理：Texture
- 动态纹理：DynamicTexture

指定纹理

- 漫反射纹理diffuseTexture：
- 凹凸纹理bumpTexture：
- 镜面

为啥纹理不去设置drawText，就无法显示？

文字：drawText
图片：drawImage
背景色：

- 也是通过drawText来设置的
- 或者是通过context来修改，先获取上下文，通过上下文去设置背景色，还要设置背景色的大小

纹理可以直接绑定网格：通过createForMesh来创建纹理

动态纹理与静态纹理区别？

- 灵活性：动态纹理可以动态的修改，比如文字、图片、背景色等等，而静态纹理则是固定的
- 性能：动态纹理的性能比静态纹理要差
- 内存：动态纹理的内存比静态纹理要大

# 动画

# 场景

：什么情况下需要引入多场景，切换场景？

# 相机

- UniversalCamera：通用相机
- ArcRotateCamera：弧形旋转相机

# 灯光

：没有灯光，全部都是黑色，默认应该创建白光

创建

- 点光：
- 聚光：
- 平行光：
- 半球光：HemisphericLight

什么时候需要多灯光？
：当场景比较复杂的时候，需要多灯光

# GUI

：图形化用户界面，有2d、3d的，默认是全局的，还可以跟网格绑定，以纹理的形式

关注点

- gui渲染
  - 绑定材质
  - 位置
  - 大小

创建

- 动态纹理
  - GUI.AdvancedDynamicTexture
  - GUI.AdvancedDynamicTexture.CreateFullscreenUI
  - GUI.AdvancedDynamicTexture.CreateForMesh
- 容器类面板：
  - 栈面板：GUI.StackPanel.CreateStackPanel
- 按钮：GUI.Button.CreateSimpleButton
- 文字：GUI.TextBlock.CreateSimpleText
- html：可以直接用document.createElement来创建，然后再document.body.appendChild来添加到页面上

设置大小

- 设置宽高：width、height、zIndex

设置位置

- 设置位置：top、left、bottom、right

gui一定要跟纹理绑定吗？我想直接跟网格绑定
：建议跟纹理绑定，因为材质是跟网格绑定的，而且材质可以跟纹理绑定，而纹理可以跟gui绑定，所以最好是跟材质绑定

AdvancedDynamicTexture有啥用
：可以用来创建高级的GUI+动态纹理，可以提供用户交互，支持实时修改

为啥gui属于纹理？
：因为纹理代表的是贴图，gui也是贴图，所以gui也是纹理

面板与按钮有啥区别？
：面板是一个容器，可以放置多个按钮，而按钮是一个按钮，只能放置文字

高级动态纹理区别有啥？

给模型绑定gui纹理

- 方式1：创建一个平面，然后设置平面的纹理，然后把平面绑定到模型上
- 方式2：给模型创建一个gui纹理

gui 可以链接到mesh上

- 创建全局的gui
- 通过linkWithMesh来绑定mesh

有些gui是属于网格类型还是gui类型？
：有些gui是属于网格类型，有些gui是属于gui类型

# 问题

为什么要有网格、摄像机那些对象？

- 有网格来构建物体
- 有摄像机才能移动
- 有光源才能

创建的时候

- 构造时
  - 要不要依赖某些对象
  - 考虑一下要不要关联到某些东西，比如注册到谁谁身上

有没有一些默认行为？

- 比如只有一个摄像机的时候，就默认用这个摄像机
- 比如只有一个场景的时候，就默认用这个场景

babylon中的长度单位是啥？

为啥网格到他的背面是看不到的？

旋转时候是在移动摄像机

为啥光源这么近，还是
光源是距离场景的距离，还是距离谁？

材质material和纹理texture的区别？
：<https://blog.csdn.net/UIUCGOGOGO/article/details/82749171>

- 材质material是对物体的描述，比如颜色、光照、透明度等等
  - 通过材质去关联纹理
- 纹理用于描述对材质的进一步描述
  - 纹理只是材质的一部分而已，只是纹理可以单独定义

为什么小图要叫做sprite？
：因为出自sprite技术，而sprite技术本身则是用来处理自由活动对象的，这个自由活动就叫做精灵

inspector是啥？
：属性检查器，是一个调试工具，可以用来查看场景中的对象，以及还可以修改对象的属性

gui与ui是一个意思
：<https://www.zhihu.com/question/20366692>
：都是指用户界面

为啥控件要叫做控件？
：因为控件是用来控制的，比如控制显示、控制隐藏、控制位置、控制大小、控制颜色、控制透明度等等

为啥控件要跟纹理关联？
：因为控件是要显示的，而显示的内容就是纹理

什么时候需要修改this指向？
：<https://juejin.cn/post/7023724979099435044>

怎样才能通过script引入全局对象？
：

除了动态生成，还可以用静态生成+动态挂载（根据选中的对象）的方式替代

模型怎样去关联材质？
：通过模型的material属性

模型怎样去关联纹理？
：你只能模型去关联材质，通过材质去关联纹理

Gizmo是啥？
：线框，可以用来调整大小、位置、旋转

能否从画布中解析出他里面的元素来，而不是我们去维护所谓的结构来？

properties与Accessor 有啥区别？

创建的时候，要把一些行为分离开来

- 创建模型和维护数据要分开
  - 比如创建模型的时候，只负责创建模型
  - 维护数据可以统一放到后面去做
