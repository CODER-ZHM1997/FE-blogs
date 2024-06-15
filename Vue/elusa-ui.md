主要写一个自己封装一个组件库，命名为elusa-ui



## 关注点

大致步骤

- 使用vite创建一个vue项目
  - 应该是新建一个pnpm项目，它根目录不是vite项目
- 搭建monorepo项目
  - 创建配置文件：pnpm-workspace
  - 创建packages目录
- 封装一个简单组件，如button
- 导出组件，暴露安装方法
- 打包
- 发布到npm
- 文档相关的：可选
  - 挂到github pages里

怎么模仿element-plus?

- 有些简单的技巧可以学一下
- 复杂的就不用模仿，第一你学不会，第二你碰到的问题很难解决，甚至是假问题



打算先封装那些组件？

- button
- button group
- icon
- card
- 



## 坑

有时候类型不识别，你重启以下服务即可

- 

有没有啥快速生成sb（storybook）用例的方法？我发现一个一个写太费劲了点

加入新的模块，比如elusa-ui/utils

- 需要运行以下，pnpm i

为啥样式会丢失？

- 我在vue文件中已经导入了



## 技巧

如果script逻辑比较多，可以单独抽离到一个ts文件里面去

- 比如抽离到button.ts文件中



## 亮点

- 使用ai助手进行需求分析
- 使用tdd模式驱动开发，通过vitest进行单元测试，
- 使用story-book测试和编写文档
- 对打包进行分包，支持按需引入
- 使用git-actions来ci/cd，比如自动化npm包发布，自动化线上部署
- 使用css模块化，遵循bem规范
- 支持组件多种方式提供内容，比如props和slot
- hook
- 



## :star:构建monorepo项目

步骤

- 直接pnpm初始化一下
- 编写workspace配置：pnpm-workspace.yaml
- 创建packages目录，在目录下新建模块，并执行pnpm初始化
  - 



## 需求分析

提问格式

- 身份+背景+需求+输出格式
  - 你是产品经理，需求：设计一个button组件，要求输出为md格式
    - 可以采用复制粘贴的形式，进行提问
  - 你是测试工程师，需求：基于以下需求设计一组测试用例，要求使用vitest

需求文档与使用文档是同一回事吗？

- 



## :star:封装组件

流程

- 需求分析
- 类型定义
- 编写组件逻辑
- 编写入口文件，里面导出组件

#### button组件

plain的特点：浅色背景，文字突出，有颜色了，不再是白色了



#### icon组件

通过fontawesome组件实现

教程

