from math import exp
import matplotlib.pyplot as plt
import numpy as np

"""
    aula 5 - solução de equações de uma variável
"""

# Método gráfico
# Plotar gráfico
xx = np.arange(-5, 5, 0.1)  # Cria vetor com 100 valores no intervalo [-5, 5)
yy = list(map(lambda x: exp(x) - x - 2, xx))
fig, ax = plt.subplots()
ax.plot(xx, yy)
ax.grid()
# plt.show()


def f(x):
    return exp(x) - x - 2


# Método da bissecção
a = 1
b = 2
x = (a + b) / 2
print('{} {} {}'.format(f(a), f(x), f(b)))

b = x
x = (a + b) / 2
print('{} {} {}'.format(f(a), f(x), f(b)))

b = x
x = (a + b) / 2
print('{} {} {}'.format(f(a), f(x), f(b)))

a = x
x = (a + b) / 2
print('{} {} {}'.format(f(a), f(x), f(b)))

b = x
x = (a + b) / 2
print('{} {} {}'.format(f(a), f(x), f(b)))

b = x
x = (a + b) / 2
print('{} {} {}'.format(f(a), f(x), f(b)))

a = x
x = (a + b) / 2
print('{} {} {}'.format(f(a), f(x), f(b)))

b = x
x = (a + b) / 2
print('{} {} {}'.format(f(a), f(x), f(b)))

a = x
x = (a + b) / 2
print('{} {} {}'.format(f(a), f(x), f(b)))

b = x
x = (a + b) / 2
print('{} {} {}'.format(f(a), f(x), f(b)))

print("x = {}".format(x))
