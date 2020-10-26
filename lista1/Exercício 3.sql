create database db_escola;
use db_escola;

create table tb_alunos(
ra bigint (20) auto_increment,
nome varchar (30) not null,
ano varchar (100) not null,
sala bigint (3),
nota bigint (2),
idade bigint (2),
primary key (ra)
);

insert tb_alunos (nome,ano,sala,nota,idade) values ("João","1°ano Médio",7,10,15);
insert tb_alunos (nome,ano,sala,nota,idade) values ("Maria","2°ano Médio",8,9,16);
insert tb_alunos (nome,ano,sala,nota,idade) values ("Carlos","3°ano Médio",9,8,17);
insert tb_alunos (nome,ano,sala,nota,idade) values ("Pamela","8°ano Fundamental",2,5,14);
insert tb_alunos (nome,ano,sala,nota,idade) values ("Carlos","6°ano Fundamental",5,6,12);

select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;

update tb_alunos set nota = 7 where ra = 1;
select * from tb_alunos;