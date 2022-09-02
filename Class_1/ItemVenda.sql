CREATE DATABASE ITEMVENDA;

USE ITEMVENDA;

CREATE TABLE TipoProduto(CodTipoProduto INT, 
						Descricao VARCHAR(100),
                        PRIMARY KEY(CodTipoProduto)
);

CREATE TABLE Produto(CodProduto INT,
					CodTipoProduto INT,
                    Nome VARCHAR(50),
                    Descricao VARCHAR(100), 
                    Preço FLOAT(5,2),
                    PRIMARY KEY(CodProduto, CodTipoProduto),
                    FOREIGN KEY (CodTipoProduto) REFERENCES TipoProduto(CodTipoProduto)
);

CREATE TABLE Empregado(CodEmpregado INT,
                	Nome VARCHAR(50),
                    Endereço VARCHAR(50),
                    Telefone VARCHAR(15),
                    Salario FLOAT(5,2),
                    PRIMARY KEY (CodEmpregado)
);

CREATE TABLE Registradora(CodRegistradora INT,
						Localização VARCHAR(20),
                        PRIMARY KEY(CodRegistradora)
);


CREATE TABLE VENDA(CodVenda INT,
					DataVenda DATE,
                    CodEmpregado INT,
					CodRegistradora INT,
					PRIMARY KEY(CodVenda),
					FOREIGN KEY(CodEmpregado) REFERENCES Empregado(CodEmpregado),
                    FOREIGN KEY(CodRegistradora) REFERENCES Registradora(CodRegistradora)
);


CREATE TABLE ProdutoSimilar(CodProdutoSimilar INT,
						CodTipoProdutoSimilar INT, 
                        CodProdutoSimilar2 INT, 
                        CodTipoProdutoSimilar2 INT,
                        PRIMARY KEY(CodProdutoSimilar, CodTipoProdutoSimilar, CodProdutoSimilar2, CodTipoProdutoSimilar2),
                        FOREIGN KEY(CodProdutoSimilar, CodTipoProdutoSimilar) REFERENCES Produto(CodProduto, CodTipoProduto),
                        FOREIGN KEY(CodProdutoSimilar2, CodTipoProdutoSimilar2) REFERENCES Produto(CodProduto, CodTipoProduto)
);

CREATE TABLE ProdutoVenda(CodProduto INT,
					CodVenda INT,
                    CodTipoProduto INT,
                    PRIMARY KEY(CodProduto, CodVenda, CodTipoProduto),
                    FOREIGN KEY(CodProduto, CodTipoProduto) REFERENCES Produto(CodProduto, CodTipoProduto),
                    FOREIGN KEY(CodVenda) REFERENCES Venda(CodVenda)
);

INSERT INTO TipoProduto VALUES (1, 'Tipo 1');
INSERT INTO TipoProduto VALUES (2, 'Tipo 2');
INSERT INTO TipoProduto VALUES (3, 'Tipo 3');
INSERT INTO TipoProduto VALUES (4, 'Tipo 4');

INSERT INTO Produto VALUES (1, 1, 'Produto 1', 'Produto 1.1', 900.00);
INSERT INTO Produto VALUES (2, 3, 'Produto 2', 'Produto 2.1', 290.00);
INSERT INTO Produto VALUES (3, 4, 'Produto 3', 'Produto 3.1', 780.00);
INSERT INTO Produto VALUES (4, 2, 'Produto 4', 'Produto 4.1', 10.00);

INSERT INTO Empregado VALUES (1, 'Empregado 1', 'Rua 1', 'Tel 1', 200.00);
INSERT INTO Empregado VALUES (2, 'Empregado 2', 'Rua 2', 'Tel 2', 192.00);
INSERT INTO Empregado VALUES (3, 'Empregado 3', 'Rua 3', 'Tel 3', 209.00);
INSERT INTO Empregado VALUES (4, 'Empregado 4', 'Rua 4', 'Tel 4', 500.00);

INSERT INTO Registradora VALUES (1, 'Setor 1');
INSERT INTO Registradora VALUES (2, 'Setor 2');
INSERT INTO Registradora VALUES (3, 'Setor 3');
INSERT INTO Registradora VALUES (4, 'Setor 4');
INSERT INTO Registradora VALUES (5, 'Setor 5');

INSERT INTO VENDA VALUES (1, '2017-04-12', 2, 4);
INSERT INTO VENDA VALUES (2, '2016-12-31', 1, 3);
INSERT INTO VENDA VALUES (3, '2012-06-07', 4, 1);
INSERT INTO VENDA VALUES (4, '2014-07-16', 3, 2);

INSERT INTO ProdutoSimilar VALUES (1, 1, 2, 3);
INSERT INTO ProdutoSimilar VALUES (2, 3, 4, 2);
INSERT INTO ProdutoSimilar VALUES (3, 4, 1, 1);
INSERT INTO ProdutoSimilar VALUES (4, 2, 3, 4);

INSERT INTO ProdutoVenda VALUES (1, 2, 1);
INSERT INTO ProdutoVenda VALUES (2, 1, 3);
INSERT INTO ProdutoVenda VALUES (4, 4, 2);
INSERT INTO ProdutoVenda VALUES (3, 3, 4);

select * from TipoProduto;
select * from Produto;
select * from Empregado;
select * from Registradora;
select * from VENDA;
select * from ProdutoSimilar;
select * from ProdutoVenda;

select TipoProduto.Descricao 
from Produto, TipoProduto 
where Produto.CodTipoProduto = TipoProduto.CodTipoProduto 
and Produto.Nome = 'Produto 3';

select Registradora.Localização 
from  Registradora, VENDA 
where Registradora.CodRegistradora = VENDA.CodRegistradora 
and CodEmpregado = 2;

select Empregado.Nome 
from Empregado, VENDA 
where Empregado.CodEmpregado = VENDA.CodEmpregado 
and CodVenda = 3;

select TipoProduto.Descricao 
from Produto 
INNER JOIN TipoProduto ON 
	Produto.CodTipoProduto = TipoProduto.CodTipoProduto 
and Produto.Nome = 'Produto 3'; 

select Registradora.Localização 
from Registradora INNER JOIN VENDA ON 
	Registradora.CodRegistradora = VENDA.CodRegistradora 
and CodEmpregado = 2;

select Empregado.Nome 
from Empregado 
INNER JOIN VENDA ON 
	Empregado.CodEmpregado = VENDA.CodEmpregado 
and CodVenda = 3;