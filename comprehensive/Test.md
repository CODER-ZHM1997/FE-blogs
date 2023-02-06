Test能解决什么问题？

- 自动化测试能够帮助我们提前发现并解决问题，或在出问题时：快速定位问题

学习要点

- e2e测试
- unit测试
- 测试驱动开发TDD

教程

- jest入门：https://juejin.cn/post/6844904196244766728
- https://juejin.cn/post/7039108357554176037
- vitest入门
  - 官网：https://cn.vitest.dev/guide/features.html
  - https://juejin.cn/post/7078906878779981832
  - 搭配的框架（test-utils）：https://test-utils.vuejs.org/guide/


## unit测试

你可以测试antd的组件，看它是否正常

## e2e测试

：模拟用户操作，直到完成某个工作，关注的是某个链路是否能够正常走完

工具：Crypress

## TDD

原则

## vitest

it和test下面都能用expect，那区别是啥

- 没啥区别，就是提示不同而已：https://stackoverflow.com/questions/45778192/what-is-the-difference-between-it-and-test-in-jest



## 问题

测试的原则

- 基本：AIR
  - A：Auto，全自动，不能人工去操作和肉眼去验证
  - I：Imdependent
  - R：Repeat
- 单元测试原则：BCDE
  - Border：循环、取值、长度边界
  - Correct：
  - Design
  - Error

如何做好测试工作

- 要平衡好开发效率和项目质量
- 尽可能测试边界条件

测试用例应该按着测试文档去写，而不是看着代码去写

