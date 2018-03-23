
# Aula 5 - soluçao de equacoes de uma variavel

#Metodo grafico
#Plotar grafico
f = @(x) exp(x) -x - 2; #Define a funçao
%xx = linspace(-5, 5);   #Cria vetor com 100 valores no intervalo [-5, 5]
%yy = f(xx);
%plot(xx, yy);grid

#Metodo da bissecçao
a = 1;
b = 2;
x = (a + b) / 2;
[f(a) f(x) f(b)]

b = x;
x = (a + b) / 2;
[f(a) f(x) f(b)]

b = x;
x = (a + b) / 2;
[f(a) f(x) f(b)]

a = x;
x = (a + b) / 2;
[f(a) f(x) f(b)]

b = x;
x = (a + b) / 2;
[f(a) f(x) f(b)]

b = x;
x = (a + b) / 2;
[f(a) f(x) f(b)]

a = x;
x = (a + b) / 2;
[f(a) f(x) f(b)]

b = x;
x = (a + b) / 2;
[f(a) f(x) f(b)]

b = x;
x = (a + b) / 2;
[f(a) f(x) f(b)]

disp(x)
