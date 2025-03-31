print("aumento salarial")
salario = float(input("informe aqui o salário do funcionário em R$: "))
percentual = float(input("informe aqui o percentual de aumento para seu funcionario: "))
valor_aumento = salario * (percentual/100)
novo_salario = salario + valor_aumento
print(f"o valor do aumento será de: R${valor_aumento}, e o valor do novo salario será de: R${novo_salario}.")