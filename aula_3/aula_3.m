
# Aula 3 - Mais sobre representaçao de numeros

# Imprimir a notaçao normalizada de um numero
printf("%1.5e\n", 625.532)

# Por padrao, o octave nao usa truncamento.
# Truncamento: pegando 2 digitos significativos de 625.532
printf("%1.1e\n", fix (625.532 / 10) * 10)

# Por padrao o octave usa arredondamento por proximidade com desempate par
# 3 digitos significativos por proximidade:
printf("%1.2e\n", 625.532)

# Erro absoluto:
x = 1.49999;
x_bar = 1.4;
erro_abs = abs(x - x_bar);
disp(erro_abs)
printf("%1.0e\n", erro_abs) # Mostrando erro absoluto com um digito sign.

# Erro relativo:
x = 1.49999;
x_bar = 1.4;
erro_abs = abs(x - x_bar) / abs(x);
disp(erro_abs)
