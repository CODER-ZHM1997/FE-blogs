本文档主要书写mongodb的注意事项

# 教程

- mongodb安装
  - 指定yum的源为阿里云，注意下源的名字，不然死活配置不生效的
- mongo添加账号密码
  - <https://juejin.cn/post/7165701469159555102>
- 数据库迁移
  - mongodump、mongorestore：<https://juejin.cn/post/7098613216804077599>
- 表设计：<https://juejin.cn/post/7108525565157589005>
- 访问文档：<https://docs.mongoing.com/>
- populate：<https://juejin.cn/post/6844904008495300616>
- 正向查询，反向查询：<https://www.cnblogs.com/xingkongzhizhu/p/12936392.html>
- ORM框架：<https://blog.csdn.net/Mr_VK/article/details/122930987>
- mongodb脚本编写
  - <https://docs.mongoing.com/the-mongo-shell/write-scripts-for-the-mongo-shell>

# 坑

跑错服务器了
：你总是会操作错服务器，出错的时候记得看下

查询死活查不到，可能是类型的问题，比如说_id是ObjectID，但是你传递的是string，这样就查不到了

- 你也要改成ObjectID类型才能查询的到，吐了，害我找了那么久
- 要么你就在Model写明类型，让他自动帮你转换

mongodb compass登录时候不需要指定数据库，它账号就能够确定哪些数据库能够访问了

- 你传入账号、密码即可，

MongoDB aggregate error: expression must have exactly one field
：这种是你没有给表达式命名导致的，你外面给它命名一下即可

```sql
_id:{
  $year: "$create_at"
}
```

不小心删错了表，如何恢复？

- 从备份中恢复
  - 如果没有备份将会变得麻烦

# 基础

- 启动服务：mongod
- 访问服务：mongo
  - 带需要账号密码：mongo -u root -p xxx，也可以先mongo -u root，然后回车在输入密码
- 关闭
  - 进入数据库里面去关闭
    - use admin
    - db.shutdownServer()
  - mongod --shutdown
    - 如果修改了dbpath则是要手动指定路径，如：mongod  --shutdown -dbpath /mnt/software/mongodb/data/
- 查看配置信息
  - 查看数据库：show dbs
  - 查看用户：show users
- 开启认证
  - 命令行：mongod --auth
  - 修改配置文件：mongod.conf
    - 配置文件在一般在：etc/mongod.conf或者是在安装目录下的mongod.conf
- 查看访问日志
  - 查看日志：tail -f /var/log/mongodb/mongod.log，用tail可以看到最后几行，而且用-f可以跟踪

mongodb修改配置文件

- 如何生效，需要重启服务吗？需要重启

mongodb连接字符串：<https://blog.csdn.net/weixin_45154887/article/details/121558448>

- 不同的工具有不同的连接字符串，比如mongoose、mongodb compass，都有自己的连接字符串

安装完居然还要手动指定一下配置文件，不然启动不了，真是醉了
：mongod -f /ect/mongod.conf

mongod与mongo的区别
：<https://devpress.csdn.net/mongodb/630496d57e6682346619be0a.html>

mongodb运算符的返回值是返回到上一层的，而不是返回到左边的

- 比较简单的运算写法，直接写字符串：$toDate:"$create_at"
- 复杂点的就需要用写成对象或者是数组的方式，如$addToSet: { $arrayElemAt: ['$children', 1] }

$unwind

# 查找

聚合查询aggregate需要构造id才能正确查询
：其它操作，比如说插入，则是直接传递id即可

aggregate的lookup都支持值为数组的查询

聚合统计

- 有时候分组不一定是为了统计个数、平均值之类的，还能塞元素，用$push

数组去匹配数组

联表可以设置多个外键

取出符合条件的记录的某个字段的下标第2个值，要怎么做？
：通过$arrayElemAt来获取，如$arrayElemAt: ['$children', 1]

取出符合条件的记录的某个字段的某个属性的值，要怎么做？
：直接通过点的方式来获取即可，比如$student.name

数组联表查询？
：

## 分组

拆分：$unwind
：拆分数组的，为每个值生成一个文档记录，_id可能会重复

# mongodb数据迁移

- 针对仓库
  - 备份：mongodump，模板：mongodump -u root -p xxx -o ./data/backup
  - 还原：mongorestore，模板：mongorestore -u root -p xxx --authenticationDatabase admin -d <dbname>

