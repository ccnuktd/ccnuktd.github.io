#include <stdio.h>
int main(){
    const int a = 6;
    int *p = (int*)&a;
    *p = 7;
    printf("%d,%d",a,*p);
    return 0;
}