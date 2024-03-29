section .data
__string0: db 'node.value1: %d', 0x0A, '', 0
__string1: db 'node.value2: %d', 0x0A, '', 0
__string2: db 'node.value3: %d', 0x0A, '', 0
__string3: db 'node.value4: %d', 0x0A, '', 0
__string4: db 'node.value5: %d', 0x0A, '', 0
__string5: db 'node.value6: %d', 0x0A, '', 0
__string6: db 'node.value7: %d', 0x0A, '', 0
extern exit
extern printf
section .text
global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 56                             ; allocate stack frame.
                                        ; set up program stack frame.
mov ebx, 0                              ; move integer on to ebx
mov [rbp - 56], rbx                     ; move value in to value1
mov ebx, 2                              ; move integer on to ebx
mov [rbp - 40], rbx                     ; move value in to value3
mov ebx, 1                              ; move integer on to ebx
mov [rbp - 48], rbx                     ; move value in to value2
mov ebx, 4                              ; move integer on to ebx
mov [rbp - 24], rbx                     ; move value in to value5
mov ebx, 3                              ; move integer on to ebx
mov [rbp - 32], rbx                     ; move value in to value4
mov ebx, 5                              ; move integer on to ebx
mov [rbp - 16], rbx                     ; move value in to value6
mov ebx, 6                              ; move integer on to ebx
mov [rbp - 8], rbx                      ; move value in to value7
                                        ; struct initializer 

push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 0                              ; move integer on to ebx
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rbx, __string1                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 1                              ; move integer on to ebx
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rbx, __string2                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 2                              ; move integer on to ebx
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rbx, __string3                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 3                              ; move integer on to ebx
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rbx, __string4                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 4                              ; move integer on to ebx
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rbx, __string5                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 5                              ; move integer on to ebx
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rbx, __string6                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 6                              ; move integer on to ebx
mov rsi, rbx                            ; move arg 1from rbx to rsi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
sub rsp, 8                              ; align stack to 16 bytes
mov rbx, 0                              ; move integer on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rax, 0
call exit                               ; call exit
add rsp, 8                              ; reallign stack to original state
pop rdi                                 ; restore register rdi
leave                                   ; tear down program stack frame.
ret                                     ; stop program
