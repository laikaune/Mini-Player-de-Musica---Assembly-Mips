.data
 interface: .asciiz "____________________________________________\n"
 mensagem: .asciiz "\nBem vindo ao mini player de música em assembly mips!\n"
 menu1: .asciiz "Que música você quer ouvir?\n\n"
 musica1: .asciiz " 1. Chihiro - Billie Eilish\n 2. eveything i wanted - Billie Eilish\n 3. Wildflower - Billie Eilish \n 4. Hino do Internacional \n 5. Hino do Gremio \n"
.text
	#transformar isso em uma função
	
	li $v0, 4
	la $a0, interface
	syscall
	
	li $v0, 4
	la $a0, mensagem
	syscall
	
	li $v0, 4
	la $a0, interface
	syscall
	
	li $v0, 4
	la $a0, menu1
	syscall
	
	li $v0, 4
	la $a0, musica1
	syscall
		
