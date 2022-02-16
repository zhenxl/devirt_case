编译O1 no inline devirt
```
clang -flto -O1 -fno-inline -fwhole-program-vtables  -fstrict-vtable-pointers -c A_B.cpp -o ab.o
llvm-dis ab.o
```
通过ll编译生成汇编:
```
clang++ ab_O2_inline_devirt.ll -S -o ab_O2_inline_devirt.s
```
其中O2 ,O1, inline相关信息按需添加选项即可