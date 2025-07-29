# Macro

```c
#include <stdio.h>   //File san he thong  
#include "test.h"    //Tu tao

#define MCU STM32   //Dinh nghia thay the
#define PLUS(x, y) ((x) + (y))
```

**Program counter**  
void: quay lai vung nho goi ham
define: khoi tao vung nho moi (tang bo nho nhung nhanh hon)

*VD*
```c
#define MCU STM32   //Muon dung lai MCU
#undef MCU
#define Adruino     //Define lai
```

**Thiet ke thu vien** (bat buoc)  *1 file thu vien kem 1 file thuc thi ma lenh (.h + .c)*

*VD:*

```c
test.h
#ifdef TEST_H     //neu chua dinh nghia thi dinh nghia
#define TEST_H
//Guard - tranh trung lap trong test.c
void display(); //chi neu dinh nghia ham

#undef TEST_H
```

test.c

```c  
#include "test.h"

void dislay() {    //dinh nghia ham
    printf("...")  
}
```

**VD (cai khac)**

```c
#define ESP32    1
#define STM32    2

#define MCU ESP32/STM32/... 
int main(...){ 
    while(1) {   //MCU bang cai nao thi chay cai day
        #if MCU == STM32
            void ...
        #elif MCU == ESP32
            void ...
        #else
        ...
        #endif
    }
}
```
   
     
**Note**  
\: viet them nhieu dong (#define)  
#: tao chuoi  
##: noi chuoi

...  
__VA_ARGS__: variadic - ham nhieu tham so  

*VD:*  
#define sum(...)  
int arr[] = (__VA_ARGS__);
