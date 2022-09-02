CREATE DATABASE empresa;

USE empresa;

CREATE TABLE companhia(
	cod_companhia INT,
    nome_companhia VARCHAR(50),
    cidade_companhia VARCHAR(50),
    PRIMARY KEY (cod_companhia)
    );
    
CREATE TABLE gerente (
	cod_gerente INT,
    nome_gerente VARCHAR(50),
    PRIMARY KEY (cod_gerente)
    );
    
CREATE TABLE empregado(
	cod_emp INT,
	nome_emp VARCHAR(50),
    rua_emp VARCHAR(50),
    cidade_emp VARCHAR(50),
    fone_emp VARCHAR(50),
    cod_gerente INT,
    PRIMARY KEY (cod_emp),
    FOREIGN KEY (cod_gerente) REFERENCES gerente(cod_gerente)
    );

CREATE TABLE trabalha( cod_emp INT,
    cod_companhia INT,
    salario DOUBLE,
    FOREIGN KEY (cod_companhia) REFERENCES companhia(cod_companhia),
    FOREIGN KEY (cod_emp) REFERENCES empregado(cod_emp)
    );
    
INSERT INTO companhia VALUES ( 1, 'Chueiri Eletronics', 'Curitiba');
INSERT INTO companhia VALUES ( 2, 'Face Scan CV', 'Curitiba');
INSERT INTO companhia VALUES ( 3, 'Joulia & Joulia', 'Curitiba');
INSERT INTO companhia VALUES ( 4, 'PPGIA', 'Curitiba');
INSERT INTO gerente VALUES ( 1, 'Voldi Z');
INSERT INTO gerente VALUES ( 2, 'Ivan Chueiri');
INSERT INTO gerente VALUES ( 3, 'Guilherme Nogeira');
INSERT INTO gerente VALUES ( 4, 'Marcelo Gaiotto');
INSERT INTO gerente VALUES ( 5, 'Afonso Miguel');
INSERT INTO gerente VALUES ( 6, 'Luis Lima');
INSERT INTO gerente VALUES ( 7, 'Joao das Coves');

INSERT INTO empregado VALUES ( 1, 'Diego França','Av.Silva Jardim', 'Curitiba','5541982',1);
INSERT INTO empregado VALUES ( 2, 'Rodrigo França','Av.Água Verde', 'Curitiba','554191531',1);
INSERT INTO empregado VALUES ( 3, 'João Pedro de Assis','Av.Água Verde', 'Curitiba','5541988915',1);
INSERT INTO empregado VALUES ( 4, 'Rodrigo Viti','Rua Iapó', 'Curitiba','5541988831',2);
INSERT INTO empregado VALUES ( 5, 'Gabriel Santi','Av.República Argentina', 'Curitiba','5541989256',3);
INSERT INTO empregado VALUES ( 6, 'Gabriel Dias','Av.Vicente Machado', 'Curitiba','554198267',4);
INSERT INTO empregado VALUES ( 7, 'Otávio Probst','Av.Presidente Kennedy', 'Curitiba','5541986900',5);
INSERT INTO empregado VALUES ( 8, 'Marcos Cecatto','Av.Água Verde', 'Curitiba','5541981486',5);
INSERT INTO empregado VALUES ( 9, 'Luiz Guilherme','Av.Iguaçu', 'Curitiba','554198245468',2);
INSERT INTO empregado VALUES ( 10, 'Guilherme Plantes','Rua Desembargador Westfalen', 'Curitiba','598244623',2);
INSERT INTO empregado VALUES ( 11, 'Gustavo Gunther','Rua Alferes Poli', 'Curitiba','5541973467',6);
INSERT INTO trabalha VALUES (1,1,13254.000000);
INSERT INTO trabalha VALUES (2,1,5135.1325);
INSERT INTO trabalha VALUES (3,1,6226.2462);
INSERT INTO trabalha VALUES (4,2,5.00);
INSERT INTO trabalha VALUES (5,3,316136.136);
INSERT INTO trabalha VALUES (6,3,6.00);
INSERT INTO trabalha VALUES (7,3,7.00);
INSERT INTO trabalha VALUES (8,4,8.00);
INSERT INTO trabalha VALUES (9,1,9.00);
INSERT INTO trabalha VALUES (10,1,10.00);
INSERT INTO trabalha VALUES (11,4,11.00);

SELECT * FROM companhia;
SELECT * FROM gerente;
SELECT * FROM empregado WHERE nome_emp = "Diego França";
SELECT * FROM trabalha;


/*
CREATE TABLE empregado(
	cod_emp INT,
	nome_emp VARCHAR(50),
    rua_emp VARCHAR(50),
    cidade_emp VARCHAR(50),
    fone_emp VARCHAR(50),
    cod_gerente INT,
    PRIMARY KEY (cod_emp),
    FOREIGN KEY (cod_gerente) REFERENCES gerente(cod_gerente)
    );
*/

-- quantos empregados estao vinculados a cada gerente
SELECT gerente.nome_gerente,count(*) 
	FROM empregado, gerente
	WHERE empregado.cod_gerente = gerente.cod_gerente
    group by gerente.nome_gerente; 

SELECT gerente.nome_gerente,count(empregado.cod_gerente) 
	FROM gerente 
    left join empregado on 
		gerente.cod_gerente = empregado.cod_gerente
    group by gerente.nome_gerente;
	
/* qual e o nome do gerente para os empregados 
   que vivem na Agua Verde
*/
SELECT distinct gerente.nome_gerente 
	FROM empregado, gerente
	WHERE empregado.cod_gerente = gerente.cod_gerente 
	AND empregado.rua_emp = 'Av.Água Verde';


SELECT trabalha.salario COUNT FROM trabalha 
INNER JOIN companhia ON trabalha.cod_companhia = companhia.cod_companhia 
INNER JOIN empregado ON trabalha.cod_emp = empregado.cod_emp;