- [Set Up with Vue | Font Awesome Docs](https://docs.fontawesome.com/web/use-with/vue/)

实现步骤

- 安装包：npm i --save @fortawesome/fontawesome-svg-core @fortawesome/vue-fontawesome



#### collapse组件

：需要2个组件，而不是1个组件+一个配置来完成





## :star:构建play模块

：为了能够快速查看组件效果



## 构建测试环境

：可选，为了更加规范的编写组件

如何搭建？

- 其实是只需要搭建tdd测试环境即可





#### 编写单元测试代码

根据gpt生成的需求文档来生成测试代码

- 

常见的测试动作

- 

如何编写测试代码？

- 推荐：通过详细的描述，通过gpt自动生成
  - 但是我不知道他是怎么编写描述的
- 自己手写

有些测试用例通不过，只是因为你的测试代码写的有问题

- 比如disabled属性，根本就不是通过getAttribute来获取的，而是通过点击事件和class属性来测得
- 通过getAttribute来获取的到的是空字符串



测试用例怎么写？

- 是判断class，还是text？



难点

：难点不一定是重点

- 测试动画
- 测试事件





## 构建doc模块

：即构建组件文档，这是给用户看的，但是我们平时更加关注的是源代码和测试用例，这个doc模块可以后面再补充

方式

- story-book
- vitepress
  - 静态网站生成器




#### story-book

：用于构建组件文档，还可以用于测试

教程

- [Storybook Tutorials](https://storybook.js.org/tutorials/intro-to-storybook/vue/zh-CN/get-started/)
- [想给组件加上文档？ 试试 Storybook - 掘金 (juejin.cn)](https://juejin.cn/post/7299743820434309147?searchId=202405301843043ACDF664AB407F7983A7)

使用场景

- 对打包后的组件进行测试

常见操作

- 提供属性
- 提供插槽

搭建

- 在play文件夹下，pnpm dlx storybook init



如何快速生成storybook用例？

- 

## 构建theme模块

：可以配置主题





## :star:打包

关注点

- 会打包那些东西？
- 导出了那些东西？

如果你在vue文件中直接导入dev类型的包

- 那dev包确实会被打包进生产包中
- 解决
  - 在vite中指定一下build》exclude
  - 避免在源代码中导入

分包问题？

- 暂时不用考虑

入口文件里面一般做导出操作

- 不然你没法从入口文件拿到什么东西

怎么缩小打包范围？

- 通过指定files属性：一般是指定一下dist即可，packages.json文件默认就会上传的
- 通过编写npmignore文件



bumpp什么时候调用？

- 只有发版的时候才调用吗？
- 



## :star:发布到npm

通过github action发布到npm或者是github page

- 编写workflow
- 配置token
  - 生成：通过github个人页的deploy
  - 配置：配置到项目里

- 





## 发布到github page





## 插件

#### move-file

：文件移动



#### npm-run-all

：控制多个脚本同步或异步执行，而且可以忽略环境差异

可以用一些符号来代替这些工具

- [npm并行&串行执行多个scripts命令-腾讯云开发者社区-腾讯云 (tencent.com)](https://cloud.tencent.com/developer/article/1634505)



- 



## css模块化

如何规范点命名class，比如要用多个短线连接

- 我喜欢用中划线，其实就是加--即可，比如el-button--primary

css模块化还是很神奇的东西

- 做的比较少



css属性值取决于变量，而不是写死的

- background-color: var(--er-button-bg-color);

而变量又取决于另一个变量

- 比如--er-button-bg-color: var(--er-color-$(val));

通过类的优先级来覆盖变量定义







## 问题

工作流是怎样的？

- 组件开发：开发的时候就能预览，还是要打包后才能预览？

  - 能直接预览：它在play中写的是直接的组件路径，所以能够预览

  

[基于Vue封装一个自己的UI组件库之项目篇 - 掘金 (juejin.cn)](https://juejin.cn/post/7054455703599054862?searchId=2024052718213550CEB8F7F744956DCCE4)

- - 



在ts文件中提示找不到vue模块

- 可能是没配置好tsconfig文件

不是说安装在根目录就可以实现模块共享了吗？为啥还要在子模块单独安装一下？

- 不用，直接安装在根目录即可

为啥有些package中会安装node_modules，有些则是没有

- 因为他们的内容不同，如果没有指定依赖就是不存在这个目录

组件必须是打包后才能引入，还是直接可以引入？

- 直接可以引入，看你直接导入源代码还是打包后的代码，路劲要写对
- 

本地安装自己的库安装失败？

- 需要补充一下后缀，比如workspace:*

如何打包ui库？

- element-plus：它是单独写了一个internal模块取做这件事，而且
- zhmui：采用根目录下做打包，单独放到一个模块做这件事把

为啥ui组件发布到npm然后下载到安装，会报错啊，

- 

类型提示问题？通过自动生成类型声明

- 通过vite插件

将多个脚本串联或并联起来？

- 通过插件

样式导入问题？

- 

开发者是在play中预览组件吗？

- 

路径问题导致的一些问题

- 类型声明找不到
  - 需要用相对路径，不要写绝对路径
- 样式丢失
  - 

文档doc与演示play有啥区别？

- 文档没法有交互
- play可以交互的玩一下

在play直接写elusa-ui来导入，岂不是只有打包后才能看到效果？

- 

github actions能否做有交互性的任务？

- 比如我要指定版本号

vue文件没有ts类型检查的支持

- 修改tsconfig文件，加上vue文件的监听即可，然后重启vscode

```json
  "include": [
    "env.d.ts",
    "packages/**/*.ts",
    "packages/**/*.tsx",
    "packages/**/*.vue",
    "packages/play/src/stories/*.stories.ts",
    "vitest.config.ts",
  ]
```

