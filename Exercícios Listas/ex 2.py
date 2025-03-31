import os
os.system ("cls")

#   Elabore um algoritmo que receba o salário de N funcionários. Calcule e mostre:
#a. O valor total pago a todos os funcionários;
#b. A quantidade de funcionários que recebem mais de R$ 2500.00;
#c. A média dos salários;
#d. O percentual de funcionários que recebem menos de R$ 1300.00;


soma = 0
cont = 0
cont2 = 0

n = int(input("Indique quantos funcionários existem: "))
for i in range(1, n+1):
    salario = (int(input(f"Digite o salário do {i}º funcionário: ")))
    if salario > 2500:
        cont = cont + 1
    if salario < 1300:
        cont2 = cont2 + 1
    soma = soma + salario
    os.system("cls")
    
media = soma / n
porcentagem = (cont2*100)/n

print(f"A soma dos salários é de: R${soma}")
print(f"A quantidade de funcionários que recebem mais de R$2500,00 é de {cont}")
print(f"A média de salários é de R${media}")
print(f"O percentual de funcionários que recebem menos qu R$1300,00 é de {porcentagem}%")