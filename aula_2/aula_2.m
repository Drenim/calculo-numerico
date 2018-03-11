#Aula 2 - Representação de numeros

#Converte 293 de decimal para binario
num_bin = dec2bin(293);
disp(num_bin)

#Convertendo o numero binario 100100101,11 para decimal
num_bin = 2^8 + 2^5 + 2^2 + 2^0 + 2^(-1) + 2^(-2);
disp(num_bin)

#Pegar a parte inteira de um numero
parte_inteira = fix(293.75);
disp(parte_inteira)

#Pegar a parte fracionaria do numero
parte_fracionaria = 293.75 - parte_inteira;
disp(parte_fracionaria)

#Convertendo 293 de decimal para binario
x = 293;
numero = '';
while (x != 0)
    d = mod(x, 2); x = fix(x/2);
    disp(d);
    numero = [int2str(d) numero];
endwhile
disp(numero)

#Convertendo 0.75 de decimal para binario
x = 0.75;
numero = '';
while (x - fix(x) != 0)
  d = fix(x * 2); x = 2*x - d;
  numero = [int2str(d), numero]
endwhile
disp(numero)

#Convertendo um barramento em complemento de dois para decimal
x = bitpack(logical([1 1 0 0 0 0 0 1]), 'int8');
disp(x)

#Maior inteiro negativo representavel em 8 bits
x = bitpack(logical([zeros(1, 7) 1]), 'int8');
disp(x)

#Maior inteiro positivo representavel em 8 bits
x = bitpack(logical([ones(1, 7), 0]), 'int8');
disp(x);

#Obtendo barramento a partir de decimal
x = bitunpack(int8(-125));
disp(x)

#Obtendo maior inteiro da maquina
disp(intmax)

#Obtendo menor inteiro da maquina
disp(intmin)

#Convertendo barramento IEEE 64 bits para decimal
x = bitpack(logical([zeros(1, 50) 1 1 zeros(1, 10) 1 1]), 'double');
disp(x)

#Obtendo o barramento IEEE 64 bits do decimal -3.5
x = bitunpack(double(-3.5));
disp(x)
