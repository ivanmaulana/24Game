; @author   : Ivan Maulana Putra - Punto Nugroho
; @nim      : G64130076 - G64130052
; @project  : The 24 Game. How you find the way to get result = 24.
; @function : Looping to hitung2 (4, x, x, x)

loop4b:
	;store for the first loop
	;loop4 (4, 2, 1, 3)
	fld dword[num4]
	fstp dword[numa]

	fld dword[num2]
	fstp dword[numb]

	fld dword[num1]
	fstp dword[numc]

	fld dword[num3]
	fstp dword[numd]

	call hitung2

	;store for the second loop
	;loop4 (4, 2, 3, 1)
	fld dword[num4]
	fstp dword[numa]

	fld dword[num2]
	fstp dword[numb]

	fld dword[num3]
	fstp dword[numc]

	fld dword[num1]
	fstp dword[numd]

	call hitung2

	;store for the third loop
	;loop4 (4, 1, 2, 3)
	fld dword[num4]
	fstp dword[numa]

	fld dword[num1]
	fstp dword[numb]

	fld dword[num2]
	fstp dword[numc]

	fld dword[num3]
	fstp dword[numd]

	call hitung2

	;store for the forth loop
	;loop4 (4, 1, 3, 2)
	fld dword[num4]
	fstp dword[numa]

	fld dword[num1]
	fstp dword[numb]

	fld dword[num3]
	fstp dword[numc]

	fld dword[num2]
	fstp dword[numd]

	call hitung2

	;store for the fifth loop
	;loop4 (4, 3, 2, 1)
	fld dword[num4]
	fstp dword[numa]

	fld dword[num3]
	fstp dword[numb]

	fld dword[num2]
	fstp dword[numc]

	fld dword[num1]
	fstp dword[numd]

	call hitung2

	;store for the sixth loop
	;loop4 (4, 3, 1, 2)
	fld dword[num4]
	fstp dword[numa]

	fld dword[num3]
	fstp dword[numb]

	fld dword[num1]
	fstp dword[numc]

	fld dword[num2]
	fstp dword[numd]

	call hitung2

ret