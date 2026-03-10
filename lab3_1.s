main:
  # Leitura
  addi t0, zero, 4
  ecall
  andi s0, a0, 1
  # Imprime I
  beq s0, zero, p
  addi a0, zero, 73
  addi t0, zero, 2
  ecall
  ret
p:
  # Imprime P
  addi a0, zero, 80
  addi t0, zero, 2
  ecall
  ret