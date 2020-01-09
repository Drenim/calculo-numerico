
# aula 6 - algoritmo do metodo da bissecçao e algumas de suas variaçoes

# plotar grafico da funçao
f = @(x) exp(x)-x-2;
xx = linspace(1,2);
#plot(xx, f(xx))

# metodo da bissecçao
function x = bis(f, a, b, N, TOL)
  i = 1;
  fa = f(a);
  x0 = a;
  
  while (i <= N)
     x = a + (b - a) / 2;
     fx = f(x);
     
     printf("%i %1.5e %1.2e\n", i, x, abs(x-x0))     
     
     if ((fx == 0 ) || (abs(x-x0) < TOL))
      return;
     endif
     
     i += 1;
     x0 = x;
     
     if (fa * fx < 0)
      b = x;
     else
      a = x;
      fa = f(a);
     endif
     
  endwhile
  error("num. maximo de iteraçoes foi atingido")
endfunction


function x = tris(f, a, b, N, TOL)
  i = 1;
  fa = f(a);
  x0 = a;
  
  while (i <= N)
     x = a + (b - a) / 3;
     fx = f(x);
     
     printf("%i %1.5e %1.2e\n", i, x, abs(x-x0))     
     
     if ((fx == 0 ) || (abs(x-x0) < TOL))
      return;
     endif
     
     i += 1;
     x0 = x;
     
     if (fa * fx < 0)
      b = x;
     else
      a = x;
      fa = f(a);
      x = a + (b-a)/2;
      fx = f(x);
      if (fa * fx < 0)
        b = x;
      else
        a = x;
        fa = f(a);
      endif
     endif
     
  endwhile
  error("num. maximo de iteraçoes foi atingido")
endfunction

# metodo da bissecçao
function x = secs(f, a, b, N, TOL)
  i = 1;
  fa = f(a);
  x0 = a;
  
  while (i <= N)
     x = a - fa*(b-a)/(f(b)-fa);
     fx = f(x);
     
     printf("%i %1.5e %1.2e\n", i, x, abs(x-x0))     
     
     if ((fx == 0 ) || (abs(x-x0) < TOL))
      return;
     endif
     
     i += 1;
     x0 = x;
     
     if (fa * fx < 0)
      b = x;
     else
      a = x;
      fa = f(a);
     endif
     
  endwhile
  error("num. maximo de iteraçoes foi atingido")
endfunction

f = @(x) (x-1).^4;
fl = @(x) 4*(x-1).^3
fll = @(x) 12*(x-1).^2
flll = @(x) 24*(x-1)
xx = linspace(0, 2);
plot(xx, f(xx), xx, flll(xx), 'r-')
