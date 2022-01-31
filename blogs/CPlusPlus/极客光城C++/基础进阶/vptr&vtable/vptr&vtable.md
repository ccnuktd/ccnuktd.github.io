# vptr和vtable

### 1. 为什么需要vptr和vtable？

>C++ 有三种特性：继承、封装和多态。实现多态的基础就是所谓的vptr（虚表指针）和vtable（虚表）

### 2. 基础理论

>在每个有虚函数的类中，都会有vptr和vptr指向的vtable。vptr就是一个**指针**，而这个指针指向了vtable，vtable可以理解成一个**数组**，这个数组里面存放的都是**函数指针**。
>
>形如下图：
>
>![image-20211214152050733](https://gitee.com/ccnuktd/pic-bed/raw/master/image-20211214152050733.png)
>
>当含有虚函数的类**被继承**后，它的子类也会继承基类的vptr，但是此时vptr指向的vtable因为子类对虚函数的**重写**而改变。

### 3. 编程验证

下面是一段C++代码，不要吐槽为什么混用了C和C++，我们的目的是搞懂这个思想。

```c++
#include <iostream>
#include <stdio.h>
using namespace std;

class Base{
    virtual void func1(){
        cout << "Base:func1" << endl;
    }
    //这里之所以故意设置一个普通函数，是因为我想测试一下虚函数表中会不会有普通函数
    void func2(){
        cout << "Base:func2" << endl;
    }
    virtual void func3(){
        cout << "Base:func3" << endl;
    }
};

class Derived: public Base{
    //仅仅重写了Base类继承下来的func1
    void func1(){
        cout << "Derived func1" << endl;
    }
};
//上面写的虚函数对应的函数指针
typedef void (*fun)();

//将obj对象的第一个unsigned long长度的内容取出来存在vptr中
//通过vptr以及偏移量offset获取虚表中的函数指针
fun getFunc(void* obj,int offset){
    //将对象指针转化为unsigned long形式的指针，目的是阶段unsigned long长度后面的所有内容，然后把这个unsigned long的内容存储在vptr中
    void* vptr = (void* )*(unsigned long *)obj;
    printf("%x\n",vptr);
    //取出vptr[offset]的函数指针
    fun vfun = (fun )*((unsigned long *)vptr + offset);
    return vfun;
}

int main(){
    Base A;
    Base *pA = new Derived();
    Base *pB = new Base();
    fun f1 = getFunc(pA,0);
    f1();
    fun f2 = getFunc(pA,1);
    f2();

    fun ff1 = getFunc(pB,0);
    ff1();
    fun ff2 = getFunc(pB,1);
    ff2();
    fun ff3 = getFunc(pB,2);
    printf("%x\n",ff3);
    return 0;
}
```
输出如下：

```bash
4735c8
Derived func1
4735c8
Base:func3
4735b8
Base:func1
4735b8
Base:func3
4735b8
0
```

我们可以发现`pA和pB`的vptr指向的vtable都中有两个function。

pA的第一个function是Derived类的func1，第二个funciton是Base类func3；

pB的第一个function是Base类的func1，第二个funciton是Base类func3；

func2由于不是虚函数，就不会存在在虚表中，因此vtable[2]就是NULL指针。

调用过程为：如果检查出调用的是虚函数，就在vtable中找到这个虚函数并调用。

