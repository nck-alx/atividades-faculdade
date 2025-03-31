print("tempo de download de arquivo")
tamanho = int(input("digite o tamanho do arquivo em bits: "))
tempo = float(input("digite o a velocidade de conexão em bits por segundo: "))
velocidade = tamanho/tempo
print(f"a velocidade de download do arquivo será de: {velocidade} segundos")