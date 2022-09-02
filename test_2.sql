/*
Rever este modelo de dados proposto, de tal forma que permita registrar

1. o(s) proprietario(s) ao longo do tempo. Janela temporal sob a qual este veiculo pertencia a este(s) proprietario(s)

2. registrar todas as infracoes de transito comitidas pelo motorista deste vericulo


a) adequar a populacao conforme o novo modelo

b) construir a clausula select que permita listar os veiculos que tiveram apenas um dono

c) construir a clausula select que permita listar os veiculos que nao tiveram tiveram registrada nenhuma infracao ao longo do seu historico

d) construir a clausula select que permita listar os proprietarios que nao tiveram tiveram registrada nenhuma infracao ao longo do seu historico

*/
create database detran;

use detran;

create table marca(cod_marca int,
					marca varchar(50),
					nome varchar(50),
					primary key (cod_marca)
);
                    
insert into marca values(1, 'VW', 'Volkswagem');
insert into marca values(2, 'Ford', 'Ford');
insert into marca values(3, 'GM', 'General Motors');
insert into marca values(4, 'Fiat', 'Fiat');
insert into marca values(5, 'Renault', 'Renault');
insert into marca values(6, 'MB', 'Mercedes Bens');                    


create table cor(cod_cor int,
				 cor varchar(10),
                 primary key (cod_cor)
);

insert into cor values(1, 'preto');
insert into cor values(2, 'branco');
insert into cor values(3, 'cinza');
insert into cor values(4, 'vermelho');
insert into cor values(5, 'azul');
insert into cor values(6, 'verde');
insert into cor values(7, 'amarelo');


create table modelo(cod_modelo int, 
					nome varchar(30),
                    cod_marca int,
                    cod_cor int,
                    classe varchar(20),
                    primary key (cod_modelo),
                    foreign key (cod_cor) references cor(cod_cor),
                    foreign key (cod_marca) references marca(cod_marca)
);

insert into modelo values(1, 'Jetta', 1, 2, 'Sedan');
insert into modelo values(2, 'Duster', 5, 2, 'SUV');
insert into modelo values(3, 'Golf', 1, 1, 'Sport');
insert into modelo values(4, 'Focus', 2, 4, 'Sport');
insert into modelo values(5, 'C200', 6, 4, 'Coupe');
insert into modelo values(6, 'Punto', 4, 6, 'Sport');
insert into modelo values(7, 'A250', 6, 7, 'Sport');
insert into modelo values(8, 'Fusca', 1, 5, 'Classico');


create table carros(placa varchar(8),
					ano int,
                    cod_modelo int,
					primary key (placa),
					foreign key (cod_modelo) references modelo(cod_modelo)
);
                     
insert into carros values('aaa-0000', 2017, 1);
insert into carros values('aaa-1111', 2016, 1);
insert into carros values('aaa-2222', 2015, 2);
insert into carros values('aaa-3333', 2016, 3);
insert into carros values('aaa-4444', 2014, 4);
insert into carros values('aaa-5555', 2015, 4);
insert into carros values('aaa-6666', 2014, 5);
insert into carros values('aaa-7777', 2016, 6);
insert into carros values('beg-0120', 2014, 6);
insert into carros values('beg-0220', 2016, 7);
insert into carros values('beg-0320', 2015, 8);
insert into carros values('beg-0420', 2013, 8);
                                            
                     
create table donos(cpf int,
				   nome varchar(70),
				   primary key(cpf)
);
                    
insert into donos values(00011122200, 'Matheus');
insert into donos values(00011122211, 'Thiago');
insert into donos values(00011122222, 'Diego');
insert into donos values(00011122233, 'Eduardo');
insert into donos values(00011122244, 'Maria');
insert into donos values(00011122255, 'Olivia');
insert into donos values(00011122266, 'Claudia');
insert into donos values(00011122277, 'Diego');
                    

create table donos_carros(placa varchar(8),
						  cpf int,
                          primary key (placa, cpf),
                          foreign key (placa) references carros(placa),
                          foreign key (cpf) references donos(cpf)
);
                           
