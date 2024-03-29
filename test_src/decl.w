
extern {
  void exit(i64 exit),
  void printf(string value, i64 a),
}

mut i64 a = 10;
printf("%d\n", a);

mut i64 z = 10;
printf("%d\n", z);

exit(0);