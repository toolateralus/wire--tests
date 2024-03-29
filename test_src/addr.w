extern {
  void exit(i32 exit),
  void printf(varargs),
};

auto value = 10;
auto ptr = &value;

printf("typeof value: %s\n", typeof value);
printf("typeof pointer to value: %s\n", typeof ptr);

printf("p: %p\n", ptr);
printf("hi %d\n", *ptr)

exit(0);
