

RAM1_ADDR		EQU		0x20000000
RAM2_ADDR		EQU		0x20000100


				AREA	myCode,CODE,READONLY
				ENTRY
				EXPORT	__main

__main
				BL		FILL
				BL		COPY

Stop			B		Stop

FILL			LDR		R1,=RAM1_ADDR
COPY			MOV		R0,#10
				LDR		R2,=0xDEADBEEF
			
L1				STR		R2,[R1]
				ADD		R1,R1,#4
				SUBS	R0,R0,#1
				BNE		L1
				BX		LR
				
				
				
				
				