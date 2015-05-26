; @author   : Ivan Maulana Putra - Punto Nugroho
; @nim      : G64130076 - G64130052
; @project  : The 24 Game. How you find the way to get result = 24.
; @function	: Arithmetic Functions for output : (a o b) o (c o d)

tambah1b:
	; menyimpan tanda tambah di p
	; result1 = numa + numb
    fld dword[tambah]
    fstp dword[p]

	fld dword[numa]
	fld dword[numb]
	fadd
	fstp dword[result1]

	ret

kurang1b:
	; menyimpan tanda kurang di p
	; result1 = numa - numb
    fld dword[kurang]
    fstp dword[p]

	fld dword[numa]
	fld dword[numb]
	fsub
	fstp dword[result1]

	ret

kali1b:
	; menyimpan tanda kali di p
	; result1 = numa * numb
    fld dword[kali]
    fstp dword[p]

	fld dword[numa]
	fld dword[numb]
	fmul
	fstp dword[result1]

	ret

bagi1b:
	; menyimpan tanda bagi di p
	; result1 = numa / numb
    fld dword[bagi]
    fstp dword[p]

	fld dword[numa]
	fld dword[numb]
	fdiv
	fstp dword[result1]

	ret

tambah2b:
	; menyimpan tanda tambah di q
	; result2 = numc + numd
    fld dword[tambah]
    fstp dword[q]

	fld dword[numc]
	fld dword[numd]
	fadd
	fstp dword[result2]

	ret

kurang2b:
	; menyimpan tanda kurang di q
	; result2 = numc - numd
    fld dword[kurang]
    fstp dword[q]

	fld dword[numc]
	fld dword[numd]
	fsub
	fstp dword[result2]

	ret

kali2b:
	; menyimpan tanda kali di q
	; result2 = numc * numd
    fld dword[kali]
    fstp dword[q]

	fld dword[numc]
	fld dword[numd]
	fmul
	fstp dword[result2]

	ret

bagi2b:
	; menyimpan tanda bagi di q
	; result2 = numc / numd
    fld dword[bagi]
    fstp dword[q]

	fld dword[numc]
	fld dword[numd]
	fdiv
	fstp dword[result2]

	ret

tambah3b:
	; menyimpan tanda tambah di r
	; result = result1 + result2
    fld dword[tambah]
    fstp dword[r]

	fld dword[result1]
	fld dword[result2]
	fadd
	fstp dword[result]

	ret

kurang3b:
	; menyimpan tanda kurang di r
	; result = result1 - result2
    fld dword[kurang]
    fstp dword[r]

	fld dword[result1]
	fld dword[result2]
	fsub
	fstp dword[result]

	ret

kali3b:
	; menyimpan tanda kali di r
	; result = result1 * result2
    fld dword[kali]
    fstp dword[r]

	fld dword[result1]
	fld dword[result2]
	fmul
	fstp dword[result]

	ret

bagi3b:
	; menyimpan tanda bagi di r
	; result = result1 / result2
    fld dword[bagi]
    fstp dword[r]

	fld dword[result1]
	fld dword[result2]
	fdiv
	fstp dword[result]

	ret

check24b:
	; fungsi untuk cek apakah result = 24
	fld dword[result]		; convert menjadi float	
	fcomp dword[cmp24]		; membandingkan dengan varibel cmp24 = 24
	wait                 	; wait FPU
	fstsw ax             	; copy FPU flags to ax
	sahf                 	; copy ax to CPU flags

	je print_hitung2		; jmp ke print_hitung2 jika result = 24

	save2:					; savepoint
		ret 				; return

		print_hitung2:
		
			; Print kalau result = 24
			; Format print 'Answer : (%.0f %c %.0f) %c (%.0f %c %.0f)'
			; Karena floating point dalam bentuk 64 bit,
			; maka untuk printf, harus dipush menjadi 2 bagian
			push dword[o+4]
			push dword[o]
			push dword[q]
			push dword[n+4]
			push dword[n]
			push dword[r]
			push dword[m+4]
			push dword[m]
			push dword[p]
			push dword[l+4]
			push dword[l]
			push dword print2
			call printf

			add esp, 48				; mengembalikan esp ke ebp

			add esi, 1				; indikator ada hasil

			jmp save2				; kembali ke fungsi sebelumnya
