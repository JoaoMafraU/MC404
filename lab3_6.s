main:
  # Leitura inicial
  addi t0, zero, 4
  ecall
  add a1, a0, zero
  j loop
loop:
  # Checagem se eh 0
  beq a1, zero, fim

  # Operacoes de conversao
  andi a0, a1, 1
  srli a1, a1, 1

  # Impressao Sequencial Do Binario ao contrario
  addi a0, a0, 48
  addi t0, zero, 2
  ecall
  j loop

fim:
  ret