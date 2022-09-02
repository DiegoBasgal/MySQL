create database exercicio_3_20170503;
use exercicio_3_20170503;

	create table tbCliente(nome_cli varchar(100),codigo_cli int,cpf_cli char(11),data_cadastro date,cidade_cli varchar(50),uf_cli char(2),
		primary key(codigo_cli));
        
insert into tbCliente values ('Uólassy', 1, '11111111111', '2017-03-04', 'curitiba', 'PR');
insert into tbCliente values ('Wadson', 2, '22222222222', '2017-03-24', 'curitiba', 'PR');
insert into tbCliente values ('Wenderson', 3, '33333333333', '2017-04-10', 'curitiba', 'PR');
insert into tbCliente values ('Sorayia', 4, '44444444444', '2017-04-22', 'curitiba', 'PR');


	create table tbCategoria(codigo_categoria int,nome_categoria varchar(20),
		primary key(codigo_categoria));
        
insert into tbCategoria values (1, 'ação');
insert into tbCategoria values (2, 'aventura');
insert into tbCategoria values (3, 'comédia');
insert into tbCategoria values (4, 'romance');
insert into tbCategoria values (5, 'drama');
insert into tbCategoria values (6, 'terror');
insert into tbCategoria values (7, 'suspense');
insert into tbCategoria values (8, 'esportes');       
insert into tbCategoria values (9, 'infantil');       
insert into tbCategoria values (10, 'documentario');              


	create table tbClasse(codigo_classe int,nome_classe varchar(20),preco_classe float,
		primary key(codigo_classe));
        
insert into tbClasse values (1, 'Lançamentos', 6.00);
insert into tbClasse values (2, 'Catálogos', 5.00);    
insert into tbClasse values (3, 'Clássicos', 3.50);    
insert into tbClasse values (4, 'Promoção', 2.00);        


	create table tbTitulo(codigo_titulo int,nome_titulo varchar(50),ano numeric,codigo_categoria int,codigo_classe int,
		primary key(codigo_titulo),
		foreign key(codigo_categoria) references tbCategoria(codigo_categoria),
		foreign key(codigo_classe) references tbClasse(codigo_classe));
        
insert into tbTitulo values (1, 'Harry Potter 1', 2001, 2, 2);
insert into tbTitulo values (2, 'Harry Potter 2', 2002, 2, 2);
insert into tbTitulo values (3, 'Harry Potter 3', 2004, 2, 2);
insert into tbTitulo values (4, 'Harry Potter 4', 2005, 2, 2);
insert into tbTitulo values (5, 'Harry Potter 5', 2007, 2, 2);
insert into tbTitulo values (6, 'Harry Potter 6', 2009, 2, 2);
insert into tbTitulo values (7, 'Harry Potter 7', 2010, 2, 2);
insert into tbTitulo values (8, 'Harry Potter 8', 2011, 2, 2);
insert into tbTitulo values (9, 'Mulher Maravilha', 2017, 1, 1);
insert into tbTitulo values (10, 'Logan', 2017, 1, 1);
insert into tbTitulo values (11, 'Tombstone', 1993, 1, 3);
insert into tbTitulo values (12, 'Como eu era antes de você', 2016, 4, 2);
insert into tbTitulo values (13, 'Intocáveis', 2011, 5, 4);
insert into tbTitulo values (14, 'Sete homens e um destino', 1960, 1, 3);
insert into tbTitulo values (15, 'O chamado', 2002, 6, 2);
insert into tbTitulo values (16, 'A janela secreta', 2004, 7, 2);
insert into tbTitulo values (17, 'Sim senhor', 2008, 3, 2);
insert into tbTitulo values (18, 'O todo poderoso', 2003, 3, 2);
insert into tbTitulo values (19, 'Uma noite no museu', 2006, 3, 2);
insert into tbTitulo values (20, 'Cinquenta tons de cinza', 2015, 5, 2);
insert into tbTitulo values (21, 'Corra!', 2017, 6, 1);
insert into tbTitulo values (22, 'Humano', 2015, 10, 2);
insert into tbTitulo values (23, 'Poderoso chefinho', 2017, 9, 1);
insert into tbTitulo values (24, 'Invictus', 209, 8, 2);

        

	create table tbFilme(codigo_filme int,codigo_titulo int,nome_distribuidor varchar(20),
		primary key(codigo_filme),
		foreign key(codigo_titulo) references tbTitulo(codigo_titulo));
        
