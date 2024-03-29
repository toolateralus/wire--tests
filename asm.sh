  
  name=math
  if [ ! -z "$1" ]
  then
    name=$1
  fi
  asm_file="asm/$name.asm"
  obj_file="obj/$name.o"
  executable_file="$name"
  
  # Assemble the asm file
  nasm -felf64 "$asm_file" -o "$obj_file"
  
  # Link the object file, dynamically linked.
  ld -m elf_x86_64 "$obj_file" -o "$executable_file" -lc -dynamic-linker /lib64/ld-linux-x86-64.so.2
  
  ./"$executable_file"
