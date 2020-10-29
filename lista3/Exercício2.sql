create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(255) not null,
disponibilidade boolean not null,
primary key (id)
);

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(255) not null,
valor decimal(10,2) not null,
cor varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo,disponibilidade) values ("Frágil",true);
insert into tb_categoria (tipo,disponibilidade) values ("Jardinagem",true);
insert into tb_categoria (tipo,disponibilidade) values ("Decoração",true);

insert into tb_produto (nome,valor,cor,categoria_id) values ("Vaso sanitário",110.00,"Marrom",1);
insert into tb_produto (nome,valor,cor,categoria_id) values ("Bomba de água",379.90,"Branca",2);
insert into tb_produto (nome,valor,cor,categoria_id) values ("Cortina",34.90,"Cinza",3);
insert into tb_produto (nome,valor,cor,categoria_id) values ("Piso e cerâmica",23.00,"Preto",1);
insert into tb_produto (nome,valor,cor,categoria_id) values ("Forno d/pizza elétrico",509.90,"Prata",2);
insert into tb_produto (nome,valor,cor,categoria_id) values ("Papel de parede",12.00,"Marrom",1);

update tb_produto set categoria_id = 3 where id = 6;

select * from tb_produto where valor > 50.00;
select * from tb_produto where valor between 3.00 and 60.00;
select *from tb_produto where nome like "%cl%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.tipo like "%Fr%";