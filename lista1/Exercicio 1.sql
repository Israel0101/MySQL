create database db_rh;
use db_rh;

create table tb_funcionarios(
matricula bigint(5) auto_increment,
nome varchar(30) not null,
area varchar(20) not null,
gestor varchar(20)not null,
salario decimal(10,2) not null,
primary key (matricula)
);

insert into tb_funcionarios (nome, area, gestor, salario) values ("João","Benefícios","Ana",2100.00);
insert into tb_funcionarios (nome, area, gestor, salario) values ("Maria","Recrutamento","Paulo",2500.00);
insert into tb_funcionarios (nome, area, gestor, salario) values ("Joana","Planejamento e OP","Laura",800.00);
insert into tb_funcionarios (nome, area, gestor, salario) values ("Ingrid","Planejamento e OP","Laura",800.00);
insert into tb_funcionarios (nome, area, gestor, salario) values ("Susana","Gerencia"," ",8600.00);

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set salario = 8500.00 where matricula = 5;
select * from tb_funcionarios;

