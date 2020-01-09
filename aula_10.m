
# Aula 10 - Algumas variaçoes do metodo de Newton

# Metodo da secante

f = @(x) exp(x)-x-2;

x1 = 1.2;
x2 = 1.3;

x = x2-f(x2)*(x2-x1)/(f(x2)-f(x1))

x1 = x2;
x2 = x;
x = x2-f(x2)*(x2-x1)/(f(x2)-f(x1))

x1 = x2;
x2 = x;
x = x2-f(x2)*(x2-x1)/(f(x2)-f(x1))


# Metodo do acorde

x = 1.2;
fl = exp(x)-1;

x = x - f(x) / fl

x = x - f(x) / fl

x = x - f(x) / fl