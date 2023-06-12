本文档主要编写mongodb的入门

教程

- 入门
  - https://juejin.cn/post/7136365535796658183

- mongodb：https://www.mongodb.com/docs/v5.0/reference/operator/aggregation/group/

- mongose
  - 官网：https://mongoosejs.com/docs/documents.html
  - 中文网：http://www.mongoosejs.net/docs/documents.html
  - 入门：https://juejin.cn/post/7022851535461679141
  - 视频
    - https://www.bilibili.com/video/BV1R741157Rw
  - https://juejin.cn/post/6844904054196273159
  - 查询
    - https://juejin.cn/post/6844903858796232717
    - https://juejin.cn/post/6945723463516553224
    - https://juejin.cn/post/7065210967084236807
    - 聚合查询：https://juejin.cn/post/6917520923784380424
  - mysql和mongodb的区别和使用场景：https://juejin.cn/post/7185560357816795192
  - mongoose与mongodb的区别：https://segmentfault.com/q/1010000019863756
  - 表设计
    - mysql：https://juejin.cn/post/7147135702604447758
    - nosql：https://juejin.cn/post/6844903666260901896
    - https://www.bilibili.com/video/BV1C44y1f7Rb/
- 难点
  - 聚合查询aggregate？
  - 非关系型数据库如何设计表？



## 问题

#### 驱动问题

- mongoose与mongodb关系，需要区分吗？
  - mongoose主要是做一些校验啥的，而且做了一些封装，如同jq和js的关系
- 主要操作：就是CRUD
- 基础概念
  - 集合、文档、字段
    - 集合相当于json对象集合
    - 文档相当于一个json对象
    - 字段则是属性
  - 操作符
  - 支持哪些哪些类型呢？
    - 就是json的数据类型，注意支持null，不支持undefined
- 单表crud操作
  - api：cfud，本来是crud，这里则是cfud
- 表设计遵循的原则？
- 复杂查询有哪些？
  - 条件是动态组合的要怎么玩？
- 导入和导出
  - mongoose有这功能
- 如何快速调试？
  - 先初始化数据库
    - 然后在mongodb中来（用它的命令行或者是ui界面）来练习
    - 也可以通过egg的test工具来测试




如何减少设计上的一些失误？

- 改动真的很大的

非关系型与关系型数据库有啥区别？

- https://cloud.tencent.com/developer/article/1784274

账号密码是啥？

- 默认没有账号密码
- [设置账号信息](https://www.jianshu.com/p/79caa1cc49a5)
  - 连接数据的时候，只需要在协议那里补充账号密码即可

[mongodb和mongoose区别](https://www.py.cn/db/mongodb/15249.html)

- 后者是做了一层封装的工具

能够做啥复杂查询操作吗？

索引有啥用？

如何判断mongose是否连接成功？如何定位问题，他会有提示吗？

- 控制台会报错

数据库如何初始化？

- 通过脚本

如何创建空表

- 好像创建不了，因为它可以插入任意内容

聚合查询与连表查询有啥区别？

不按格式插入记录会怎样？

- 不会怎样，照样插入成功

如何自增id如何实现？

- 可以通过查表的长度来实现

如何避免出错？

以及出错的补救措施是啥？

自定义的id好像没啥卵用啊，都是用他自定义的_id

- 

聚合查询是啥意思？

#### 口诀

- 集文：集合、文档
- crud：对应api是：ifud



#### 数据库操作

有些命令就行被其他命令包含了，比如创建数据库的操作



#### 插入操作

- 插入_id
  - 如果没有指定，则是会自动生成
  - 如果需要指定，则是要用ObjectId来构造id字段

- 插入时间
  - 可以直接new Date()


数组的修改（插入和删除）是通过update操作来完成的



#### 更新操作

常见操作

- 根据其他字段来更新某个字段
- 添加字段
  - 用updateMany，不是insert
- 删除字段
  - 

全量还是增量更新？

：一般是增量更新

更新条件如何构建

- 通过索引
- 通过内容





#### 查询操作

聚合查询

- 相当于mysql中的group by和left join操作，主要用于表的关联查询和对结果的统计



关键操作

| 操作符  | 描述   | 等价sql   |
| ------- | ------ | --------- |
| match   | 过滤   | where     |
| project | 投影   | as        |
| lookup  | 左连接 | left join |
| group   | 分组   | group up  |



$是取字段，比如$job

每次说出需求的时候，应该要想想用什么操作符

- 总和、平均：用$group
- 最大，最小，前几个，后几个：用$sort，然后$limit
- 

#### 删除操作



#### 如何设计表？

表的关系

- 一对一
- 一对多
- 多对一
- 多对多



可以内嵌

- 多对一操作：可以考虑内嵌，但是什么时候能够内嵌？



接口如何命名？

为什么要设计模式对象和模型对象

- 模式对象可以用于定义默认值、还有校验功能，可以解耦

插入的时候不用自己生成id，查询的时候你只需要用接口返回的id去查询即可



查询条件condition写法

- 常用：对象写法
- 链式写法



管道操作：当前对象的输出作为另一个对象的输入，能将多个对象连接起来

聚合操作：分析、汇总数据的操作



什么时候需要写$，什么时候则是不写？

- 基本都要写，只要是作为右值，除了个别情况



框架与应用的区别？



数据字典如何设计？比较合适

：有列表渲染和查找的场景



值为N/A是undefined的意思

文档与管道的区别？

：我觉得是管道是数组（里面有很多层）
