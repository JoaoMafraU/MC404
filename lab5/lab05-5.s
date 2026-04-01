.data
    s: .string "Hello World! Oi Mundo!"
.text
main:
    la t0, s
    addi t2, zero, 0
while:
    lb t1, 0(t0)
    beq t1, zero, fim
    addi a1, t1, 0
    addi a0, zero,11
    ecall
    addi t0, t0, 1
    addi t2, t2, 1
    j while
fim:
    addi a1, t2, 1
    addi a0, zero,1
    ecall

    addi a0, zero,10
    ecall