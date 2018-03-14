from math import trunc

# Aula 3 - Mais sobre representação de números

# Imprimir a notação normalizada de um número
print('{:1.1e}'.format(625.532))

# Por padrão, Python não usa truncamento.
# Truncamento: pegando 2 dígitos significativos de 625.532
print(trunc(625.532))

# 3 dígitos significativos por proximidade:
print('{:1.2e}'.format(625.532))

# Erro absoluto:
x = 1.49999
x_bar = 1.4
erro_abs = abs(x - x_bar)
print(erro_abs)
print('{:1.0e}'.format(erro_abs))  # Mostrando erro absoluto c/ um dígito sign.

# Erro relativo:
x = 1.49999
x_bar = 1.4
erro_abs = abs(x - x_bar) / abs(x)
print(erro_abs)
