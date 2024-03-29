section .data
__string0: db 'xaryu', 0
extern exit
extern printf
extern malloc
extern free
section .text
global main
main:
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
mov ebx, 0                              ; move integer on to ebx
mov rax, rbx                            ; move return value to RAX
leave                                   ; tear down function stack frame.
ret                                     ; return from function

global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
                                        ; set up program stack frame.
push rdi                                ; save register rdi
                                        ; no stack alignment needed
mov ebx, 0                              ; move integer on to ebx
mov edi, ebx                            ; move arg 0from ebx to edi
mov rax, 0
call exit                               ; call exit
pop rdi                                 ; restore register rdi
leave                                   ; tear down program stack frame.
ret                                     ; stop program
