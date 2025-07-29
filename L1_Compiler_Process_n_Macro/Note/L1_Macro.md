# Macro

#include <stdio.h> => file san he thong

#include "test.h" => tu tao

#define MCU STM32   dinh nghia thay the

#define PLUS(x, y) ((x) + (y))

define function
#define SUM(a, b)\    "\": cho phep viet them nhieu dong
printf("sum: %d", a+b)

void

program counter
void: quay lai vung nho goi ham
define: khoi tao vung nho moi (tang bo nho nhung nhanh hon)

#define MCU STM32   muon dung lai MCU
#undef MCU
#define Adruino     define lai

Thiet ke thu vien (bat buoc)
test.h
#ifdef TEST_H     //neu chua dinh nghia thi dinh nghia
#define TEST_H
//Guard - tranh trung lap trong test.c
void display(); //chi neu dinh nghia ham

#undef TEST_H

test.c
#include "test.h"

void dislay() {    //dinh nghia ham
    printf("...)  
}

1 file thu vien kem 1 file thuc thi ma lenh (.h + .c)

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

