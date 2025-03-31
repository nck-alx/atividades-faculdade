import os
os.system ("cls")

print("Jogo de adivinhação numérica")
input("Pressione ENTER para iniciar ")
os.system ("cls")

tentativas = 0
j1 = int(input("Jogador 1: Escolha um número de 1 a 10: "))
while j1 < 1 or j1 > 10:
    input("Número inválido! Pressione ENTER para tentar novamente ")
    os.system ("cls")
    j1 = int(input("Jogador 1: Escolha um número de 1 a 10: "))
    
os.system ("cls")
j2 = int(input("Jogador 2: Agora, adivinhe o número do jogador 1: "))

while j2 != j1:
    input("ERROU! Pressione ENTER para tentar novamente ")
    os.system ("cls")
    j2 = int(input("Jogador 2: Agora, adivinhe o número do jogador 1: "))
    tentativas = tentativas + 1
    print(f"Tentativas: {tentativas}")
    
    while j2 < 1 or j2 > 10:
       input("Número inválido! Pressione ENTER para tentar novamente ")
       os.system ("cls")
       j2 = int(input("Jogador 2: Agora, adivinhe o número do jogador 1: "))
       tentativas = tentativas + 1
       print(f"Tentativas: {tentativas}")

os.system("cls")
print("Acertou!")
print(f"Tentativas: {tentativas}")    