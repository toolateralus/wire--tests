section .data
__string0: db 'float : %f', 0x0A, '', 0
extern exit
extern printf
extern malloc
extern free
f0 dd 10.0
f1 dd 2.0
f2 dd 3.0
section .text
global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 4                              ; allocate stack frame.
                                        ; set up program stack frame.
                                        ; binary operation : operator TOKEN_DIVIDE
                                        ; binary operation : operator TOKEN_MULTIPLY
movss xmm0, [f0]                        ; move float on to xmm0
movss xmm1, [f1]                        ; move float on to xmm1
mulss xmm0, xmm1
movss xmm1, [f2]                        ; move float on to xmm1
movss xmm2, xmm0                        ; Saving prev d reg for remainder
divss xmm0, xmm1
movss xmm2, xmm0                        ; Restoring prev d reg
movss [rbp - 4], xmm0                   ; move float value in to f
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
movss xmm0, [rbp - 4]                   ; load f into xmm0 from current scope.
movss xmm0, xmm0                        ; move float arg 1 from xmm0 to xmm0
cvtss2sd xmm0, xmm0                     ; convert float to double
mov rax, 1
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
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
