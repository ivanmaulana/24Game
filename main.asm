; @author   : Ivan Maulana Putra - Punto Nugroho
; @nim      : G64130076 - G64130052
; @project  : The 24 Game. How to find the way to get result = 24.

; Input     : 9 7 6 3
; Output    : Here Are The Answers:
; Answer : 9 - 7 + 6 * 3
; Answer : 9 + 6 - 7 * 3
; Answer : 9 - 6 * 7 + 3
; Answer : 6 - 7 + 9 * 3
; Answer : 6 + 9 - 7 * 3
; Answer : 3 * 7 - 6 + 9
; Answer : 3 * 7 + 9 - 6
; Answer : (9 - 6) + (7 * 3)
; Answer : (9 - 6) + (3 * 7)
; Answer : (3 * 7) - (6 - 9)
; Answer : (3 * 7) + (9 - 6)

; fungsi untuk inisiasi
%include    'function/initial.asm'

; fungsi untuk program arimatika floating point
%include    'function/arithmetics1.asm'
%include    'function/arithmetics2.asm'

; fungsi untuk menghitung tiap loop
%include    'function/hitung1.asm'
%include    'function/hitung2.asm'

; fungsi untuk me-looping kemungkinan kombinasi input
%include    'function/loop1a.asm'
%include    'function/loop2a.asm'
%include    'function/loop3a.asm'
%include    'function/loop4a.asm'
%include    'function/loop1b.asm'
%include    'function/loop2b.asm'
%include    'function/loop3b.asm'
%include    'function/loop4b.asm'

; menggunakan fungsi dari bahasa C
extern printf
extern scanf


SECTION     .data

    ; kalimat inisiasi
    init        db      '-------------------Lets Play The 24 Game---------------------',0xa,
                db      '||                                                         ||',0xa,
                db      '||             by Ivan Maulana & Punto Nugroho             ||',0xa,
                db      '||                                                         ||',0xa,
                db      '-------------------------------------------------------------',0xa, 0xa, 0
    first       db      'Enter The First Number         : ', 0
    second      db      'Enter The Second Number        : ', 0
    third       db      'Enter The Third Number         : ', 0
    fourth      db      'Enter The Fourth Number        : ', 0
    beginstr    db      0xa, '-------------------Here Are The Answers:-------------------- ',0xa, 0xa, 0

    ; format kalimat output jika result = 24
    print1      db      'Answer : %.0f %c %.0f %c %.0f %c %.0f', 0xa, 0
    print2      db      'Answer : (%.0f %c %.0f) %c (%.0f %c %.0f)', 0xa, 0

    ; format input dari scanf
    format      db      '%f', 0

    ; kalimat penutup
    noresult    db      0xa, '                      No Answers Found                      ', 0xa, 0
    endstring   db      0xa, '------------------------------------------------------------', 0xa, 0
    playagain   db      'Wanna Play Again ?..       "y" for yes', 0xa, 0
    total       db      0xa, 0xa, 'Solutions Found        : %d', 0xa, 0

    ; variabel yang menyimpan nilai 24
    cmp24       dd      24.0

    ; variabel untuk menyimpan tanda char '+', '-', '*', '/'
    tambah      db      '+'
    kurang      db      '-'
    kali        db      '*'
    bagi        db      '/'

    ; untuk clear screen
    clr_scr     db      27, '[H', 27, '[2J', 0
    len_clr_scr equ     $-clr_scr

    ; yes / no
    yes         db      'y'
    no          db      'n'



SECTION     .bss

    ; variabel untuk menyimpan nilai dari scanf
    num1    resd    4
    num2    resd    4
    num3    resd    4
    num4    resd    4

    ; varibel untuk menyimpan hasil aritmatika
    result  resd    4
    result1 resd    4
    result2 resd    4

    ; variabel untuk menyimpan varibel sementara untuk proses looping fungsi
    numa    resd    4
    numb    resd    4
    numc    resd    4
    numd    resd    4

    ; variabel untuk menyimpan data yang akan di print
    l       resq    4
    m       resq    4
    n       resq    4
    o       resq    4
    p       resd    4
    q       resd    4
    r       resb    4

    ; variabel untuk menyimpan jawaban playagain
    question    resb    1


SECTION     .text
    global main

main:
    ; untuk menampilkan pesan inisiasi
    ; untuk memasukkan nilai input melalui scanf
    call initial

    ; fungsi untuk melakukan kombinasi looping : a o b o c o d
    ; contoh output : 9 - 6 * 7 + 3
    ; hitung1 (a, x, x, x)
    ; hitung1 (b, x, x, x)
    ; hitung1 (c, x, x, x)
    ; hitung1 (d, x, x, x)
    call loop1a
    call loop2a
    call loop3a
    call loop4a

    ; fungsi untuk melakukan kombinasi looping : (a o b) o (c o d)
    ; contoh output : 9 - 6 * 7 + 3
    ; hitung2 (a, x, x, x)
    ; hitung2 (b, x, x, x)
    ; hitung2 (c, x, x, x)
    ; hitung2 (d, x, x, x)
    call loop1b
    call loop2b
    call loop3b
    call loop4b

    ; untuk menampilkan garis penutup
    call end

exit:
    ; exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80

; NOTE:
; Example Of No Answers : 6 3 4 7