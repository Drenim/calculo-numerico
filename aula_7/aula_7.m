
# Aula 7 - Ponto Fixo

g = @(x) cos(x);
xx = linspace(0.5,1);
#plot(xx, g(xx), 'b-', xx, xx, 'r--');grid

# Iteração do ponto fixo
x = 0.75
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)
x = cos(x)

# Exemplo
g = @(x) x.^3 + 4*x.^2-10+x;
xx = linspace(1, 2);
#plot(xx, g(xx), 'b-', xx, xx, 'r--');grid 

x = 1.4
x = g(x)
x = g(x)
x = g(x)
x = g(x)
x = g(x)
x = g(x)
x = g(x)
x = g(x)


g = @(x) (4*x.^2-10)./(-x.^2);
xx = linspace(1, 2);
#plot(xx, g(xx), 'b-', xx, xx, 'r--');grid 

x = 1.4
x = g(x)
x = g(x)
x = g(x)
x = g(x)
x = g(x)
x = g(x)
x = g(x)


g = @(x) 10./(x.^2+4*x);
xx = linspace(1, 2);
#plot(xx, g(xx), 'b-', xx, xx, 'r--');grid 

x = 1.4
x = g(x)
x = g(x)
x = g(x)
x = g(x)


g = @(x) sqrt(10./(x+4));
xx = linspace(1, 2);
#plot(xx, g(xx), 'b-', xx, xx, 'r--');grid

x = 1.4
x = g(x)
x = g(x)
x = g(x)
x = g(x)

g = @(x) (x-x.^4*x.^2-10)./(3*x.^2+8*x);
xx = linspace(1, 2);
#plot(xx, g(xx), 'b-', xx, xx, 'r--');grid

x = 1.4
x = g(x)
x = g(x)


g = @(x) x-0.06*(x.^3+4*x.^2-10);
xx = linspace(1, 2);
#plot(xx, g(xx), 'b-', xx, xx, 'r--');grid

x = 1.4
x = g(x)
x = g(x)

#Exemplo 2
f = @(x) x.^3+4*4.^2-10;
alpha = 0.06;
g = @(x) x - alpha*f(x);
xx = linspace(1, 2);
plot(xx, g(xx), 'b-', xx, xx, 'r--');grid