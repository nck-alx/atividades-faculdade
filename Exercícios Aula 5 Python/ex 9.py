print("algoritmo que calcular valor salarial a receber")
h_trab = float(input("digite aqui as horas trabalhadas: "))
sal_min = float(input("digite aqui o valor do salário mínimo em R$: "))
valorh_trab = sal_min/2
sal_bru = h_trab * valorh_trab
imposto = sal_bru*0.03
sal = sal_bru - imposto
print(f"o valor do salário a receber será de: R${sal}")