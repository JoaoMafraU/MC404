main:
  # Leitura
  addi t0, zero, 4
  ecall
  add a1, zero, a0
  addi t0, zero, 4
  ecall
  xor a0, a1, a0
  addi t0, zero, 1
  ecall
  ret