create database gincana;
use gincana;
       
       
	create table participantes(matricula INT,
							   nome varchar(50),
                               sobrenome varchar(50), 
                               telefone varchar(50),
                               endereco varchar(50),
                               data_nascimento date,
                               opcao_esporte varchar(50),
    
						       primary key (matricula));
	
	insert into participantes(matricula, nome, sobrenome,  endereco, data_nascimento, opcao_esporte) values
    (1001, 'Renato', 'Coves', 'Rua Braga Janeiro', '1993-10-27', 'Escalada');
	insert into participantes(matricula, nome, sobrenome,  endereco, data_nascimento, opcao_esporte) values 
	(1002, 'Camila', 'Medeiros', 'Rua Américo Vespúcio', '1997-10-20', 'Volei');
	insert into participantes(matricula, nome, sobrenome, endereco, data_nascimento, opcao_esporte) values 
	(1003, 'Eduardo', 'Braga', 'Rua Água Verde', '1989-12-03', 'Futebol Americano');
	insert into participantes(matricula, nome, sobrenome,  endereco, data_nascimento, opcao_esporte) values 
	(1004, 'Rafael', 'Silva',  'Rua Merces', '1995-06-25', 'Escalada');
	insert into participantes(matricula, nome, sobrenome,  endereco, data_nascimento, opcao_esporte) values 
	(1005, 'Brenda', 'Marquez',  'Rua Centro Civico', '1993-10-27', 'Handeboll');
	insert into participantes(matricula, nome, sobrenome,  endereco, data_nascimento, opcao_esporte) values 
	(1006, 'Joao', 'Coves',  'Rua Portão', '1980-05-10', 'Parkour');
	insert into participantes(matricula, nome, sobrenome, endereco, data_nascimento, opcao_esporte) values 
	(1007, 'Marley', 'Brunett',  'Rua Av.Maestro', '1991-02-24', 'Volei');
	insert into participantes(matricula, nome, sobrenome, endereco, data_nascimento, opcao_esporte) values 
	(1008, 'Ricardo', 'Banfogher',  'Rua Av.Brasilia', '1989-08-17', 'Parkour');
    insert into participantes(matricula, nome, sobrenome, endereco, data_nascimento, opcao_esporte) values 
	(1009, 'Pobre', 'Marino',  'Rua Av.Brasilia', '1989-08-17', 'Parkour');
    
    create table telefone( matricula int,
						   telefone varchar(20),
						   primary key(matricula, telefone),
						   foreign key (matricula) references participantes(matricula));
                           
	insert into telefone(matricula, telefone) values (1001, '9 9874-9654');						
	insert into telefone(matricula, telefone) values (1001, '9 3055-9654');
    insert into telefone(matricula, telefone) values (1002, '9 8540-9654');
    insert into telefone(matricula, telefone) values (1002, '9 9854-9654');
    insert into telefone(matricula, telefone) values (1003, '9 2014-9654');
    insert into telefone(matricula, telefone) values (1004, '9 9845-9654');
    insert into telefone(matricula, telefone) values (1005, '9 3547-9654');
    insert into telefone(matricula, telefone) values (1006, '9 8547-9654');
    insert into telefone(matricula, telefone) values (1007, '9 3945-9654');
    insert into telefone(matricula, telefone) values (1007, '9 5247-9654');
    insert into telefone(matricula, telefone) values (1008, '9 9874-9654');
    insert into telefone(matricula, telefone) values (1008, '9 3541-9654');


	create table provas(nome varchar(50), 
						cod INT,
						descritivo varchar(250),
						data_inicio date,
	
						primary key provas(cod));
	
	insert into provas(nome, cod, descritivo, data_inicio) value 
	('Corrida Vassoura', 01, 'O objetivo é equilibrar uma vassoura na 
	palma da mão enquanto correm. Se a vassoura cair antes da linha de chegada, 
	o corredor volta ao início e começa tudo outra vez.', '2017-01-01');
	insert into provas(nome, cod, descritivo, data_inicio) value 
	('Corrida de Braço', 02, 'O objetivo é empurrar o adversário e 
	fazer com que ele ultrapasse o seu risco.', '2015-08-01');
	insert into provas(nome, cod, descritivo, data_inicio) value 
	('Empurra em Cima', 03, 'É uma corrida de braço, a diferença é 
	que corre uma dupla de cada equipe, sendo que um da dupla irá subir em cima 
	do pescoço do parceiro e, apenas os montados, irão empurrar.', '2016-02-07');
	insert into provas(nome, cod, descritivo, data_inicio) value 
	('Corrida dos Sentados', 04, 'Corrida de ida e volta onde os 
	participantes correm sentados e não podem usar as mãos pra nada. 
	Na ida, vai de frente, na volta, vem de costas, ou seja, não pode virar.', '2017-01-01');
	insert into provas(nome, cod, descritivo, data_inicio) value 
	('Corrida de Cadarço', 05, 'Corrida de duplas, de ida e volta,
	onde os participantes correm com os cadarços amarrados. Na ida, vai de frente, na volta, 
	vem de costas. Não pode virar. Se cair, levanta e continua.', '2017-01-25');
	insert into provas(nome, cod, descritivo, data_inicio) value 
	('Aperto', 06, 'O Objetivo é fazer com que todos permaneçam nesse 
	espaço por 30 segundos. Após esse tempo, a equipe que conseguiu deverá reduzir o 
	espaço da outra, que terá menos espaço para colocar seus componentes.', '2014-05-05');
    
    
	
    create table edicao(ano INT,
						data_edicao date,
                        tema varchar(50),
										
						primary key (ano));
    
    insert into edicao(ano, data_edicao,tema) value 
	(2017, '2017-01-01', 'Esportes');
	insert into edicao(ano, data_edicao,tema) value 
	(2016, '2016-01-01', 'Ciencia');
	insert into edicao(ano, data_edicao,tema) value 
	(2015, '2015-01-01', 'Meio ambiente');
	insert into edicao(ano, data_edicao,tema) value 
	(2014, '2014-01-01', 'Cultara');
	insert into edicao(ano, data_edicao,tema) value 
	(2013, '2013-01-01', 'Alienigenas');
	insert into edicao(ano, data_edicao,tema) value 
	(2012, '2012-01-01', 'Praia');
    
	
	
    create table provaEdicao(ano int,
							 cod_prova int,
                                
							 primary key (ano, cod_prova),
							 foreign key (cod_prova) references provas(cod),
							 foreign key (ano) references edicao(ano));
	
	insert into provaEdicao(ano, cod_prova) value 
	(2017, 01);
    insert into provaEdicao(ano, cod_prova) value 
	(2016, 02);
	insert into provaEdicao(ano, cod_prova) value 
	(2015, 03);
	insert into provaEdicao(ano, cod_prova) value 
	(2014, 04);
	insert into provaEdicao(ano, cod_prova) value 
	(2013, 05);
	insert into provaEdicao(ano, cod_prova) value 
	(2012, 06);
        
	
    create table equipe(cod int,
						ano int,
                        matricula int,
                        cod_prova int,
                        nota int,
                        tempo_prova time,
                        
                        primary key (cod, ano, matricula, cod_prova),
                        foreign key (ano) references edicao(ano),
                        foreign key (matricula) references participantes(matricula),
                        foreign key (cod_prova) references provas(cod));
						
	insert into equipe(cod, ano, matricula, cod_prova, nota, tempo_prova) value 
	(1, 2017, 1001, 01, 81, ' 02:15:07');
	insert into equipe(cod, ano, matricula, cod_prova, nota, tempo_prova) value 
	(2, 2016, 1002, 02, 83, ' 15:20:07');
	insert into equipe(cod, ano, matricula, cod_prova, nota, tempo_prova) value 
	(3, 2015, 1003, 01, 97, ' 16:49:07');
	insert into equipe(cod, ano, matricula, cod_prova, nota, tempo_prova) value 
	(4, 2014, 1004, 03, 100, ' 13:14:07');
	insert into equipe(cod, ano, matricula, cod_prova, nota, tempo_prova) value 
	(5, 2013, 1005, 04, 58, ' 17:14:07');
	insert into equipe(cod, ano, matricula, cod_prova, nota, tempo_prova) value 
	(6, 2012, 1006, 05, 79, ' 10:14:07');
	insert into equipe(cod, ano, matricula, cod_prova, nota, tempo_prova) value 
	(7, 2017, 1002, 06, 87, ' 09:14:07');
	insert into equipe(cod, ano, matricula, cod_prova, nota, tempo_prova) value 
	(8, 2014, 1001, 03, 100, ' 20:14:07');
	insert into equipe(cod, ano, matricula, cod_prova, nota, tempo_prova) value 
	(9, 2013, 1002, 01, 100, ' 17:14:07');
						
                        
    create table comissao(ano int,
						  matricula int,
							
                          primary key (ano, matricula),
                          foreign key (ano) references edicao(ano),
                          foreign key (matricula) references participantes(matricula));
						  
	insert into comissao(ano, matricula) value 
	(2017, 1006);
	insert into comissao(ano, matricula) value 
	(2017, 1003);
	insert into comissao(ano, matricula) value 
	(2016, 1001);
	insert into comissao(ano, matricula) value 
	(2015, 1005);
	insert into comissao(ano, matricula) value 
	(2014, 1002);
	insert into comissao(ano, matricula) value 
	(2012, 1003);
    insert into comissao(ano, matricula) value 
	(2016, 1002);
    insert into comissao(ano, matricula) value 
	(2013, 1004);
    
    
    -- Parte para consulta com select:
    
		-- Listar qual foi a edição com o maior número de pessoas participantes inscritas      FEITO
				
				select edicao.ano, count(*) Participantes
				from edicao
				inner join equipe on equipe.ano = edicao.ano
				group by equipe.ano
				order by count(*) desc
				limit 1;

        -- Listar qual é o número médio de equipes participantes inscritas     FEITO
        
				select avg(equipe.cod)
				from equipe, participantes, edicao
				where edicao.ano = equipe.ano and equipe.matricula = participantes.matricula;

		
        -- Listar qual foi o tema da edição com o menor número de pessoas participantes inscritas    FEITO
				
				select edicao.tema, edicao.ano, count(*) Participantes
				from edicao
				inner join equipe on equipe.ano = edicao.ano
				group by edicao.tema
				order by count(*) asc
				limit 1;
                
		
        -- Considerando todas as edições, qual o número total de pessoas que participaram da equipe coordenadora  FEITO
        
				select count(matricula)
                from comissao;
                
		
        -- Qual foi a prova e a respectiva edição, que foi realizada em menor tempo FEITO
        
				select provas.nome, edicao.ano
                from provas, equipe, edicao
                where provas.cod = equipe.cod_prova and edicao.ano = equipe.ano 
                group by equipe.tempo_prova asc limit 1;
		
        -- Quais foram as edições que a Maria Silveira, nascida em 20 de outubro de 1997, participou    FEITO
        
				select edicao.ano 
				from equipe, edicao, participantes
				where edicao.ano = equipe.ano and participantes.matricula = equipe.matricula and participantes.data_nascimento = '1997-10-20';
                
		-- Em quantas edições o Joao Coves, nascido em 10 de maio de 1980, participou da comissão organizadora       FEITO

				select participantes.nome, count(comissao.ano)
				from edicao, participantes, comissao
				where  edicao.ano = comissao.ano and comissao.matricula = participantes.matricula and participantes.data_nascimento = '1980-05-10' and participantes.nome = 'Joao' and participantes.sobrenome = 'Coves';

		-- Quantos participantes relatam gostar de escaladas    FEITO

				select participantes.opcao_esporte, count(*)
				from participantes
				where participantes.opcao_esporte = 'Escalada';

	
		
		-- EXEMPLOS DE SELEÇÂO, PROJEÇÂO, INTERSEÇÂO E DIFERENÇA.
        
        -- SELEÇÂO:
        
				select matricula
                from participantes p
                where p.nome = 'Renato';
                
		-- PROJEÇÂO:
        
				select sobrenome
                from participantes;
                
		-- INTERSEÇÂO:
        
				select matricula 
                from participantes
                where participantes.matricula in (select matricula from telefone);
                
		-- DIFERENÇA
        
				select participantes.matricula
                from participantes
                where participantes.matricula not in (select matricula from telefone);
                
		
        -- Quais são os participantes cadastrados que não participaram de nenhuma vez de comissões organizadoras:
        
				select p.nome
                from participantes p
                where p.matricula not in (select matricula from comissao);
                
		-- Quais são os participantes que não participaram de nenhuma vez de equipes competidoras:
        
				select p.nome
				from participantes p
                where p.matricula not in (select matricula from equipe);
                
    
    