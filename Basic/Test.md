Test能解决什么问题？

- 自动化测试能够帮助我们提前发现并解决问题，或在出问题时：快速定位问题

学习要点

- e2e测试
- unit测试
- 测试驱动开发TDD

教程

- jest入门
  - https://juejin.cn/post/6844904196244766728

- https://juejin.cn/post/7039108357554176037
- vitest入门
  - 官网：https://cn.vitest.dev/guide/features.html
  - https://juejin.cn/post/7078906878779981832
  - 搭配的框架（test-utils）：https://test-utils.vuejs.org/guide/

## Jest

：只能对返回值进行测试吗？

## vitest

it和test下面都能用expect，那区别是啥

- 没啥区别，就是提示不同而已：https://stackoverflow.com/questions/45778192/what-is-the-difference-between-it-and-test-in-jest



## 问题

tdd的工作流是怎样的？

- 先编写空壳函数，然后编写测试用例（比如预测返回值）编写代码时就要通过测试用例才能算是符合条件的代码

怎么场景下需要去做测试？

- 

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

