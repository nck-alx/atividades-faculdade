create database atividade_2;
use atividade_2;

create table CLIENTE(
	CODIGO_CLIENTE varchar(4),
    NOME text (40),
    CPF varchar(11),
    EMAIL text(50),
    TELEFONE varchar(11)
);

describe CLIENTE;

create table PRODUTOS(
	CODIGO_PRODUTO varchar(4),
    DESCRICAO text(300),
    VALOR numeric (10,2),
    QUANTIDADE int,
    MARCA text (20)
);

alter table produtos
change descricao produto text (300);

drop table produtos;

describe PRODUTOS;

select * from CLIENTE

insert into CLIENTE(CODIGO_CLIENTE, NOME, CPF, EMAIL, CELULAR)
value
(0001, "Alexandre Moraes", 26316301732, "moraes.alexandre@gmail.com", 11903216798),
(0002, "Melon Usk", 25636184391, "starlink.x@gmail.com", 91872341234),
(0003, "Juliana Santos", 27746289012, "juliana.santos@gmail.com", 11987654321),
(0004, "Carlos Silva", 29874365123, "carlos.silva@gmail.com", 11965432187),
(0005, "Fernanda Oliveira", 28894756123, "fernanda.oliveira@gmail.com", 11934567890),
(0006, "Bruno Almeida", 27965478901, "bruno.almeida@gmail.com", 11923456789),
(0007, "Camila Costa", 26125478901, "camila.costa@gmail.com", 11987654320),
(0008, "Diego Pereira", 27384629012, "diego.pereira@gmail.com", 11912345678),
(0009, "Patrícia Lima", 28459637012, "patricia.lima@gmail.com", 11998765432),
(0010, "Rafael Martins", 29546789012, "rafael.martins@gmail.com", 11987651234),
(0011, "Isabela Rocha", 26643567890, "isabela.rocha@gmail.com", 11976543210),
(0012, "Eduardo Fernandes", 27893456780, "eduardo.fernandes@gmail.com", 11965478901),
(0013, "Larissa Silva", 28934567890, "larissa.silva@gmail.com", 11954321098),
(0014, "Gustavo Almeida", 29235678901, "gustavo.almeida@gmail.com", 11943210987),
(0015, "Tatiane Souza", 27548923456, "tatiane.souza@gmail.com", 11932109876),
(0016, "Mateus Lima", 28765432098, "mateus.lima@gmail.com", 11921098765),
(0017, "Mariana Costa", 29346890123, "mariana.costa@gmail.com", 11910987654),
(0018, "João Pedro", 27483920123, "joao.pedro@gmail.com", 11909876543),
(0019, "Roberta Almeida", 26235678901, "roberta.almeida@gmail.com", 11998765012),
(0020, "Felipe Barbosa", 28456789012, "felipe.barbosa@gmail.com", 11987654309),
(0021, "Sofia Santos", 27567890123, "sofia.santos@gmail.com", 11976543209),
(0022, "Lucas Ferreira", 29678901234, "lucas.ferreira@gmail.com", 11965432109),
(0023, "Aline Rodrigues", 26789012345, "aline.rodrigues@gmail.com", 11954321087),
(0024, "Ricardo Nunes", 27901234567, "ricardo.nunes@gmail.com", 11943210976),
(0025, "Viviane Pereira", 28123456789, "viviane.pereira@gmail.com", 11932109865),
(0026, "Marcelo Teixeira", 29234567890, "marcelo.teixeira@gmail.com", 11921098754),
(0027, "Ana Clara", 28456789012, "ana.clara@gmail.com", 11910987643),
(0028, "Victor Hugo", 27678901234, "victor.hugo@gmail.com", 11909876532),
(0029, "Patrícia Costa", 29345678901, "patricia.costa@gmail.com", 11998765431),
(0030, "Thiago Lima", 27567890123, "thiago.lima@gmail.com", 11987654321);

delete from CLIENTE where CODIGO_CLIENTE > 0; /*deletar todos os itens da tabela CLIENTES*/

