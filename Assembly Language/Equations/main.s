;P = Q+R+S
; let Q = 2,R = 4,S = 5


	AREA SimpleAddData,DATA,READONLY
P	SPACE	4	; Reserve 4 bytes of memory
Q	DCD		2	;Create variable Q with initial value 2 Q = 0x0000002
R	DCD		4	; create variable R	with initial value 4 R = 0x00000004
S	DCD		5	
	
	AREA SimpleAddCode,DATA,READONLY
	ENTRY
	EXPORT __main

__main
		LDR	R1,Q
		LDR	R2,R
		LDR	R3,S
		
		ADD	R0,R1,R2
		ADD	R0,R1,R3
		
Stop	B 	Stop
		END
			

