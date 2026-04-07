.data
    vetorum:
        .word 1, 2, 3, 4, 5
    vetordois:
        .word 5, 2, 1, 3, 2
    vetorres:
        .space 5
.text
main:
    li a0, 5
    la a1, vetorum
    la a2, vetordois
    la a3, vetorres
    call MenorVetorComSoma

    li a0, 10
    ecall

MenorVetorComSoma: # a0 - tamanho vetor | a1 - ponteiro vetorum | a2 - ponteiro vetordois | a3 - ponteiro vetorres
    addi sp, sp, -20
    sw s0, 16(sp)
    sw s1, 12(sp)
    sw s2, 8(sp)
    sw s3, 4(sp)
    sw ra, 0(sp)

    mv s0, a0
    mv s1, a1
    mv s2, a2
    mv s3, a3

loop:
    beq s0, zero, fim
    lw t0, 0(s1)
    lw t1, 0(s2)
    blt t0, t1, menor
    sw t1, 0(s3)
    addi s1, s1, 4
    addi s2, s2, 4
    addi s3, s3, 4
    addi s0, s0, -1
    j loop
menor:
    sw t0, 0(s3)
    addi s1, s1, 4
    addi s2, s2, 4
    addi s3, s3, 4
    addi s0, s0, -1
    j loop

fim:

    li a0, 5
    la a1, vetorres
    call impressaovetor

    li a0, 5
    la a1, vetorres
    call somavetor

    mv a1, a0
    li a0, 1
    ecall

    lw ra, 0(sp)
    lw s0, 4(sp)
    lw s1, 8(sp)
    lw s2, 12(sp)
    lw s3, 16(sp)
    addi sp, sp, 20
    ret

impressaovetor: # a0 - tamanho vetor | a1 - ponteiro vetor
    mv t0, a0
    mv t1, a1
impressaovetorf:
    lw a1, 0(t1)
    addi a0, zero, 1
    ecall

    addi a0, zero, 11
    addi a1, zero, 32
    ecall
    addi t1, t1, 4
    addi t0, t0, -1
    bne t0, zero, impressaovetorf

    addi a1, zero, 10
    addi a0, zero, 11
    ecall
    ret

somavetor: # a0 - tamanho vetor | a1 - ponteiro vetor | a0 - resultado
    add t0, zero, a0
    add a2, zero, zero
somavetorf:
    lw t1, 0(a1)
    addi a1, a1, 4
    add a2, a2, t1
    addi t0, t0, -1
    bne t0, zero, somavetorf
    mv a0, a2
    ret

