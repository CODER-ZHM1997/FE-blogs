

教程

- 入门：https://juejin.cn/post/6974184935804534815
- 主教程：<https://www.cnblogs.com/anding/p/16987769.html>
- commitizen:https://juejin.cn/post/6844903606815064077
- github 搜索技巧：https://juejin.cn/post/6844904058755481607
- git提交规范：<https://juejin.cn/post/6970275680047071240>
- 分支命名规则
  - <https://blog.csdn.net/qq_33858250/article/details/81047883>



## 驱动问题

#### 关注点

- 工作区、存取区、版本库
- 版本提交&回退&撤销修改
- 推送&拉取
- 分支管理
  - 分支创建、合并







## git clone

：用于克隆仓库，默认会下载所有分支，

- 只下载某个分支：git clone -b <branch-name> <repo-url>



## git fetch

：分支的拉取，而且只做拉取，不做合并，对当前的代码不会有影响





## git init





## git add

：用于提交工作区的修改到暂存区



## git commit

：提交暂存区的修改到版本库

git commitzen

- feat
- fix
- chore
- doc
- test
- style



## git pull

：



## git stash

：目前不想提交某些修改，需要先暂存起来

场景

- A分支开发到一半，又要切换到B分支，但是有不想增加一个无意义的commit

- 添加注释：git stash save ""
- 查看暂存记录：git statsh list



## git revert

：reset太粗暴了，推荐使用revert

[【GIT】终于学会如何优雅地回退代码了｜IDEA｜Revert_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV15Z421Y7gX/?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4)



- 撤销单次提交：
- 撤销多次提交

场景

- 撤销某个需求的提交
- 



## git reset

：会影响历史记录，个人项目可以这么玩，团队的用revert

mixed、soft、hard
：区别在于对工作区、暂存区有没有影响，变是指

- soft：只*撤销*commit操作，但是*保留*修改并暂存
- mixed（默认）：撤销git add、commit操作，但保留修改到工作区
- hard：撤销全部修改

```sh
git reset --soft HEAD~1 //撤销最近1次修改，并暂存

```





## git branch

：主要是用于分支的管理

- 创建：git branch -b dev
- 删除：git branch -b dev
- 重命名：



## git checkout

：主要是用于分支的切换，虽然它也可以用来创建分支

- 切换分支：git checkout <branch-name>
- 创建并切换为远程分支缩写：git checkout <branch-name> <remote_name>/<origin-branch-name>
  - 直接git checkout <new-branch-name>，只会基于当前分支新建一个分支，这不是你想要的



## git rebase

[【GIT】什么？你还不知道Merge和Rebase的区别吗？_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1Te411z7fd/?spm_id_from=333.788&vd_source=522153461914a766fc002cc8619314e4)

使用场景

- 获取另一个分支的更新：
- 合并多个提交记录：git rebase -i HEAD~5
  - 修改commit 描述
  - 将多次commit合并成一个commit

注意

- 操作只对当前所在分支有影响，对其他分支没有影响



## git merge

：会多出一个commit出来

使用场景

- 分支合并（同步）：git merge dev，合并dev的修改到当前分支



## git tag

新建的tag不会自动推送到远程，你需要执行一下推送到远程
：git push origin --tags

一般是commit之后打tag，或者是找之前的commit进行tag









## git diff



## git log





## git reflog







## .gitignore

叫法：目录=文件夹

忽略规则，一般有5种写法

- a: 忽略所有（任意目录）a文件或目录，包括子目录下的文件或目录，与几乎a/**等价，
- a/*：忽略a文件夹下直接子文件或目录，但是不包括子目录下的文件或目录
- a/**: 忽略a目录下的所有文件或目录，包括子目录下的文件或目录
  - 与a/等级
- !a: 不忽略a文件或目录
- *.zip：忽略所有zip文件

要熟练使用回退功能，减少线上错误的损失



## PR

场景：有2种

- 来自fork仓库的合并请求：先fork仓库，然后再pr
  - 参与开源项目，常见的是这种pr
- 来自其他分支的合并请求：比如feature 合并到master分支
  - 这种是你已经成为项目团队成员了，你才能这样玩



## 场景题目

线上版本出问题了，应该如何做？

- 版本回退：回退到出问题前的版本，重新打包发布线上

  - git revert head~1
- 问题修复：在hotfix分支上修复问题，并测试
- 发布新版本：在master分支合并hotfix分支，并发布

  - git merge hotfix



## git actions

：能够提供持续的ci、cd服务，可以把很多动作自动化，流程化，比如在推送带v的提交时，会自动安装依赖、打包项目、发布到npm仓库，

主要关注怎么找到合适的workflow，还有找action

- 关键字：npm

常见操作

- 配置node
- 配置pnpm
- 编写自己的action
- 

[GitHub Actions 入门教程 - 阮一峰的网络日志 (ruanyifeng.com)](https://www.ruanyifeng.com/blog/2019/09/getting-started-with-github-actions.html)

git actions:https://juejin.cn/post/7189510686760779833

actions列表：[Marketplace (github.com)](https://github.com/marketplace?type=actions)

发布到npm：[Github Actions实践--自动化发布npm包 - 掘金 (juejin.cn)](https://juejin.cn/post/7083566139426471949?searchId=20240530131404A9467AD8C1BA95682298)



运行环境：github提供的云端

层级：workflow》job任务》step步骤》action动作，口诀扔不动

- 一个workflow对应一个文件


如何将项目部署到服务器？

- 监听事件：主版本提交
- 使用rsync通过ssh连接，将打包后的dist文件传部署到服务器

workflow文件不用你自己从0开始写，它有基础模板的

- 

怎么测试？不会只能通过提交才能运行吧？

- 

常用第三方的actions有哪些？

- 检出分支：actions/checkout，将git指定分支版本代码克隆到运行环境中
- pnpm配置
- 



发布到github pages

- 

发布到npm

- 去npm官网生成token，然后拷贝到github中使用这个token






## github

#### 搜索技巧

：https://juejin.cn/post/6891056415440535565#heading-13

- 可以根据关键字，比如egg-demo、egg-example、awesome-egg

- topic大法：如topic:egg，还可以带上admin

  - 因为你大多数写的都是admin项目

  - 如果是多个关键字，则是要用 OR 来展示

    - vue react in:topic 是必须要同时包含
    - vue OR  react in:topic 则是二选一


搜管理系统类的

- 直接多个关键字去搜，就能找到：nest admin

#### 避坑

- 学会看活跃分支：有些分支是不活跃的，就会有很多坑，你只需要关注活跃的分支即可（1年不活跃的基本就是死了）
  - 比如ant-design-pro的



#### 快捷键

- ?：查看快捷键大全



#### github.dev

：在线编辑器





## 



## 问题



连接超时

：一般是ssl认证的问题，把他都关掉即可

- git config --global http.sslVerify false
- git config --global https.sslVerify false

22端口超时

- 修改配置文件：~/.ssh/config

```shell
Host github.com
Hostname ssh.github.com
Port 443
```

配置的设置读取有几种方式

- 设置
  - 键+值：直接属性后面跟值即可，比如：git config --global https.proxy http://127.0.0.1:1080
  - 命令+键+值：set name zeng
- 读取
  - 键：git config --global https.proxy 
  - 命令行+键：get name

为啥要有checkout？

- 
