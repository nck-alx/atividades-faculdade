use compra;

-- Criando as tabelas
CREATE TABLE Compra (
    num_compra INT PRIMARY KEY,               -- Número da compra (identificador único)
    data_compra DATE NOT NULL,                -- Data da compra
    fk_cod_fornecedor INT NOT NULL,           -- Código do fornecedor (chave estrangeira)
    fk_num_produto INT NOT NULL              -- Número do produto (chave estrangeira)
);

 create table fornecedor(
	cod_fornecedor int primary key auto_increment,	
	nome_fornecedor text (200),		
	email_fornecedor varchar (200)
 );    -- Depois adicionar fk_endereco_fornecedor & fk_num_produto

create table produto(
	cod_produto	int primary key auto_increment,
    descrição_produto text (200),
    fk_cod_fornecedor int,
    constraint cod_fornecedor foreign key (fk_cod_fornecedor) references fornecedor(cod_fornecedor)
);  

create table endereco_fornecedor(
	CEP	varchar (9) primary key,
    Bairro	varchar (50),
    Rua	varchar (50),
    fk_cod_fornecedor int,
    constraint cod__fornecedor foreign key (fk_cod_fornecedor) references fornecedor(cod_fornecedor)
);

alter table compra
add constraint cod___fornecedor foreign key (fk_cod_fornecedor) references fornecedor(cod_fornecedor);
alter table compra
add constraint num_produto foreign key (fk_num_produto) references produto(cod_produto);

alter table fornecedor
add column fk_endereco_fornecedor varchar (9);
alter table fornecedor
add constraint endereco_fornecedor foreign key (fk_endereco_fornecedor) references endereco_fornecedor(CEP);

alter table fornecedor
add column fk_cod_produto int;
alter table fornecedor
add constraint cod_produto foreign key (fk_cod_produto) references produto(cod_produto);


select * from compra;
select * from fornecedor;
select * from endereco_fornecedor;
select * from produto;

ALTER TABLE Compra
MODIFY fk_cod_fornecedor INT NULL;  -- Permite nulo
ALTER TABLE Compra
MODIFY fk_num_produto INT NULL;      -- Permite nulo

-- Inserindo os valores
INSERT INTO Compra (num_compra, data_compra, fk_cod_fornecedor, fk_num_produto) VALUES
(1, '2024-01-15', null, null),
(2, '2024-02-22', null, null),
(3, '2024-03-10', null, null),
(4, '2024-04-05', null, null),
(5, '2024-05-30', null, null),
(6, '2024-06-17', null, null),
(7, '2024-07-25', null, null),
(8, '2024-08-12', null, null),
(9, '2024-09-03', null, null),
(10, '2024-10-09', null, null),
(11, '2024-10-18', null, null),
(12, '2024-02-07', null, null),
(13, '2024-03-29', null, null),
(14, '2024-04-23', null, null),
(15, '2024-05-11', null, null);
select * from compra;

INSERT INTO fornecedor (nome_fornecedor, email_fornecedor) VALUES
('Auto Peças Turbo', 'turboautopecas@gmail.com'),
('Mecânica do Futuro', 'mecanica.futuro@gmail.com'),
('Oficina Rápida', 'oficina.rapida@gmail.com'),
('Peças e Acessórios Gomes', 'pecas.gomes@gmail.com'),
('Auto Center Silva', 'centersilva@gmail.com'),
('Reformas Automotivas S/A', 'reformas.automotivas@gmail.com'),
('Auto Elétrica Luz', 'luz.autoeletrica@gmail.com'),
('Pneus e Acessórios Ltda', 'pneus.acessorios@gmail.com'),
('Fábrica de Peças Automotivas', 'fabrica.pecas@gmail.com'),
('Peças de Carro Original', 'pecas.original@gmail.com'),
('Oficina de Veículos Pronto', 'veiculos.pronto@gmail.com'),
('Turbo Acessórios', 'turbo.acessorios@gmail.com'),
('Auto Peças Premium', 'premium.autopecas@gmail.com'),
('Serviços Automotivos 24h', 'servicos24h@gmail.com'),
('Peças e Serviços do Brasil', 'pecas.brasil@gmail.com');
select * from fornecedor;

INSERT INTO produto (descrição_produto, fk_cod_fornecedor) VALUES
('Molas Automotivas', 1),
('Amortecedores de Suspensão', 2),
('Pastilhas de Freio', 3),
('Frenos a Disco', 4),
('Baterias Automotivas', 5),
('Filtros de Óleo', 6),
('Filtros de Ar', 7),
('Velas de Ignição', 8),
('Correias Dentadas', 9),
('Pneus para Veículos', 10),
('Lâmpadas de Farol', 11),
('Óleo de Motor', 12),
('Acessórios de Interior', 13),
('Pintura Automotiva', 14),
('Kit de Manutenção Completo', 15);
select * from produto;

