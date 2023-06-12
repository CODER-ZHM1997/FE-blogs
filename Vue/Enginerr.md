本文旨在构建vite+ts+vue3项目

项目构建教程：https://juejin.cn/post/7043702363156119565#heading-1

#### vue-router

- npm i vue-router
- 

#### pinia

#### windicss

- 安装vite-plugin-windicss，windicss
- vite中注册
- main引入css：import 'virtual:windi.css'

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



- - 

  
  
  