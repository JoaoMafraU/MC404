main:
  addi t0, zero, 4
  ecall
  # A - 65 0 - 48
  addi s0, zero, 10
  bge a0, s0, letra
  addi a0, a0, 48
  addi t0, zero, 2
  ecall
  ret
letra:
  addi a0, a0, 55
  addi t0, zero, 2
  ecall
  ret
