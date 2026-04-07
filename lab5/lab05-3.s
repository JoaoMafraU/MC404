.data
vetorparede:
    .word 1,2,3,4,5
vetorchao:
    .word 6,7,8,9,10
vetorteto:
    .word 0,0,0,0,0
.text
main:
    addi s6, zero, 4
    la s0, vetorparede
    la s1, vetorchaovetorteto
    la s2, vetorteto
looppedireito:
    lw s3, 0(s0)
    lw s4, 0(s1)
    add s5, s3, s4
    sw s5, 0(s2)
    addi s0, s0, 4
    addi s1, s1, 4
    addi s2, s2, 4
    addi s6, s6, -1
    bge s6, zero, looppedireito
    la s2, vetorteto
    addi s6, zero, 4
looprodape:
    lw a1, 0(s2)
    addi a0, zero, 1
    ecall
    addi a0, zero, 11
    addi a1, zero, 32
    ecall
    addi s2, s2, 4
    addi s6, s6, -1
    bge s6, zero, looprodape
fim:
    addi a0, zero,10
    ecall