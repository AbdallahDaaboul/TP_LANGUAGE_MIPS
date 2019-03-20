.data
	a: .word -5
	b: .word 3
.text
main:
	
	la $t1,a
	lw $t2,0($t1)
	
	la $t3,b
	lw $t4,0($t3)
	
	bnez $t2,true  #$t2 not equal to zero je passe a true
		add $t5,$t2,$t3
		sw  $t5,0($t1)
		j next #je passe a next
true:
	sub $t5,$t2,$t4
	sw  $t5,0($t1)
next:
	li $v0,10
	syscall	
	
	
