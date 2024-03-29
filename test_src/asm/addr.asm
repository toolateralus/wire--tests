section .data
__string0: db 'typeof value: %s', 0x0A, '', 0
__string1: db 'i32', 0
__string2: db 'typeof pointer to value: %s', 0x0A, '', 0
__string3: db 'i32*', 0
__string4: db 'p: %p', 0x0A, '', 0
__string5: db 'hi %d', 0x0A, '', 0
extern exit
extern printf
section .text
global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 12                             ; allocate stack frame.
                                        ; set up program stack frame.
mov ebx, 10                             ; move integer on to ebx
mov [rbp - 4], ebx                      ; move value in to value
mov ebx, [rbp - 4]                      ; load value into ebx from current scope.
mov [rbp - 12], rbx                     ; move value in to ptr
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 12                             ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
lea rbx, __string1                      ; move string on to rbx
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
add rsp, 12                             ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 12                             ; align stack to 16 bytes
lea rbx, __string2                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
lea rbx, __string3                      ; move string on to rbx
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
add rsp, 12                             ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 12                             ; align stack to 16 bytes
lea rbx, __string4                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rbx, [rbp - 12]                     ; load ptr into rbx from current scope.
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
add rsp, 12                             ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 12                             ; align stack to 16 bytes
lea rbx, __string5                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rbx, [rbp - 12]                     ; load ptr into rbx from current scope.
mov rcx, [rcx]                          ; dereference
mov rsi, rcx                            ; move arg 1from rcx to rsi
mov rax, 0
call printf                             ; call printf
add rsp, 12                             ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
sub rsp, 4                              ; align stack to 16 bytes
mov ecx, 0                              ; move integer on to ecx
mov edi, ecx                            ; move arg 0from ecx to edi
mov rax, 0
call exit                               ; call exit
add rsp, 4                              ; reallign stack to original state
pop rdi                                 ; restore register rdi
leave                                   ; tear down program stack frame.
ret                                     ; stop program
