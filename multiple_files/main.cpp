// main.cpp
#include "header.h"

int foo();

int bar(Base *b) {
	return b->get();
}

int main() {
	return foo();
}