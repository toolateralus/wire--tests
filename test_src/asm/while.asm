section .data
__string0: db 'hi! %d', 0x0A, '', 0
extern exit
extern printf
extern malloc
extern free
section .text
global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 4                              ; allocate stack frame.
                                        ; set up program stack frame.
mov ebx, 0                              ; move integer on to ebx
mov [rbp - 4], ebx                      ; move value in to i
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
while_0:
mov ebx, 1                              ; move integer on to ebx
cmp ebx, 0
jz endwhile_0
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
                                        ; binary operation : operator TOKEN_PLUS
mov ebx, [rbp + 16]                     ; load i into ebx from parent scope.
mov ecx, 1                              ; move integer on to ecx
add ebx, ecx
mov [rbp + 16], ebx                     ; move value in to i
                                        ; binary operation : operator TOKEN_GREATER
mov ebx, [rbp + 16]                     ; load i into ebx from parent scope.
mov ecx, 10                             ; move integer on to ecx
cmp ebx, ecx
setg al
movzx ebx, al
cmp ebx, 0
jz else_0
if_0:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
jmp endwhile_0                          ; break to end of loop : endwhile_0
leave
jmp endif_0
else_0:
endif_0:
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, [rbp + 16]                     ; load i into ebx from parent scope.
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
leave
jmp while_0
endwhile_0:
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
