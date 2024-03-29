
extern {
  void exit(i32 exit),
  void printf(string fmt, i32 v),
  i32 labs(i32 v),
}

i32 a = 10;
i32 b = 3 * 5;
i32 c = 2 / 2 * 3;
i32 d = (4 - 2) * (2 * 2);
i32 v = a + b - c + d;

i32 x = 10 + 3 * 5 - 2 / 2 * 3 + (4 - 2) * (2 * 2);

printf("a = %d\n", a);
printf("b = %d\n", b);
printf("c = %d\n", c);
printf("d = %d\n", d);
printf("v = %d\n", v);
printf("x = %d\n", x);

exit(0);