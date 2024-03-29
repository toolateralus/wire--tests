section .data
__string0: db 'Hello, World! %d', 0x0A, '', 0
extern exit
extern printf
section .text
global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 4                              ; allocate stack frame.
                                        ; set up program stack frame.
mov ebx, 10                             ; move integer on to ebx
mov [rbp - 4], ebx                      ; move value in to b
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 12                             ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, [rbp + 8]                      ; load b into ebx from parent scope.
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 12                             ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
leave
push rdi                                ; save register rdi
sub rsp, 12                             ; align stack to 16 bytes
mov ebx, 0                              ; move integer on to ebx
mov edi, ebx                            ; move arg 0from ebx to edi
mov rax, 0
call exit                               ; call exit
add rsp, 12                             ; reallign stack to original state
pop rdi                                 ; restore register rdi
leave                                   ; tear down program stack frame.
ret                                     ; stop program
