主要记录一些element有关的问题

教程

- 合并行或列：<https://juejin.cn/post/6844904046717845517>
- xlsx：<https://docs.sheetjs.com/docs/getting-started/example#run-the-demo-locally>
- 集成百度地图
  - demo：<https://lbsyun.baidu.com/index.php?title=open/jsdemo>
  - vue3搭配的框架：<https://yue1123.github.io/vue3-baidu-map-gl/zh-CN/guide/quick-start>
- 富文本编辑器
  - <https://juejin.cn/post/7201883287937990712>
  - 推荐：wangEditor、tinymce
  - wangEditor：<https://www.wangeditor.com/v5/getting-started.html>
- 参数校验规则：<https://github.com/node-modules/parameter>
- 接口命名：<https://juejin.cn/post/6844903949095403528>
- 文件上传
  - <https://juejin.cn/post/6844904103961690126>
  - <https://juejin.cn/post/6844903991806197767>
- 文件下载
  - a标签、ajax：<https://blog.csdn.net/cdy_1/article/details/124983216>
- 异常处理：<https://juejin.cn/post/6993559990610952199#heading-2>
- restful的规范：
  - <https://www.cnblogs.com/chenqf/p/6386163.html>
- egg-bin与egg-scripts区别
  - <https://zhuanlan.zhihu.com/p/225717750?utm_id=0>
- 视频上传
  - <https://juejin.cn/post/7018760355056713742>
- 接口访问控制
  - <https://juejin.cn/post/6972790316332122120>
  - <https://juejin.cn/post/6844903925942845447>
- jwt
  - <https://javaguide.cn/system-design/security/jwt-intro.html#signature>
  - <https://juejin.cn/post/7110044736848658445>
  - token被盗的问题：<https://www.cnblogs.com/goloving/p/15143919.html>
- 密码加密
  - <https://juejin.cn/post/7011306453373812744>
  - 加盐：<https://juejin.cn/post/6844904005739495432?searchId=20230728110121FF1B61258EB8AF917CB5>
- 接口设计规范
  - <https://juejin.cn/post/7223046446940618808>
- 集群与分布式：<https://juejin.cn/post/6844903904971325454>
- 日志模块如何设计？
  - <https://juejin.cn/post/6943562255594160164>
- egg有啥缺点？
  - <https://www.zhihu.com/question/448856926>

# 弹窗 el-dialog

**表单数据清除**

清除方式

- 通过resetFields()方法来清除
- 蠢方法：是把原始数据抽离出来，然后使用JSON.stringify()和JSON.parse()来实现深拷贝

清除时机：监听关闭弹窗变量visibleRef，当visibleRef为false时，清除数据

打开修改弹窗：需要对数据进行回显，也要对填写的数据进行清除

- drawer通过暴露一个openDrawer
- 通过Object.assign()方法来完成回显
  - 但是要放到nextTick回调里面，否则会出现数据没有回显或者是数据无法清除的情况

resetFields不生效问题

- 只能够重置掉被prop标记的属性，未标记的属性不会重置掉

# 文件下载

# 拷贝树

数据库id、pid的记录构成的树，如何拷贝这棵树？

- 先拷贝父节点，然后再拷贝子节点
  - 递归的拷贝
- 最后执行insertMany即可

# 文件上传

大文件上传

上传交互
：

关注以下这几个属性

- action
- headers
- before-upload
- on-sucess
- auto-upload
- http-request

前端传参的问题

- 后端要的是数字而前端传过去的是boolean
  - 可以前端转成数字
  - 或者是后端转一下

写了http-request，action就报废了

**附件上传、回显的交互**
教程：<https://www.jb51.net/article/257538.htm>

需求

- 显示已上传的文件列表
  - 每个item都显示一下文件名、下载、删除

实现

- 文件列表，用自己的变量来维护，而不是用ele的file-list来维护
  - 文件item的属性：id、name、url

存可以全部存到一个变量，然后发请求的时候去一下你要的值即可

下拉框要不要默认选中一个？
：不需要

# 图片上传

需求

- 支持每次单图上传
- 支持多次上传图片
- 支持回显

# 视频上传

# vuex

- 不拆：聚合到一个变量，方便赋值和取值
- 拆：访问的时候，少一层嵌套

下拉选项统一用options来存储，我不管你有哪些option，都放到这里
如：const options=reactive({})

对于日期范围的字段，比如time_period，但是表里面是需要用到start_time和end_time的，那么这个字段就需要拆分成两个字段，一个是start_time，一个是end_time

- time_period就用计算属性来搞，设置一下get和set即可
- 表单清除的时候手动清除一下拿两个字段即可

# 在线表格

采用luckysheet，之前关键字搜索搜错了

关键问题

- 要存哪些数据？
  - 一般是存一下表格的数据，然后再存一下表格的配置项
- 怎样提取数据？
- 初始化怎么做？
- 怎样合并单元格子？

新增复杂记录应该如何设计交互？

表格可以通过单击可以直接进入编辑状态吗？
：可以，用contenteditable属性

如果是渲染多个table，如何响应式的更新table？

把二维数组拆分成1维数组，就是坑来着，反而增加了很多维护工作
:

有时候创建与编辑的接口是不一样的

- 可能创建的时候只能操作一些东西，而修改的时候才能看到全部的结构

点击文案即可编辑，同时有双向绑定功能
:<https://www.cnblogs.com/charper/p/15055522.html>

二维数组的统计和维护好麻烦啊，是要平铺还是嵌套来实现？

