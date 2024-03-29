import "libc.w";

mut auto i = 0;

while (true) {
  i = i + 1;
  if (i > 10) {
    break;
  }
  printf("hi! %d\n", i);
  // todo: fix continue statements.
  // they cause segfaults.
  //continue;
}
exit(0);