main:
  # Leitura
  addi t0, zero, 4
  ecall

  # Acaba se 0 foi escrito
  beq a0, zero, fim

  # Checagem se eh par
  andi a3, a0, 1
  beq a3, zero, par
  # Impar
  add a1, a1, a0
  j main

par:
  add a2, a2, a0
  j main

fim:
  # a1 soma de impares, a2 soma de pares
  sub a0, a2, a1
  
  addi t0, zero, 1
  ecall
  ret