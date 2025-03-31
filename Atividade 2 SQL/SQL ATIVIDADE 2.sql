create database atividade;
use atividade;

create table pessoas(
	CÓDIGO varchar(4),
    NOME text,
    CPF varchar(11),
    RG varchar(11),
    EMAIL text
);

describe table pessoas;

alter table pessoas
rename to funcionarios;


alter table funcionarios
	add TELEFONE VARCHAR(11),
    add DATA_DE_NASCIMENTO date;

describe table funcionarios;

select * from funcionarios;

describe funcionarios;

alter table funcionarios
	modify column CÓDIGO varchar(4) not null,
    modify column NOME text not null,
    modify column CPF varchar(11) not null,
    modify column RG varchar(11) not null,
    modify column EMAIL text not null,
	modify column TELEFONE VARCHAR(11) not null,
	modify column DATA_DE_NASCIMENTO date not null;
     
alter table funcionarios
	modify column DATA_DE_NASCIMENTO date null;
    
alter table funcionarios
	drop column rg;
    
    
alter table funcionarios 
	change TELEFONE CELULAR varchar(11);
    
alter table funcionarios
	modify column CELULAR varchar(11) not null;
    
select * from funcionarios;

insert into funcionarios(
	CÓDIGO,
    NOME,
    CPF,
    EMAIL,
    CELULAR,
    DATA_DE_NASCIMENTO)
value(
	0001, 'Nicolas', 27163716217, 'email@gmail.com', 11981157869, 20051018);
    
insert into funcionarios(
	CÓDIGO,
    NOME,
    CPF,
    EMAIL,
    CELULAR,
    DATA_DE_NASCIMENTO)
value(0002, 'Bruno Oliveira', 23456789012, 'bruno.oliveira@email.com', 21976543210, 19900622),
(0003, 'Carla Santos', 34567890123, 'carla.santos@email.com', 31965432109, 19821109),
(0004, 'Diego Costa', 45678901234, 'diego.costa@email.com', 41954321098, 19870730);

insert into funcionarios(
	CÓDIGO,
    NOME,
    CPF,
    EMAIL,
    CELULAR,
    DATA_DE_NASCIMENTO)
value(0005, 'Elena Ribeiro', 56789012345, 'elena.ribeiro@email.com', 51943210987, 19911204),
(0006, 'Felipe Almeida', 67890123456, 'felipe.almeida@email.com', 61932109876, 19840218),
(0007, 'Gabriela Lima', 78901234567, 'gabriela.lima@email.com', 71921098765, 19930425),
(0008, 'Henrique Silva', 89012345678, 'henrique.silva@email.com', 81910987654, 19881103),
(0009, 'Isabela Martins', 90123456789, 'isabela.martins@email.com', 91909876543, 19921212),
(0010, 'Jorge Pereira', 01234567890, 'jorge.pereira@email.com', 01998765432, 19850522);

insert into funcionarios(
		CÓDIGO,
    NOME,
    CPF,
    EMAIL,
    CELULAR,
    DATA_DE_NASCIMENTO)
value(0011, 'Lucas Silva', 90234567890, 'lucas.silva@email.com', 91987654321, 19890321),
(0012, 'Ana Costa', 90345678901, 'ana.costa@email.com', 91976543210, 19940515),
(0013, 'Marcos Oliveira', 90456789012, 'marcos.oliveira@email.com', 91965432109, 19871122),
(0014, 'Fernanda Pereira', 90567890123, 'fernanda.pereira@email.com', 91954321098, 19911030),
(0015, 'João Souza', 90678901234, 'joao.souza@email.com', 91943210987, 19920625),
(0016, 'Juliana Santos', 90789012345, 'juliana.santos@email.com', 91932109876, 19891207),
(0017, 'Carlos Almeida', 90890123456, 'carlos.almeida@email.com', 91921098765, 19930719),
(0018, 'Patrícia Lima', 90901234567, 'patricia.lima@email.com', 91910987654, 19951103),
(0019, 'Roberto Nunes', 91012345678, 'roberto.nunes@email.com', 91909876543, 19940318),
(0020, 'Camila Rocha', 91123456789, 'camila.rocha@email.com', 91998765432, 19880212),
(0021, 'Eduardo Gomes', 91234567890, 'eduardo.gomes@email.com', 91987654321, 19900129),
(0022, 'Luciana Martins', 91345678901, 'luciana.martins@email.com', 91976543210, 19880517),
(0023, 'Felipe Carvalho', 91456789012, 'felipe.carvalho@email.com', 91965432109, 19930223),
(0024, 'Mariana Torres', 91567890123, 'mariana.torres@email.com', 91954321098, 19900614),
(0025, 'Rafael Costa', 91678901234, 'rafael.costa@email.com', 91943210987, 19891109),
(0026, 'Júlia Fernandes', 91789012345, 'julia.fernandes@email.com', 91932109876, 19950725),
(0027, 'Thiago Lima', 91890123456, 'thiago.lima@email.com', 91921098765, 19940420),
(0028, 'Larissa Almeida', 91901234567, 'larissa.almeida@email.com', 91910987654, 19871218),
(0029, 'Bruno Silva', 92012345678, 'bruno.silva@email.com', 91909876543, 19930902),
(0030, 'Viviane Santos', 92123456789, 'viviane.santos@email.com', 91998765432, 19860630);

select EMAIL from funcionarios;

select CELULAR from funcionarios;

select NOME from funcionarios 
order by NOME ASC
;

SELECT *
from  funcionarios;



