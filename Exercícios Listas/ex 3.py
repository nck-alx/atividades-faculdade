import os
os.system ("cls")

# Elaborar um algoritmo que receba a idade, o peso e a altura de 25 pessoas. Calcule e mostre:
#a. A média da idade das pessoas;
#b. A quantidade de pessoas com peso acima de 90 quilos e altura inferior a 1.60;
#c. O percentual de pessoas com idade entre 21 e 30 anos entre as pessoas que medem mais de 1.9;

soma = 0
cont1 = 0
cont2 = 0

for i in range (1,11):
    print(f"{i}ª pessoa")
    idade = int(input("Digite a idade:  "))
    peso = float(input("Digite o peso: "))
    altura = float(input("Digite a altura em metros: "))
    
    soma = soma + idade
    if peso > 90 and altura < 1.60:
        cont1 = cont1 + 1
    if 30 > idade >= 21 and altura > 1.90:
        cont2 = cont2 + 1
    os.system("cls")
    
media = soma / 25
porc = (cont2*100) / 10
print(f"a média das idades é igual a {media}")
print(f"A quantidade de pessoas com peso acima de 90kg e altura menor que 1,60m é de {cont1}")
print(f"O percentual de pessoas com idade entre 21 e 30 anos e com mais de 1,90m é de {porc}%")