- 又要前端交互显示
- 又要后端计算

叠加的时候注意下要初始化一下，设置sum为0
：不然会得出错误的计算结果

分类如果不要求关联的话
：可以当成备注属性，这样就不用建立二维数组了

- 删除分类：需要删除所有分类为这个的所有器件记录
- 修改分类：也需要修改所有分类为这个的器件记录

# 跨域问题

有些标签不会受到跨域的影响，比如img、link、script、iframe等

- 但是a标签是会受到跨域的影响的

# excel

可编辑实现方案

- 需要用到contenteditable属性
  - 但是这个属性是不会自动绑定的，需要自己写一个指令来实现
- 或者是通过在row对象上挂载一个标志位，用v-if来判断展示哪个元素，这样可以实现查看、编辑状态的切换
  - 数据更新请求：只需要在编辑状态时，点击一下保存按钮即可

select
：item的值为null时，会被认为没有选中

不用el-form的方式，怎么横向放多个item？
：用flex布局

横向的表格？没有表头
：应该用描述性列表

**导入**

有些内容时需要进行匹配的，比如填写的分组，需要匹配到对应的id

**导出**

导出格式

- excel
- pdf
- word
- html

导出范围

- 导出全部记录（不分页）
- 导出当前页的记录

# 代码编辑器

：在线(web)代码编辑器 monaco-editor

:<https://juejin.cn/post/6934153579900960782>
vue中使用：<https://juejin.cn/post/7150587036729737252>

JSON格式化问题

保存编辑器需要保存\r\n吗？

- 保存：则是json序列化报错
- 不保存：则是换行符丢失
- 推荐：保存，因为这样可以保证换行符不丢失

回显问题，传入新的内容没有触发更新

- 因为他的value绑定不是响应式的

但是会有切换的情况，所以要自己手动加点下拉框啥的

自动同步还是手动同步？
：不一定要选自动，因为自动可能会有性能问题，所以可以手动同步

组件什么时候要考虑抛出数据？什么时候自己维护即可？

- 抛出的时候，是要让父组件来维护的，因为父组件才知道要怎么处理这个数据
- 自己维护的时候，是要自己来处理的，因为自己知道要怎么处理这个数据

json序列化的问题

- JSON.parse 自己能够去除一些错误信息（如\r\n空格等），实现反序列化
  - 这样就不用自己去手动去除杂质了
  - 特殊
    - 属性名不写引号，或则是写单引号都会反序列化失败

el-form 为啥要写那么多属性，prop我觉得没必要的，model也没必要

- 属性总是校验为失败，可能是model没配置
- 属性校验不生效，可能是prop没配置
- validate函数总是为true，

看下数据交互是怎么做的？

- 存数据
- 取数据

# 访问控制

配置数据如何抽离？

- 哪些要抽？
- 抽到那里去？
  - 一般是新建一个xxx.data.js文件，或者是放到config.js里面去

# 表单校验

为啥选了内容还是校验不通过？

# 草稿功能

# 代码编辑器

monaco-editor 代码编辑器

# 富文本

采用wangEditor

打印的问题
：需要手动配置样式

预览或打印时样式丢失问题，比如表格
：可以自定义一些样式，然后导入即可，即可生效

## wangEditor

报错

- <https://juejin.cn/post/7255146019125887034>
  - 手动销毁一下即可

打印问题
：需要你另外加点东西

能够使用栅格系统吗？

能够引入轮播图吗？

# 数据字典

是否全部开放？

# 集成百度地图

集成流程

- 注册为开发者
- 申请密钥

GL版与非GL版的区别
：GL版是基于WebGL的，而非GL版是基于canvas的

关注点

- 地图
  - 可以控制样式
- 事件
  - 地图有关
    - 加载完成
    - 点击
  - 覆盖物有关的
- 标注
- 地图数据
  - 地址解析、逆解析

# el-description

如何控制一行有多少个item？
：通过columns

如何控制某个item所占据的列？
：通过span，而且还要关注一下它上一个item的span，因为span是相对于上一个item的

怎样去控制所占据的行？
：一般不用控制

# el-tree

添加排序功能
：让后端返回倒叙的数组即可，构造树的时候，sort大的先塞进去，这样就是倒叙了

设置当前选中节点
：

点击节点选中跟通过复选框选中有啥区别？
：点击节点选中，只能选中一个，而复选框可以选中多个，结果是一样的都是选中了

# el-cascade

级联与树有啥区别？

cascade需要考虑key吗？el-tree是需要考虑key的
：不需要，因为他是通过value来匹配的

# el-upload

需求

- 同时多图上传
- 支持回显
- 支持图片预览与删除

查看详情的时候，图片回显是怎样实现的？

- 用el-upload
  - 通过file-list，让他自己维护，然后提交的时候获取一下对应的id即可，不要自己再维护一个变量
- 用el-image

交互

- 看下带上传的表单应该如何交互？
  - 是每次自动上传还是手动上传？
- 要看下他编辑状态下，取消上传的时候，是不是会把图片删除掉
  - 我目前的是不会的
- 还有一种情况，新增记录的时候做上传，怎么主表id还没生成，要怎么插入呢？

问题

- 数据维护的问题，el-upload他其实是自己维护file-list的

不要用v-model，直接用modelList即可

# 在线客服

# 静态网页

可以引入蓝狐，可以支持根据ui设计自动生成静态代码

怎样批量的隐藏一棵树，或者是某个页节点？
：可以在构造树的时候，不塞入节点即可，