INSERT INTO endereco_fornecedor (CEP, Bairro, Rua, fk_cod_fornecedor) VALUES
('08504-420', 'Jardim Espinha', 'Albino Lopes', 1),
('08505-321', 'Centro', 'Rua das Flores', 2),
('08506-213', 'Vila Nova', 'Avenida Brasil', 3),
('08507-112', 'Jardim das Oliveiras', 'Rua dos Lírios', 4),
('08508-999', 'Vila Esperança', 'Rua das Palmeiras', 5),
('08509-888', 'Jardim São Pedro', 'Rua da Liberdade', 6),
('08510-777', 'Vila Maravilha', 'Avenida das Nações', 7),
('08511-666', 'Jardim Primavera', 'Rua das Margaridas', 8),
('08512-555', 'Bairro da Paz', 'Rua do Comércio', 9),
('08513-444', 'Vila Verde', 'Avenida do Povo', 10),
('08514-333', 'Vila São João', 'Rua do Sol', 11),
('08515-222', 'Jardim das Flores', 'Rua do Lago', 12),
('08516-111', 'Bairro Alto', 'Rua da Esperança', 13),
('08517-000', 'Jardim Glória', 'Rua da Vitória', 14),
('08518-999', 'Vila Nova Esperança', 'Avenida da Alegria', 15);


UPDATE fornecedor SET fk_endereco_fornecedor = '08504-420' WHERE cod_fornecedor = 1;
UPDATE fornecedor SET fk_endereco_fornecedor = '08505-321' WHERE cod_fornecedor = 2;
UPDATE fornecedor SET fk_endereco_fornecedor = '08506-213' WHERE cod_fornecedor = 3;
UPDATE fornecedor SET fk_endereco_fornecedor = '08507-112' WHERE cod_fornecedor = 4;
UPDATE fornecedor SET fk_endereco_fornecedor = '08508-999' WHERE cod_fornecedor = 5;
UPDATE fornecedor SET fk_endereco_fornecedor = '08509-888' WHERE cod_fornecedor = 6;
UPDATE fornecedor SET fk_endereco_fornecedor = '08510-777' WHERE cod_fornecedor = 7;
UPDATE fornecedor SET fk_endereco_fornecedor = '08511-666' WHERE cod_fornecedor = 8;
UPDATE fornecedor SET fk_endereco_fornecedor = '08512-555' WHERE cod_fornecedor = 9;
UPDATE fornecedor SET fk_endereco_fornecedor = '08513-444' WHERE cod_fornecedor = 10;
UPDATE fornecedor SET fk_endereco_fornecedor = '08514-333' WHERE cod_fornecedor = 11;
UPDATE fornecedor SET fk_endereco_fornecedor = '08515-222' WHERE cod_fornecedor = 12;
UPDATE fornecedor SET fk_endereco_fornecedor = '08516-111' WHERE cod_fornecedor = 13;
UPDATE fornecedor SET fk_endereco_fornecedor = '08517-000' WHERE cod_fornecedor = 14;
UPDATE fornecedor SET fk_endereco_fornecedor = '08518-999' WHERE cod_fornecedor = 15;
UPDATE fornecedor SET fk_cod_produto = 1 WHERE cod_fornecedor = 1;
UPDATE fornecedor SET fk_cod_produto = 2 WHERE cod_fornecedor = 2;
UPDATE fornecedor SET fk_cod_produto = 3 WHERE cod_fornecedor = 3;
UPDATE fornecedor SET fk_cod_produto = 4 WHERE cod_fornecedor = 4;
UPDATE fornecedor SET fk_cod_produto = 5 WHERE cod_fornecedor = 5;
UPDATE fornecedor SET fk_cod_produto = 6 WHERE cod_fornecedor = 6;
UPDATE fornecedor SET fk_cod_produto = 7 WHERE cod_fornecedor = 7;
UPDATE fornecedor SET fk_cod_produto = 8 WHERE cod_fornecedor = 8;
UPDATE fornecedor SET fk_cod_produto = 9 WHERE cod_fornecedor = 9;
UPDATE fornecedor SET fk_cod_produto = 10 WHERE cod_fornecedor = 10;
UPDATE fornecedor SET fk_cod_produto = 11 WHERE cod_fornecedor = 11;
UPDATE fornecedor SET fk_cod_produto = 12 WHERE cod_fornecedor = 12;
UPDATE fornecedor SET fk_cod_produto = 13 WHERE cod_fornecedor = 13;
UPDATE fornecedor SET fk_cod_produto = 14 WHERE cod_fornecedor = 14;
UPDATE fornecedor SET fk_cod_produto = 15 WHERE cod_fornecedor = 15;
select * from fornecedor;


