#include <iostream>
#include <stdio.h>
using namespace std;

class Base{

    virtual void func1(){
        cout << "Base:func1" << endl;
    }
    void func2(){
        cout << "Base:func2" << endl;
    }
    virtual void func3(){
        cout << "Base:func3" << endl;
    }
};

class Derived: public Base{

    void func1(){
        cout << "Derived func1" << endl;
    }
    
};

typedef void (*fun)();

fun getFunc(void* obj,int offset){
    void* vptr = (void* )*(unsigned long *)obj;
    printf("%x\n",vptr);
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