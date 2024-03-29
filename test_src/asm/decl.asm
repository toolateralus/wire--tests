section .data
__string0: db '%d', 0x0A, '', 0
extern exit
extern printf
section .text
global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 16                             ; allocate stack frame.
                                        ; set up program stack frame.
mov rbx, 10                             ; move integer on to rbx
mov [rbp - 8], rbx                      ; move value in to a
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 8                              ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rbx, [rbp - 8]                      ; load a into rbx from current scope.
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
add rsp, 8                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
mov rbx, 10                             ; move integer on to rbx
mov [rbp - 16], rbx                     ; move value in to z
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 8                              ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rbx, [rbp - 16]                     ; load z into rbx from current scope.
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
add rsp, 8                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
                                        ; no stack alignment needed
mov rbx, 0                              ; move integer on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rax, 0
call exit                               ; call exit
pop rdi                                 ; restore register rdi
leave                                   ; tear down program stack frame.
ret                                     ; stop program
