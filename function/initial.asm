initial:
    ; esi sebagai indikator ada tidaknya hasil
    mov esi, 0

    mov eax, 4
    mov ebx, 1
    mov ecx, clr_scr
    mov edx, len_clr_scr
    int 0x80

    ; print lets play
    push dword init+1                 ; address of string
    push dword init+1                 ; address of string
    push dword init+1                 ; address of string
    push dword init+1                 ; address of string
    push dword init                 ; address of string
    call printf                     ; Call C function
    add esp,20                       ; pop stack 4 bytes

    ; print The First Number
    push dword first                ; address of string
    call printf                     ; Call C function
    add esp, 4                      ; pop stack 4 bytes


    push num1                       ; store variable
    push format                     ; format of scanf
    call scanf                      ; Call C function
    add esp, 8


    ; print The Second Number
    push dword second               ; address of string
    call printf                     ; Call C function
    add esp, 4                      ; pop stack 4 bytes

    push num2                       ; store variable
    push format                     ; format of scanf
    call scanf                      ; Call C function
    add esp, 8                      ; pop stack 8 bytes

    ; print The Third Number
    push dword third                ; address of format string
    call printf                     ; Call C function
    add esp, 4                      ; pop stack 4 bytes

    push num3                       ; store variable
    push format                     ; format of scanf
    call scanf                      ; Call C function
    add esp, 8                      ; pop stack 8 bytes

    ; print The Fourth Number
    push dword fourth               ; address of string
    call printf                     ; Call C function
    add esp, 4                      ; pop stack 4 bytes

    push num4                       ; store variable
    push format                     ; format of scanf
    call scanf                      ; Call C function
    add esp, 8                      ; pop stack 8 bytes

    ; print begin answers
    push dword beginstr             ; address of string
    call printf                     ; Call C function
    add esp, 4                      ; pop stack 4 bytes

    ;return
    ret



end:
    ; cek ada hasil atau tidak
    cmp esi, 0
    jne tidakAda

    push dword noresult             ; address of string
    call printf                     ; Call C function
    add esp, 4                      ; pop stack 4 bytes   

    tidakAda:

    push dword endstring            ; address of string
    call printf                     ; Call C function
    add esp, 4                      ; pop stack 4 bytes 

    push dword playagain            ; address of string
    call printf                     ; Call C function
    add esp, 4                      ; pop stack 4 bytes  

    mov eax, 3
    mov ebx, 0
    mov ecx, question
    mov edx, 1
    int 0x80

    mov al, [question]
    cmp al, [yes]
    je main

    ret