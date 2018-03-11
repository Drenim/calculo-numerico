from bitstring import Bits

# Aula 2 - Representação de números

# Converte 293 de decimal para binário
num_bin = bin(293)
print(num_bin)

# Pegar a parte inteira de um números
parte_inteira = int(293.75)
print(parte_inteira)

# Pegar a parte fracionária do número
parte_fracionaria = 293.75 - parte_inteira
print(parte_fracionaria)

# Convertendo 293 de decimal para binário
x = 293
binario = ''
while x != 0:
    d = x % 2
    x = x // 2
    binario = str(d) + binario
print(binario)

# Convertendo 0.75 de decimal para binário
x = 0.75
binario = ''
while x != 0:
    d = int(x * 2)
    x = x * 2 - d
    binario = binario + str(d)
print(binario)

# Convertendo um barramento em complemento de dois para decimal
barramento = '10000011'
b = Bits(bin=barramento)
print(b.int)

# Maior inteiro negativo representável em 8 bits
barramento = '10000000'
b = Bits(bin=barramento)
print(b.int)

# Obtendo barramento a partir de decimal
b = Bits(length=8, int=-125)
print(b.bin)

# Obtendo maior inteiro da máquina (Como python não limita
# o tamanho dos ints, vou apresentar o maior int de 64 bits)
barramento = '0' + '1' * 63
b = Bits(bin=barramento)
print(b.int)

# Obtendo menor inteiro da máquina (Como python não limita
# o tamanho dos ints, vou apresentar o menor int de 64 bits)
barramento = '1' + '0' * 63
b = Bits(bin=barramento)
print(b.int)

# Convertendo barramento IEEE 64 bits para decimal
barramento = '11' + '0' * 10 + '11' + '0' * 50
b = Bits(bin=barramento)
print(b.float)

# Obtendo o barramento IEEE 64 bits do decimal -3.5
b = Bits(length=64, float=-3.5)
print(b.bin)
