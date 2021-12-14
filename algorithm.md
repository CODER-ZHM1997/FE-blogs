

[TOC]





## 问题

**最重要的是你要知道题的类型，先要的能判断题进行的类型！**

- 比如这道题怎么就栈那一类呢？
  - 这种你只能多看，多做，多总结，不然没得玩的

速度是最重要的，速度才能保证进度



计划

1. 先看看b站下的视频
2. github上的刷题指南项目
3. 先刷[LeetCode 精选算法 200 题](https://leetcode-cn.com/problem-list/qg88wci/)即可，每天5道，周末20道，这速度的话，一个月可以刷完

## 基础

js的数组天然就是栈、链表、队列，取决你怎么用它

获取最后单词的长度

- 首先你要自己获取输入的数据，通过readline函数
- 如果你要读取多行则是，readline两次
- split(" ")与split("")是不同的
  - 后者是无条件分裂，前者是按空格分裂
- 字符串是没办法遍历的，但是可以把他转换成数组，如Array.from(str)，或者是str.split('')
  - sort方法有坑啊，你直接用arr.sort()，他是按第一个数字来排序的，你只能用arr.sort((a,b)=>a-b)

**[进制转换](https://blog.csdn.net/zy444263/article/details/84062438)**

0x开头表示十六进制，而0开头则是表示八进制，

- 低转高：Number.parseInt('011',8) //9，这个9是表示进制值得9，011才是8进制的表示
- 十进制转任意任意进制的字符串形式：10.toString(2)//"1010"

它题目不是说一口气打印出来，而是读一下，打印一下

```js
while(true){
    const inputStr=readline()
    if(inputStr&&inputStr.length>0){
        console.log(Number.parseInt(inputStr,16))
    }else{
        break
    }
}
```

有些循环是双层的，你要认识到这个问题，比如打印某个数的质数因子时，是要从2开始循环，而且可能有多次2，所以你要内置一个while循环，等到模2不为0的时候，你再切到3去循环，直到i*i>num时，你即可以结束了，而且你要答应最后一个因子，

- 怎样去除左边的空格？你用字符串替换，如果确定左边只有一个空格的话，则是直接用切片slice，str.slice(1)，高级一点的你就用正则来替换

```js
let inputNum=+readline()
const arr=[]
let result=""
for(let i=2;i*i<=inputNum;i++){
    //注意，这里是双层循环
    while(inputNum%i==0){
        result=result+" "+i
        inputNum/=i
    }
}
console.log(result.slice(1)+" "+inputNum)
```

数组拼接字符串，通过join

- arr.join("")，一般加个空格arr.join(" ")

**[字符串分割](https://www.nowcoder.com/practice/d9162298cb5a437aad722fccccaae8a7)**

：少的要补0，多的要换行，结果可能多余输入的行数，此时你的就要作拼接，短的你就要拼接的刚刚好，长的就凭借成2行，甚至3行，总之是8的整数长度，所以是%8，而不是判断大于还是小于8就行了

substring是字符串的，而slice则是数组的方法，

**字符串常用方法**

- 拼接，直接用+
- 重复，如重复8个0，"0".repeat(8)
- 倒序：reverse
- 字符串自动转数字：const str='123';str>3 //true

**数组方法**

- 打印数组，直接用join拼接即可：const arr=[1,2,3]; arr.join('') //123

一组字符串进行排序可以直接用sort方法即可

- 

求最小公倍数

- 用选多的那个质因数

```
如45=3*3*5,30=2*3*5，共公倍数为2*3*3*5=90，
第二种解法：是 2|2 6=1 3,得到的值是2*1*3=6，
```

字符串转数组

```js
const str="123"
Array.from(str)//['1','2','3']
[...str]//['1','2','3']
```

计算小球落地所经历的长度

- 第一次落地只需要长度是设置成初始长度，而第2次落地及以上时所经历的长度则是上一次高度的高度的一半*2

