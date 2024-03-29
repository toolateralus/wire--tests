section .data
__string0: db 'i = %d', 0x0A, '', 0
__string1: db 'int', 0
__string2: db 't_ptr->name = %s', 0x0A, '', 0
extern exit
extern printf
extern malloc
extern free
section .text
global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 16                             ; allocate stack frame.
                                        ; set up program stack frame.
push rdi                                ; save register rdi
                                        ; no stack alignment needed
mov ebx, 4                              ; move integer on to ebx
                                        ; sizeof expression: 
mov edi, ebx                            ; move arg 0from ebx to edi
mov rax, 0
call malloc                             ; call malloc
pop rdi                                 ; restore register rdi
mov [rbp - 8], rax                      ; move value in to i
mov rax, [rbp - 8]                      ; load i into rax from current scope.
mov ebx, 42                             ; move integer on to ebx
mov [rax], ebx                          ; store value in deref'd address
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 8                              ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov rbx, [rbp - 8]                      ; load i into rbx from current scope.
mov rax, [rax]                          ; dereference
mov rsi, rax                            ; move arg 1from rax to rsi
mov rax, 0
call printf                             ; call printf
add rsp, 8                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
                                        ; no stack alignment needed
mov eax, 16                             ; move integer on to eax
                                        ; sizeof expression: 
mov edi, eax                            ; move arg 0from eax to edi
mov rax, 0
call malloc                             ; call malloc
pop rdi                                 ; restore register rdi
mov [rbp - 16], rax                     ; move value in to t
mov rax, [rbp - 16]                     ; load t into rax from current scope.
lea rcx, __string1                      ; move string on to rcx
mov [rax], rcx                          ; store value in deref'd address
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 8                              ; align stack to 16 bytes
lea rcx, __string2                      ; move string on to rcx
mov rdi, rcx                            ; move arg 0from rcx to rdi
mov rcx, [rbp - 16]                     ; load t into rcx from current scope.
mov rax, [rax]                          ; dereference
mov rsi, rax                            ; move arg 1from rax to rsi
mov rax, 0
call printf                             ; call printf
add rsp, 8                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
                                        ; no stack alignment needed
mov eax, 0                              ; move integer on to eax
mov edi, eax                            ; move arg 0from eax to edi
mov rax, 0
call exit                               ; call exit
pop rdi                                 ; restore register rdi
leave                                   ; tear down program stack frame.
ret                                     ; stop program
