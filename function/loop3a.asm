; @author   : Ivan Maulana Putra - Punto Nugroho
; @nim      : G64130076 - G64130052
; @project  : The 24 Game. How you find the way to get result = 24.
; @function : Looping to hitung1 (3, x, x, x)

loop3a:
	;store for the first loop
	;loop3 (3, 2, 1, 4)
	fld dword[num3]
	fstp dword[numa]

	fld dword[num2]
	fstp dword[numb]

	fld dword[num1]
	fstp dword[numc]

	fld dword[num4]
	fstp dword[numd]

	call hitung1

	;store for the second loop
	;loop3 (3, 2, 4, 1)
	fld dword[num3]
	fstp dword[numa]

	fld dword[num2]
	fstp dword[numb]

	fld dword[num4]
	fstp dword[numc]

	fld dword[num1]
	fstp dword[numd]

	call hitung1

	;store for the third loop
	;loop3 (3, 1, 2, 4)
	fld dword[num3]
	fstp dword[numa]

	fld dword[num1]
	fstp dword[numb]

	fld dword[num2]
	fstp dword[numc]

	fld dword[num4]
	fstp dword[numd]

	call hitung1

	;store for the forth loop
	;loop3 (3, 1, 4, 2)
	fld dword[num3]
	fstp dword[numa]

	fld dword[num1]
	fstp dword[numb]

	fld dword[num4]
	fstp dword[numc]

	fld dword[num2]
	fstp dword[numd]

	call hitung1

	;store for the fifth loop
	;loop3 (3, 4, 2, 1)
	fld dword[num3]
	fstp dword[numa]

	fld dword[num4]
	fstp dword[numb]

	fld dword[num2]
	fstp dword[numc]

	fld dword[num1]
	fstp dword[numd]

	call hitung1

	;store for the sixth loop
	;loop3 (3, 4, 1, 2)
	fld dword[num3]
	fstp dword[numa]

	fld dword[num4]
	fstp dword[numb]

	fld dword[num1]
	fstp dword[numc]

	fld dword[num2]
	fstp dword[numd]

	call hitung1

ret