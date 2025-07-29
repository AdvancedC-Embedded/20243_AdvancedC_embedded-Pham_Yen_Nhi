#include <stdio.h>
#include "test.h"

#define create_func(name, abc) \
void name() { \
    printf(abc "\n"); \
}

#define create_func1(name1, comd) \
void name1() { \
    printf(#comd"\n"); \
}

#define create_func3(x, y) \
printf("%d \n", x + y); 

create_func(test, "this is file test")
create_func1(test1, 26)

#define sum(...) \
void tong() { \
    printf("%d", __VA_ARGS__); \
}
sum(1, 2, 3, 4, 5)

#define CREAT(name) \
Ha##QuocCuong 

#define SIZE 10 

int a = SIZE;

int main() {
    display();
}