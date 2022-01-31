# C与C++的相互调用

### C中调用C++函数

```c++
// add.h
#ifndef ADD_H
#define ADD_H
extern "C" {
    int add(int x,int y);
}
#endif

// add.cpp
#include "add.h"

int add(int x,int y) {
    return x+y;
}

// add.c
extern int add(int x,int y);
int main() {
    add(2,3);
    return 0;
}
```

## C++中调用C函数

```c++
//add.h
#ifndef ADD_H
#define ADD_H
int add(int x,int y);
#endif

//add.c
#include "add.h"

int add(int x,int y) {
    return x+y;
}

//add.cpp
#include <iostream>

using namespace std;
extern "C"{
    #include "add.h"
    //注意不要用int add(int x,int y);引入
    //因为在头文件中有宏控制会避免重复引入的情况
}
int main() {
    add(2,3);
    return 0;
}
```

