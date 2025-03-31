create database loja_jogos;
use loja_jogos;

create table Jogos (
	id_jogo int primary key auto_increment,
    titulo text (255),
    id_publisher int,
    preco decimal (10,2),
    estoque int,
    genero varchar (100),
    publicacao date
);

select * from clientes;

alter table jogos
change id_publisher estudio text;

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR(255)
);

drop table clientes;


CREATE TABLE Vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_jogo INT NOT NULL,
    id_cliente INT NOT NULL,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_jogo) REFERENCES Jogos(id_jogo),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

select * from vendas;