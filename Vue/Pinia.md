pinia

教程

- 持久化pinia-plugin-persist：https://juejin.cn/post/7101657189428756516#heading-7

## 问题

pinia中无法直接使用router，只能通过setup中调用，或者是封装到hook中在通过setup中来使用

**持久化**

持久化的坑：JSON.stringify会丢失掉函数
