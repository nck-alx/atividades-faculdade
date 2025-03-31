create database aluno;
use aluno;

create table alunos(
numero_aluno int auto_increment,
nome_aluno text (50),
constraint numero_aluno_pk primary key (numero_aluno)
);

desc alunos;

create table curso(
numero_curso int auto_increment,
nome_curso varchar (30),
numero_aulas int (255),
inicio_curso date,
constraint numero_curso_pk primary key (numero_curso)
);

desc curso;

create table professor(
numero_professor int auto_increment,
nome_professor text (50),
constraint numero_professor_pk primary key (numero_professor)
);

create table materias_professor (
materias_professor varchar (50),
constraint materias_professor_pk primary key (materias_professor),
numero_professor int auto_increment,
constraint numero_professor_fk foreign key (numero_professor) references professor (numero_professor)
);

desc materias_professor;

drop table materias_professor;


alter table professor
add column materias_professor varchar (50);

alter table professor
add constraint fk_materias_professor foreign key (materias_professor) references materias_professor(materias_professor);

desc professor;

alter table professor
add column numero_curso int;

alter table professor
add constraint fk_numero_curso foreign key (numero_curso) references curso(numero_curso);

create table materias_curso(
materias_curso varchar (50),
constraint materias_curso_pk primary key (materias_curso),
numero_curso int auto_increment,
constraint fk_numero_curso foreign key (numero_curso) references curso (numero_curso)
);

alter table curso
add column materias_curso varchar(50);

alter table curso
add constraint fk_materias_curso foreign key (materias_curso) references materias_curso (materias_curso);

desc curso;

alter table alunos
add column numero_curso int;

alter table alunos
drop column fk_numero_curso;

alter table alunos
add constraint numero_curso foreign key (numero_curso) references curso(numero_curso);

desc alunos;


insert into alunos(nome_aluno)
value ("Alice"), ("Bruno"), ("Carla"), ("Daniel"), ("Eduarda");

select * from alunos;

insert into curso(nome_curso, numero_aulas, inicio_curso)
value ("Medicina", 200, 20240118);

insert into curso(nome_curso, numero_aulas, inicio_curso)
values 
("Engenharia", 180, 20240120),
("Arquitetura", 160, 20240122),
("Direito", 200, 20240125),
("Psicologia", 150, 20240130);

select * from alunos;

insert into materias_curso(materias_curso, numero_curso)
values 
("Anatomia", 1),
("Cálculo", 2),
("História da Arquitetura", 3),
("Teoria Geral do Direito", 4),
("Psicologia do Desenvolvimento", 5);

desc materias_curso;

select * from curso;

update curso
set materias_curso = "Anatomia"
where numero_curso = 1;

update curso
set materias_curso = "Cálculo"
where numero_curso = 2;

UPDATE curso
SET materias_curso = "História da Arquitetura"
WHERE numero_curso = 3;

UPDATE curso
SET materias_curso = "Teoria Geral do Direito"
WHERE numero_curso = 4;

UPDATE curso
SET materias_curso = "Psicologia do Desenvolvimento"
WHERE numero_curso = 5;

select * from professor;

alter table professor
add column materias_professor varchar (50);

alter table professor
add constraint fk_materias_professor foreign key (materias_professor) 
references materias_professor(materias_professor);

alter table professor
add column numero_curso int;

alter table professor
add constraint fk2_numero_curso foreign key (numero_curso) 
references curso(numero_curso);

select * from professor;

select * from materias_curso;


insert into professor (nome_professor)
value ("Sandro Curió"), ("Gustavo Guanabara"), ('Gabriel Cabral'), ('Débora Alladin'), ('Professor Noslen');


INSERT INTO materias_professor (materias_professor, numero_professor)
VALUES
("Anatomia", 1),
("Cálculo", 2),
("História da Arquitetura", 3),
("Teoria Geral do Direito", 4),
("Psicologia do Desenvolvimento", 5);



select * from curso;
select * from professor;
select * from materias_curso;
update professor


set materias_professor = "Cálculo" where numero_professor = 1;

update professor
set materias_professor = "História da Arquitetura" where numero_professor = 2;

update professor
set materias_professor = "Anatomia" where numero_professor = 3;

update professor
set materias_professor = "Teoria Geral do Direito" where numero_professor = 4;

update professor
set materias_professor = "Psicologia do Desenvolvimento" where numero_professor = 5;

desc professor;

select* from alunos;

insert into alunos(nome_aluno)
value ("Nicolas Alexandre"), ("Rayssa Silva"), ("Marcel Chagas"), ("Victor Ossamu"), ("Pedro Pedreiro");

update alunos
set numero_curso = 1 where numero_aluno = 1;

update alunos
set numero_curso = 2 where numero_aluno = 2;

update alunos
set numero_curso = 3 where numero_aluno = 3;

update alunos
set numero_curso = 4 where numero_aluno = 4;

update alunos
set numero_curso = 5 where numero_aluno = 5;

select * from curso;
select * from materias_curso;
select * from professor;

update professor
set numero_curso = 2 where numero_professor = 1;

update professor
set numero_curso = 3 where numero_professor = 2;

update professor
set numero_curso = 1 where numero_professor = 3;

update professor
set numero_curso = 4 where numero_professor = 4;

update professor
set numero_curso = 5 where numero_professor = 5;

create table materias_curso(
materias_curso varchar (50),
numero_curso int,
constraint numero_curso_fk foreign key (numero_curso) references curso(numero_curso)
);

alter table materias_curso
add constraint materias_curso_pk primary key (materias_curso);

alter table alunos
add column numero_curso int;

