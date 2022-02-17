// foo.cpp
#include "header.h"

int bar(Base *b);

int foo() {
	Base *b = new Derived();
	return bar(b);
}