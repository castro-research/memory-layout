#include <stdio.h>

void function1() {
    int local1 = 10;
    printf("Endereco de local1 em function1: %p\n", (void*)&local1);
}

void function2() {
    int local2 = 20;
    printf("Endereco de local2 em function2: %p\n", (void*)&local2);
}

void function3() {
    int local3 = 30;
    printf("Endereco de local3 em function3: %p\n", (void*)&local3);
    function1();
}

int main() {
    int main_local = 40;
    printf("Endereco de main_local em main: %p\n", (void*)&main_local);

    function2();
    function3();

    return 0;
}