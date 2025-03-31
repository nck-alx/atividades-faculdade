import os
os.system ("cls")

print("Controle de qualidade de peças")
apr = 0
rep = 0
for pecas in range (1,4):
    código = input("Digite o código da peça: ")
    estado = input("Qualidade (A=Aprovado; R=Reprovado): ").upper()
    while estado != "A" and estado != "R":
        print("Valor incorreto! Digite A ou B")
        estado = input("Qualidade (A=Aprovado; R=Reprovado): ").upper()
    if estado == "A":
        apr = apr + 1
        os.system ("cls")
    else:
        rep = rep + 1
        código = input("Digite o código da peça reprovado: ")
        os.system ("cls")

print(f"Peças aprovados: {apr}")
print(f"Peças reprovadas: {rep}")