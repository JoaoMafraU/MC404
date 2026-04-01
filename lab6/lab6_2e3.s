.data
vetor:
    .word 10, 20, 35
.text
main:
    addi a0, zero, 3
    la a1, vetor
    addi a2, zero , 3
    call produtovetor

    addi a2, zero, 3
    la a3, vetor
    call impressaovetor

    addi a0, zero, 10
    ecall

produtovetor: # a0 - tamanho vetor | a1 - ponteiro vetor | a2 - fator
    add t0, zero, a0

produtovetorf:
    lw t1, 0(a1)
    mul t1, t1, a2
    sw t1, 0(a1)
    addi a1, a1, 4
    addi t0, t0, -1

    bne t0, zero, produtovetorf
    ret

impressaovetor: # a2 - tamanho vetor | a3 - ponteiro vetor
    add t0, zero, a2
    
impressaovetorf:
    lw a1, 0(a3)
    addi a0, zero, 1
    ecall

    addi a1, zero, 32
    addi a0, zero, 11
    ecall
    addi a3, a3, 4
    addi t0, t0, -1
    bne t0, zero, impressaovetorf
    ret