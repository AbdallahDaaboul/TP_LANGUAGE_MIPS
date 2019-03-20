.data
	v1: .word -1
	v2: .word 0xFF

.text
main:
	la $7,v1
	li $v0,1
	lw $a0,0($7)
	syscall
	
	la $8,v1
	li $v0,1
	lw $a0,0($8)
	syscall
	
	
	la $7,v1     #mettre  addresse de v1 dans $7
	lw $5,0($7)  #mettre la valeur qui est dans la case memoire correspondante a  $7 dans $5
	addi $5,$5,1 #ajouter a la valeur qui est dans $5 1 (ca reste dans $5 pas dans la memoire)
	sw $5,0($7)  #mettre a l adresse "memoire" $7 la valeur qui est dans $5 #  ($7)--> case memoire de la valeur $7
	
	la $8,v2
	lw $6,0($8)
	addi $6,$6,1
	sw $6,0($8)
	
	
	li $v0,1
	lw $a0,0($7)
	syscall
	
	li $v0,1
	lw $a0,0($8)
	syscall
	
	
	
	
	

	
