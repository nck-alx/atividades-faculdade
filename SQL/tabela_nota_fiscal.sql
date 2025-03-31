-- Criação do banco de dados
CREATE DATABASE m2;
USE m2;

-- Tabela nota_fiscal
CREATE TABLE nota_fiscal (
    numNF INT AUTO_INCREMENT PRIMARY KEY,
    data_emissao DATE,
    quant_comprada INT,
    valor_total_quant NUMERIC(10,2),
    valor_total_compra NUMERIC(10,2),
    fk_cod_cliente INT,
    fk_cod_produto INT,
    FOREIGN KEY (fk_cod_cliente) REFERENCES cliente(cod_cliente),
    FOREIGN KEY (fk_cod_produto) REFERENCES produto(cod_produto)
);

-- Tabela cliente
CREATE TABLE cliente (
    cod_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    fk_telefone INT,
    fk_cep VARCHAR(15)
);

-- Tabela produto
CREATE TABLE produto (
    cod_produto INT AUTO_INCREMENT PRIMARY KEY,
    serie VARCHAR(10) NOT NULL,
    valor_uni NUMERIC(10,2) NOT NULL,
    descricao TEXT NOT NULL,
    quant_estoque INT NOT NULL
);

-- Tabela telefone
CREATE TABLE telefone (
    tel VARCHAR(15) PRIMARY KEY,
    tel_2 VARCHAR(15),
    tel_3 VARCHAR(15),
    fk_cod_cliente INT,
    FOREIGN KEY (fk_cod_cliente) REFERENCES cliente(cod_cliente)
);

-- Tabela endereço
CREATE TABLE endereco (
    cep VARCHAR(15) PRIMARY KEY,
    bairro VARCHAR(50),
    rua VARCHAR(50),
    fk_cod_cliente INT,
    FOREIGN KEY (fk_cod_cliente) REFERENCES cliente(cod_cliente)
);

-- Tabela fornecedor
CREATE TABLE fornecedor (
    cod_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome_fornecedor VARCHAR(50),
    email VARCHAR(50),
    fk_cod_endereco VARCHAR(15),
    FOREIGN KEY (fk_cod_endereco) REFERENCES endereco(cep)
);

-- Tabela produto_fornecedor
CREATE TABLE produto_fornecedor (
    cod_produto INT,
    fk_cod_fornecedor INT,
    PRIMARY KEY (cod_produto, fk_cod_fornecedor),
    FOREIGN KEY (cod_produto) REFERENCES produto(cod_produto),
    FOREIGN KEY (fk_cod_fornecedor) REFERENCES fornecedor(cod_fornecedor)
);

-- Tabela compra
CREATE TABLE compra (
    num_compra INT AUTO_INCREMENT PRIMARY KEY,
    data_compra DATE,
    fk_cod_fornecedor INT,
    FOREIGN KEY (fk_cod_fornecedor) REFERENCES fornecedor(cod_fornecedor)
);

-- Inserindo dados
INSERT INTO cliente (nome_cliente, endereco) VALUES 
('Cliente 1', 'Endereço 1'),
('Cliente 2', 'Endereço 2'),
('Cliente 3', 'Endereço 3'),
('Cliente 4', 'Endereço 4'),
('Cliente 5', 'Endereço 5');

INSERT INTO produto (serie, valor_uni, descricao, quant_estoque) VALUES 
('143A', 3.00, 'Caneta', 100),
('1236A', 2.00, 'Borracha', 100),
('12589H', 10.00, 'Grampeador', 256),
('1576A', 8.70, 'Corretivo', 456),
('87966PMN', 20.00, 'Caderno', 475);

-- Inserindo notas fiscais com referências a cliente e produto
INSERT INTO nota_fiscal (data_emissao, quant_comprada, valor_total_quant, valor_total_compra, fk_cod_cliente, fk_cod_produto) VALUES 
('2024-01-10', 15, 45.00, 750.00, 1, 1),
('2024-03-25', 180, 360.00, 420.00, 2, 2),
('2024-06-14', 100, 1000.00, 1200.00, 3, 3),
('2024-09-07', 100, 870.00, 950.90, 4, 4),
('2024-11-30', 152, 3040.00, 4200.00, 5, 5);

INSERT INTO telefone (tel, tel_2, tel_3, fk_cod_cliente) VALUES 
('(11) 98765-4321', '(11) 92345-6789', '(11) 91234-5678', 1),
('(21) 98765-4321', '(21) 92345-6789', '(21) 91234-5678', 2),
('(31) 98765-4321', '(31) 92345-6789', '(31) 91234-5678', 3),
('(41) 98765-4321', '(41) 92345-6789', '(41) 91234-5678', 4),
('(51) 98765-4321', '(51) 92345-6789', '(51) 91234-5678', 5);

