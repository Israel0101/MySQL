create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint(5) auto_increment,
formato varchar(255) not null,
disponivel varchar(255) not null,
primary key (id)
);

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(255) not null,
qtdVagas varchar(255),
valor decimal(10,2) not null,
categoria_id bigint not null,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (formato,disponivel) values ("Presencial",true);
insert into tb_categoria (formato,disponivel) values ("Semipresencial",true);
insert into tb_categoria (formato,disponivel) values ("EAD",true);

insert into tb_produto (nome,qtdVagas,valor,categoria_id) values ("JAVA","20",89.90,1);
insert into tb_produto (nome,qtdVagas,valor,categoria_id) values ("C#","31",50.00,2);
insert into tb_produto (nome,qtdVagas,valor,categoria_id) values ("Python","12",114.99,3);
insert into tb_produto (nome,qtdVagas,valor,categoria_id) values ("Inglês","100",30.00,1);
insert into tb_produto (nome,qtdVagas,valor,categoria_id) values ("Espanhol","70",32.00,2);
insert into tb_produto (nome,qtdVagas,valor,categoria_id) values ("DBA","10",157.80,3);

select * from tb_produto where valor > 50.00;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "%JAV%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where formato = "presencial"  -- para pesquisar um atributo específico
