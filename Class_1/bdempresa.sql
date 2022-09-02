CREATE DATABASE bdempresa;

USE bdempresa;


CREATE TABLE tbGerente(cod_gerente INT,
						nome_gerente VARCHAR(50),
						PRIMARY KEY(cod_gerente)
);

CREATE TABLE tbEmpregado(cod_emp INT,
						 nome_emp VARCHAR(50),
                         rua_emp VARCHAR(50),
						 cidade_emp VARCHAR(40),
                         fone_emp VARCHAR(15),
						 cod_gerente INT,
                         PRIMARY KEY(cod_emp),
                         FOREIGN KEY (cod_gerente) REFERENCES tbGerente(cod_gerente)
);

CREATE TABLE tbCompanhia(cod_companhia INT,
						nome_companhia VARCHAR(50),
                        cidade_companhia VARCHAR(40),
                        PRIMARY KEY(cod_companhia)
);

CREATE TABLE tbTrabalha(cod_emp INT,
						cod_companhia INT,
						salario FLOAT(10,2),
                        PRIMARY KEY(cod_emp, cod_companhia),
						FOREIGN KEY (cod_emp) REFERENCES tbEmpregado(cod_emp),
                        FOREIGN KEY (cod_companhia) REFERENCES tbCompanhia(cod_companhia)
);

INSERT INTO tbGerente VALUES (1,'Gerente 1');
INSERT INTO tbGerente VALUES (2,'Gerente 2');
INSERT INTO tbGerente VALUES (3,'Gerente 3');
INSERT INTO tbGerente VALUES (4,'Gerente 4');

INSERT INTO tbEmpregado VALUES (1,'Empregado 1','Rua 1', 'Cidade 1', '(41)9999-9999',1);
INSERT INTO tbEmpregado VALUES (2,'Empregado 2','Rua 2', 'Cidade 2', '(41)9999-9999',2);
INSERT INTO tbEmpregado VALUES (3,'Empregado 3','Rua 3', 'Cidade 3', '(41)9999-9999',3);
INSERT INTO tbEmpregado VALUES (4,'Empregado 4','Rua 4', 'Cidade 4', '(41)9999-9999',4);

INSERT INTO tbCompanhia	VALUES (1,'Companhia 1','Cidade A');
INSERT INTO tbCompanhia	VALUES (2,'Companhia 2','Cidade B');	
INSERT INTO tbCompanhia	VALUES (3,'Companhia 3','Cidade C');	
INSERT INTO tbCompanhia	VALUES (4,'Companhia 4','Cidade D');	

INSERT INTO tbTrabalha VALUES (1, 1, 1200.00);	
INSERT INTO tbTrabalha VALUES (2, 2, 1500.00);	
INSERT INTO tbTrabalha VALUES (3, 3, 4200.10);	
INSERT INTO tbTrabalha VALUES (4, 4, 1280.60);	

/*SELECT*/
SELECT * FROM tbGerente;	
SELECT * FROM tbEmpregado;	
SELECT * FROM tbCompanhia;
SELECT * FROM tbTrabalha;
SELECT nome_emp FROM tbEmpregado WHERE cod_emp=2;	
SELECT nome_companhia, cidade_companhia FROM tbCompanhia;	
SELECT COUNT(*) FROM tbCompanhia;		
SELECT COUNT(*) FROM tbempregado WHERE rua_emp='Rua 1' AND cidade_emp='Cidade 1';

/*PC*/
SELECT trb.cod_companhia 
FROM tbTrabalha trb, tbEmpregado emp 
WHERE trb.cod_emp = emp.cod_emp 
AND trb.salario=1200;

SELECT gr.nome_gerente, emp.nome_emp
FROM tbGerente gr, tbEmpregado emp
WHERE gr.cod_gerente = emp.cod_gerente;

/*INNER JOIN*/
SELECT tbTrabalha.cod_companhia FROM tbTrabalha 
INNER JOIN tbEmpregado ON 
	tbTrabalha.cod_emp = tbEmpregado.cod_emp 
AND  tbTrabalha.salario =1200;

SELECT tbGerente.nome_gerente, tbEmpregado.nome_emp FROM tbGerente 
INNER JOIN tbEmpregado ON 
	tbEmpregado.cod_gerente = tbGerente.cod_gerente;