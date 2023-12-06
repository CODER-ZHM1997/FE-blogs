

教程

- 入门：https://juejin.cn/post/6974184935804534815
- 主教程：<https://www.cnblogs.com/anding/p/16987769.html>
- commitizen:https://juejin.cn/post/6844903606815064077
- git actions:https://juejin.cn/post/7189510686760779833
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



## git revert

：reset太粗暴了，推荐使用revert

- 撤销单次提交：
- 撤销多次提交：



## git reset

mixed、soft、hard
：区别在于对工作区、暂存区有没有影响，变是指

- soft：只撤销commit操作，但是保留修改并暂存
- mixed（默认）：撤销git add、commit操作，但保留修改到工作区
- hard：撤销全部修改





## git branch

：主要是用于分支的管理

- 创建：git branch -b dev
- 删除：git branch -b dev
- 重命名：



## git checkout

：主要是用于分支的切换

- 切换分支：git checkout <branch-name>
- 创建并切换为远程分支缩写：git checkout <origin-branch-name>
- 



## git rebase

使用场景

- 整理提交：git rebase -i HEAD~5
  - 修改commit 描述
  - 将多次commit合并成一个commit
- 解决分支冲突
  - 在feature上开发新功能，但是master上有新的提交：git rebase master



## git merge

：会多出一个commit出来

使用场景

- 分支合并（同步）：git merge dev，合并dev的修改到当前分支



## git tag

新建的tag不会自动推送到远程，你需要执行一下推送到远程
：git push origin --tags









## git diff



## git log





## git reflog



## git actions

：能够提供持续的ci、cd服务



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



## 场景题目

线上版本出问题了，应该如何做？

- 版本回退：回退到出问题前的版本，重新打包发布线上

  - git revert head~1

- 问题修复：在hotfix分支上修复问题，并测试

- 发布新版本：在master分支合并hotfix分支，并发布

  - git merge hotfix

  

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
