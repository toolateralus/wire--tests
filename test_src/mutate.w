extern {
  void printf(string fmt, i32 v),
  void exit(i32 v),
};

mut i32 x = 10;

void main() {
  x = 5;
}

main();

exit(x);

