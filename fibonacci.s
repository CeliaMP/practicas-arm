.data 
.text
fib: 
	push {r1,r2,r3,r4} 
	mov r1, #0
	mov r2, #1
	mov r3, #0
	mov r4, r0
	b bucle
	devolver:
		pop {r1,r2,r3,r4}
		bx lr
	bucle:
		cmp r1, r4
		beq devolver 
		add r0, r2, r3
		mov r3, r2
		mov r2, r0
		add r1, r1, #1
		b bucle



