.data
vetor:
    .word 1, 3
    .word 5, 0
    .word 5, 10
    .word 2, 2
    .word 3, 2
    .word 7, 7
    .word 0, -1
    .word 0, 0

.text
main:
    la t5, vetor
    addi s0, zero, 8 # contador loop
    addi t0, zero, -100 # t0 - maior x até agora
    addi t1, zero, -100 # t1 - y do maior x ate agora
loop:
    beq s0, zero, fim
    addi s0, s0, -1
    lw t2, 0(t5) # t1 - x atual
    lw t3, 4(t5) # t2 - y atual
    addi t5, t5, 8
    blt t0, t2, xmaior
    beq t0, t2, xigual
    j loop
xmaior:
    mv t0, t2
    mv t1, t3
    j loop
xigual:
    blt t3, t1, loop
    mv t0, t2
    mv t1, t3
    j loop
fim:
    addi a1, zero, 40
    addi a0, zero 11
    ecall
    mv a1,t0
    addi a0, zero, 1
    ecall
    addi a1, zero, 44
    addi a0, zero 11
    ecall
    mv a1,t1
    addi a0, zero, 1
    ecall
    addi a1, zero, 41
    addi a0, zero 11
    ecall
    addi a0, zero, 10
    ecall