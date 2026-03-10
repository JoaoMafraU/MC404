main:
  # Leitura
  addi t0, zero, 4
  ecall
  add a1, a0, zero
  j loop
  
loop:
  addi t0, zero, 4
  ecall
  # Acaba se 0 foi escrito
  beq a0, zero, fim

  # Codificacao
  xor a0, a1, a0
  addi t0, zero, 1
  ecall
  j loop

fim:
  ret