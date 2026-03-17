main:
  # Leitura
  addi t0, zero, 4
  ecall
  beq a0, zero, fim
  add a1, a0, zero
  # Contador
  addi s0, zero, 32
  addi s2, zero, 10
conversor:
  addi s0, s0, -4
  srl s1, a1, s0
  andi s1, s1, 15
  bge s1, s2, letra
  addi a0, s1, 48
  addi t0, zero, 2
  ecall
  beq s0, zero, hmin
  j conversor
letra:
  addi a0, s1, 55
  addi t0, zero, 2
  ecall
  beq s0, zero, hmin
  j conversor
hmin:
  addi a0, zero, 104
  addi t0, zero, 2
  ecall
  j main
fim:
  ret