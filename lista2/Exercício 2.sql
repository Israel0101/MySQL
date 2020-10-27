create database db_ecommerce2;
use db_ecommerce2;

create table tb_categoria(
id bigint(5) auto_increment,
frageis varchar (255) not null,
alimento varchar(255),
primary key(id)
);

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(255) not null,
valor decimal(10,2),
disponibilidade boolean not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

 insert into tb_categoria (frageis,alimento) values ("Vidro","Enlatados"); -- 1
 insert into tb_categoria (frageis,alimento) values ("Cerâmica","Pacote"); -- 2
 insert into tb_categoria (frageis,alimento) values ("Eletrônico","Doce"); -- 3
 
 insert into tb_produto (nome,valor,disponibilidade,categoria_id) values ("Prato","5.00",true,1);
  insert into tb_produto (nome,valor,disponibilidade,categoria_id) values ("copo","2.50",true,1);
   insert into tb_produto (nome,valor,disponibilidade,categoria_id) values ("Estátua","10000.00",true,2);
    insert into tb_produto (nome,valor,disponibilidade,categoria_id) values ("Videogmae","3000.00",false,3);
     insert into tb_produto (nome,valor,disponibilidade,categoria_id) values ("Ervilha","4.70",true,1);
      insert into tb_produto (nome,valor,disponibilidade,categoria_id) values ("Arroz","29.99",false,2);
       insert into tb_produto (nome,valor,disponibilidade,categoria_id) values ("Bolo de casamento","1500.00",true,3);
       
	select * from tb_produto where valor > 2000.00;
    select * from tb_produto where valor between 1000 and 2000;
    select * from tb_produto where nome like "%c%";
    
 