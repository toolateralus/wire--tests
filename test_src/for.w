extern {
  i32 printf(string value, i32 c),
  void exit(i32 code),
}

for (mut i32 i = 0; i < 250; i = i + 1) {
  printf("%d\n", i);
}

exit(0);