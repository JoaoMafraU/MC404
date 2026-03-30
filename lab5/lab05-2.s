.data
vetor:
    .word 10, 20, 30
.text
main:
    la s0, vetor
    lw t0, 0(s0)
    addi t0, t0, 1
    sw t0, 0(s0)

    lw t1, 4(s0)
    addi t1, t1, 1
    sw t1 ,4(s0)

    lw t2, 8(s0)
    addi t2, t2, 1
    sw t2, 8(s0)

    addi a0, zero, 1
    lw a1, 0(s0)
    ecall

    addi a0, zero, 11
    addi a1, zero, 32
    ecall

    addi a0, zero, 1
    lw a1, 4(s0)
    ecall

    addi a0, zero, 11
    addi a1, zero, 32
    ecall

    addi a0, zero, 1
    lw a1, 8(s0)
    ecall

    addi a0, zero, 10
    ecall