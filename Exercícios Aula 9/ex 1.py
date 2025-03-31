import os
os.system ("cls")

print("Em quantos anos a população de A irá passar a população de B?")
popA = 98000000
popB = 200000000
cont = 0
while popA < popB:
    popA = popA + popA * 3.5 / 100
    popB = popB + popB * 1.5 / 100
    cont = cont + 1

print(f"A população do país A irá ultrapassar a do país B em {cont} anos.")