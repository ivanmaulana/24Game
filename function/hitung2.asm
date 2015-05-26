; @author   : Ivan Maulana Putra - Punto Nugroho
; @nim      : G64130076 - G64130052
; @project  : The 24 Game. How you find the way to get result = 24.
; @function : 3-level looping for counting every possibilities to get result = 24 

hitung2:
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
    ;
    ;       for (j=0; j<4; j++) {
    ;           if (j=0) result2 = numc + numd;
    ;           else if (j=1) result2 = numc - numd;
    ;           else if (j=2) result2 = numc * numd;
    ;           else result2 = numc / numd;
    ;
    ;             for (k=0; k<4; k++){
    ;                   if (k=0) result = result1 + result2;
    ;                   else if (k=1) result = result1 - result2;
    ;                   else if (k=2) result = result1 * result2;
    ;                   else result = result1 / result2;
    ;
    ;                   check24();
    ;                   print();
    ;              }
    ;       }
    ;   }    
    tingkat1b:
        call tambah1b              ; call fungsi tambah1b : result1 = numa + numb
        call tingkat2b             ; call ke tingkat2

        call kurang1b              ; call fungsi kurang1b : result1 = numa - numb
        call tingkat2b             ; call ke tingkat2

        call kali1b                ; call fungsi kali1b : result1 = numa * numb
        call tingkat2b             ; call ke tingkat2

        call bagi1b                ; call fungsi bagi1b : result1 = numa / numb
        call tingkat2b             ; call ke tingkat2

    		tingkat2b:
                call tambah2b            ; call fungsi tambah2b : result2 = numc + numd
                call tingkat3b           ; call ke tingkat3

                call kurang2b            ; call fungsi kurang2b : result2 = numc - numd
                call tingkat3b           ; call ke tingkat3

                call kali2b              ; call fungsi kali2b : result2 = numc * numd
                call tingkat3b           ; call ke tingkat3

                call bagi2b              ; call fungsi bagi2b : result2 = numc / numd
                call tingkat3b           ; call ke tingkat3

    				tingkat3b:
                        call tambah3b           ; call fungsi tambah3b : result = result1 + result2
                        call check24b           ; cek apakah result = 24, jika sama maka print

                        call kurang3b           ; call fungsi kurang3b : result = result1 - result2  
                        call check24b           ; cek apakah result = 24, jika sama maka print

                        call kali3b             ; call fungsi kali3b : result = result1 * result2
                        call check24b           ; cek apakah result = 24, jika sama maka print

                        call bagi3b             ; call fungsi bagi3b : result = result1 / result2
                        call check24b           ; cek apakah result = 24, jika sama maka print

    					ret

    				end_tingkat3b:

    			ret

    		end_tingkat2b:

    	ret