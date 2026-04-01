.data
vetorum:
    .word 10, 20, 35
vetordois:
    .word 35, 20, 10
vetorres:
    .word 0, 0, 0
.text
main:
    addi a0, zero, 3
    la a1, vetorum
    la a2, vetordois
    la a3, vetorres
    call somavetores

    addi a2, zero, 3
    la a3, vetorres
    call impressaovetor

    addi a0, zero, 10
    ecall

somavetores: # a0 - tamanho vetor1 | a1 - ponteiro vetor1 | a2 - ponteirovetor2 | a3 - ponteiro vetor resultado
    add t0, zero, a0
somavetoresf:
    lw t1, 0(a1)
    lw t2, 0(a2)
    addi a1, a1, 4
    addi a2, a2, 4

    add t3, t1, t2

    sw t3, 0(a3)
    addi a3, a3, 4

    addi t0, t0, -1
    bne t0, zero, somavetoresf
    ret

impressaovetor: # a2 - tamanho vetor | a3 - ponteiro vetor
    add t0, zero, a2
impressaovetorf:
    lw a1, 0(a3)
    addi a0, zero, 1
    ecall

    addi a0, zero, 11
    addi a1, zero, 32
    ecall
    addi a3, a3, 4
    addi t0, t0, -1
    bne t0, zero, impressaovetorf
    ret