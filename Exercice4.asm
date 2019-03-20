.data
tab: .word 1,2,34,256,-1
chaine: .asciiz "toto"
retour: .asciiz "\n"

.text
main:

	la $t1,tab		#stocké les adresses de tab et chaine
	la $t2,chaine
	
	li $v0,1	#afficher tab[3]
	lw $a0,12($t1)
	syscall
	
	li $v0, 4	#retour a la ligne
	la $a0, retour
	syscall
	
	li $v0,1     #1 pour afficher en %d
	lb $a0,2($t2) #un char est stocke sur un octet (1 byte)
	syscall	
	
	li $v0, 4	#retour a la ligne
	la $a0, retour
	syscall
	
	
	li $v0,11     #11 pour afficher un char
	lb $a0,2($t2) #un char est stocke sur un octet (1 byte)
	syscall	