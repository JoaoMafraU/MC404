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

    addi a0, zero, 10
    ecall

somavetores: # a0 - tamanho vetor1 | a1 - ponteiro vetor1 | a2 - ponteirovetor2 | a3 - ponteiro vetor resultado
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

    addi a0, zero, 3
    la a1, vetorum
    call impressaovetor

    addi a0, zero, 3
    la a1, vetordois
    call impressaovetor


somavetoresf:
    lw t1, 0(s1)
    lw t2, 0(s2)
    addi s1, s1, 4
    addi s2, s2, 4

    add t3, t1, t2

    sw t3, 0(s3)
    addi s3, s3, 4

    addi s0, s0, -1
    bne s0, zero, somavetoresf
fim:
    addi a0, zero, 3
    la a1, vetorres
    call impressaovetor

    lw ra, 0(sp)
    lw s3, 4(sp)
    lw s2, 8(sp)
    lw s1, 12(sp)
    lw s0, 16(sp)
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