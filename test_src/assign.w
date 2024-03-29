
extern {
  void exit(i32 exit),
  void printf(string value, i32 i),
}

i32 b = 10;

{
  printf("Hello, World! %d\n", b);
}

exit(0);