INSERT INTO endereco (cep, bairro, rua, fk_cod_cliente) VALUES 
('01001-000', 'Centro', 'Rua São Bento', 1),
('04002-001', 'Vila Mariana', 'Avenida Paulista', 2),
('05003-002', 'Perdizes', 'Rua Turiassu', 3),
('08004-003', 'Vila Esperança', 'Rua Itinguçu', 4),
('09005-004', 'Jardim Santo André', 'Rua Adoniran Barbosa', 5);

INSERT INTO fornecedor (nome_fornecedor, email, fk_cod_endereco) VALUES 
('Tech Solutions', 'contato@techsolutions.com.br', '01001-000'),
('Alpha Supplies', 'vendas@alphasupplies.com.br', '04002-001'),
('Global Traders', 'info@globaltraders.com.br', '05003-002'),
('Innovative Goods', 'contact@innovativegoods.com.br', '08004-003'),
('Prime Materials', 'support@primematerials.com.br', '09005-004');

INSERT INTO compra (data_compra, fk_cod_fornecedor) VALUES 
('2024-01-15', 1),
('2024-02-20', 2),
('2024-03-25', 3),
('2024-04-30', 4),
('2024-05-05', 5);

-- Consultas para verificar dados
SELECT * FROM nota_fiscal;
SELECT * FROM cliente;
SELECT * FROM produto;
SELECT * FROM telefone;
SELECT * FROM endereco;

-- Excluindo a coluna "endereco" da tabela cliente
ALTER TABLE cliente 
DROP COLUMN endereco;

-- Adicionando a coluna "fk_numNF" como chave estrangeira
ALTER TABLE cliente 
ADD COLUMN fk_numNF INT,
ADD FOREIGN KEY (fk_numNF) REFERENCES nota_fiscal(numNF);

-- Exibindo a estrutura atualizada da tabela cliente
DESC cliente;

-- Adicionando a coluna "fk_numNF" como chave estrangeira na tabela produto
ALTER TABLE produto 
ADD COLUMN fk_numNF INT,
ADD FOREIGN KEY (fk_numNF) REFERENCES nota_fiscal(numNF);

UPDATE cliente 
SET 
    fk_telefone = (SELECT cod_cliente FROM telefone WHERE fk_cod_cliente = cliente.cod_cliente LIMIT 1),
    fk_cep = (SELECT CEP FROM endereco WHERE fk_cod_cliente = cliente.cod_cliente LIMIT 1),
    fk_numNF = (SELECT numNF FROM nota_fiscal WHERE fk_cod_cliente = cliente.cod_cliente LIMIT 1);

UPDATE produto 
SET fk_numNF = 1 WHERE cod_produto = 1;  -- Exemplo, altere conforme necessário
UPDATE produto 
SET fk_numNF = 2 WHERE cod_produto = 2;  -- E assim por diante para cada produto
UPDATE produto 
SET fk_numNF = 3 WHERE cod_produto = 3;
UPDATE produto 
SET fk_numNF = 4 WHERE cod_produto = 4;
UPDATE produto 
SET fk_numNF = 5 WHERE cod_produto = 5;


-- Consultas para verificar dados
SELECT * FROM nota_fiscal;
SELECT * FROM cliente;
SELECT * FROM produto;
SELECT * FROM telefone;
SELECT * FROM endereco;

 -- Renomeando os cinco primeiros cliente
UPDATE cliente
SET nome_cliente = 'Nicolas Alexandre'
WHERE cod_cliente = '1';
UPDATE cliente
SET nome_cliente = 'Rayssa Silva'
WHERE cod_cliente = '2';
UPDATE cliente
SET nome_cliente = 'Marcel Chagas'
WHERE cod_cliente = '3';
UPDATE cliente
SET nome_cliente = 'Victor Ossamu'
WHERE cod_cliente = '4';
UPDATE cliente
SET nome_cliente = 'Pedro Pedreiro'
WHERE cod_cliente = '5';

-- Inserindo 5 novas linhas de dados;
select * from cliente;
INSERT INTO cliente (nome_cliente) VALUES
('João Silva'),
('Maria Oliveira'),
('Carlos Souza'),
('Ana Costa'),
('Fernanda Lima');
INSERT INTO cliente (nome_cliente) VALUES
('Lucas Pereira'),
('Julia Santos'),
('Rafael Mendes'),
('Bruna Alves'),
('Thiago Rocha');

