create database praticando;
use praticando;
-- ----------------------------------------------------------------------------------------------------------------------------------------

/*Tabela Pessoas*/
select * from pessoas;


SELECT nome, estado, cidade FROM pessoas
where cidade like "s%" 
order by estado asc;


/*criando a tabela "pessoas"*/
create table pessoas(
	codigo varchar (5),
    nome text (100),
    cidade text (120),
    estado text (100)
);
    
/*excluir a tabela "pessoas"*/
drop table pessoas;

/*inserindo dados(tuplas) na tabela pessoas*/
insert into pessoas(codigo, nome, cidade, estado)
values
(0001, "Nicolas Alexandre", "Sorocaba", "São Paulo"),
(0002, 'Maria Oliveira', 'Niterói', 'Rio de Janeiro'),
(0003, 'João Silva', 'Uberlândia', 'Minas Gerais'),
(0004, 'Ana Costa', 'Santos', 'São Paulo'),
(0005, 'Carlos Pereira', 'Cabo Frio', 'Rio de Janeiro'),
(0006, 'Bruna Souza', 'Belo Horizonte', 'Minas Gerais'),
(0007, 'Pedro Lima', 'São Bernardo do Campo', 'São Paulo'),
(0008, 'Juliana Martins', 'Petrópolis', 'Rio de Janeiro'),
(0009, 'Lucas Barbosa', 'Contagem', 'Minas Gerais'),
(0010, 'Fernanda Ribeiro', 'Guarulhos', 'São Paulo'),
(0011, 'Gabriel Almeida', 'Volta Redonda', 'Rio de Janeiro'),
(0012, 'Sofia Santos', 'Montes Claros', 'Minas Gerais'),
(0013, 'Thiago Rocha', 'São José dos Campos', 'São Paulo'),
(0014, 'Aline Carvalho', 'Duque de Caxias', 'Rio de Janeiro'),
(0015, 'Beatriz Monteiro', 'Betim', 'Minas Gerais'),
(0016, 'Felipe Ferreira', 'Ribeirão Preto', 'São Paulo'),
(0017, 'Ricardo Lopes', 'Nova Iguaçu', 'Rio de Janeiro'),
(0018, 'Vanessa Silva', 'Ipatinga', 'Minas Gerais'),
(0019, 'Daniela Nunes', 'Osasco', 'São Paulo'),
(0020, 'Leonardo Mendes', 'Caxias do Sul', 'Rio de Janeiro'),
(0021, 'Mariana Figueiredo', 'Sete Lagoas', 'Minas Gerais'),
(0022, 'Cássio Oliveira', 'Campinas', 'São Paulo'),
(0023, 'Rodrigo Matos', 'Macaé', 'Rio de Janeiro'),
(0024, 'Patrícia Borges', 'Divinópolis', 'Minas Gerais'),
(0025, 'Gabriel Costa', 'São Vicente', 'São Paulo'),
(0026, 'Carla Almeida', 'Belford Roxo', 'Rio de Janeiro'),
(0027, 'Rafael Gonçalves', 'Governador Valadares', 'Minas Gerais'),
(0028, 'Ana Paula', 'São Caetano do Sul', 'São Paulo'),
(0029, 'Eduardo Lima', 'Angra dos Reis', 'Rio de Janeiro'),
(0030, 'Larissa Santos', 'Teófilo Otoni', 'Minas Gerais'),
(0031, 'Felipe Andrade', 'Jundiaí', 'São Paulo'),
(0032, 'Samantha Ferreira', 'São Gonçalo', 'Rio de Janeiro'),
(0033, 'Marcio Silva', 'Santa Luzia', 'Minas Gerais'),
(0034, 'Gustavo Rocha', 'Mauá', 'São Paulo'),
(0035, 'Juliana Martins', 'Nilópolis', 'Rio de Janeiro'),
(0036, 'Danilo Oliveira', 'Pato de Minas', 'Minas Gerais'),
(0037, 'Rita Almeida', 'São Carlos', 'São Paulo'),
(0038, 'Bruno Costa', 'Itaboraí', 'Rio de Janeiro'),
(0039, 'Tatiane Figueiredo', 'Lavras', 'Minas Gerais'),
(0040, 'André Nunes', 'Barueri', 'São Paulo'),
(0041, 'Simone Ferreira', 'Teresópolis', 'Rio de Janeiro'),
(0042, 'Renan Alves', 'Araçuaí', 'Minas Gerais'),
(0043, 'Luciana Mendes', 'Ribeirão Pires', 'São Paulo'),
(0044, 'Thiago Lima', 'Magé', 'Rio de Janeiro'),
(0045, 'Fábio Pereira', 'Pará de Minas', 'Minas Gerais'),
(0046, 'Gisele Rocha', 'Itapecerica da Serra', 'São Paulo'),
(0047, 'Vinícius Silva', 'Queimados', 'Rio de Janeiro'),
(0048, 'Patrícia Matos', 'Uberaba', 'Minas Gerais'),
(0049, 'Roberta Santos', 'Sorocaba', 'São Paulo'),
(0050, 'Eduardo Rocha', 'Rio das Ostras', 'Rio de Janeiro');




