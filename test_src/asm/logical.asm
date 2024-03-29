section .data
__string0: db '1 && 1 = 1', 0x0A, '', 0
__string1: db '1 && 1 = 0', 0x0A, '', 0
__string2: db '1 && 0 = 1', 0x0A, '', 0
__string3: db '1 && 0 = 0', 0x0A, '', 0
__string4: db '1 || 1 = 1', 0x0A, '', 0
__string5: db '1 || 1 = 0', 0x0A, '', 0
__string6: db '1 || 0 = 1', 0x0A, '', 0
__string7: db '1 || 0 = 0', 0x0A, '', 0
__string8: db '0 || 0 = 1', 0x0A, '', 0
__string9: db '0 || 0 = 0', 0x0A, '', 0
extern printf
extern exit
section .text
global main
main:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
                                        ; binary operation : operator UNKNOWN_TOKEN
mov ebx, 1                              ; move integer on to ebx
mov ecx, 1                              ; move integer on to ecx
and ebx, ecx
cmp ebx, 0
jz else_0
if_0:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string0                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 0                              ; move integer on to ebx
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
leave
jmp endif_0
else_0:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string1                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 0                              ; move integer on to ebx
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
mov ebx, 1                              ; move integer on to ebx
mov [rbp + 16], ebx                     ; move value in to exit_code
leave
endif_0:
                                        ; binary operation : operator UNKNOWN_TOKEN
mov ebx, 1                              ; move integer on to ebx
mov ecx, 0                              ; move integer on to ecx
and ebx, ecx
cmp ebx, 0
jz else_1
if_1:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string2                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 0                              ; move integer on to ebx
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
mov ebx, 1                              ; move integer on to ebx
mov [rbp + 16], ebx                     ; move value in to exit_code
leave
jmp endif_1
else_1:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string3                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 0                              ; move integer on to ebx
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
leave
endif_1:
                                        ; binary operation : operator UNKNOWN_TOKEN
mov ebx, 1                              ; move integer on to ebx
mov ecx, 1                              ; move integer on to ecx
or ebx, ecx
cmp ebx, 0
jz else_2
if_2:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string4                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 0                              ; move integer on to ebx
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
leave
jmp endif_2
else_2:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string5                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 0                              ; move integer on to ebx
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
mov ebx, 1                              ; move integer on to ebx
mov [rbp + 16], ebx                     ; move value in to exit_code
leave
endif_2:
                                        ; binary operation : operator UNKNOWN_TOKEN
mov ebx, 1                              ; move integer on to ebx
mov ecx, 0                              ; move integer on to ecx
or ebx, ecx
cmp ebx, 0
jz else_3
if_3:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string6                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 0                              ; move integer on to ebx
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
leave
jmp endif_3
else_3:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string7                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 0                              ; move integer on to ebx
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
mov ebx, 1                              ; move integer on to ebx
mov [rbp + 16], ebx                     ; move value in to exit_code
leave
endif_3:
                                        ; binary operation : operator UNKNOWN_TOKEN
mov ebx, 0                              ; move integer on to ebx
mov ecx, 0                              ; move integer on to ecx
or ebx, ecx
cmp ebx, 0
jz else_4
if_4:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string8                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 0                              ; move integer on to ebx
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
mov ebx, 1                              ; move integer on to ebx
mov [rbp + 16], ebx                     ; move value in to exit_code
leave
jmp endif_4
else_4:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 0                              ; allocate stack frame.
push rdi                                ; save register rdi
push rsi                                ; save register rsi
sub rsp, 4                              ; align stack to 16 bytes
lea rbx, __string9                      ; move string on to rbx
mov rdi, rbx                            ; move arg 0from rbx to rdi
mov ebx, 0                              ; move integer on to ebx
mov esi, ebx                            ; move arg 1from ebx to esi
mov rax, 0
call printf                             ; call printf
add rsp, 4                              ; reallign stack to original state
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
leave
endif_4:
leave
ret

global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 4                              ; allocate stack frame.
                                        ; set up program stack frame.
mov ebx, 0                              ; move integer on to ebx
mov [rbp - 4], ebx                      ; move value in to exit_code
sub rsp, 4                              ; align stack to 16 bytes
mov rax, 0
call main                               ; call main
add rsp, 4                              ; reallign stack to original state
push rdi                                ; save register rdi
sub rsp, 12                             ; align stack to 16 bytes
mov ebx, [rbp - 4]                      ; load exit_code into ebx from current scope.
mov edi, ebx                            ; move arg 0from ebx to edi
mov rax, 0
call exit                               ; call exit
add rsp, 12                             ; reallign stack to original state
pop rdi                                 ; restore register rdi
leave                                   ; tear down program stack frame.
ret                                     ; stop program
