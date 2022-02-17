//
// Created by bytedance on 2022/2/15.
//
#include <new>

class A {
public:
    A(){this->field = 3;}
    A(int a){ this->field = a;}
    virtual void foo();
    int field;
};

class B : public A {
public:
    B(int a) { this->field2 = a;}
    void foo() override;
    int field2;
};

int main() {
    A* a;
    int c = 4;
    a = new B(4);
    a->foo();
    return 0;
}