insert into donos_carros values('aaa-0000', 00011122200);
insert into donos_carros values('aaa-0000', 00011122222);
insert into donos_carros values('aaa-0000', 00011122211);
insert into donos_carros values('aaa-1111', 00011122200);
insert into donos_carros values('aaa-1111', 00011122222);
insert into donos_carros values('aaa-1111', 00011122244);
insert into donos_carros values('aaa-2222', 00011122255);
insert into donos_carros values('aaa-2222', 00011122211);
insert into donos_carros values('aaa-2222', 00011122266);
insert into donos_carros values('aaa-3333', 00011122255);
insert into donos_carros values('aaa-3333', 00011122200);
insert into donos_carros values('aaa-4444', 00011122277);
insert into donos_carros values('aaa-4444', 00011122244);
insert into donos_carros values('aaa-5555', 00011122277);
insert into donos_carros values('aaa-5555', 00011122233);
insert into donos_carros values('aaa-6666', 00011122266);
insert into donos_carros values('aaa-6666', 00011122200);
insert into donos_carros values('aaa-7777', 00011122266);
insert into donos_carros values('aaa-7777', 00011122244);
insert into donos_carros values('beg-0120', 00011122211);
insert into donos_carros values('beg-0220', 00011122222);
insert into donos_carros values('beg-0320', 00011122277);
insert into donos_carros values('beg-0420', 00011122200);
insert into donos_carros values('beg-0420', 00011122233);
                 
                           
create table infracao(cod_infracao int,
					  descricao varchar(250),
                      primary key (cod_infracao)
); 
                      
insert into infracao values(1, 'Sinal Vermelho');
insert into infracao values(2, 'Local inapropriado');
insert into infracao values(3, 'Sem Sinto');
insert into infracao values(4, 'Acima da Velocidade');
insert into infracao values(5, 'Sem Lanterna');     
                           
create table multa(placa varchar(8),
				   cpf int,
				   cod_infracao int,
                   data_infracao date,
                   localizacao varchar(50),
				   primary key (placa, cpf, cod_infracao, data_infracao),
				   foreign key (placa, cpf) references donos_carros(placa, cpf),
                   foreign key (cod_infracao) references infracao(cod_infracao)
);
					   
insert into multa values('aaa-0000', 00011122200, 1, '2017-02-15', 'Praca do Japao');
insert into multa values('aaa-0000', 00011122200, 4, '2017-03-20', 'Avenida Sete de Setembro');
insert into multa values('beg-0120', 00011122211, 5, '2017-02-10', 'Avenida Iguacu');
insert into multa values('beg-0120', 00011122211, 2, '2017-02-19', 'Praca Rui Barbosa');
insert into multa values('aaa-0000', 00011122211, 1, '2017-05-30', 'Rua das Camelias');
insert into multa values('aaa-0000', 00011122211, 4, '2017-10-24', 'Travessa da Lapa');
insert into multa values('aaa-6666', 00011122266, 2, '2017-02-12', 'Praca Afonso Botelho');
insert into multa values('aaa-2222', 00011122266, 3, '2017-02-02', 'Avenida Kennedy');
insert into multa values('aaa-3333', 00011122200, 1, '2017-03-07', 'Avenida Republica Argentina');
insert into multa values('aaa-7777', 00011122266, 5, '2017-05-09', 'Rua Buenos Aires');
insert into multa values('aaa-2222', 00011122211, 1, '2017-09-03', 'Rua Imaculada Conceicao');
insert into multa values('beg-0420', 00011122233, 2, '2017-11-17', 'Rua Chile');
insert into multa values('aaa-4444', 00011122277, 4 ,'2017-12-14', 'Praca Tiradentes');
insert into multa values('beg-0420', 00011122233, 3, '2017-06-11', 'Praca Osorio');
insert into multa values('aaa-4444', 00011122277, 1, '2017-05-22', 'Travessa Tiffany');



-- b) construir a clausula select que permita listar os veiculos que tiveram apenas um dono
select placa, count(*)
from donos_carros
group by placa
having count(*) = 1;

-- c) construir a clausula select que permita listar os veiculos que nao tiveram tiveram registrada nenhuma infracao ao longo do seu historico

select distinct donos_carros.placa
from donos_carros, multa
where donos_carros.placa not in (select multa.placa from multa); 


-- d) construir a clausula select que permita listar os proprietarios que nao tiveram tiveram registrada nenhuma infracao ao longo do seu historico

select distinct donos_carros.cpf
from donos_carros, multa
where donos_carros.cpf not in (select multa.cpf from multa);







