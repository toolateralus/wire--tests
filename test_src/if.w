
extern {
  void exit(i64 exit),
  void printf(string value),
}
// expected output: 4
if (10 < 10) {
  printf("fail\n");
} else if (1 == 10) {
  printf("fail\n");
} else if (10 == 1) {
  printf("fail\n");
} else {
  printf("pass\n");
}

exit(0);