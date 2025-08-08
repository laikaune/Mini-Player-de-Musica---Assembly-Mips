.data
bitmap: .space 16384

.text
main:
# la = load adress of pixel array
la $t0, bitmap
li $t1, 0xFFFF0000

li $t2, 64
li $t3, 64

loop_rows:
li $t4, 0
loop_cols:

mul $t5, $t3, $t2
add $t5, $t5, $t4
sll $t5, $t5, 2
add $t6, $t0, $t5

sw $t1, 0($t6)

addi $t4, $t4, 1
blt $t4, $t2, loop_cols

addi $t3, $t3, -1
bgtz $t3, loop_rows
li $v0, 10
syscall
