本文档主要书写一下element的使用总结，顺便记一下坑

教程

## 问题

dialog 组件add与edit弹窗共用，出现打开add弹窗，但是edit数据未清除的场景

- 在nextTick回调再给formModel赋值
- 在弹窗关闭的时候清除一下表单数据即可