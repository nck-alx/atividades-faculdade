import os
os.system ("cls")

print("jogo de adivinhação")
print("pressione ENTER para continuar!")
input()
os.system ("cls")

jogador1 = int(input("Jogador 1: pressione um número de 1 a 10: "))
while jogador1 < 1 or jogador1 > 10:
    print("OPÇÃO INVÁLIDA! TENTE NOVAMENTE")
    print("pressione ENTER para tentar novamente!")
    input()
    os.system ("cls")
    jogador1 = int(input("Jogador 1: pressione um número de 1 a 10: "))

print("pressione ENTER para  continuar!")
input()
os.system ("cls")
tentativas= 0
jogador2 = int(input("Jogador 2: Agora, adivinhe o número do Jogador 1: "))
while jogador2 != jogador1:
    print("ERROU!")
    print("pressione ENTER para tentar novamente!")
    input()
    os.system ("cls")
    tentativas = tentativas + 1
    print(f"Tentativas: {tentativas}")
    jogador2 = int(input("Jogador 2: Agora, adivinhe o número do Jogador 1: "))
print("ACERTOU!")
print(f"Tentativas: {tentativas}")