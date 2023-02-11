git能解决什么问题？

：主要是解决团队协作问题，而且能够提高协作质量

教程

- 入门：https://juejin.cn/post/6974184935804534815
- commitizen:https://juejin.cn/post/6844903606815064077
- git actions:https://juejin.cn/post/7189510686760779833

学习要点

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

