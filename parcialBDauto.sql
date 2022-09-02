drop database editora;

create database editora;
	use editora;


create table tipo_usuario (codigo_tipo_usuario int,             -- fora necessario criar uma tabela tipo_usuario, pois varios varios usuarios podem ter varias descricoes(crianca, adolescenta, adulto, idoso)
						   desrcicao varchar(50),
                           primary key (codigo_tipo_usuario)
);

insert into tipo_usuario values (1, 'crainça');
insert into tipo_usuario values (2, 'adolescente');
insert into tipo_usuario values (3, 'adulto');
insert into tipo_usuario values (4, 'idoso');


create table usuario (matricula int,
					  codigo_tipo_usuario int, 
					  nome varchar(50), 
                      fone varchar(50),
                      email varchar (50),
                      filiacao varchar(50),																	-- fora necessario retirar cod_tipo_usuario, descrição_tipo_usuario para adequar as normas de integridade referencial
                      primary key (matricula, codigo_tipo_usuario),
                      foreign key (codigo_tipo_usuario) references tipo_usuario(codigo_tipo_usuario)
);

insert into usuario values (1012, 3, 'marcos', '99111134', 'marcos@gmail.com', 'UFPR');
insert into usuario values (1013, 1, 'maria', '99345678', 'maria@hotmail.com', 'S/A');
insert into usuario values (1014, 2, 'danilo', '99872354', 'danilo@gamil.com', 'S/A');
insert into usuario values (1015, 3, 'marcela', '98776655', 'marcela@terra.com.br', 'PUCPR');
insert into usuario values (1016, 3, 'gabriele', '93445572', 'gabriele@yahoo.com', 'UFPR');
insert into usuario values (1017, 4, 'natalia', '99173480', 'natalia@hotmail.com', 'PUCPR');
insert into usuario values (1018, 4, 'diego', '30157206', 'diego@hotmail.com', 'PUCPR');
insert into usuario values (1019, 2, 'eduardo', '32091009', 'eduardo@gmail.com', 'S/A');
insert into usuario values (1020, 3, 'mateus', '32436925', 'mateus@hotmail.com', 'PUCPR');


create table cidade (codigo_cidade int, 
					 nome varchar (50),									-- fora ncessario criar uma tabela cidade para adeaquar as normas de noramalizacao
                     primary key (codigo_cidade)
);

insert into cidade values (1, 'curitiba');
insert into cidade values (2, 'morretes');
insert into cidade values (3, 'guaratuba');
insert into cidade values (4, 'caoiba');
insert into cidade values (5, 'foz do iguacu');
insert into cidade values (6, 'ourinhos');


create table editora (codigo_editora int,
					  codigo_cidade int, 
					  nome varchar(50), 
					  primary key (codigo_editora, codigo_cidade),								-- fora necessario retirar código da cidade, nome da cidade para adequar as normas de integridade referencial
                      foreign key (codigo_cidade) references cidade (codigo_cidade)
);

insert into editora values (1, 1, 'forma');
insert into editora values (2, 1, 'papelao');
insert into editora values (3, 6, 'marquesi');
insert into editora values (4, 2, 'galo');
insert into editora values (5, 5, 'sonhos');
insert into editora values (6, 3, 'aparecida');
insert into editora values (7, 4, 'schermann');


create table publicacao (isbn int,
						 codigo_editora int,
						 título varchar(50), 
                         data_public date, 
                         primary key (isbn),
                         foreign key (codigo_editora) references editora(codigo_editora)
);

insert into publicacao values (123, 1, 'maria do carmo', '2000-03-04');
insert into publicacao values (124, 2, 'sonhos no luar', '2001-03-04');
insert into publicacao values (125, 3, 'aventuras de tatio', '2002-03-04');
insert into publicacao values (126, 4, 'guerras no mundo', '2003-03-04');
insert into publicacao values (127, 5, 'felicidade de john', '2004-03-04');
insert into publicacao values (128, 6, 'fazedor de garotos', '2005-03-04');
insert into publicacao values (129, 3, 'segredos das mulheres', '2006-03-04');
insert into publicacao values (130, 1, 'matematica aplicada', '2007-03-04');
insert into publicacao values (131, 2, 'letras e como usalas', '2008-03-04');
insert into publicacao values (132, 3, 'seres humanos', '2009-03-04');



