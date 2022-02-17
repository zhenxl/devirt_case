// header.h
struct Base {
	int x;
	virtual int get() {return 100;};
};

struct Derived : public Base {
	virtual int get() override {return 1000;};
};

