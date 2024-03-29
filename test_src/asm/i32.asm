section .data
__string0: db '%d', 0
extern printf
extern exit
section .text
global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 17                             ; allocate stack frame.
                                        ; set up program stack frame.
mov ebx, 10                             ; move integer on to ebx
mov [rbp - 4], ebx                      ; move value in to t_0
mov ebx, 10                             ; move integer on to ebx
mov [rbp - 8], ebx                      ; move value in to t_01
mov rbx, 10                             ; move integer on to rbx
mov [rbp - 16], rbx                     ; move value in to a
mov bl, 10                              ; move integer on to bl
mov [rbp - 17], bl                      ; move value in to t
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 7                              ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, [rbp - 4]                      ; load t_0 into ebx from current scope.
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 7                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
sub rsp, 15                             ; align stack to 16 bytes
mov bl, 0                               ; move integer on to bl
mov dil, bl                             ; move arg 0from bl to dil
mov rax, 0
call exit                               ; call exit
add rsp, 15                             ; reallign stack to original state
pop rdi                                 ; restore register rdi
leave                                   ; tear down program stack frame.
ret                                     ; stop program
