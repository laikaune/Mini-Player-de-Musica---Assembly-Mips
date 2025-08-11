.data
    menu_txt: .asciiz "\n==== Player de Músicas ====\n\n 1. Tocar Doremi\n 2. Tocar Fafafa\n 3. Tocar Lasido\n 4. Sair\n\n Escolha: "
    tocando_txt: .asciiz "\nTocando música...\n"
    
    # vetores de notas musicais (-1 para conseguir determinar o final)
    musica1: .word 60, 62, 64, -1   # do, ré, mi
    musica2: .word 65, 65, 65, -1    # fa, fa, fa
    musica3: .word 69, 71, 72, -1    # la, si, do

.text
.globl main

main:
    # menu principal
    li $v0, 4
    la $a0, menu_txt
    syscall

    # lê escolha do usuário
    li $v0, 5
    syscall

    # verifica escolha
    beq $v0, 1, tocar_musica1
    beq $v0, 2, tocar_musica2
    beq $v0, 3, tocar_musica3
    beq $v0, 4, sair

    j main  # se escolha inválida, volta ao menu

tocar_musica1:
    la $a0, musica1  
    jal tocar   
    j main      

tocar_musica2:
    la $a0, musica2
    jal tocar
    j main

tocar_musica3:
    la $a0, musica3
    jal tocar
    j main

# recebe em $a0 o endereço do vetor de notas
tocar:
    move $t0, $a0    # salva endereço das notas
    
    li $v0, 4
    la $a0, tocando_txt
    syscall

    # configurações do som
    li $a2, 0       # instrumento (0 = piano)
    li $a3, 100     # volume
    
tocar_loop:
    lw $a0, 0($t0)         # carrega nota
    blt $a0, 0, fim_tocar  # se nota = -1, termina
    
    li $a1, 500            # duração da nota (500ms)
    li $v0, 31             # syscall para tocar nota
    syscall
    
    addi $t0, $t0, 4       # prox nota
    j tocar_loop

fim_tocar:
    jr $ra                 # retorna

sair:
    li $v0, 10             # fim de programa
    syscall