![image-20211109084107479](https://gitee.com/ccnuktd/pic-bed/raw/master/image-20211109084107479.png)

分析:

```c++
char a[5];
*p = a;
p = "abcd";
```

执行上面的语句时，一开始`“abcd”`会被放在全局区`.text`段，由于p是一个指针，因此这个指针指向了`“abcd”`在全局区的地址，这样做是可行的。

上面说明了全局区.text段，但实际上我对全局区.text段并不是非常了解。为了深入理解程序的**虚拟地址空间**布局，我查阅了各种博客的资料，下面是关于**虚拟地址空间**布局的说明。

### 虚拟地址空间

Linux虚拟空间布局

<img src="https://www.pianshen.com/images/27/45f368b96e4246847d099dbfafcb0d73.png" alt="img" style="zoom:45%;" />

| **名称**                                                 | **存储内容**                                                 |
| -------------------------------------------------------- | ------------------------------------------------------------ |
| stack                                                    | **局部变量、函数参数、返回地址**等。                         |
| heap                                                     | **动态分配的内存。**                                         |
| bss                                                      | **未初始化 或 初值为0 的全局变量和静态局部变量。**           |
| data                                                     | **已初始化 且 初值非0 的全局变量和静态局部变量。**           |
| text                                                     | **可执行代码、字符串字面值、只读变量。**                     |
| reserved                                                 | 不可访问，用于捕捉使用空指针和小整型值指针引用内存的异常情况。 |
| Random stack offset Random mmap offset Random brk offset | 意在防止恶意程序。Linux通过对栈、内存映射段、堆的起始地址加上随机偏移量来打乱布局，以免恶意程序通过计算访问栈、库函数等地址。 |
| mmap                                                     | 磁盘上的文件映射到虚拟地址空间中，用于装载动态共享库。       |

在这张图中，除去我们熟悉的堆栈段，还有一些非常重要的段：**bss段**、**data段**和**text段**

首先我们需要明确，bss段存储的是**未初始化**和**初始化为0**的全局变量和静态局部变量（static），举例说明：

```c++
int a;				//未初始化的全局变量
int b = 0;			//初始化为0的全局变量
void f(){
    static c;		//未初始化的局部静态变量
    static d = 0;	//初始化为0的局部静态变量
}

int main(){
	return 0;
}
```

bss段与data段的区别在于，这个变量到底有没有被初始化（初始化是不是非0）。

没有初始化（初始化为0）的变量可以直接由**操作系统初始化**。如果编译，那么汇编的文件就会短上很多。

举一个例子：

```c
//程序1
int array[30000];
int main() {
    return 0;
}
```

```c
//程序2
int array[30000] = {1, 2, 3, 4, 5, 6};
int main() {
    return 0;
}
```

上面两个程序编译汇编链接后的exe文件大小差距很大。

引用简书JamFF的实验

#### 程序1

![img](https://upload-images.jianshu.io/upload_images/7345261-712fd0f3aab99314.png?imageMogr2/auto-orient/strip|imageView2/2/w/440/format/webp)

#### 程序2



![img](https://upload-images.jianshu.io/upload_images/7345261-6219761a0287d606.png?imageMogr2/auto-orient/strip|imageView2/2/w/441/format/webp)

我们可以看一下两个程序的内存分布

#### 程序1

```bash
size main
   text    data     bss     dec     hex filename
   1099     544  120032  121675   1db4b main
```

#### 程序2

```bash
size main
   text    data     bss     dec     hex filename
   1099  120560       8  121667   1db43 main
```

我们可以发现，程序1的bss段非常大（120032单位），但是全部都是0（这个是系统将它清0了）

如果用汇编来描述只需要一句话就可以全部清零

```assembly
BSS SEGMENT
array DW 30000 DUP(4 DUP(0));30000个int
ENDS BSS
```

但是程序2的data段就需要

```assembly
DATA SEGMENT
array DB 00H,00H,00H,00H,01H,00H,00H,00H···;前两个int
ENDS DATA
```

程序2汇编的data段光是定义就需要用8 * 30000个字符来描述（还没算逗号），如果一个字符占一个字节，这里就需要大概240KB来描述（实际计算我不会，这里只是一种描述方式），而这些放在exe文件中就会使exe文件大上许多。

上面的分析并不是非常严谨，但是足以说明问题。

在执行exe文件（程序执行）的时候，如果是访问bss段，由于bss段在执行前被系统全部清理，因此里面的变量初始值都是0，在exe文件中就不需要说明了；在访问data段的时候，由于data段的内存分布是未知的，exe文件中就需要保存data段内存分布的代码（具体我也不清楚是怎么实现，但是原理大概是这样），这就导致此时的exe文件变大。

#### 总结：

text和data段都在可执行文件中，由系统从可执行文件中加载；

而bss段不在可执行文件中，由系统初始化。

### sizeof的各种坑

#### 数组传参

```c++
void foo3(char a3[3]){
    cout << sizeof(a3);
}
void foo4(char a4[]){
    cout << sizeof(a4);
}
int main(){
    char p[9] = {'a','s','d','s','f','s'};
    foo3(p);
    foo4(p);
    return 0;
}
```

这两个函数的输出都是4（我的系统中char*的大小为4）。在这两个函数中**传入的数组都退化成了指针**。为什么会退化成指针呢？因为函数的传参实际上都是传**值**。换句话说，传入的其实是p数组的值，那么p数组的值是什么呢？p数组的值是&p[0]，也就是数组第一个元素的地址，其实就是一个指针可以指向的地址，因此传参变成了传指针。

#### 结构体

结构体的sizeof一定要注意是不是有对齐的情况

如果不带`#pragma pack`，这个玩意指的是不要对齐。

举一个例子：

![image-20211109102220159](https://gitee.com/ccnuktd/pic-bed/raw/master/image-20211109102220159.png)

我们发现结构体的`char c`补成了4个字节，为什么会这样呢？这是因为结构体内成员，都需要按照**结构体最大成员sizeof的大小补齐**。

以下是结构体对齐准则：

>（1）数据成员对齐规则：结构（struct）（或联合（union））的数据成员，第一个数据成员放在offset为0的地方，以后每个数据成员存储的起始位置要从该成员大小或者成员的子成员大小（只要该成员有子成员，比如说是数组，结构体等）的整数倍开始（比如int在32位机为4字节，则要从4的整数倍地址开始存储）。
>
>（2）结构体作为成员：如果一个结构体里有某些结构体成员，则结构体成员要从其内部最大元素大小的整数倍地址开始存储（struct a 里存有struct b，b里有char，int，double等元素，那么b应该从8的整数倍开始存储）。
>
>（3）收尾工作：结构体的总大小，也就是sizeof的结果，必须是其内部最大成员的整数倍，不足的要补齐。
>
>原文链接：https://blog.csdn.net/u014186096/article/details/48290013

另一个例子：

![image-20211109173631574](https://gitee.com/ccnuktd/pic-bed/raw/master/image-20211109173631574.png)

#### 类

先记下来，后面看C++高级属性的时候再去理解

> 1. 空类的`sizeof=1`
>
> 2. 如果类包含成员，则只包含非静态成员所占的空间
>
> ```c++
> //下面这几种都不算空间
> static a;
> void f();
> static void k();
> void g()const;
> Data();
> //下面这个才能算
> int a;
> ```
>
> ```c++
> class A{
> 	int b;
> 	double c;
> 	char d;
> };
> ```
>
> `sizeof(A) = 4 + 8 + 4`，最后一个+4主要是因为char对齐
>
> 3. 如果包含虚函数，虚函数表的指针需要算上去，但是不管有几个虚函数，都只有一个表，所以指针也只有一个（4字节）
>
> <font color="red">这里要注意，要先对齐再算虚函数指针。不能先加指针再对齐（这样可能会少一些）</font>
>
> ```c++
> class A{
> 	int a;
>     virtual void f(int);
>     virtual void d(int);
> };
> ```
>
> `sizeof(A) = 4 + 4`，只有一个虚函数表指针，这个虚函数表中有两个函数
>
> 4. 如果有子类，而且没有虚函数
>
> `sizeof(父类) = 父类大小 + sizeof(子类)`
>
> 5. 如果有子类，而且有虚函数
>
> 这里注意子类和父类公用一个虚函数表，因此表指针只需要一个，即
>
> `sizeof(父类) = 父类大小(不计算虚函数指针【-4】) + sizeof(子类)`
>
> 6. 有虚继承
>
> 有虚继承要注意两点：
>
> > 1. 虚继承中共用的父类变量在内存中只保留一份。
> > 2. 子类需要有一个指向父类的指针（4字节）。
> > 3. 在虚继承中子类和父类的虚表指针并不是同一个，因此需要分别计算父子的虚表指针。

### 字符串赋值

```c++
char p1[5] = {"abcde"};				//过不了编译
char p2[5] = {'a','b','c','d','e'};	//末尾没有\0,但是能过编译
char *p3;
p3 = "abcde";						//末尾有\0,这是正确的赋值方式（虽然会有warning）
```

### include的作用

![image-20211110141314232](https://gitee.com/ccnuktd/pic-bed/raw/master/image-20211110141314232.png)

`#include`是将一个文本文件插入替换掉`#include`的代码，也就是说上面这个操作也是可以输出`HelloWorld!`的

### 析构函数的私有

如果把析构函数设置为私有会怎么样呢？

```c++
namespace t15 {
	class Heap {
	public:
		// 用户可以调用new创建对象
		Heap()
		{
			p = malloc(100);
		}

		void destroy() 
		{ 
			delete this;
		}

	private:
		// 用户无法调用delete删除对象
		~Heap()
		{
			free(p);
		}
	private:
		void *p;
	};
};
void test15()
{
	t15::Heap *p = new t15::Heap();
	p->destroy();
}
```

在进行类的构造时，编译器会先检查**析构函数**（为什么先检查析构函数呢？因为如果不看析构函数直接构造，有可能会出现析构函数时私有的无法调用，从而导致类只能构造不能析构的问题），如果类的析构函数是私有的，则编译器不允许通过**构造函数**的方式创建类。要想创建类只能通过new来创建。

### 小技巧

```c++
class CBuffer
{
    char * m_pBuffer;
    int m_size;
    public:
        CBuffer()
        {
            m_pBuffer=NULL;
        }
        ~CBuffer()
        {
            Free();
        }
        void Allocte(int size)  { // (1)
            m_size=size;
            m_pBuffer= new char[size];	//问题：在进行·new的时候，先要看一下m_pBuffer是不是空，以避免内存泄漏
        }
    private:
        void Free()
        {
            if(m_pBuffer!=NULL) // (2)
            {
                delete[] m_pBuffer; 
                m_pBuffer=NULL;
            }
        }
    public:
        void SaveString(const char* pText) const // (3)
        {
            strcpy(m_pBuffer, pText); // (4)//const函数不应该改pText；而且就算要改，在用strcpy的时候要检查m_pBuffer的空间是否足够
        }
        char* GetBuffer() const
        {
            return m_pBuffer;

	        }

	};

void main (int argc, char* argv[])
{
    CBuffer buffer1;
    buffer1.SaveString("Microsoft");
    printf(buffer1.GetBuffer());
}

```