create table periodico (isbn int,
						serie int, 
                        volume int,
                        primary key (isbn),
                        foreign key (isbn) references publicacao(isbn) 
);

insert into periodico values (123, 1, 1);
insert into periodico values (124, 1, 1);
insert into periodico values (125, 1, 1);
insert into periodico values (126, 1, 1);
insert into periodico values (127, 1, 1);
insert into periodico values (128, 1, 1);
insert into periodico values (129, 1, 1);


create table exemplar (isbn int,
					   sequencial int,
					   primary key (sequencial, isbn),
					   foreign key (isbn) references publicacao (isbn)  
);

insert into exemplar values (123, 1);
insert into exemplar values (124, 2);
insert into exemplar values (125, 3);
insert into exemplar values (126, 4);
insert into exemplar values (127, 5);
insert into exemplar values (128, 6);
insert into exemplar values (129, 7);
insert into exemplar values (130, 8);
insert into exemplar values (131, 9);
insert into exemplar values (132, 10);


create table livro (isbn int, 
					resumo varchar(50), 
                    edicao int,
					primary key (isbn, edicao),
					foreign key (isbn) references publicacao(isbn)
);

insert into livro values (123, 'a', 1);
insert into livro values (124, 'b', 1);
insert into livro values (125, 'c', 1);
insert into livro values (126, 'd', 1);
insert into livro values (127, 'e', 1);
insert into livro values (128, 'f', 1);
insert into livro values (129, 'g', 1);
insert into livro values (130, 'h', 1);
insert into livro values (131, 'i', 1);
insert into livro values (132, 'j', 1);


create table emprestimo (matricula int,  
						 isbn int, 
                         sequencial int, 
                         data_emprestimo date,  
                         data_limite date,
						 primary key (data_emprestimo, matricula, isbn, sequencial),
						 foreign key (isbn) references publicacao (isbn),
                         foreign key (matricula) references usuario (matricula),
                         foreign key (sequencial) references exemplar (sequencial)
);

insert into emprestimo values (1013, 124, 2, '2017-01-07', '2017-02-07');
insert into emprestimo values (1014, 125, 3, '2017-01-08', '2017-02-08');
insert into emprestimo values (1015, 126, 4, '2017-01-22', '2017-02-22');
insert into emprestimo values (1016, 127, 5, '2017-01-25', '2017-02-25');
insert into emprestimo values (1017, 128, 6, '2017-01-27', '2017-02-27');
insert into emprestimo values (1018, 129, 7, '2017-02-02', '2017-03-02');
insert into emprestimo values (1019, 123, 1, '2017-02-05', '2017-03-05');
insert into emprestimo values (1020, 124, 2, '2017-02-05', '2017-03-05');
insert into emprestimo values (1015, 127, 5, '2017-04-02', '2017-05-02');
insert into emprestimo values (1015, 128, 6, '2017-04-07', '2017-05-07');
insert into emprestimo values (1015, 129, 7, '2017-04-12', '2017-05-12');


 create table status_multa (codigo_status_multa int,
							descricao varchar(50),
                            primary key (codigo_status_multa)
);

insert into status_multa values (1, 'sem multa');
insert into status_multa values (2, 'com multa');


create table devolucao (matricula int, 
						isbn int, 
                        sequencial int, 
                        codigo_status_multa int,
                        data_emprestimo date,
                        data_devolucao date,
                        valor_multa varchar(50),
                        primary key (matricula, isbn, sequencial, data_emprestimo, codigo_status_multa),
                        foreign key (matricula) references usuario (matricula),
                        foreign key	(isbn) references publicacao (isbn),
                        foreign key	(sequencial) references exemplar (sequencial),
                        foreign key	(data_emprestimo) references emprestimo (data_emprestimo)
);

