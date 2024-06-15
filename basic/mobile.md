本文档主要记录一些移动端web开发以及混合开发的问题和解决方案

教程

- 移动端
  - https://juejin.cn/post/6921886428158754829
  - [移动端H5网页开发必备知识 - 掘金 (juejin.cn)](https://juejin.cn/post/7055267089895915527)


- hybrid
  - [移动端开发必备知识-Hybrid App - 掘金 (juejin.cn)](https://juejin.cn/post/7062967241268019214?searchId=2024052319342294138E127F7B258BAD98#heading-8)



## 关注点

- 项目搭建
  - 使用vant提供的模板
- 响应式：能够适配不同的屏幕尺寸
  - vant会帮你解决这个问题
- 兼容性：在不同浏览器上表现良好



有哪些常见的业务类型？

- 




## 技巧

很多都会提供项目模板的，不会让你从0开始搭建的，你能想到的问题别人99%都能想到，你要做的就是学会找资料

- 模板帮你减少了很多前期的搭建工作工作，你只需要找一个合适的模板即可
  - 一般挂载仓库的readme上，你搜一下关键字即可
  - [yulimchen/vue3-h5-template: 🌱 A ready-to-use mobile project base template built with the Vue3, Vant, and Vite. | 基于 Vue3、Vite5、TypeScript/JavaScript、Tailwindcss、Vant4，开箱即用的移动端项目基础模板 (github.com)](https://github.com/yulimchen/vue3-h5-template?tab=readme-ov-file)
- 





## hybrid

常见操作

- app与h5的通信

webView

：由手机操作系统提供支持，而不是浏览器提供支持



## 面试题

移动端开发碰到的问题

- 适配问题，可以说下使用postcss-px-to-viewport



## 问题

vant设计稿很多都是按照

- 

好像使用vant之后很多问题都已经被他解决了

- 你只需要关注vant如何使用即可



屏幕分辨率

- 一般是指物理像素，如1920x1080

css像素

- 一般是指



1px问题：在移动端直接设置border为1px，显示的太粗，为了配置出比较好的1px效果

[为什么会存在1px问题？怎么解决？ - 掘金 (juejin.cn)](https://juejin.cn/post/7084220221505929230?searchId=20240521150304D6DD13B6F646D063394A)

- 解决方案
  - 方式1：获取设备像素比，然后采用scale来缩小指定的倍数
  - 方式2：不获取设备像素比，直接缩小1倍即可
- 注意：一般不会设置border为1px，1px问题大多数为假问题

高度坍塌：键盘弹起有关闭后，高度未恢复

- 我好像是用flex布局实现



