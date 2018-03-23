from math import exp
import matplotlib.pyplot as plt
import numpy as np

# aula 6 - algoritmo do método da bissecção e algumas de suas variações


# plotar gráfico da função
def f(x):
    return exp(x) - x - 2


xx = np.arange(-5, 5, 0.1)
yy = list(map(f, xx))
fig, ax = plt.subplots()
ax.plot(xx, yy)
ax.grid()
# plt.show()


def bis(func, a, b, n, tol):
    """
        método da bissecção
    """
    fa = func(a)
    x0 = a

    for i in range(n):
        x = a + (b - a) / 2
        fx = func(x)

        print("{} {:1.5e} {:1.2e}".format(i, x, abs(x-x0)))

        if fx == 0 or abs(x-x0) < tol:
            return x

        x0 = x

        if fa * fx < 0:
            b = x
        else:
            a = x
            fa = func(a)
    print("num. máximo de iterações foi atingido")
    return x


def tris(func, a, b, n, tol):
    """
        método da bissecção utilizando 3 segmentos
    """
    fa = func(a)
    x0 = a

    for i in range(n):
        x = a + (b - a) / 3
        fx = func(x)

        print("{} {:1.5e} {:1.2e}".format(i, x, abs(x-x0)))

        if fx == 0 or abs(x-x0) < tol:
            return x

        x0 = x

        if fa * fx < 0:
            b = x
        else:
            a = x
            fa = func(a)
            x = a + (b-a) / 2
            fx = func(x)

            if fa * fx < 0:
                b = x
            else:
                a = x
                fa = func(a)

    print("num. máximo de iterações foi atingido")
    return x


def secs(func, a, b, n, tol):
    """
        método da bissecção utilizando reta secante
    """
    fa = func(a)
    x0 = a

    for i in range(n):
        x = a - fa * (b-a)/(func(b) - fa)
        fx = func(x)

        print("{} {:1.5e} {:1.2e}".format(i, x, abs(x-x0)))

        if fx == 0 or abs(x-x0) < tol:
            return x

        x0 = x

        if fa * fx < 0:
            b = x
        else:
            a = x
            fa = func(a)
    print("num. máximo de iterações foi atingido")
    return x
