.data
vetor:
    .word 10, 20, 30
.text
main:
    la s0, vetor
    lw t0, 0(s0)
    lw t1, 4(s0)
    lw t2, 8(s0)
    add s0, t0, t1
    add a1, s0, t2
    addi a0, zero, 1
    ecall
    addi a0, zero, 10
    ecall