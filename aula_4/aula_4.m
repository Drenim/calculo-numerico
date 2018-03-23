
#Aula 4 - Tipos de erro e propagaçao

#Metodo babilonico:
x = 1
x = (x + (2/x)) / 2

#Epsilon de maquina
disp(eps)

printf("%1.24e\n", 1)
printf("%1.24e\n", 1 + eps)
printf("%1.24e\n", 1 + eps / 3)

#Erro de arredondamento
x = 1/3
x = 4 * x - 1