insert into tbFilme values (1, 1, 'Warner Brothers');
insert into tbFilme values (2, 2, 'Warner Brothers');
insert into tbFilme values (3, 3, 'Warner Brothers');
insert into tbFilme values (4, 4, 'Warner Brothers');
insert into tbFilme values (5, 5, 'Warner Brothers');
insert into tbFilme values (6, 6, 'Warner Brothers');
insert into tbFilme values (7, 7, 'Warner Brothers');
insert into tbFilme values (8, 8, 'Warner Brothers');
insert into tbFilme values (9, 9, 'Marvel');
insert into tbFilme values (10, 10, 'Marvel');
insert into tbFilme values (11, 11, 'Hollywood Pictures');
insert into tbFilme values (12, 12, 'Warner Brothers');
insert into tbFilme values (13, 13, 'Weinstein Company');
insert into tbFilme values (14, 14, 'John Sturges');
insert into tbFilme values (15, 15, 'Koji Suzuki');
insert into tbFilme values (16, 16, 'Stephen King');
insert into tbFilme values (17, 17, 'Warner Brothers');
insert into tbFilme values (18, 18, 'Universal Pictures');
insert into tbFilme values (19, 19, '20th Century Fox');
insert into tbFilme values (20, 20, 'Michael De Luca');
insert into tbFilme values (21, 21, 'Jordan Peele');
insert into tbFilme values (22, 22, 'Florent Gilard');
insert into tbFilme values (23, 23, 'DreamWorks Animation');
insert into tbFilme values (24, 24, 'Clint Eastwood ');



	create table tbEmprestimo_devolucao(codigo_cli int,codigo_filme int,data_emprestimo date,data_devolucao_prevista date,valor_multa float,
		foreign key(codigo_cli) references tbCliente(codigo_cli),
		foreign key(codigo_filme) references tbFilme(codigo_filme));
        
insert into tbEmprestimo_devolucao values (1, 1, '2017-05-03', '2017-05-06', 5.00);
insert into tbEmprestimo_devolucao values (2, 2, '2017-05-10', '2017-05-13', 5.00);
insert into tbEmprestimo_devolucao values (3, 3, '2017-05-10', '2017-05-13', 5.00);
insert into tbEmprestimo_devolucao values (4, 14, '2017-06-02', '2017-06-05', 3.50);
insert into tbEmprestimo_devolucao values (1, 20, '2017-06-07', '2017-06-10', 5.00);
insert into tbEmprestimo_devolucao values (2, 21, '2017-06-12', '2017-06-15', 6.00);
insert into tbEmprestimo_devolucao values (3, 15, '2017-06-14', '2017-06-17', 5.00);
insert into tbEmprestimo_devolucao values (4, 17, '2017-06-20', '2017-06-23', 5.00);
insert into tbEmprestimo_devolucao values (1, 18, '2017-07-05', '2017-07-08', 5.00);
insert into tbEmprestimo_devolucao values (2, 7, '2017-07-08', '2017-07-11', 5.00);
insert into tbEmprestimo_devolucao values (3, 9, '2017-07-16', '2017-07-19', 6.00);
insert into tbEmprestimo_devolucao values (4, 4, '2017-07-06', '2017-07-09', 5.00);


-- Inserts

-- seleção dos títulos superiores a 2005

select count(*) as 'Títulos superiores a 2005' from tbTitulo t where ano > 2005;


-- seleção dos nomes das categorias e a quantidade de títulos por categoria
-- com ano superior a 2005

select c.nome_categoria as 'Categoria', count(t.codigo_categoria) as 'Número de Títulos'
from tbCategoria c inner join tbTitulo t on t.codigo_titulo = c.codigo_categoria
where t.ano > 2005
group by c.nome_categoria order by count(t.codigo_categoria) desc;


-- seleção dos nomes das categorias e a quantidade de títulos por categoria
-- com ano superior a 2005 e categorias somente infantil, documentário ou esporte

select c.nome_categoria as 'Categoria', count(t.codigo_categoria) as 'Número de Títulos'
from tbCategoria c inner join tbTitulo t on t.codigo_categoria = c.codigo_categoria
where t.ano > 2005 and (c.nome_categoria = 'documentário' or c.nome_categoria = 'esportes' or c.nome_categoria = 'infantil')
group by c.nome_categoria
order by count(t.codigo_categoria) desc;


-- seleção dos nomes das categorias e a quantidade de títulos por categoria
-- com ano superior a 2005 e categorias somente infantil, documentário ou esporte
-- e somente aqueles que contém mais de 15 títulos

select c.nome_categoria as 'Categoria', count(t.codigo_categoria) as 'Número de Títulos'
from tbCategoria c inner join tbTitulo t on t.codigo_categoria = c.codigo_categoria
where t.ano > 2005 and (c.nome_categoria = 'documentário' or c.nome_categoria = 'esportes' or c.nome_categoria = 'infantil')
group by c.nome_categoria
having count(t.codigo_categoria) > 15
order by count(t.codigo_categoria) desc;
