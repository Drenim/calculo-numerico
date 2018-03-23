import sys

"""
    Aula 4 - Tipos de erro e propagação
"""

# Método babilônico
x = 1
x = (x + (2/x)) / 2

# Épsilon de máquina
print(sys.float_info.epsilon)

print("{:1.24e}".format(1))
print("{:1.24e}".format(1 + sys.float_info.epsilon))
print("{:1.24e}".format(1 + sys.float_info.epsilon / 3))

# Erro de arredondamento
x = 1/3
x = 4 * x - 1
