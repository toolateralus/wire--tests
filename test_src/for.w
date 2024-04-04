extern {
  i32 printf(string value, i32 c),
  void exit(i32 code),
}
for (mut i32 i = 0; i < 5; i = i + 1) {
  if (i == 4) {
    exit(0);
  }
}
exit(1);