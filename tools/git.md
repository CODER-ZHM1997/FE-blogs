

教程

- 入门：https://juejin.cn/post/6974184935804534815
- commitizen:https://juejin.cn/post/6844903606815064077
- git actions:https://juejin.cn/post/7189510686760779833
- github 搜索技巧：https://juejin.cn/post/6844904058755481607

学习要点

- 

## 驱动问题

git是啥？

- 

#### 核心模块

- 
- 如何规范的提问？
  - 标题明确
  - 信息完备
  - 有些会有模板的，你要按模板来
    - 




## 常见操作

提交模板

git commitzen

- feat
- fix
- chore
- doc
- test
- style

git flow：工作流

- master
- develop
- feature
- release
- hotfix

gitignore文件应该忽略哪些？



git fetch

- git fetch origin xxx会新建一个分支，但是不会跟你的分支合并，你需要手动merge



443的问题，直接取消代理即可

-  git config --global --unset http.proxy 
-  git config --global --unset https.proxy 



git actions配置自动化部署：https://juejin.cn/post/6887751398499287054

- 创建文件，配置即可.github/workflows/ci.yml

git提交格式

- 

[github与gitlab有啥区别？](https://www.google.com/search?q=git%E4%B8%8Egitlab%E5%8C%BA%E5%88%AB&oq=git%E4%B8%8Egitlab%E5%8C%BA%E5%88%AB&aqs=chrome..69i57j0i512l2j0i12i512j0i512l5j0i10i512.12956j0j9&sourceid=chrome&ie=UTF-8)

git hooks

：git某个操作前或后会执行的钩子

- commit：precommit，postcommit


恢复指定的文件到某个版本

- git checkout <commitid> <file-path>

恢复项目到指定版本

- git revert
- git reset



#### git actions

：能够提供持续的ci、cd服务

教程

- 主教程：<https://www.cnblogs.com/anding/p/16987769.html>
- git提交规范：<https://juejin.cn/post/6970275680047071240>
- 分支命名规则
  - <https://blog.csdn.net/qq_33858250/article/details/81047883>

# 问题

# 版本回退（也叫还原）

：<https://m.php.cn/faq/506249.html>
如：git reset <commit> <file-path>，用checkout也行

# 连接超时

：一般是ssl认证的问题，把他都关掉即可

- git config --global http.sslVerify false
- git config --global https.sslVerify false

# 忽略文件

叫法：目录=文件夹

忽略规则，一般有5种写法

- a: 忽略所有（任意目录）a文件或目录，包括子目录下的文件或目录，与几乎a/**等价，
- a/*：忽略a文件夹下直接子文件或目录，但是不包括子目录下的文件或目录
- a/**: 忽略a目录下的所有文件或目录，包括子目录下的文件或目录
  - 与a/等级
- !a: 不忽略a文件或目录
- *.zip：忽略所有zip文件

要熟练使用回退功能，减少线上错误的损失

# commit相关

修改commit描述

合并commit

## 查看改变内容

commit为单位

- github上面可以翻到commit记录
- 也可以通过git的gui来查看
  - 可以通过查看整个分支的提交历史

以文件为单位

- git diff <commit> <file-path>
- vscode的git插件可以查看，这个更加方便一些

# git reset

mixed、soft、hard
：区别在于对你现有的几个区有么有影响（比如工作区、暂存区）有没有影响

- hard：会把你现有的工作区、暂存区都清空，回退到指定的commit
- soft：只会把你现有的工作区清空，回退到指定的commit
- mixed：不会清空你现有的工作区，回退到指定的commit

# git tag

新建的tag不会自动推送到远程，你需要执行一下推送到远程
：git push origin --tags



可以只下载某个分支的，不用全部分支都下载

- git clone -b <branch-name> <repo-url>