/*------------------------------------------------------------------------------------------------------------*/
/*Tabela Produtos*/
select * from produtos;


create table produtos(
	codigo varchar (5),
    nome varchar (100)
);
/*excluir a tabela "produtos"*/
drop table produtos;

/*Adicionando a coluna "categoria"*/
alter table produtos
add column categoria text(30);

/*adicionar a coluna "UF" (Estado de origem)*/
alter table produtos
add column UF text(2);



update produtos
set categoria = "Tecnologia" where codigo >=3 and codigo <=5 ;

update produtos
set categoria = "Roupas e Acessórios" where codigo >= 15 and codigo <= 20;

UPDATE produtos
SET categoria = 'Eletrodomésticos'
WHERE codigo IN (0011, 0034, 0035, 0036, 0048, 0049);

UPDATE produtos
SET categoria = 'Brinquedos'
WHERE codigo IN (39, 40, 41);

UPDATE produtos
SET categoria = 'Tecnologia'
WHERE codigo IN (45);

select codigo, nome, categoria from produtos where categoria is null;

select * from produtos;

insert into produtos(codigo, nome)
values
(0001, "Caneca 'Best Boss'"),
(0002, "Caderno capa dura A4"),
(0003, "Teclado mecânico RGB"),
(0004, "Mouse gamer sem fio"),
(0005, "Monitor 27'' 4K"),
(0006, "Cadeira ergonômica de escritório"),
(0007, "Notebook ultrafino 15''"),
(0008, "Fone de ouvido Bluetooth"),
(0009, "Câmera digital DSLR"),
(0010, "Impressora multifuncional"),
(0011, "Cafeteira elétrica"),
(0012, "Smartphone 128GB"),
(0013, "Carregador portátil 10000mAh"),
(0014, "Relógio inteligente com monitor cardíaco"),
(0015, "Mochila para notebook"),
(0016, "Bolsa de viagem 50L"),
(0017, "Sapatênis masculino preto"),
(0018, "Tênis de corrida feminino"),
(0019, "Jaqueta corta-vento unissex"),
(0020, "Óculos de sol polarizado"),
(0021, "Livro 'O Poder do Hábito'"),
(0022, "E-book '1984' de George Orwell"),
(0023, "HD externo 1TB"),
(0024, "Pen drive 64GB"),
(0025, "Placa de vídeo RTX 3070"),
(0026, "Processador Intel i7"),
(0027, "Memória RAM 16GB DDR4"),
(0028, "Fonte 600W 80 Plus Bronze"),
(0029, "Gabinete Mid Tower com RGB"),
(0030, "Headset gamer com microfone"),
(0031, "Controle de videogame sem fio"),
(0032, "Console de videogame PS5"),
(0033, "Jogo de panelas antiaderentes 5 peças"),
(0034, "Aspirador de pó robô"),
(0035, "Ar-condicionado portátil 12000 BTUs"),
(0036, "Ventilador de mesa 40cm"),
(0037, "Smart TV 55'' 4K UHD"),
(0038, "Caixa de som Bluetooth portátil"),
(0039, "Bicicleta mountain bike 29''"),
(0040, "Patinete elétrico"),
(0041, "Bola de futebol oficial FIFA"),
(0042, "Kit de halteres ajustáveis"),
(0043, "Esteira ergométrica dobrável"),
(0044, "Drone com câmera 4K"),
(0045, "Tripé para câmera 1,5m"),
(0046, "Carregador sem fio para smartphone"),
(0047, "Luminária de mesa LED"),
(0048, "Mini geladeira portátil"),
(0049, "Churrasqueira elétrica"),
(0050, "Tábua de corte de bambu");

-- ---------------------------------------------------------------------------------------------------------------------------------------
