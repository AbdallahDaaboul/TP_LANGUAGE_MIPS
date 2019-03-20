.data
	i: .space 4
	somme: .word 0
.text
main:	
	la $t1,somme
	lw $t2,0($t1)
	
	la $t3,i
	lw $t4,0($t3)
	addi $t4,$0,10
	
loop:
	add  $t2,$t2,$t4
	subi $t4,$t4,1
	bgt $t4,$0,loop 	 #si la condition toujours verifié refais loop
		
next:
	li $v0,1		#affichage de la réponse
 	add $a0,$0,$t2
 	syscall
 	
 	li $v0,10
	syscall	