insert into devolucao values(1013, 124, 2, 1, '2017-01-07', '2017-02-04', 'R$0');
insert into devolucao values(1014, 125, 3, 2, '2017-01-08', '2017-02-10', 'R$6,00');
insert into devolucao values(1015, 126, 4, 2, '2017-01-22', '2017-02-27', 'R$6,00');
insert into devolucao values(1016, 127, 5, 2, '2017-01-25', '2017-02-26', 'R$6,00');
insert into devolucao values(1017, 128, 6, 2, '2017-01-27', '2017-02-28', 'R$6,00');
insert into devolucao values(1018, 129, 7, 1, '2017-02-02', '2017-03-05', 'R$0');
insert into devolucao values(1019, 123, 1, 1, '2017-02-05', '2017-03-01', 'R$0');
insert into devolucao values(1020, 124, 2, 2, '2017-02-05', '2017-03-09', 'R$6,00');
insert into devolucao values(1015, 127, 5, 2, '2017-04-02', '2017-05-10', 'R$6,50');
insert into devolucao values(1015, 128, 6, 2, '2017-04-07', '2017-05-15', 'R$7,00');
insert into devolucao values(1015, 129, 7, 2, '2017-04-12', '2017-05-24', 'R$7,50');

    
create table avaliacao (matricula int, 
						isbn int, 
                        numero_estrelas int, 
                        comentario varchar(50),
                        primary key (matricula, isbn, numero_estrelas),
                        foreign key (matricula) references usuario (matricula),
                        foreign key	(isbn) references publicacao (isbn)
);

insert into avaliacao values (1013, 124, 2, 'b');
insert into avaliacao values (1014, 125, 2, 'c');
insert into avaliacao values (1015, 126, 1, 'd');
insert into avaliacao values (1016, 127, 3, 'e');
insert into avaliacao values (1017, 128, 3, 'f');
insert into avaliacao values (1018, 129, 4, 'g');
insert into avaliacao values (1019, 123, 4, 'h');
insert into avaliacao values (1020, 124, 5, 'i');
insert into avaliacao values (1015, 127, 5, 'j');
insert into avaliacao values (1015, 128, 2, 'k');
insert into avaliacao values (1015, 129, 2, 'l');

create table area_cientifica (codigo_area_cientifica int,
							  descricao varchar (50),
							  primary key (codigo_area_cientifica)
);

insert into area_cientifica values (1,'pesquisa');
insert into area_cientifica values (2,'exatas');
insert into area_cientifica values (3,'biologicas');
insert into area_cientifica values (4,'humanas');
insert into area_cientifica values (5,'comunicacao');
    
create table artigo (codigo_artigo int,
                     isbn int,
                     codigo_area_cientifica int,
					 pagina_inicio int, 
                     pagina_fim int, 
                     resumo varchar(50), 
                     título varchar(50),
                     primary key (codigo_artigo, isbn, codigo_area_cientifica),
                     foreign key (isbn) references publicacao (isbn),
                     foreign key (codigo_area_cientifica) references area_cientifica(codigo_area_cientifica)
);

insert into artigo values (1, 130, 2, 1, 200, 'a','matematica aplicada');
insert into artigo values (2, 131, 4, 1, 400, 'b','letras e como usalas');
insert into artigo values (3, 132, 3, 1, 1500, 'c','seres humanos');


create table email_autor (codigo_email int,
						  email varchar(50),
                          primary key (codigo_email)
);

insert into email_autor values (1, 'danilom@gmail.com');
insert into email_autor values (2, 'mariap@hotmail.com');
insert into email_autor values (3, 'marcosp@terra.com.br');
insert into email_autor values (4, 'jailsonl@hotmail.com');
insert into email_autor values (5, 'homemaranha@yahoo.com');
insert into email_autor values (6, 'batman@gmail.com');
insert into email_autor values (7, 'mataeus@hotmail.com');
insert into email_autor values (8, 'josecan@yahoo.com');
insert into email_autor values (9, 'marcosvila@gmail.com');

create table autor (codigo_autor int,
					codigo_editora int, 
                    codigo_email int, 
					nome varchar(50), 
                    primary key (codigo_email, codigo_autor, codigo_editora),
                    foreign key (codigo_editora) references editora (codigo_editora),
                    foreign key (codigo_email) references email_autor (codigo_email)
);

