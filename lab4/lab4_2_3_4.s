main:
  addi t0, zero, 5
  ecall
  addi s0, zero, 97
  bge a0, s0, minuscula
  addi a0, a0, 32
  addi t0, zero, 2
  ecall
  ret
minuscula:
  addi a0, a0, -32
  addi t0, zero, 2
  ecall
  ret