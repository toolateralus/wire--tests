import "libc.w";


auto i = malloc(sizeof i32) as i32*;

*i = 42;

printf("i = %d\n", *i);


struct Type {
  string name;
  i32 size;
};

auto t = malloc(sizeof Type);

*t = "int";

printf("t_ptr->name = %s\n", *t);

exit(0);

