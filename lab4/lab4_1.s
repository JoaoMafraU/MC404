main:
  addi t0, zero, 4
  ecall
  add s0, a0, zero
  blt s0, zero, negativo
  addi t0, zero, 1
  ecall
  ret
negativo:
  addi a0, zero, 45
  addi t0, zero, 2
  ecall
  sub a0, zero, s0
  addi t0, zero, 1
  ecall
  ret