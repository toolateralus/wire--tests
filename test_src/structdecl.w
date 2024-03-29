
extern {
  void exit(i64 exit),
  void printf(string value, i64 value),
}

struct Node {
  i64 value1;
  i64 value2;
  i64 value3;
  i64 value4;
  i64 value5;
  i64 value6;
  i64 value7;
}


Node node = Node(0, 1, 2, 3, 4, 5, 6);

//node.value1 = 10;

printf("node.value1: %d\n", node.value1);
printf("node.value2: %d\n", node.value2);
printf("node.value3: %d\n", node.value3);
printf("node.value4: %d\n", node.value4);
printf("node.value5: %d\n", node.value5);
printf("node.value6: %d\n", node.value6);
printf("node.value7: %d\n", node.value7);

exit(0);