INSERT INTO PRODUTOS(CODIGO_PRODUTO, PRODUTO, VALOR, QUANTIDADE, MARCA)
VALUES
(0001, "Caneca", 30.00, 20, "Stanley"),
(0002, "Jogo de Pratos", 100.00, 50, "Oxford"),
(0003, "Garfo e Faca", 40.00, 35, "Tramontina"),
(0004, "Copo de Vidro", 15.00, 100, "Nadir"),
(0005, "Panela de Pressão", 120.00, 25, "Panelux"),
(0006, "Tábua de Corte", 25.00, 40, "Meyer"),
(0007, "Liquidificador", 150.00, 30, "Philips"),
(0008, "Chaleira Elétrica", 70.00, 15, "Mondial"),
(0009, "Assadeira de Alumínio", 35.00, 60, "Willys"),
(0010, "Colher de Pau", 10.00, 50, "Brazza"),
(0011, "Frigideira Antiaderente", 85.00, 20, "Tramontina"),
(0012, "Escorredor de Macarrão", 20.00, 55, "Brinox"),
(0013, "Ralador de Queijo", 18.00, 45, "Tramontina"),
(0014, "Tigela de Porcelana", 22.00, 70, "Porto Brasil"),
(0015, "Abridor de Garrafa", 12.00, 80, "Kitchenaid"),
(0016, "Ralador de Legumes", 30.00, 50, "Tramontina"),
(0017, "Termômetro de Cozinha", 28.00, 25, "ThermoPro"),
(0018, "Centrífuga de Salada", 40.00, 30, "Oster"),
(0019, "Moedor de Café", 55.00, 15, "Bodum"),
(0020, "Conjunto de Facas", 120.00, 10, "Global"),
(0021, "Pequeno Processador", 80.00, 25, "Black+Decker"),
(0022, "Pote Hermético", 12.00, 60, "Hermético"),
(0023, "Coador de Café", 8.00, 100, "Melitta"),
(0024, "Jogo de Talheres", 45.00, 50, "Tramontina"),
(0025, "Espátula de Silicone", 15.00, 55, "Silicone"),
(0026, "Forma de Silicone", 25.00, 40, "Baker's Joy"),
(0027, "Pincel de Cozinha", 9.00, 80, "Martha Stewart"),
(0028, "Escova de Limpeza", 7.00, 75, "Scotch-Brite"),
(0029, "Cesto de Frutas", 30.00, 25, "Plasútil"),
(0030, "Termômetro Digital", 35.00, 20, "KitchenCraft");

select * from PRODUTOS;

select * from CLIENTE;
delete from CLIENTE where CODIGO_CLIENTE > 25 and CODIGO_CLIENTE < 31;

delete from PRODUTOS where 27 < CODIGO_PRODUTO and CODIGO_PRODUTO < 31;
select * from PRODUTOS;

alter table PRODUTOS
change DESCRICAO  PRODUTO text (40);

alter table CLIENTE
change TELEFONE CELULAR varchar(11);

alter table CLIENTE
	modify column CODIGO_CLIENTE varchar(4) not null,
    modify column NOME text (40) not null,
    modify column CPF varchar(11) not null ,
    modify column EMAIL text(50)not null ,
    modify column CELULAR varchar(11) not null;
    
describe CLIENTE;

alter table PRODUTOS
	modify column CODIGO_PRODUTO varchar(4) not null,
    modify column PRODUTO text(300) not null,
    modify column VALOR numeric (10,2) not null,
    modify column QUANTIDADE int not null;
    
describe PRODUTOS;

select * from PRODUTOS where valor = 150;
select * from PRODUTOS where codigo_produto < 20 and valor > 10;
select * from CLIENTE where codigo_cliente >= 15;
select produto from PRODUTOS where codigo_produto <> 1 and 4 and 5 and 7 and 8 and 9 and 10;
select nome from CLIENTE where codigo_cliente <= 5 or codigo_cliente >= 20;
select * from produtos where codigo_produto between 15 and 21;
select nome from cliente where nome like "m%";
select * from produtos where quantidade in (100, 80, 75);
select count(codigo_produto) from produtos where quantidade < 50;
select sum(valor) from produtos  where valor > 50;
select max(valor) from produtos;
select min(quantidade) from produtos;
select avg(valor) from produtos;
select * from produtos order by valor desc;
select * from produtos order by quantidade asc;

select * from produtos;

delete from produtos
where valor > 1;