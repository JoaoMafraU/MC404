.data
vetor:
    .word 10, 20, 35
.text
main:
    addi a0, zero, 3
    la a1, vetor
    call somavetor

    add a1, zero, a2
    addi a0, zero, 1
    ecall

    addi a0, zero, 10
    ecall

somavetor: # a0 - tamanho vetor | a1 - ponteiro vetor | a2 - resultado
    add t0, zero, a0
    add a2, zero, zero
somavetorf:
    lw t1, 0(a1)
    addi a1, a1, 4
    add a2, a2, t1
    addi t0, t0, -1
    bne t0, zero, somavetorf
    ret

