extern {
  void printf(string fmt, i32 v),
  void exit(i32 v),
};


// THIS FAILS BECAUSE DECLARING A VARIABLE AND A FUNCTION CAUSES SEGFAULT AND 
// MEMORY ADDRESS ISSUES.

mut i32 exit_code = 0;

i32 main() {
  if (1 && 1) {
      printf("1 && 1 = 1\n", 0);
  } else {
      printf("1 && 1 = 0\n", 0);
      exit_code = 1;
  }
  
  if (1 && 0) {
      printf("1 && 0 = 1\n", 0);
      exit_code = 1;
  } else {
      printf("1 && 0 = 0\n", 0);
  }
  
  if (1 || 1) {
      printf("1 || 1 = 1\n", 0);
  } else {
      printf("1 || 1 = 0\n", 0);
      exit_code = 1;
  }
  
  if (1 || 0) {
      printf("1 || 0 = 1\n", 0);
  } else {
      printf("1 || 0 = 0\n", 0);
      exit_code = 1;
  }
  
  if (0 || 0) {
      printf("0 || 0 = 1\n", 0);
      exit_code = 1;
  } else {
      printf("0 || 0 = 0\n", 0);
  }
}
main();
exit(exit_code);