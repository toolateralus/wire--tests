section .data
__string0: db '%d', 0x0A, '', 0
extern printf
extern exit
section .text
global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
                                        ; set up program stack frame.
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 4                              ; allocate stack frame.
mov ebx, 0                              ; move integer on to ebx
mov [rbp - 4], ebx                      ; move value in to i
for_0:
                                        ; binary operation : operator TOKEN_LESS
mov ebx, [rbp - 4]                      ; load i into ebx from current scope.
mov ecx, 250                            ; move integer on to ecx
cmp ebx, ecx
setl al
movzx ebx, al
cmp ebx, 0
jz endfor_0
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, [rbp + 8]                      ; load i into ebx from parent scope.
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
leave
                                        ; binary operation : operator TOKEN_PLUS
mov ebx, [rbp - 4]                      ; load i into ebx from current scope.
mov ecx, 1                              ; move integer on to ecx
add ebx, ecx
mov [rbp - 4], ebx                      ; move value in to i
jmp for_0
endfor_0:
leave
push rdi                                ; save register rdi
                                        ; no stack alignment needed
mov ebx, 0                              ; move integer on to ebx
mov edi, ebx                            ; move arg 0from ebx to edi
mov rax, 0
call exit                               ; call exit
pop rdi                                 ; restore register rdi
leave                                   ; tear down program stack frame.
ret                                     ; stop program
