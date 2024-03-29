section .data
__string0: db 'fail', 0x0A, '', 0
__string1: db 'pass', 0x0A, '', 0
extern exit
extern printf
section .text
global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
                                        ; set up program stack frame.
                                        ; binary operation : operator TOKEN_LESS
mov ebx, 10                             ; move integer on to ebx
mov ecx, 10                             ; move integer on to ecx
cmp ebx, ecx
setl al
movzx ebx, al
cmp ebx, 0
jz else_0
if_0:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
sub rsp, 8                              ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rax, 0
call printf                             ; call printf
add rsp, 8                              ; reallign stack to original state
pop rdi                                 ; restore register rdi
leave
jmp endif_0
else_0:
                                        ; binary operation : operator TOKEN_EQUAL
mov ebx, 1                              ; move integer on to ebx
mov ecx, 10                             ; move integer on to ecx
cmp ebx, ecx
sete al
movzx ebx, al
cmp ebx, 0
jz else_1
if_1:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
sub rsp, 8                              ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rax, 0
call printf                             ; call printf
add rsp, 8                              ; reallign stack to original state
pop rdi                                 ; restore register rdi
leave
jmp endif_1
else_1:
                                        ; binary operation : operator TOKEN_EQUAL
mov ebx, 10                             ; move integer on to ebx
mov ecx, 1                              ; move integer on to ecx
cmp ebx, ecx
sete al
movzx ebx, al
cmp ebx, 0
jz else_2
if_2:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
sub rsp, 8                              ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rax, 0
call printf                             ; call printf
add rsp, 8                              ; reallign stack to original state
pop rdi                                 ; restore register rdi
leave
jmp endif_2
else_2:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
sub rsp, 8                              ; align stack to 16 bytes
lea rbx, __string1                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rax, 0
call printf                             ; call printf
add rsp, 8                              ; reallign stack to original state
pop rdi                                 ; restore register rdi
leave
endif_2:
endif_1:
endif_0:
push rdi                                ; save register rdi
                                        ; no stack alignment needed
mov rbx, 0                              ; move integer on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rax, 0
call exit                               ; call exit
pop rdi                                 ; restore register rdi
leave                                   ; tear down program stack frame.
ret                                     ; stop program
