import math
print("algoritmo hipotenusa de triângulo retângulo")
print("LEMBRE DE MANTER AS MESMAS UNIDADES DE MEDIDA")
c1 = float(input("digite o valor do cateto adjacente: "))
c2 = float(input("digite o valor do cateto oposto: "))
hipotenusa = math.sqrt(c1**2 + c2**2)
print(f"a hipotenusa do triângulo será igual a {hipotenusa}")