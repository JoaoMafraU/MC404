main:
  # Leitura
  addi t0, zero, 4
  ecall

  add a1, zero, a0
  addi a0, a0, 3

  ori a1, a1, 3

  # Imprime N
  beq a1, a0, p
  addi a0, zero, 78
  addi t0, zero, 2
  ecall
  ret
p:
  # Imprime S
  addi a0, zero, 83
  addi t0, zero, 2
  ecall
  ret