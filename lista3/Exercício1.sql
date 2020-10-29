create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
disponivel boolean not null,
primary key (id)
);

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(255) not null,
kg float(10,2),
preco decimal(10,2) not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (descricao,disponivel) values ("Carne Vermelha",true);
insert into tb_categoria (descricao,disponivel) values ("Carne Branca",true);
insert into tb_categoria (descricao,disponivel) values ("Peixes",true);


insert into tb_produto (nome,kg,preco,categoria_id) values ("Alcatra",5,100.00,1);
insert into tb_produto (nome,kg,preco,categoria_id) values ("Filé mignon",3,80.00,1);
insert into tb_produto (nome,kg,preco,categoria_id) values ("Peito de peru",3,25.90,2);
insert into tb_produto (nome,kg,preco,categoria_id) values ("Asa",1,7.90,2);
insert into tb_produto (nome,kg,preco,categoria_id) values ("Sardinha",10,150.00,3);
insert into tb_produto (nome,kg,preco,categoria_id) values ("Tilápia",5,70.00,3);

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%co%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.descricao like "%pe%";