import os
os.system ("cls")

#Elabore um programa em Python que receba uma lista com 10 números reais e imprima os números maiores do que 15.
reais = []
print("lista com 10 números reais e números maiores que 15")

for i in range(11):
    reais.append(int(input("Digite um número: ")))
    os.system("cls")

for i in range(len(reais)):
    if reais[i] > 15:
        print(reais[i])