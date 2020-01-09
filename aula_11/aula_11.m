
# Aula 11 - Polinômios e m´etodo de Horner

# Exemplo de representaçao de polinomios
p = [1, -5, 17, -13]

# Exemplo de multiplicaçao (convoluçao) de polinomios:
p = [1, -1]
q = [1, 1]
pq = conv(p, q)

# Exemplo de divisao (deconvolucao) de polinomios:
p = deconv(pq, q)

# Exemplo
p = [1, -5, 17, -13]
q = deconv(p, [1, -1])

# Exemplo metodo de Horner
function [y, dy] = myHorner(p, x0)
  n = length(p);
 

  y = p(1);
  dy = y;
  
  for k = 2:n-1
     y = p(k) + y * x0;
     dy = y + dy * x0;
  endfor
  
  y = p(n) + y*x0;

endfunction

# Metodo de Newton usando o metodo de Horner
function x = NH(p, x0, tol, N)
  iter = 1;
  
  while (iter <= N)
    [y dy] = myHorner(p, x0);
    x = x0 - y/dy;
    
    if (abs(x-x0) < tol)
      return;
    endif
    
    x0 = x;
    iter +=1;
    
  endwhile
  error("num. max. iter.")

endfunction


#Funçao nativa para raiz de polinomios
roots(p)
















