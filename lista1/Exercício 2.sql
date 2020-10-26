create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
codigo bigint(5) auto_increment,
nome varchar(20) not null,
marca varchar(20) not null,
peso varchar(10) not null,
preco decimal(10,2) not null,
primary key(codigo)
);

insert into tb_produtos (nome,marca,peso,preco) values ("Ventilador","Mallory","2kg",180.00);
insert into tb_produtos (nome,marca,peso,preco) values ("Geladeira","Electrolux","70kg",2500.00);
insert into tb_produtos (nome,marca,peso,preco) values ("Suco","Tang","100g",1.50);
insert into tb_produtos (nome,marca,peso,preco) values ("Acetona","Zulu","100g",4.00);
insert into tb_produtos (nome,marca,peso,preco) values ("Caderno","Tilibra","800g",17.00);

select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;

update tb_produtos set peso = "150g" where codigo = 3;
select * from tb_produtos;