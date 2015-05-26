; @author   : Ivan Maulana Putra - Punto Nugroho
; @nim      : G64130076 - G64130052
; @project  : The 24 Game. How you find the way to get result = 24.
; @function : Looping to hitung1 (1, x, x, x)

loop1a:
	;store for the first loop
	;loop1 (1, 2, 3, 4)
	fld dword[num1]
	fstp dword[numa]

	fld dword[num2]
	fstp dword[numb]

	fld dword[num3]
	fstp dword[numc]

	fld dword[num4]
	fstp dword[numd]

    call hitung1

    ;store for the second loop
    ;loop1 (1, 2, 4, 3)
    fld dword[num1]
    fstp dword[numa]

    fld dword[num2]
    fstp dword[numb]

    fld dword[num4]
    fstp dword[numc]

    fld dword[num3]
    fstp dword[numd]

    call hitung1

    ;store for the third loop
    ;loop1 (1, 3, 2, 4)
    fld dword[num1]
    fstp dword[numa]

    fld dword[num3]
    fstp dword[numb]

    fld dword[num2]
    fstp dword[numc]

    fld dword[num4]
    fstp dword[numd]

    call hitung1

    ;store for the forth loop
    ;loop1 (1, 3, 4, 2)
    fld dword[num1]
    fstp dword[numa]

    fld dword[num3]
    fstp dword[numb]

    fld dword[num4]
    fstp dword[numc]

    fld dword[num2]
    fstp dword[numd]

    call hitung1

    ;store for the fifth loop
    ;loop1 (1, 4, 2, 3)
    fld dword[num1]
    fstp dword[numa]

    fld dword[num4]
    fstp dword[numb]

    fld dword[num2]
    fstp dword[numc]

    fld dword[num3]
    fstp dword[numd]

    call hitung1

    ;store for the sixth loop
    ;loop1 (1, 4, 3, 2)
    fld dword[num1]
    fstp dword[numa]

    fld dword[num4]
    fstp dword[numb]

    fld dword[num3]
    fstp dword[numc]

    fld dword[num2]
    fstp dword[numd]

    call hitung1

; return
ret