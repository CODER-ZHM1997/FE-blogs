教程

- 入门：https://juejin.cn/post/7047525475820208164?searchId=20230929154109E1B82B2EF1F61470D0BD
- 官网：https://redux-toolkit.js.org/introduction/getting-started
- 中文网：https://cn.redux-toolkit.js.org/using-react-redux/connect-mapstate

## 驱动问题

#### 关注点

-  定义仓库：configureStore
   -  定义模块：createSlice
      -  定义数据、行为（而且它的state、action、reducer都需要暴露出来，用于注册或者是调用）

-  获取数据：useSelector
-  修改数据：useDispatch



## 问题

吐槽的点：动态和静态的居然还要分开的

reducers与reducer区别：后者是根reducers

它就喜欢用函数套函数的方式去获取一个数据，而不是对象

```js
const count = useSelector(selectCount);
```

