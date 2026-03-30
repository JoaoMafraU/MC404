.data
matriz: .word 0, 0, 0
        .word 0, 0, 0
.text
main:
    addi t0, zero, 2 #Linhas
    addi t1, zero, 3 #Colunas
    addi s2, zero, 0 #i
    la s4, matriz
for_i:
    beq s2, t0, fim
    addi s3, zero, 0 #j
for_j:
    bge s3, t1, prox_i
    add s5, s2, s3
    sw s5, 0(s4)
    addi s3, s3, 1
    addi s4, s4, 4
    j for_j
prox_i:
    addi s2, s2, 1
    j for_i
fim:
    addi a0, zero,10
    ecall