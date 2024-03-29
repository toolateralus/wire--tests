section .data
__string0: db 'a = %d', 0x0A, '', 0
__string1: db 'b = %d', 0x0A, '', 0
__string2: db 'c = %d', 0x0A, '', 0
__string3: db 'd = %d', 0x0A, '', 0
__string4: db 'v = %d', 0x0A, '', 0
__string5: db 'x = %d', 0x0A, '', 0
extern exit
extern printf
extern labs
section .text
global _start
_start:
push rbp                                ; save rbp
mov rbp, rsp                            ; push stack frame.
sub rsp, 24                             ; allocate stack frame.
                                        ; set up program stack frame.
mov ebx, 10                             ; move integer on to ebx
mov [rbp - 4], ebx                      ; move value in to a
                                        ; binary operation : operator TOKEN_MULTIPLY
mov ebx, 3                              ; move integer on to ebx
mov ecx, 5                              ; move integer on to ecx
imul ebx, ecx
mov [rbp - 8], ebx                      ; move value in to b
                                        ; binary operation : operator TOKEN_MULTIPLY
                                        ; binary operation : operator TOKEN_DIVIDE
mov ebx, 2                              ; move integer on to ebx
mov ecx, 2                              ; move integer on to ecx
mov eax, ebx                            ; Moving dividend to a
cqo
idiv ecx
mov ecx, 3                              ; move integer on to ecx
imul eax, ecx
mov [rbp - 12], eax                     ; move value in to c
                                        ; binary operation : operator TOKEN_MULTIPLY
                                        ; binary operation : operator TOKEN_MINUS
mov eax, 4                              ; move integer on to eax
mov ecx, 2                              ; move integer on to ecx
sub eax, ecx
                                        ; binary operation : operator TOKEN_MULTIPLY
mov ecx, 2                              ; move integer on to ecx
mov edx, 2                              ; move integer on to edx
imul ecx, edx
imul eax, ecx
mov [rbp - 16], eax                     ; move value in to d
                                        ; binary operation : operator TOKEN_PLUS
                                        ; binary operation : operator TOKEN_MINUS
                                        ; binary operation : operator TOKEN_PLUS
mov eax, [rbp - 4]                      ; load a into eax from current scope.
mov ecx, [rbp - 8]                      ; load b into ecx from current scope.
add eax, ecx
mov ecx, [rbp - 12]                     ; load c into ecx from current scope.
sub eax, ecx
mov ecx, [rbp - 16]                     ; load d into ecx from current scope.
add eax, ecx
mov [rbp - 20], eax                     ; move value in to v
                                        ; binary operation : operator TOKEN_PLUS
                                        ; binary operation : operator TOKEN_MINUS
                                        ; binary operation : operator TOKEN_PLUS
mov eax, 10                             ; move integer on to eax
                                        ; binary operation : operator TOKEN_MULTIPLY
mov ecx, 3                              ; move integer on to ecx
mov edx, 5                              ; move integer on to edx
imul ecx, edx
add eax, ecx
                                        ; binary operation : operator TOKEN_MULTIPLY
                                        ; binary operation : operator TOKEN_DIVIDE
mov ecx, 2                              ; move integer on to ecx
mov edx, 2                              ; move integer on to edx
mov rbx, rdx                            ; Saving prev d reg for remainder
mov rsi, rax                            ; Saving prev a reg for dividend
mov rax, rcx                            ; Moving dividend to a
cqo
idiv ebx
mov rcx, rax                            ; Moving product to original reg
mov rax, rsi                            ; Restoring prev a reg
mov rdx, rbx                            ; Restoring prev d reg
mov edx, 3                              ; move integer on to edx
imul ecx, edx
sub eax, ecx
                                        ; binary operation : operator TOKEN_MULTIPLY
                                        ; binary operation : operator TOKEN_MINUS
mov ecx, 4                              ; move integer on to ecx
mov edx, 2                              ; move integer on to edx
sub ecx, edx
                                        ; binary operation : operator TOKEN_MULTIPLY
mov edx, 2                              ; move integer on to edx
mov ebx, 2                              ; move integer on to ebx
imul edx, ebx
imul ecx, edx
add eax, ecx
mov [rbp - 24], eax                     ; move value in to x
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rax, __string0                      ; move string on to rax
mov rdi, rax                            ; move arg 0from rax to rdi
mov eax, [rbp - 4]                      ; load a into eax from current scope.
mov esi, eax                            ; move arg 1from eax to esi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rax, __string1                      ; move string on to rax
mov rdi, rax                            ; move arg 0from rax to rdi
mov eax, [rbp - 8]                      ; load b into eax from current scope.
mov esi, eax                            ; move arg 1from eax to esi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rax, __string2                      ; move string on to rax
mov rdi, rax                            ; move arg 0from rax to rdi
mov eax, [rbp - 12]                     ; load c into eax from current scope.
mov esi, eax                            ; move arg 1from eax to esi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rax, __string3                      ; move string on to rax
mov rdi, rax                            ; move arg 0from rax to rdi
mov eax, [rbp - 16]                     ; load d into eax from current scope.
mov esi, eax                            ; move arg 1from eax to esi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rax, __string4                      ; move string on to rax
mov rdi, rax                            ; move arg 0from rax to rdi
mov eax, [rbp - 20]                     ; load v into eax from current scope.
mov esi, eax                            ; move arg 1from eax to esi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
push rsi                                ; save register rsi
                                        ; no stack alignment needed
lea rax, __string5                      ; move string on to rax
mov rdi, rax                            ; move arg 0from rax to rdi
mov eax, [rbp - 24]                     ; load x into eax from current scope.
mov esi, eax                            ; move arg 1from eax to esi
mov rax, 0
call printf                             ; call printf
pop rsi                                 ; restore register rsi
pop rdi                                 ; restore register rdi
push rdi                                ; save register rdi
sub rsp, 8                              ; align stack to 16 bytes
mov eax, 0                              ; move integer on to eax
mov edi, eax                            ; move arg 0from eax to edi
mov rax, 0
call exit                               ; call exit
add rsp, 8                              ; reallign stack to original state
pop rdi                                 ; restore register rdi
leave                                   ; tear down program stack frame.
ret                                     ; stop program
