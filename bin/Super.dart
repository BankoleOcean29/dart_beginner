void main() {
  B b = B();
  b.silly();
}

class A {
  void silly() {
    print('a is silly');
  }
}

class B extends A {
  void silly(){
    print("B's silly");
  }

  void aSilly(){
    super.silly();
  }


}