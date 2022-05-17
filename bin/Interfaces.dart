class A {
  int age = 9;
  void silly() {
    print ("A's silly");
  }
}

class B {
  void awesome() {
    print ("B's awesome");
  }
}

class C implements A, B {
  @override
  int age = 21;
  void silly() {
    print("C's silly");
  }

  void awesome() {
    print ("C's Awesome");
  }
}

class D extends B implements A {
  void silly() {
    print("D's Silly");
  }

  @override
  late int age;
}

void main() {
  A c = C();
  c.silly();
  D d = D();
  d.awesome();
  d.silly();

}