教程

- 
- [注意事项](https://juejin.cn/post/6905294475539513352#heading-6)
- websocket：https://juejin.cn/post/7038491693997359117

[html设置form](https://segmentfault.com/a/1190000016374336)

[h5新增的标签](https://juejin.cn/post/6844903878857588750)

页面编写

&符号：不能直接写&，而是写&amp;



link和@import的区别？

-   link是异步加载的（不会等到页面加载完了再加载），而@import则是页面加载后再加载的
-   @import不能通过js来控制dom，而link则是可以

link是异步加载，script是同步加载，加载完在加载

js设置样式时就是驼峰式了

-

dg来获取指定的元素，然后还要通过下标0来获取数据

-   如document.getElementByClassName('test')[0]

audio之间的元素是用来供不支持audio的元素浏览器显示的

[onblur和onforcus是两个相反的](https://blog.csdn.net/ry513705618/article/details/47159625)

-   失去焦点和聚焦

媒体元素

-   video

```
<video>
    // 视频源
    <source src="english.mp4"/>
    <source src="chinese.mp4"/>
    // 字幕
    <track src="enlish.srt"/>
    <track src="chinese.src"/>
</video>
```



a的href的值

-

[form的entry的三个值](https://segmentfault.com/a/1190000016374336)

-   atm

而且form的请求只支持2中，post和get

a标签指定href和click事件

- 





本文档主要书写一些html的基础，一些自己容易忽略的点，以及一些常用的代码片段。

## pre

不会忽略空白符号，会保留原格式，可以用来显示代码，但是不会高亮，可以搭配code标签使用。不过只用pre好像也能达到差不多的效果

```html
<pre>
    <code>
        <p>这是一段代码</p>
    </code>
</pre>
```



## code

会忽略空白符号，不会保留原格式，可以用来显示代码，但是不会高亮，可以搭配pre标签使用。

```html
下拉功能
：用dropdown或者是气泡卡片功能
```



## a

导航栏固定如何实现？

- 通过fixed即可：fixed，top-0

浮动上去能够展示页面
：

字体下面的横条？
：可以通过border-bottom来实现，如border-bottom: 4px solid var(--color-danger);

浮动到字体上能够展示面板
：

列表分多栏展示
：可以采用栅格系统

video播放问题

- 有些功能只配置一个属性是不够的，设置了autoPlay，还要配置muted才行



## iframe

：内联框架

[为iframe正名，你可能并不需要微前端 - 掘金 (juejin.cn)](https://juejin.cn/post/7185070739064619068?searchId=202405171608574A36C6D1C3FA347B04CF)

[iframe相关及跨域解决方案 - 掘金 (juejin.cn)](https://juejin.cn/post/6988900441597673480?searchId=20240517161558DFD87735D6F92DB65AEC#heading-4)

场景

- 为了显示第三方内容到当前网页时，比如广告，视频，地图
- 或者是为了将网页分割成多个部分

常见操作

- 发送信息：postMessage
- 接收信息：监听message事件

注意

- 你要往哪个窗口发送信息，对应窗口，然后调用它的postMessage方法
- 它默认是目标窗口及其子窗口都能接收到信息，除非你指定了targetOrigin，可以过滤掉目标窗口的子窗口



## script

普通脚本

- 同步加载：会阻塞文档解析
- 立即执行：加载到之后立即执行

async脚本

- 异步加载：不会阻塞文档解析
- 立即执行：一旦加载脚本，立即执行，不管你文档还在不在解析

defer脚本

- 异步加载：不会阻塞文档解析
- 延迟执行：一旦加载脚本，会等到html文档解析完成才执行
- 好处
  - defer脚本可以访问到整个文档dom结构





## form

content-type内容类型

：比如请求体的内容类型

如果指定错误，会导致服务端无法正常解析内容

- [HTMLFormElement.enctype - Web API | MDN (mozilla.org)](https://developer.mozilla.org/zh-CN/docs/Web/API/HTMLFormElement/enctype)

