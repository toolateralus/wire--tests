struct Node {
  i32 value = 0;
};

extern {
  void printf(string s, i32 v),
  void* malloc(i32 size),
  void exit(i32 v),
};

Node node = Node(0);

printf("sizeof Node : %d\n", sizeof node);
printf("node.value : %d\n", node.value);

exit(0);