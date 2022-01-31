#include <iostream>
using namespace std;
class A
{
    public:
        char a;
        int b;
};
class B:A
{
    public:
        short a;
        long b;
};
int main(){
    cout << sizeof(A) << endl;czx x
    cout << sizeof(B);
    return 0;
}