UPDATE compra SET fk_cod_fornecedor = 1 WHERE num_compra = 1;
UPDATE compra SET fk_cod_fornecedor = 2 WHERE num_compra = 2;
UPDATE compra SET fk_cod_fornecedor = 3 WHERE num_compra = 3;
UPDATE compra SET fk_cod_fornecedor = 4 WHERE num_compra = 4;
UPDATE compra SET fk_cod_fornecedor = 5 WHERE num_compra = 5;
UPDATE compra SET fk_cod_fornecedor = 6 WHERE num_compra = 6;
UPDATE compra SET fk_cod_fornecedor = 7 WHERE num_compra = 7;
UPDATE compra SET fk_cod_fornecedor = 8 WHERE num_compra = 8;
UPDATE compra SET fk_cod_fornecedor = 9 WHERE num_compra = 9;
UPDATE compra SET fk_cod_fornecedor = 10 WHERE num_compra = 10;
UPDATE compra SET fk_cod_fornecedor = 11 WHERE num_compra = 11;
UPDATE compra SET fk_cod_fornecedor = 12 WHERE num_compra = 12;
UPDATE compra SET fk_cod_fornecedor = 13 WHERE num_compra = 13;
UPDATE compra SET fk_cod_fornecedor = 14 WHERE num_compra = 14;
UPDATE compra SET fk_cod_fornecedor = 15 WHERE num_compra = 15;
UPDATE compra SET fk_num_produto = 1 WHERE num_compra = 1;
UPDATE compra SET fk_num_produto = 2 WHERE num_compra = 2;
UPDATE compra SET fk_num_produto = 3 WHERE num_compra = 3;
UPDATE compra SET fk_num_produto = 4 WHERE num_compra = 4;
UPDATE compra SET fk_num_produto = 5 WHERE num_compra = 5;
UPDATE compra SET fk_num_produto = 6 WHERE num_compra = 6;
UPDATE compra SET fk_num_produto = 7 WHERE num_compra = 7;
UPDATE compra SET fk_num_produto = 8 WHERE num_compra = 8;
UPDATE compra SET fk_num_produto = 9 WHERE num_compra = 9;
UPDATE compra SET fk_num_produto = 10 WHERE num_compra = 10;
UPDATE compra SET fk_num_produto = 11 WHERE num_compra = 11;
UPDATE compra SET fk_num_produto = 12 WHERE num_compra = 12;
UPDATE compra SET fk_num_produto = 13 WHERE num_compra = 13;
UPDATE compra SET fk_num_produto = 14 WHERE num_compra = 14;
UPDATE compra SET fk_num_produto = 15 WHERE num_compra = 15;

select * from compra;
select * from fornecedor;
select * from endereco_fornecedor;
select * from produto;

-- Inner Join
SELECT 
    f.nome_fornecedor, 
    f.email_fornecedor, 
    p.descrição_produto,
    ef.CEP
FROM compra AS c
JOIN fornecedor AS f ON c.fk_cod_fornecedor = f.cod_fornecedor
JOIN produto AS p ON c.fk_num_produto = p.cod_produto
JOIN endereco_fornecedor AS ef ON f.cod_fornecedor = ef.fk_cod_fornecedor;

-- Criando view de todas as tabelas
create view fornecedores_view as
SELECT f.nome_fornecedor, f.email_fornecedor, p.descrição_produto, ef.CEP
FROM compra AS c
JOIN fornecedor AS f ON c.fk_cod_fornecedor = f.cod_fornecedor
JOIN produto AS p ON c.fk_num_produto = p.cod_produto
JOIN endereco_fornecedor AS ef ON f.cod_fornecedor = ef.fk_cod_fornecedor;

select * from fornecedores_view;


-- Left Join
SELECT 
    c.num_compra, 
    f.nome_fornecedor, 
    f.email_fornecedor, 
    p.descrição_produto
FROM compra AS c
LEFT JOIN fornecedor AS f ON c.fk_cod_fornecedor = f.cod_fornecedor
LEFT JOIN produto AS p ON c.fk_num_produto = p.cod_produto
LEFT JOIN endereco_fornecedor AS ef ON f.cod_fornecedor = ef.fk_cod_fornecedor;

-- Right Join
SELECT 
    c.num_compra, 
    f.nome_fornecedor, 
    f.email_fornecedor, 
    p.descrição_produto
FROM fornecedor AS f
RIGHT JOIN compra AS c ON c.fk_cod_fornecedor = f.cod_fornecedor
RIGHT JOIN produto AS p ON c.fk_num_produto = p.cod_produto
RIGHT JOIN endereco_fornecedor AS ef ON f.cod_fornecedor = ef.fk_cod_fornecedor;


select * from compra;
select * from fornecedor;
select * from endereco_fornecedor;
select * from produto;


create index idx_fornecedor on fornecedor(nome_fornecedor);
