#EXERCICE 3 

.data
	t: .word 4,23,12,3,8,1

.text
main:
	la $6 ,t
	lw $7,12($6) #mettre dans le registre 7 la valeur aui est dans la case memoire de l adresse qui est dans $6 mais decale de 12
	lw $8,16($6)
	
	addi $9,$7,1
	sw $9,0($6)
	
	add $9,$7,$8
	sw $9,4($6)
	
	lw $9,20($6)
	sw $9,8($6)
	
	