select * from endereco;
INSERT INTO endereco (cep, bairro, rua, fk_cod_cliente) VALUES
('10001-000', 'Centro', 'Rua das Laranjeiras', 6),
('20002-001', 'Jardim', 'Avenida das Flores', 7),
('30003-002', 'Vila Nova', 'Rua das Oliveiras', 8),
('40004-003', 'Parque', 'Avenida do Sol', 9),
('50005-004', 'Bairro Feliz', 'Rua do Céu', 10);
INSERT INTO endereco (cep, bairro, rua, fk_cod_cliente) VALUES
('12001-123', 'Bela Vista', 'Rua dos Pássaros', 11),
('23002-234', 'São Jorge', 'Avenida da Esperança', 12),
('34003-345', 'Lagoa Azul', 'Rua do Oceano', 13),
('45004-456', 'Jardim das Palmeiras', 'Rua dos Sabiás', 14),
('56005-567', 'Recanto Verde', 'Avenida das Acácias', 15);


select * from telefone;
INSERT INTO telefone (tel, tel_2, tel_3, fk_cod_cliente) VALUES
('(61) 98765-4321', '(61) 92345-6789', '(61) 91234-5678', 6),
('(71) 98765-4321', '(71) 92345-6789', '(71) 91234-5678', 7),
('(81) 98765-4321', '(81) 92345-6789', '(81) 91234-5678', 8),
('(91) 98765-4321', '(91) 92345-6789', '(91) 91234-5678', 9),
('(11) 98888-8888', '(11) 97777-7777', '(11) 96666-6666', 10);
INSERT INTO telefone (tel, tel_2, tel_3, fk_cod_cliente) VALUES
('(31) 98888-9991', '(31) 97777-6668', '(31) 96666-5554', 11),
('(41) 91234-6789', '(41) 92345-5672', '(41) 93456-8915', 12),
('(51) 93456-7891', '(51) 94567-8903', '(51) 95678-1234', 13),
('(61) 94567-8904', '(61) 95678-9012', '(61) 96789-2345', 14),
('(71) 98888-5555', '(71) 97777-4444', '(71) 96666-3333', 15);


select * from cliente;
update cliente set fk_telefone = '(11) 98765-4321' where cod_cliente = 1;
update cliente set fk_telefone = '(21) 98765-4321' where cod_cliente = 2;
update cliente set fk_telefone = '(31) 98765-4321' where cod_cliente = 3;
update cliente set fk_telefone = '(41) 98765-4321' where cod_cliente = 4;
update cliente set fk_telefone = '(51) 98765-4321' where cod_cliente = 5;
UPDATE cliente SET fk_telefone = '(61) 98765-4321', fk_cep = '10001-000' WHERE cod_cliente = 6;
UPDATE cliente SET fk_telefone = '(71) 98765-4321', fk_cep = '20002-001' WHERE cod_cliente = 7;
UPDATE cliente SET fk_telefone = '(81) 98765-4321', fk_cep = '30003-002' WHERE cod_cliente = 8;
UPDATE cliente SET fk_telefone = '(91) 98765-4321', fk_cep = '40004-003' WHERE cod_cliente = 9;
UPDATE cliente SET fk_telefone = '(11) 98888-8888', fk_cep = '50005-004' WHERE cod_cliente = 10;
UPDATE cliente SET fk_telefone = '(31) 98888-9991', fk_cep = '10001-000' WHERE cod_cliente = 11;
UPDATE cliente SET fk_telefone = '(41) 91234-6789', fk_cep = '20002-001' WHERE cod_cliente = 12;
UPDATE cliente SET fk_telefone = '(51) 93456-7891', fk_cep = '30003-002' WHERE cod_cliente = 13;
UPDATE cliente SET fk_telefone = '(61) 94567-8904', fk_cep = '40004-003' WHERE cod_cliente = 14;
UPDATE cliente SET fk_telefone = '(71) 98888-5555', fk_cep = '50005-004' WHERE cod_cliente = 15;
update cliente set fk_numNF = 11 where cod_cliente = 11;
update cliente set fk_numNF = 12 where cod_cliente = 12;
update cliente set fk_numNF = 13 where cod_cliente = 13;
update cliente set fk_numNF = 14 where cod_cliente = 14;
update cliente set fk_numNF = 15 where cod_cliente = 15;

update produto set fk_numNF = 11 where cod_produto = 11;
update produto set fk_numNF = 12 where cod_produto = 12;
update produto set fk_numNF = 13 where cod_produto = 13;
update produto set fk_numNF = 14 where cod_produto = 14;
update produto set fk_numNF = 15 where cod_produto = 15;



-- Arrumando a coluna fk_telefone
alter table cliente
drop column fk_telefone;
alter table cliente
add column fk_telefone varchar (15);
alter table cliente
add constraint telefone_fk foreign key (fk_telefone) references telefone(tel);
select * from cliente;

