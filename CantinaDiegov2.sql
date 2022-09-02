-- drop database cantina;

create database cantina;
	use cantina;
    
 	create table fabricante (codigo_fabricante INT, nome_fabricante varchar(50), cnpj varchar (50),
		primary key(codigo_fabricante));
        
insert into fabricante (codigo_fabricante, nome_fabricante, cnpj) values (1, 'Rodolfo', 26119234000146);
insert into fabricante (codigo_fabricante, nome_fabricante, cnpj) values (2, 'Mario', 11145801000161);
insert into fabricante (codigo_fabricante, nome_fabricante, cnpj) values (3, 'Danilo', 52410385000169);
insert into fabricante (codigo_fabricante, nome_fabricante, cnpj) values (4, 'Wellington', 45448315000134);
insert into fabricante (codigo_fabricante, nome_fabricante, cnpj) values (5, 'Marcos', 01891305000101);
insert into fabricante (codigo_fabricante, nome_fabricante, cnpj) values (6, 'Pedro', 97053355000180);
insert into fabricante (codigo_fabricante, nome_fabricante, cnpj) values (7, 'Roberto', 92461750000189);
insert into fabricante (codigo_fabricante, nome_fabricante, cnpj) values (8, 'Cantina', 78661755030129);
 
 
	create table telefone (telefone varchar(50), codigo_fabricante INT,
		primary key (telefone),
        foreign key (codigo_fabricante) references fabricante (codigo_fabricante));
        
insert into telefone (telefone, codigo_fabricante) values (99367731, 1);
insert into telefone (telefone, codigo_fabricante) values (99363204, 2);
insert into telefone (telefone, codigo_fabricante) values (99987731, 3);
insert into telefone (telefone, codigo_fabricante) values (99987211, 4);
insert into telefone (telefone, codigo_fabricante) values (99981130, 5);
insert into telefone (telefone, codigo_fabricante) values (99781428, 6);
insert into telefone (telefone, codigo_fabricante) values (99787576, 7);


 	create table apresentacao (codigo_apresentacao INT, descricao varchar(50),
		primary key (codigo_apresentacao));
        
insert into apresentacao (codigo_apresentacao, descricao) values (1, 'prato');
insert into apresentacao (codigo_apresentacao, descricao) values (2, 'caixa');
insert into apresentacao (codigo_apresentacao, descricao) values (3, 'embalagem de vidro');
insert into apresentacao (codigo_apresentacao, descricao) values (4, 'embalagem de metal');
insert into apresentacao (codigo_apresentacao, descricao) values (5, 'embalagem plastico');
insert into apresentacao (codigo_apresentacao, descricao) values (6, 'embalagem isopor');
insert into apresentacao (codigo_apresentacao, descricao) values (7, 'embalagem papel');
  
  
	create table tipo (codigo_tipo INT, descricao varchar(100),
		primary key (codigo_tipo));
        
insert into tipo (codigo_tipo, descricao) values (1, 'pratos');
insert into tipo (codigo_tipo, descricao) values (2, 'salgados');
insert into tipo (codigo_tipo, descricao) values (3, 'doces');
insert into tipo (codigo_tipo, descricao) values (4, 'bonboniere');
insert into tipo (codigo_tipo, descricao) values (5, 'sobremesas');
insert into tipo (codigo_tipo, descricao) values (6, 'bebidas');


	create table sabor (codigo_sabor INT, descricao varchar(100),
		primary key (codigo_sabor));
        
insert into sabor (codigo_sabor, descricao) values (1, 'doce');
insert into sabor (codigo_sabor, descricao) values (2, 'salgado');
insert into sabor (codigo_sabor, descricao) values (3, 'amargo');
  
  
	create table produto (codigo_produto INT, descricao varchar(50), preco varchar(50), codigo_sabor INT, codigo_tipo INT, codigo_apresentacao INT, codigo_fabricante INT, quantidade varchar(50),
		primary key (codigo_produto),
		foreign key (codigo_sabor) references sabor (codigo_sabor),
        foreign key (codigo_tipo) references tipo (codigo_tipo),
        foreign key (codigo_fabricante) references fabricante (codigo_fabricante),
        foreign key (codigo_apresentacao) references apresentacao (codigo_apresentacao));
        
