前端工程化能解决什么问题？

：它能够帮你更加深刻的了解整个项目，而不是只会使用工具，而没有

教程

- 指南：https://juejin.cn/post/6867861517603438605
- 入门：https://juejin.cn/post/6892003555818143752
- https://www.bilibili.com/video/BV1n44y1r7Dv/?spm_id_from=333.337.search-card.all.click&vd_source=522153461914a766fc002cc8619314e4
- 构建：https://juejin.cn/post/6949138186886971429
- eslint
  - https://juejin.cn/post/7067072359995457567#heading-11



## 驱动问题

啥是工程化？为啥要这么做？

- 



## 提交校验

#### husky+lint-staged

目的

- 检查提交信息
- 检查代码

安装插件

- npx husky-init && npm install
- npm i lint-staged -D
- 配置lint-staged

```json
  "lint-staged": {
    "*.{js,ts,jsx,tsx,vue}": [
      "prettier --write",
      "eslint --fix"
    ],
    "*.{html,css,less,scss,md}": [
      "prettier --write"
    ]
```



- 添加package脚本："lint:lint-staged":"lint-staged"
- 修改pre-commit文件：npm run lint:lint-staged



## 代码规范

目标：编写高质量，可读性良好的代码

#### eslint

```node
npx eslint --init
npm vue-eslint-parser -D
```

vue-eslint-parser是为了能够解析vue文件

[项目提示module为未知变量，需要配置env添加node，](https://stackoverflow.com/questions/49789177/module-is-not-defined-and-process-is-not-defined-in-eslint-in-visual-studio-code)

- 还需要配置eslint解析vue文件的插件：npm vue-eslint-parser -D
- eslint中指定： parser: 'vue-eslint-parser',

plugins是啥？它封装了一组env、globals、rules、processors的规则

@typescript-eslint/parser与vue-eslint-parser有啥区别？

parser与plugin、extends有啥区别？

一些规则

- singleQuote:true
- semi:true

#### prettier

```js
npm i prettier -D
npm i eslint-plugin-prettier -D
npm i eslint-config-prettier -D
```

```js
// 创建文件.prettierrc.js
module.exports = {
    trailingComma: 'es5',
    tabWidth: 4,
    semi: true,
    singleQuote: true,
}
```



## Element-Plus

```shell
npm install element-plus
// main.ts
import { createApp } from 'vue'
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import App from './App.vue'
const app = createApp(App)
app.use(ElementPlus)
app.mount('#app')
```





## vue全家桶

：vue-router、pinia、less

```node
npm i vue-router pinia pinia-plugin-persistedstate
npm i less -D
```





## Vite插件

：jsx、mock、windi

```js
npm i vite-plugin-windicss windicss -D 
npm i mockjs vite-plugin-mock -D
npm i @vitejs/plugin-vue-jsx -D
```



## 多语言





## 其他

抹除浏览器默认格式：npm i normalize.css

使用node

- npm i @types/node -D



## 版本规范

^,~来锁定版本范围

可以通过commit-it来生成changelog