select * from produto;
INSERT INTO produto (serie, valor_uni, descricao, quant_estoque) VALUES
('21000A', 12.00, 'Caneta Gel', 120),
('22000A', 9.00, 'Régua', 90),
('23000A', 35.00, 'Pincel', 60),
('24000A', 28.00, 'Caderno de Desenho', 70),
('25000A', 22.00, 'Cola Branca', 150);
INSERT INTO produto (serie, valor_uni, descricao, quant_estoque) VALUES
('31000B', 15.50, 'Lápis de Cor', 200),
('32000C', 7.25, 'Caderno Universitário', 80),
('33000D', 42.00, 'Marcador Permanente', 50),
('34000E', 30.00, 'Papel A4', 100),
('35000F', 18.75, 'Caneta Esferográfica', 150);



INSERT INTO nota_fiscal (data_emissao, quant_comprada, valor_total_quant, valor_total_compra, fk_cod_cliente, fk_cod_produto) VALUES
('2024-11-01', 5, 60.00, 250.00, 6, 6),
('2024-12-02', 3, 27.00, 30.00, 7, 7),
('2024-03-03', 40, 1400.00, 1540.00, 8, 8),
('2024-10-18', 24, 672.00, 760.00, 9, 9),
('2024-11-09', 67, 1474.00, 1474.00, 10, 10);
INSERT INTO nota_fiscal (data_emissao, quant_comprada, valor_total_quant, valor_total_compra, fk_cod_cliente, fk_cod_produto) VALUES
('2024-11-15', 10, 155.00, 1550.00, 11, 11),   
('2024-12-20', 2, 14.50, 30.00, 12, 12),       
('2024-01-05', 15, 600.00, 630.00, 13, 13),    
('2024-01-10', 50, 1000.00, 1500.00, 14, 14),  
('2024-02-25', 1, 18.75, 20.00, 15, 15);        


 -- Inserindo num_NF na tabela cliente
update cliente
set fk_numNF = 6
where cod_cliente = 6;
update cliente
set fk_numNF = 7
where cod_cliente = 7;
update cliente
set fk_numNF = 8
where cod_cliente = 8;
update cliente
set fk_numNF = 9
where cod_cliente = 9;
update cliente
set fk_numNF = 10
where cod_cliente = 10;

 -- Inserindo num_NF na tabela produto
update produto
set fk_numNF = 6
where cod_produto = 6;
update produto
set fk_numNF = 7
where cod_produto = 7;
update produto
set fk_numNF = 8
where cod_produto = 8;
update produto
set fk_numNF = 9
where cod_produto = 9;
update produto
set fk_numNF = 10
where cod_produto = 10;

select * from cliente;
select * from endereco;
select * from telefone;
select * from nota_fiscal;
select * from produto;

-- Inner join
select 
	c.nome_cliente,
    t.tel,
    e.cep,
	nf.numNF, 
	p.descricao, 
	p.valor_uni, 
    nf.quant_comprada, 
    nf.valor_total_quant
from 
	nota_fiscal as nf, produto as p, cliente as c, telefone as t, endereco as e
where
	nf.numNF = p.fk_numNF and
    c.cod_cliente = nf.numNF and
    t.fk_cod_cliente = c.cod_cliente and
    e.fk_cod_cliente = c.cod_cliente;
    
create view transacoes_view as
select c.nome_cliente, t.tel, e.cep, nf.numNF, p.descricao, p.valor_uni, nf.quant_comprada, nf.valor_total_quant
from  nota_fiscal as nf, produto as p, cliente as c, telefone as t, endereco as e
where nf.numNF = p.fk_numNF and c.cod_cliente = nf.numNF and
    t.fk_cod_cliente = c.cod_cliente and e.fk_cod_cliente = c.cod_cliente;
    
select * from transacoes_view;

    -- Left Join - Mostra as colunas correspondentes à tabela mais a esquerda
SELECT 
    nf.numNF, 
    p.descricao, 
    p.valor_uni, 
    nf.quant_comprada, 
    nf.valor_total_quant
FROM 
    nota_fiscal AS nf
LEFT JOIN 
    produto AS p ON nf.fk_cod_produto = p.cod_produto;

-- Right Join - Mostra as colunas correspondentes à tabela mais a direita
SELECT 
    nf.numNF, 
    p.descricao, 
    p.valor_uni, 
    nf.quant_comprada, 
    nf.valor_total_quant
FROM 
    nota_fiscal AS nf
RIGHT JOIN 
    produto AS p ON nf.fk_cod_produto = p.cod_produto;
