; Rodolfo Ivan Villa Nueva

.org  0000h
; cargamos  numerod hexadeecimales al  los registro B Y C
 ld b, 5Fh
 ld c, 1Ah

; converrtimos el bit mas alto de B a bcd
 ld a,b
 srl a
; convertimos el bit mas alto de C a bcd
 ld d,c
 srl d
; convertimos el digito mas bajo de C a bcd
 ld e,c
 AND  0fh
; almacenamos en registros DE
 sla d
 add a ,d

; convertimos el digito mas bajo de B a bcd
 ld c,b
  AND  0fh
 ;almacenaje en el Registro BC
 sla b
 add a,c



end
