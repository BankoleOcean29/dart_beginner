class MyNumber {
  late num val;
  num operator + (num n) => val * n;
  MyNumber(v) {val = v;}
}

main() {
  MyNumber mn = MyNumber(5);
  print(mn + 2);
}