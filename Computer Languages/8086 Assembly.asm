DOSSEG
.MODEL TINY
.DATA
TXT DB "Hello world!$"
.CODE
START:
	MOV ax, @DATA
	MOV ds, ax
 
	MOV ah, 09h		; prepare output function
	MOV dx, OFFSET TXT	; set offset
	INT 21h			; output string TXT
 
	MOV AX, 4C00h 		; go back to DOS
	INT 21h
END START