认证失败，可能是少了一些参数
：我以为写了参数就会去验证，其实不是，它可能存在多种认证方式，而你当前写的格式所匹配的行为，并不是你期望的，所以就会报错，需要加上：--authenticationDatabase admin
：<https://www.cnblogs.com/yandh/p/15826106.html>

- 如mongodump --authenticationDatabase admin -u root -p xxx -o ./data/backup

# 索引

使用场景：是为了加快查询的，可以减少扫描的文档数，从而提高查询速度，非常有用

索引有特殊的数据结构

- 键值对，可以快速的定位到文档，而不是遍历所有的文档
- 树结构：B树、B+树、前缀树

# 练习

拷贝文档记录、批量拷贝

## 查询

按pid分组查询，查询结果的children字段要存放pid相同的记录

```sql
db.items.aggregate([
  {
    $group: {
      _id: "$pid",
      children: { $push: { _id: "$_id", name: "$name" } }
    }
  }
])
```  

如果有很多字段，则是要用动态构建对象的方式来批量处理，而不是一个一个写
：

查询结果里只存放了时间戳，要如何按年月日时来来分组？不过大概率是不用这么精确的，一般是按年、按月、按日
：可以通过$year、$month、$dayOfMonth、$hour来分组，

```sql
db.items.aggregate([
  {
    $group: {
      _id: { year: { $year: {$toDate:"$craete_at"} }, month: { $month: {$toDate:"$create_at"} }, day: { $dayOfMonth: {$toDate:"$create_at"} }, hour: { $hour: {$toDate:"$create_at"} } },
      count: { $sum: 1 }
    } 
  }
])
```

时间戳转换成Date对象，通过$toDate来转换
：

data对象转换成文档，则是可以通过$dateToParts来转换
：不过属性太多了，不太好用，我可以选择用$year、$month、$dayOfMonth、$hour来分别获取

# 问题

啥是外键？
：外键是另一个表的主键，用于2个表的关联

mongodb常见操作

crud涉及到_id的，都需要指定构造器，不能直接传入字符串

支持的数据结构
：mongodb只是在json的数据结构上做了一些扩展

- json支持null
- 注意JSON不支持的undefined、function、symbol、NaN这些，所以序列化的时候会被裁剪掉

populate与aggregate的区别?
：populate是将关联的数据查询出来，然后放到当前的数据中，而aggregate是将关联的数据查询出来，然后放到一个新的数组中，然后再将这个数组放到当前的数据中

mongodb可以直接拿_id的字符串进行查找
：设置可以吗？

什么时候要写save()

- save或者updateOne都可以，都是用来更新的

什么时候要写exec()
：<https://www.cnblogs.com/xiamu33/p/15727706.html>
：当你需要执行查询的时候，如果你不写exec()，那么数据是不会查询出来的，加了才能找到报错的位置

mongodb修改了字段名需要到数据那边去改动，
：不然你的查询操作不生效，因为表里面没有这个字段

引用字段要如何命名？
：如果是引用的话，那么就是引用的字段名，如果是数组的话，那么就是数组的字段名

为什么要在搜索接口耦合了下拉框的数据？虽然方便但是不符合单一职责原则

查询详情要不要另写一个接口，还是数据全部由外界传入？

阶段运算符与运算符的区别？
：阶段运算符是用来做分组的，运算符是用来做计算的

populate根据字段id去查询？
：populate({ path: 'user', match: { _id: '5f9f9f9f9f9f9f9f9f9f9f9f' } })

aggregate根据字段id去查询？
: aggregate([ { $match: { _id: '5f9f9f9f9f9f9f9f9f9f9f9f' } } ])

关注一下查询结果为树节点是通过sql就能够完成，还是要通过js来进行补充

update

- 插入一个ObjectId的字段

populate查询出来的都是带有id和name的对象格式，实际上我希望的是平铺的形式，要怎么解决？
：为什么不希望有嵌套呢？因为会影响到2处的读取操作，比如展示和请求时的读取操作

如何防止前端插入其它字段？
：应该可以通过mongoose的schema来进行限制

为什么要把_id转换为id？
注意命名

- 有些id是ObjectID要如何命名呢？

如何设置ObjectID，如何置空呢？

- 通过代码的方式
  - update即可
- 通过修改数据库的方式
  - 可以

修改操作的时候前端会把_id传递过来，但是mongodb不需要，要怎么处理呢？

- 在前端delete掉这个属性

多个model如何获取？

更新是涉及到2个model的
：一个是当前model负责查找之类的，一个是查询结果model，这个model负责update

