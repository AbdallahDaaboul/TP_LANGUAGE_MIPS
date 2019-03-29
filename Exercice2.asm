#Exercice2:
.data
	v1:.word -1
	v2:.word 0xFF

.text
main:	
	la $7,v1 
	la $6,v2
	

	li $v0,1 
	lw $a0,($7)
	syscall
	

	li $v0,1 
	lw $a0,($6)
	syscall


	lw $5,0($7)  
	addi $5,$5,1 
	sw $5,0($7) 
	
	
	lw $4,0($6)
	addi $4,$4,1 
	sw $4,0($6) 
	

	li $v0,1 
	lw $a0,($7)
	syscall
	

	li $v0,1
	lw $a0,($6)
	syscall