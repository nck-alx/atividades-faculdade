import os
os.system("cls")

op=0
dados=[]
agenda=[]
while op !=6:
    os.system("cls")
    print("""\nAGENDA
1- Cadastro
2- Lista
3- Pesquisar
4- Editar contato
5- Excluir
6- Sair""")
    op = int(input("escolha uma opção: "))
    while op <1 or op >6:
        op = int(input("Digite novamente , escolha uma opção: "))

    match op:
        case 1 :
            dados.append(input("Digite o nome: ").upper())
            dados.append(input("Digite o nº de telefone: "))
            dados.append(input("Digite o email: "))
            agenda.append(dados[:])#copiar os dados
            dados.clear()
        case 2 :
            print(f"\tNome  \t Celular    \temail") 
            for elemento in agenda:
                print(f"\t{elemento[0]} \t {elemento[1]}    \t{elemento[2]}")
            print("Enter para voltar ao menu")   
            input()
        case 3:
            pesq=input("Digite o nome para pesquisar: ").upper()
            achou="N"   
            for elemento in agenda :
                if pesq==elemento[0]:
                    print(f"Nome: {elemento[0]} /Celular: {elemento[1]} /email: {elemento[2]}")
                    achou="S"
                
            if achou=="N":
                print("NÃO ENCONTRADO")
            print("enter para voltar")
            input()

        case 4 :
            troca=int(input("""O que você deseja?:
1- Mudar o Nome
2- Mudar o Celular
3- Mudar o email: """))
            
            while troca <1 or troca >3:
                 troca=int(input("""digite novamente:
O que você deseja?:
1- Mudar o Nome
2- Mudar o Celular
3- Mudar o email: """))

            
            contato=input("Digite o contato que será atualizado : ")
            
           
            if troca ==1:
                
                novo_nome = (input("Digite o novo nome: ")).upper()
                 # Atualiza o item na lista
                elemento[0]= novo_nome
            
            elif troca==2:
                novo_numero = (input("Digite o novo nº: "))
                 # Atualiza o item na lista
                elemento[1]= novo_numero
                
            else:
                novo_email = (input("Digite o novo email: "))
                 # Atualiza o item na lista
                elemento[2]= novo_email
                

        case 5 :
            print("\tCONTATOS SALVOS :") 
            for elemento in agenda:
                print(f"\t{elemento[0]}")
            delete=(input("Qual contato quer remover: ")).upper()
            achado="n"
            
            for contato in agenda:
                if contato[0] == delete:
                    agenda.remove(contato)
                    print("Contato removido , enter para voltar ao menu")
                    achado="s"
                    input()

                if achado=="n":
                    print("Não encontrado")
                    print("enter para voltar")
                    input()
        case 6:
                print("Fim ")        



            



