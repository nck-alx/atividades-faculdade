CREATE DATABASE loja;
USE loja;
CREATE TABLE clientes(
	ID_DO_CLIENTE int(10),
    CÓDIGO_DA_ENTREGA int(20),
    NOME_DO_CLIENTE text,
    FORMA_PAGAMENTO text
);
    
INSERT INTO clientes(
	ID_DO_CLIENTE, CÓDIGO_DA_ENTREGA, NOME_DO_CLIENTE, FORMA_PAGAMENTO)
    VALUES (
    8, 19, "RAYSSA", "Crédito");
    
SELECT * FROM clientes;

DESCRIBE clientes;

CREATE TABLE pedidos(
	PREÇO double,
    DATA_VENDA date,
    CÓDIGO_VENDA int(100),
    N_PEDIDO int(100)
    );
    
INSERT INTO pedidos(
	PREÇO, DATA_VENDA, CÓDIGO_VENDA, N_PEDIDO)
    VALUES(
    6.80, 19800802, 99, 81
    );
    
SELECT * FROM pedidos;

CREATE TABLE empresa(
	DATA_ENTREGA date,
    N_PEDIDO int(100),
    NOME text,
    ID_ENTREGA int(100)
);

INSERT INTO empresa(
	DATA_ENTREGA, N_PEDIDO, NOME, ID_ENTREGA)
    VALUES(
    20010104, 20, "SEDEX", 98);
    
SELECT * FROM empresa, clientes, pedidos;