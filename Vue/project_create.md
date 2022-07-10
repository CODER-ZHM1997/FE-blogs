本文旨在构建vite+ts+vue3项目

项目构建教程：https://juejin.cn/post/7043702363156119565#heading-1

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

#### prettier

[eslint-plugin-prettier](https://github.com/prettier/eslint-plugin-prettier#readme)，有关prettier，安装三个插件即可

- npm i prettier -D
- npm i eslint-plugin-prettier -D
- npm i eslint-config-prettier -D
- 修改eslint配置文件
  - extends添加节点："plugin:prettier/recommended"
- 创建.prettierrc文件

#### windicss

- 安装vite-plugin-windicss，windicss
- vite中注册
- 引入css：import 'virtual:windi.css'

#### mock

- npm i mockjs -D
- npm i vite-plugin-mock -D
- vite中注册插件

#### element-plus

- npm install element-plus
- main中注册
  - 导入样式：import 'element-plus/dist/index.css'
  - 注册elementPlus

#### axios

- npm i axios
- 在api下创建http文件，编写请求方法get、post、拦截方法

#### [postcss-px-to-viewport](https://juejin.cn/post/7018433228591595550)

- npm install postcss-px-to-viewport -D
- 修改配置文件：postcss.config.js

#### [editorConfig](https://editorconfig.org/)

:他能够帮你不同IDE下的代码样式问题，

- 创建.editorConfig

```json
# EditorConfig is awesome: https://EditorConfig.org

# top-most EditorConfig file
root = true

[*]                   # 表示所有文件都要遵循
indent_style = space              # 缩进风格，可选配置有space和tab
indent_size = 2                   # 缩进大小
end_of_line = lf                  # 换行符，可选配置有lf、cr和crlf
charset = utf-8                   # 编码格式，通常都是选utf-8
trim_trailing_whitespace = true   # 去除多余的空格
insert_final_newline = true       # 在尾部插入一行

[*.md]                # 表示仅 md 文件适用
insert_final_newline = false      # 在尾部插入一行
trim_trailing_whitespace = false  # 去除多余的空格
```



#### husky+lint-staged

- 安装插件

  - npx husky-init && npm install
  - npm i lint-staged -D
  - 配置lint-staged

  ```json
    "lint-staged": {
      "*.{js,vue,ts,jsx,tsx}": [
        "prettier --write",
        "eslint --fix"
      ],
      "*.{html,css,less,scss,md}": [
        "prettier --write"
      ]
  ```

  

  - 添加package脚本："lint:lint-staged":"lint-staged"
  - 修改pre-commit文件：npm run lint:lint-staged

  

  