insert into produto (codigo_produto, descricao, preco, codigo_sabor, codigo_tipo, codigo_apresentacao, codigo_fabricante, quantidade) values (1, 'coca cola', 'R$3,00', 1,6, 4, 2, '40 caixas'); 
insert into produto (codigo_produto, descricao, preco, codigo_sabor, codigo_tipo, codigo_apresentacao, codigo_fabricante, quantidade) values (2, 'guarana', 'R$3,00', 1, 6, 4, 3, '50 caixas');
insert into produto (codigo_produto, descricao, preco, codigo_sabor, codigo_tipo, codigo_apresentacao, codigo_fabricante, quantidade) values (3, 'cafe', 'R$1,50', 3, 6, 6, 6, '10 pacotes');
insert into produto (codigo_produto, descricao, preco, codigo_sabor, codigo_tipo, codigo_apresentacao, codigo_fabricante, quantidade) values (4, 'suco de laranja', 'R$2,50', 1, 6, 5, 8, '40 laranjas');
insert into produto (codigo_produto, descricao, preco, codigo_sabor, codigo_tipo, codigo_apresentacao, codigo_fabricante, quantidade) values (5, 'coxinha', 'R$4,00', 2, 2, 7, 8, '20 coxinhas');
insert into produto (codigo_produto, descricao, preco, codigo_sabor, codigo_tipo, codigo_apresentacao, codigo_fabricante, quantidade) values (6, 'risolis de queijo', 'R$4,00', 2, 2, 7, 8, '10 risolis');
insert into produto (codigo_produto, descricao, preco, codigo_sabor, codigo_tipo, codigo_apresentacao, codigo_fabricante, quantidade) values (7, 'croissant da chocolate', 'R$4,50', 1, 3, 7, 8, '25 croissants');
insert into produto (codigo_produto, descricao, preco, codigo_sabor, codigo_tipo, codigo_apresentacao, codigo_fabricante, quantidade) values (8, 'sonho de chocolate', 'R$3,50', 1, 3, 7, 8, '10 sonhos');
insert into produto (codigo_produto, descricao, preco, codigo_sabor, codigo_tipo, codigo_apresentacao, codigo_fabricante, quantidade) values (9, 'prato feito', 'R$15,00', 2, 1, 1, 8, 'feito na hora');
   
   
    create table estoque (codigo_estoque INT, codigo_produto INT,
		primary key (codigo_estoque),
		foreign key (codigo_produto) references produto (codigo_produto));
        
insert into estoque (codigo_estoque, codigo_produto) values (1, 1);
insert into estoque (codigo_estoque, codigo_produto) values (2, 2);
insert into estoque (codigo_estoque, codigo_produto) values (3, 3);
insert into estoque (codigo_estoque, codigo_produto) values (4, 4);
insert into estoque (codigo_estoque, codigo_produto) values (5, 5);
insert into estoque (codigo_estoque, codigo_produto) values (6, 6);
insert into estoque (codigo_estoque, codigo_produto) values (7, 7);
insert into estoque (codigo_estoque, codigo_produto) values (8, 8);
	

    create table venda (codigo_venda INT, codigo_produto INT, data_venda DATE,
		primary key (codigo_venda),
        foreign key (codigo_produto) references produto (codigo_produto));

insert into venda (codigo_venda, codigo_produto, data_venda) values (1, 2, '2017-01-19');
insert into venda (codigo_venda, codigo_produto, data_venda) values (2, 5, '2017-01-19');
insert into venda (codigo_venda, codigo_produto, data_venda) values (3, 7, '2017-02-03');
insert into venda (codigo_venda, codigo_produto, data_venda) values (4, 2, '2017-02-17');
insert into venda (codigo_venda, codigo_produto, data_venda) values (5, 3, '2017-02-19');
insert into venda (codigo_venda, codigo_produto, data_venda) values (6, 9, '2017-03-01');
insert into venda (codigo_venda, codigo_produto, data_venda) values (7, 1, '2017-03-10');
insert into venda (codigo_venda, codigo_produto, data_venda) values (8, 6, '2017-03-28');
insert into venda (codigo_venda, codigo_produto, data_venda) values (9, 8, '2017-04-07');
insert into venda (codigo_venda, codigo_produto, data_venda) values (10, 4, '2017-05-12');

