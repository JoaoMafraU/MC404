# Fatorial Recursivo
.text
main:
    addi a0, zero, 5 # Numero o qual sera calculado o fatorial
    call fatorial

    mv a1, a0
    addi a0, zero, 1 # Pois o resultado já está em a1
    ecall

    addi a0, zero, 10
    ecall
fatorial: # a0 - Numero Atual
    addi sp, sp, -8
    sw s0, 4(sp)
    sw ra, 0(sp)

    mv s0, a0

    addi t0, zero, 1
    bne s0, t0, naoum
    addi a0, zero, 1
    j fim
naoum:
    addi a0, s0, -1
    call fatorial
    mul a0, s0 ,a0
fim:
    lw ra, 0(sp)
    lw s0, 4(sp)
    addi sp, sp, 8
    ret