
# Aula 9 - método de Newton

# Exemplo 1
f = @(x) exp(x)-x-2;
#xx=linspace(0,2);
#plot(xx, f(xx));grid
fl = @(x) exp(x)-1;

tol = 1e-7;

x0 = 1.5;
for i=1:10
  x=x0-f(x0)/fl(x0);
  
  [i, x, abs(x-x0)]
  
  if (abs(x-x0) < tol)
    break;
  endif
  
  x0 = x;
endfor

[i, x]