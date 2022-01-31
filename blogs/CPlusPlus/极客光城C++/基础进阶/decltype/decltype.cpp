#include <iostream>
#include <typeinfo>
using namespace std;

int i;
int arr[3] = {0};
int *ptr = arr;
struct node { double a; }s;
void f1(int);
// void f1(void);
int && f2();
int main(){
    decltype(arr) a = {0};
    decltype(ptr) b;
    decltype(s) c;
    decltype(f1) d;
    decltype(f2()) e = 1;
    decltype((true ? i : i)) f = i;
    decltype((arr[1])) g = i;
    cout << typeid(a).name() << endl;
    cout << typeid(b).name() << endl;
    cout << typeid(c).name() << endl;
    cout << typeid(d).name() << endl;
    cout << typeid(e).name() << endl;
    cout << typeid(f).name() << endl;
    cout << typeid(g).name() << endl;
    return 0;
}