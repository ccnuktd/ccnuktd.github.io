#include <iostream>
using namespace std;
/*
//数组的传参
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
*/

///*
//结构体的传参
struct S2{
    double a;
    int b;
    char d;
};
struct S1{
    unsigned int i;

    S2 s2;
    unsigned int j;
    unsigned int k;
    char d;
    
};
int main(){
    S1 s1 = {0xFFFFFFFF,{1.6,2,'f'},1,2,'d'};
    return 0;
}
//*/

