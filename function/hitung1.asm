; @author   : Ivan Maulana Putra - Punto Nugroho
; @nim      : G64130076 - G64130052
; @project  : The 24 Game. How you find the way to get result = 24.
; @function : 3-level looping for counting every possibilities to get result = 24 

hitung1:
    ; menyimpan numa ke l
    ; untuk proses printf

    fld dword[numa]
    fstp qword[l]

    ; menyimpan numb ke m
    ; untuk proses printf
    fld dword[numb]
    fstp qword[m]

    ; menyimpan numc ke n
    ; untuk proses printf
    fld dword[numc]
    fstp qword[n]

    ; menyimpan numd ke o
    ; untuk proses printf
    fld dword[numd]
    fstp qword[o]


    ; Berikut Adalah fungsi untuk me-looping 3 tingkat
    ; Cara Kerja nya Seperti Berikut:
    ; for (i=0; i<4; i++) {
    ;   if (i=0) result1 = numa + numb;
    ;   else if (i=1) result1 = numa - numb;
    ;   else if (i=2) result1 = numa * numb;
    ;   else result1 = numa / numb;
    
    ;       for (j=0; j<4; j++) {
    ;           if (i=0) result2 = result1 + numc;
    ;           else if (i=1) result2 = result1 - numc;
    ;           else if (i=2) result2 = result1 * numc;
    ;           else result2 = result1 / numc;
    
    ;             for (k=0; k<4; k++){
    ;                   if (i=0) result = result2 + numd;
    ;                   else if (i=1) result = result2 - numd;
    ;                   else if (i=2) result = result2 * numd;
    ;                   else result = result2 / numd;
    
    ;                   check24();
    ;                   print();
    ;              }
    ;       }
    ;   }       
    tingkat1a:
    	call tambah1a              ; call fungsi tambah1a : result1 = numa + numb
    	call tingkat2a             ; call ke tingkat2

    	call kurang1a              ; call fungsi kurang1a : result1 = numa - numb
    	call tingkat2a             ; call ke tingkat2

    	call kali1a                ; call fungsi kali1a : result1 = numa * numb
    	call tingkat2a             ; call ke tingkat2

    	call bagi1a                ; call fungsi bagi1a : result1 = numa / numb
    	call tingkat2a             ; call ke tingkat2

    		tingkat2a:
    			call tambah2a            ; call fungsi tambah2a : result2 = result1 + numc
    			call tingkat3a           ; call ke tingkat3

    			call kurang2a            ; call fungsi kurang2a : result2 = result1 - numc
    			call tingkat3a           ; call ke tingkat3

    			call kali2a              ; call fungsi kali2a : result2 = result1 * numc
    			call tingkat3a           ; call ke tingkat3

    			call bagi2a              ; call fungsi bagi2a : result2 = result1 / numc
    			call tingkat3a           ; call ke tingkat3

    				tingkat3a:
    					call tambah3a          ; call fungsi tambah3a : result = result1 + result2
    					call check24           ; cek apakah result = 24, jika sama maka print

    					call kurang3a          ; call fungsi kurang3a : result = result1 - result2  
    					call check24           ; cek apakah result = 24, jika sama maka print

    					call kali3a            ; call fungsi kali3a : result = result1 * result2
    					call check24           ; cek apakah result = 24, jika sama maka print

    					call bagi3a            ; call fungsi bagi3a : result = result1 / result2
    					call check24           ; cek apakah result = 24, jika sama maka print

    					ret                    ; return ke tingkat2

    			ret                      ; return ke tingkat1

    	ret                        ; return ke looping kombinasi