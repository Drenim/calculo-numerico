
# Aula 8 - um tanto mais sobre iteraçao de ponto fixo

#Exemplo 1
f = @(x) sin(x.^2-exp(x));
fl = @(x) cos(x.^2-exp(x)).*(2*x-exp(x));
alpha = 0.5;
g = @(x) x + alpha*f(x);
gl = @(x) 1 + alpha*fl(x);

xx = linspace(-1, -0.5);
#plot(xx, xx, 'r--', xx, g(xx), 'b-', xx, abs(gl(xx)), 'k-');grid;

#Exemplo 1
f = @(x) x.^2-3;
fl = @(x) 2*x;
alpha = -0.1;
g = @(x) x + alpha*f(x);
gl = @(x) 1 + alpha*fl(x);

#xx = linspace(1.7, 1.8);
#plot(xx, xx, 'r--', xx, g(xx), 'b-', xx, abs(gl(xx)), 'k-');grid;

x1 = 1.75;
for i = 1:15
  x = g(x1);
  [i+1, x, abs(x-x1)] 
  if (abs(x-x1) < 1e-4)
    break;
  endif
  x1 = x;
endfor
printf("%1.6e\n", x)