alter table alunos
add constraint fk2_numero_curso foreign key (numero_curso) references curso(numero_curso);

alter table curso
add column materias_curso varchar (50);

alter table curso
add constraint fk_materias_curso foreign key (materias_curso) references materias_curso(materias_curso);


select * from materias_professor;
select * from alunos;
select * from curso;
select * from materias_curso;
select * from professor;


-- Adicionando mais 10 linhas de dados em cada tabela

insert into curso (nome_curso, numero_aulas, inicio_curso) value
('Marketing', 180, 20240120),
('Administração', 200, 20240121),
('Ciências Contábeis', 160, 20240122),
('Economia', 220, 20240123),
('Publicidade e Propaganda', 180, 20240124);
INSERT INTO curso (nome_curso, numero_aulas, inicio_curso) VALUES
('Gestão de Recursos Humanos', 170, 20240125),
('Sistemas de Informação', 200, 20240126),
('ADS', 180, 20240127),
('Educação Física', 160, 20240128),
('Turismo', 140, 20240129);

delete from curso
where numero_curso >= 16;
ALTER TABLE curso AUTO_INCREMENT = 11;



INSERT INTO materias_curso (materias_curso, numero_curso) VALUES
("Introdução à Comunicação", 6),
("Fundamentos de Administração", 7),
("Contabilidade Básica", 8),
("Introdução à Economia", 9),
("Teoria da Publicidade", 10);
INSERT INTO materias_curso (materias_curso, numero_curso) VALUES
("Gestão de Talentos", 11),                  -- Gestão de Recursos Humanos
("Banco de Dados", 12),                      -- Sistemas de Informação
("Programação Orientada a Objetos", 13),     -- Análise e Desenvolvimento de Sistemas
("Nutrição e Dietética", 14),                -- Educação Física
("Planejamento e Gestão de Turismo", 15);   -- Turismo



select * from professor;
INSERT INTO professor (nome_professor, numero_curso) VALUES
('Peter Jordan', 6),
('Ana Souza', 7),
('Roberto Lima', 8),
('Mariana Costa', 9),
('Lucas Almeida', 10);
INSERT INTO professor (nome_professor, numero_curso) VALUES
('Fernando Silva', 11),
('Juliana Ferreira', 12),
('Rafael Martins', 13),
('Camila Oliveira', 14),
('Gustavo Rocha', 15);


DELETE FROM professor where numero_professor > 6;

ALTER TABLE professor AUTO_INCREMENT = 6;


select * from materias_curso;
insert into materias_professor(materias_professor, numero_professor) value
("Introdução à Comunicação", 6),
("Fundamentos de Administração", 7),
("Contabilidade Básica", 8),
("Introdução à Economia", 9),
("Teoria da Publicidade", 10);
insert into materias_professor(materias_professor, numero_professor) value
("Gestão de Talentos", 11),
("Banco de Dados", 12),
("Programação Orientada a Objetos", 13),
("Nutrição e Dietética", 14),
("Planejamento e Gestão de Turismo", 15);

select * from professor;
update professor
set materias_professor = 'Gestão de Talentos'
where numero_curso = 11;
update professor
set materias_professor = 'Banco de Dados'
where numero_curso = 12;
update professor
set materias_professor = 'Programação Orientada a Objetos'
where numero_curso = 13;
update professor
set materias_professor = 'Nutrição e Dietética'
where numero_curso = 14;
update professor
set materias_professor = 'Planejamento e Gestão de Turismo'
where numero_curso = 15;

select * from curso;
update curso
set materias_curso = 'Gestão de Talentos'
where numero_curso = 11;
update curso
set materias_curso = 'Banco de Dados'
where numero_curso = 12;
update curso
set materias_curso = 'Programação Orientada a Objetos'
where numero_curso = 13;
update curso
set materias_curso = 'Nutrição e Dietética'
where numero_curso = 14;
update curso
set materias_curso = 'Planejamento e Gestão de Turismo'
where numero_curso = 15;

select * from alunos;
insert into alunos (nome_aluno, numero_curso) value
('Estela Soares', 6),
('Simone Almeida', 7),
('Sofia Duarte', 8),
('Jade Bianchim', 9),
('Kael Rayan', 10);
INSERT INTO alunos (nome_aluno, numero_curso) VALUES
('Tiago Ferreira', 11),
('Larissa Gomes', 12),
('Felipe Martins', 13),
('Isabella Rocha', 14),
('Gabriel Dias', 15);


select * from curso;

-- Inner Join - Mostra as colunas correspondentes entre todas as tabelas
select a.numero_aluno, a.nome_aluno, c.nome_curso, p.nome_professor, p.materias_professor
	from alunos as a, curso as c, professor as p
    where a.numero_curso = c.numero_curso and
    p.numero_curso = c.numero_curso;
    
-- Criando view dos alunos, cursos, matéria e professor
create view matrículas_view as
select a.nome_aluno, c.nome_curso, p.nome_professor, p.materias_professor
	from alunos as a, curso as c, professor as p
    where a.numero_curso = c.numero_curso and
    p.numero_curso = c.numero_curso;
    
select * from matrículas_view;
    
-- Left Join - Mostra as colunas correspondentes à tabela mais a esquerda
SELECT alunos.nome_aluno, curso.nome_curso, curso.materias_curso
FROM alunos
LEFT JOIN curso ON alunos.numero_aluno = curso.numero_curso;

-- Right Join - Mostra as colunas correspondentes à tabela mais a direita
SELECT alunos.nome_aluno, curso.nome_curso, curso.materias_curso
FROM alunos
RIGHT JOIN curso ON alunos.numero_aluno = curso.numero_curso;