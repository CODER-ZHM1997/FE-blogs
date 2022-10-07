前端工程化能解决什么问题？

：它能够帮你更加深刻的了解整个项目，而不是只会使用工具，而没有

设计到的工具

- webpack
- vite
- git
- eslint
- prettier

教程

- 入门：https://juejin.cn/post/6892003555818143752
- https://www.bilibili.com/video/BV1n44y1r7Dv/?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4



## Bash

shell

：是命令行，如shell脚本

命令行解释器

- bash
- cmd
- prowershell
- 

## 代码规范

目标：编写高质量，可读性良好的代码



#### eslint

教程

- https://juejin.cn/post/7067072359995457567#heading-11

可以直接用npx eslint --init，这可以同时引入ts

[项目提示module为未知变量，需要配置env添加node，](https://stackoverflow.com/questions/49789177/module-is-not-defined-and-process-is-not-defined-in-eslint-in-visual-studio-code)

- 还需要配置eslint解析vue文件的插件：npm vue-eslint-parser -D
- eslint中指定： parser: 'vue-eslint-parser',

问题

- 在vue文件中，eslint找不到全局声明类型，提示类型为undefined
  - 解决方案：通过自己引入类型文件，我也是醉了
- eslint的好多配置文件我都看不懂
  - extends、plugins

plugins是啥？它封装了一组env、globals、rules、processors的规则

#### prettier

[eslint-plugin-prettier](https://github.com/prettier/eslint-plugin-prettier#readme)，有关prettier，安装三个插件即可

- npm i prettier -D
- npm i eslint-plugin-prettier -D
- npm i eslint-config-prettier -D
- 修改eslint配置文件
  - extends添加节点："plugin:prettier/recommended"
- 创建.prettierrc文件



## 版本规范

^,~来锁定版本范围

可以通过commit-it来生成changelog

