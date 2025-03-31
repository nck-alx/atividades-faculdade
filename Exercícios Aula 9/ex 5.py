import os
os.system ("cls")

print("Preço e detalhes das bagagens")
total = 0
for produto in range (1,6):
    print(f"Produto {produto}")
    pre_unitario = float(input("Digite o preço unitário do produto: "))
    while pre_unitario < 1:
        os.system ("cls")
        print("Digite um valor válido!")
        pre_unitario = float(input("Digite o preço unitário do produto: "))
    if pre_unitario <= 100:
        imposto = pre_unitario * 0.05
    else:
        imposto = pre_unitario * 0.10
    os.system ("cls")
    pais = int(input("Digite o país de origem do produto (1 : EUA, 2 : México e 3 : outros): "))
    while pais != 1 and pais !=2 and pais != 3:
        print("Digite um valor válido!")
        pais = int(input("Digite o país de origem do produto (1 : EUA, 2 : México e 3 : outros): "))
    meios = input("Digite o meio de transporte do produto e (T : Terrestre, F: Fluvial e A: Aéreo): ").upper()
    while meios != "T" and meios != "F" and meios != "A":
        
        print("Digite um valor válido!")
        os.system ("cls")
        meios = input("Digite o meio de transporte do produto e (T : Terrestre, F: Fluvial e A: Aéreo): ").upper()
    carga = input("Digite se a carga é perigosa ou não (S/N): ").upper()
    while carga != "S" and carga != "N":
        os.system ("cls")
        print("Digite uma resposta válida!")
        carga = input("Digite se a carga é perigosa ou não (S/N): ").upper()
    if carga:
        if pais == 1:
            valor = 50
        elif pais == 2:
            valor = 35
        else :
            valor = 24
    else:
        if carga == 1:
            valor = 12
        elif carga == 2:
            valor = 35
        else:
            valor = 60
    if pais == 2 or meios == "A":
        seguro = pre_unitario / 2
    else:
        seguro = 0
    os.system ("cls")
    preco_final = pre_unitario + imposto + valor + seguro
    print(f"O valor da bagagem será R${preco_final}")
    total = total + preco_final

os.system ("cls")
print(f"O valor total será de R${total:.2f}")