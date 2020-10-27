create database db_RH2;
use db_RH2;

create table tb_cargo (
cargo_id bigint(5) auto_increment,
funcao varchar (30) not null,
salario decimal(10,2) not null,
primary key(cargo_id)
);

create table tb_funcionario(
id bigint(5) auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
ativo boolean not null,
cargo_id bigint,
primary key (id),
foreign key (cargo_id) references tb_cargo (cargo_id)
);

 insert into tb_cargo (funcao,salario) values ("Fazer reposições",800.00);  -- id 1
 insert into tb_cargo (funcao,salario) values ("Organizar materiais",1200.00);  -- id 2
 insert into tb_cargo (funcao,salario) values ("Recrutamento e seleção",2300.00); -- id 3
 insert into tb_cargo (funcao,salario) values ("Treinamento e desenvolvimento",3000.00); -- id 4
 
 insert into tb_funcionario (nome,cargo,ativo,cargo_id) values ("Eugenio","Aprendiz",true,1);
 insert into tb_funcionario (nome,cargo,ativo,cargo_id) values ("Maria","Recrutadora",true,3);
 insert into tb_funcionario (nome,cargo,ativo,cargo_id) values ("Pedro","Logistica",true,2);
 insert into tb_funcionario (nome,cargo,ativo,cargo_id) values ("Paulo","Supervisor",true,4);
 insert into tb_funcionario (nome,cargo,ativo,cargo_id) values ("Joana","Supersivora",true,4);
  insert into tb_funcionario (nome,cargo,ativo,cargo_id) values ("Caique","Recrutador",false,3); 
  
  
 select * from tb_funcionario;
 select * from tb_funcionario where cargo_id in(3,4);
 select * from tb_funcionario  where cargo_id in(1,2);
 
 select * from tb_funcionario where nome like "%c%"