命名

- 表命名：所属模块_功能_子功能，如system_user, system_role
- 字段：
  - 字段要不要以表名作为前缀，或者是其它属性作为前缀？

一些公共的常量数据，要挂在到app上，还是放到文件，需要的时候进行导入？

name属性是否一定要存在？
：

model与query的区别是啥？

存储id类型的字段，要不要起名字叫xxx_id？

为什么要分表？
：因为当前表无法满足一些需求或者是新的需求

保存的时候，存哪个id
：是表记录的id，还是关联表的id？

如何当前model引入其它的model？
：通过mongoose.model('xxx')即可

他怎么知道model要这样注册？

使用1个二维数组还是拆开为2个一维数组来存储？
：拆开为2个一维数组来存储

一张表至少对应一个model和一个service吗？
：有没有合并的场景

query的exec()有啥用？
：推荐加，可以更好的找到报错位置

表名，字段名怎样起比较合适？

- 字段名要不要加前缀？我的意见是不要加，加了就很肿啊，其它类型的才要

外键应该建立在哪个表？
：建立在表记录多的一方

为啥管道参数是数组，为啥要用数组？
：因为可以有多个管道操作，而且是有顺序的，而且可以重复，所以不能用对象

ORM框架，解决了什么问题？
：解决了sql语句的转换的问题，不再需要面向数据库进行编程，而是改成面向对象进行编程，为操作不同的数据库提供了一个统一的方法

ORM与ODM

- 区别：数据结构不同，一个是关系型，一个是非关系型
- 相同点：都是做数据持久化的

衍生字段，比如价格要不要存，如果要存，则是要怎么存的问题
：

model能否引入其它model的值？
:

mongodb将没有的字段作为查询条件，则是会查不到记录

如果mongodb语法很复杂，那就用js来弥补，我mongodb只做最基础的处理，然后剩下的交给js

mongodb的脚本怎么去写？怎么调试？

备份策略

- 定期全量备份
- 定期增量备份
- 热备份
- 冷备份
- 复制备份

要不要套OjectID的问题，model会不会帮你转换？

- 创建

- 更新
- 查询
  - 如果是在aggregate函数中，则是需要套ObjectID的
  - ?如果是通过_id来查询的话，那么就不需要套ObjectID，如果是通过其它字段来查询的话，那么就需要套ObjectID

mongoose是通过Model定义的类型来自动转换，而不是通过代码来转换

- 所以model文件很重要，要明确写定的类型，它会帮你做转换，你可以少写很多代码
  - 如id，还是id数组

mongodb的设计是：操作符在前，而不是字段在前

unwind的作用：可以将数组拆分成多条文档记录，一般与group一起使用

$group
：就会把所有字段都过滤掉，只剩下你指定的字段

- 碰到我要保留很多字段的就很麻烦，要手动一个个指定
- $group还可以结合$sum、$avg、$max、$min、$push、$addToSet等操作符来进行统计，统计不一定只是元素个数，还可以是元素本身

啥时候需要用上.$.来操作？

nModified是指修改的记录数

能够打印整个对象值，却获取不到某个属性
：可能是因为这个属性是不可枚举的，你需要在你的model里配置一下，才会暴露出来

数据同步问题
：mongodb总是需要刷新后才能看到最新的数据，你不刷新容易被误导

有findOne、updateOne，也有deleteOne
：不要用removeOne，因为这个是过时的

表达式与管道操作符有啥区别？怎样区分和使用？
：表达式是用来做条件判断的，管道操作符是用来做数据处理的

- 模板:{$group:{}}

操作符、运算符有啥区别？
：没有区别，都是用来做计算的，有些管道运算符，比如$group，也是用来做计算的，它只能用在aggregate函数中

$addToSet与$push有啥区别？
：都是用来往数组中添加元素的，但$addToSet是去重的，$push是不去重的

聚合查询与非聚合有啥区别？
：聚合查询是用来做数据处理的，非聚合查询是用来做数据查询的

lookup联表查询+过滤的sql应该怎么写？

- 可以放一个管道里面做，还是需要两个管道

BSON是啥？
：<https://blog.csdn.net/m0_38110132/article/details/77716792>
类似于JSON，但是它支持更多的数据类型，比如日期、二进制数据、正则表达式、undefined、objectID、DBPointer、javascript、symbol、int32、timestamp、int64、decimal128、min key、max key

集合中_id可以重复吗？
：可以重复，因为我看$unwind操作时就会导致重复
