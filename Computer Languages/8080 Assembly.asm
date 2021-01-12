	; This is Hello World, written in 8080 assembly to run under CP/M
	; As you can see, it is similar to the 8086, and CP/M is very
	; similar to DOS in the way it is called.
	org	100h	; CP/M .COM entry point is 100h - like DOS
	mvi	c,9	; C holds the syscall, 9 = print string - like DOS
	lxi	d,msg	; DE holds a pointer to the string
	jmp	5	; CP/M calls are accessed through the jump at 05h
	; Normally you'd CALL it, but since you'd end the program by RETurning,
	; JMP saves a byte (if you've only got 64k of address space you want to
	; save bytes). 
msg:	db	'Hello world!$'
