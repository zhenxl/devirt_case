// foo.cpp
#include "header.h"

int bar(Base *b);
// int bar(Base *b) {
// 	return b->get();
// }

int foo() {
	Base *b = new Derived();
	return bar(b);
}