insert into autor values (1, 1, 1, 'danilo mendonça');
insert into autor values (1, 1, 2, 'maria penha');
insert into autor values (2, 2, 3, 'marcos paulo');
insert into autor values (2, 2, 4, 'jailson laranja');
insert into autor values (3, 3, 5, 'peter parker');
insert into autor values (4, 4, 6, 'bruce banner');
insert into autor values (5, 5, 7, 'mateus da mata');
insert into autor values (6, 6, 8, 'jose nigro');
insert into autor values (7, 7, 9, 'marcos da vila');


create table autor_livro (codigo_autor int, 
						  isbn int,
                          primary key (codigo_autor, isbn),
                          foreign key (codigo_autor) references autor (codigo_autor),
                          foreign key (isbn) references publicacao (isbn)
);

insert into autor_livro values (1, 123);
insert into autor_livro values (2, 124);
insert into autor_livro values (3, 125);
insert into autor_livro values (4, 126);
insert into autor_livro values (5, 127);
insert into autor_livro values (6, 128);
insert into autor_livro values (7, 129);

    
create table autor_artigo (codigo_autor int, 
						   codigo_artigo int,
                           primary key (codigo_artigo, codigo_autor),
                           foreign key (codigo_artigo) references artigo (codigo_artigo),
                           foreign key (codigo_autor) references autor (codigo_autor)
);

insert into autor_artigo values (1, 1);
insert into autor_artigo values (2, 2);
insert into autor_artigo values (3, 3);

-- a)	Obter o nome do usuário que emprestou mais emprestou publicações em 2017 (1 ponto).

select max(nome)
from usuario, emprestimo
where emprestimo.matricula = usuario.matricula;

-- b)	Obter o nome do usuário que, filiado a UFPR, não emprestou publicações em 2017 (2 pontos).

select nome
from usuario
where matricula not in(select matricula from emprestimo)
	  and filiacao = 'UFPR';

-- c)	Qual é o nome do usuário que gerou o maior número de multas em relação a data de devolução (1 ponto).

select nome
from usuario, devolucao
where usuario.matricula = devolucao.matricula
order by valor_multa limit 1;


-- d)	Qual é o nome do usuário que NUNCA gerou multa em relação a data de devolução (1 ponto).

select nome 
from usuario, devolucao
where usuario.matricula not exists(select valor_multa 
								   from devolucao
                                   where not exists(select matricula
													from devolucao
                                                    where usuario.matricula = devolucao.matricula));










-- Autocorreção da segunda prova parcial

/* Questão 1)	Abaixo é apresentado um esquema lógico de um BD relacional que armazena dados de uma biblio-teca.
 Avalie se o mesmo respeita as regras de Integridade Referencial, Normalização. Justifique a sua resposta (2.0 pontos). 
 A RESPOSTA DEVERA CONSTAR DO ARQUIVO SQL NA FORMA DE COMENTARIO (1,0)
 
 NOTA ATRIBUIDA: 0,4
 
 JUSTIFICATIVA: faltou justificar as mudanças em forma de comentario nas tabelas
 
 Questão 2)	A partir do modelo readequado em resposta a questão 1, mapeie o modelo lógico para o modelo físico (3.0 pontos). 
 
 NOTA ATRIBUIDA : 3,0
 
 JUSTIFICATIVA: modelo nao possui problemas de normalizacao e integridade relacional;
 
 Questão 3)	A partir do modelo readequado em resposta a questão 1, represente a consulta em SQL para extrair as seguintes informações:
 
a)	Obter o nome do usuário que emprestou mais emprestou publicações em 2017 (1 ponto).
b)	Obter o nome do usuário que, filiado a UFPR, não emprestou publicações em 2017 (2 pontos).
c)	Qual é o nome do usuário que gerou o maior número de multas em relação a data de devolução (1 ponto).
d)	Qual é o nome do usuário que NUNCA gerou multa em relação a data de devolução (1 ponto).

 NOTA ATRIBUIDA : 2,0
 
JUSTIFICATIVA: 
 
a) Obter o nome do usuário e a descrição do tipo de usuário, filiado a UFPR, que não emprestou publicações
em 2017 na área da computação.

