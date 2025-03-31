import os
os.system ("cls")

print("Lanchonete Bom Apetite")
total = 0
resp = "sim"
while resp == "sim":
    print("""Menu:
100 Cachorro quente 2,50
101 Bauru simples 2,00
102 Bauru c/ovo 3,50
103 Hamburger 5,10
104 Cheeseburger 3,30
105 Refrigerante 2,00
\n""")
    cod = int(input("Digite o número do pedido: "))
    while cod < 100 or cod > 105:
        print("Digite um número válido!")
        cod = int(input("Digite o número do pedido: "))
    os.system ("cls")
    qtd = int(input("Digite a quantidade do pedido: "))
    while qtd < 1:
        print("Digite um número válido!")
        qtd = int(input("Digite a quantidade do pedido: "))
    if cod == 100:
        preco = 2.50
    elif cod == 101:
        preco = 2.00
    elif cod == 103:
        preco = 5.10
    elif cod == 104:
        preco = 3.50
    else:
        preco = 2.00
    total = total + preco * qtd
    print(f"Total: R${total}")
    resp = input("Deseja pedir mais? (sim/não): ")
    os.system ("cls")
    
print(f"Total do pedido: R${total:.2f}")