# Compiler Process

## 1. Preprocessor
main.c       main.cpp   --> main.i  
test.c  
test1.c

- Thay the cac header,file include
- Xoa cmt
- Thay the cac macro da define

> gcc -E Ex1.c -o Ex1.i

## 2. Compiler
main.i --> main.s (file assembly, ma may)

> gcc -S Ex1.i -o Ex1.s

## 3. Assembler
main.s --> main.o (object)

> gcc -c Ex1.s -o Ex1.o

## 4. Linker
main.o   test.o  test1.o 
lien ket file co int main()

Trong test.o co int main() --> test.exe (file truc tiep thuc thi chuong trinh)

> gcc Ex1.o test.o -o Ex1

## 5. Execute
./test  
./main

> ./Ex1