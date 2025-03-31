print("algoritmo que calcula a quantidade de ração restante após cinco dias")
peso = float(input("informe quantos kilos tem o saco de ração: "))
quant_gato = float(input("informe quantas gramas de ração cada gato consome por dia: "))
quinto_dia = peso - (quant_gato*2*5)/1000
if quinto_dia > 0:
    print(f"a quantidade de ração restante no quinto dia será de {quinto_dia}kg")
else:
    print("não sobrará ração")