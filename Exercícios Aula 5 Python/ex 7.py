print("algoritmo convertor de segundos em minutos e segundos")
segundos = int(input("digite quantos segundos deseja converter: "))
minutos = segundos // 60
segundos_sobra = segundos % 60
print(f"{segundos} segundos serão iguais a {minutos} minutos e {segundos_sobra} segundos")