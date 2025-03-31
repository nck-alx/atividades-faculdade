create database data;
use data;

create table pessoas(
	cpf varchar (11) primary key,
    nome text);
    
create table computador(
	codigo varchar (4) primary key,
    nome text);
    
create table utiliza(
	codigo_user varchar (4) primary key,
    codigofk varchar (4),
    cpffk varchar (11),
	foreign key (codigofk) references computador(codigo),
    foreign key (cpffk) references pessoas(cpf)
);

desc pessoas;
desc computador;
desc utiliza;

drop table utiliza;

alter table pessoas
modify column nome text not null;

alter table computador
modify column nome text not null;

alter table pessoas
add column telefone varchar (11);

alter table pessoas
change telefone celular varchar (11);

alter table computador
add column modelo text(30),
add column preço float;

alter table computador
drop column modelo;

drop table pessoas;
drop table computador;