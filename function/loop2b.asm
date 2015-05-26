; @author   : Ivan Maulana Putra - Punto Nugroho
; @nim      : G64130076 - G64130052
; @project  : The 24 Game. How you find the way to get result = 24.
; @function : Looping to hitung2 (2, x, x, x)

loop2b:
	;store for the first loop
	;loop2 (2, 1, 3, 4)
	fld dword[num2]
	fstp dword[numa]

	fld dword[num1]
	fstp dword[numb]

	fld dword[num3]
	fstp dword[numc]

	fld dword[num4]
	fstp dword[numd]

	call hitung2

	;store for the second loop
	;loop2 (2, 1, 4, 3)
	fld dword[num2]
	fstp dword[numa]

	fld dword[num1]
	fstp dword[numb]

	fld dword[num4]
	fstp dword[numc]

	fld dword[num3]
	fstp dword[numd]

	call hitung2

	;store for the third loop
	;loop2 (2, 3, 1, 4)
	fld dword[num2]
	fstp dword[numa]

	fld dword[num3]
	fstp dword[numb]

	fld dword[num1]
	fstp dword[numc]

	fld dword[num4]
	fstp dword[numd]

	call hitung2

	;store for the forth loop
	;loop2 (2, 3, 4, 1)
	fld dword[num2]
	fstp dword[numa]

	fld dword[num3]
	fstp dword[numb]

	fld dword[num4]
	fstp dword[numc]

	fld dword[num1]
	fstp dword[numd]

	call hitung2

	;store for the fifth loop
	;loop2 (2, 4, 1, 3)
	fld dword[num2]
	fstp dword[numa]

	fld dword[num4]
	fstp dword[numb]

	fld dword[num1]
	fstp dword[numc]

	fld dword[num3]
	fstp dword[numd]

	call hitung2

	;store for the sixth loop
	;loop2 (2, 4, 3, 1)
	fld dword[num2]
	fstp dword[numa]

	fld dword[num4]
	fstp dword[numb]

	fld dword[num3]
	fstp dword[numc]

	fld dword[num1]
	fstp dword[numd]

	call hitung2

ret