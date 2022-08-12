
		AREA	simpleshift,CODE,READONLY
		ENTRY
		EXPORT __main

__main
		MOV	R0,#0x11	; move = 17
		LSL	R1,R0,#1	; shift 1 bit = 17*2 = 34
		LSL	R2,R1,#1	;	shift one bit left = 68

Stop	B Stop
		END