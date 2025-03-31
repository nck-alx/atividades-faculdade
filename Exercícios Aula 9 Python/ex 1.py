import os
os.system ("cls")

print("calculadora de quantos anos a população de país A passará pais B")
print("pressione enter para continuar")
input()
os.system ("cls")

a = 98000000
b = 200000000
ano = 0

while a <= b:
    a = a + a * 3.5/100
    b = b + b * 1.5 / 100
    ano = ano + 1
    
print(f"a população do país A passará a do país B em {ano} anos")