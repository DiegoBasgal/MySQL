-- drop database mercado

create database mercado;
	use mercado;
    
	create table vendedor (codigo_vendedor INT, nome varchar(50),telefone varchar(50), senha INT,
		primary key (codigo_vendedor));
       
	insert into vendedor (codigo_vendedor, nome, telefone, senha) values (1, 'Mauricio', '(41)999324482', 323);
    insert into vendedor (codigo_vendedor, nome, telefone, senha) values (2, 'Danika', '(41)999259023', 324);
    insert into vendedor (codigo_vendedor, nome, telefone, senha) values (3, 'Leandro', '(41)999233318', 325);
    insert into vendedor (codigo_vendedor, nome, telefone, senha) values (4, 'Amanda', '(41)999495560', 326);
    insert into vendedor (codigo_vendedor, nome, telefone, senha) values (5, 'Danilo', '(41)999182374', 327);
	
    
	create table prateleira (numero_prateleira INT, localizacao varchar(50),
		primary key (numero_prateleira));
        
    insert into prateleira (numero_prateleira, localizacao) values (01, 'setor A');
    insert into prateleira (numero_prateleira, localizacao) values (02, 'setor B');
    insert into prateleira (numero_prateleira, localizacao) values (03, 'setor C');
    insert into prateleira (numero_prateleira, localizacao) values (04, 'setor D');
    insert into prateleira (numero_prateleira, localizacao) values (05, 'setor E');
    insert into prateleira (numero_prateleira, localizacao) values (06, 'setor F');
	
    
    create table produto (codigo_barras INT, numero INT, descricao varchar(50), numero_prateleira INT,
		primary key (codigo_barras),
        foreign key (numero_prateleira) references prateleira (numero_prateleira));
        
	insert into produto (codigo_barras, numero, descricao, numero_prateleira) values (00000035783, 1, 'Coca-cola', 01);
    insert into produto (codigo_barras, numero, descricao, numero_prateleira) values (00000012938, 2, 'Queijo', 02);
    insert into produto (codigo_barras, numero, descricao, numero_prateleira) values (00000038478, 3, 'Presunto', 02);
    insert into produto (codigo_barras, numero, descricao, numero_prateleira) values (00000069789, 4, 'Baconzitos', 03);
    insert into produto (codigo_barras, numero, descricao, numero_prateleira) values (00000039082, 5, 'Broa Integral', 04);
    insert into produto (codigo_barras, numero, descricao, numero_prateleira) values (00000093994, 6, 'Rap10', 04);
    insert into produto (codigo_barras, numero, descricao, numero_prateleira) values (00000023798, 7, 'Ovos', 05);
    insert into produto (codigo_barras, numero, descricao, numero_prateleira) values (00000069083, 8, 'Banana', 05);
    insert into produto (codigo_barras, numero, descricao, numero_prateleira) values (00000012900, 9, 'Margarina', 06);
    
    
    create table cliente (codigo_cliente INT, nome varchar(50), endereco varchar(50), telefone varchar(50),
		primary key (codigo_cliente));
    
    insert into cliente (codigo_cliente, nome, endereco, telefone) values (1, 'Marcos', 'Rua da Cidadania-21', '(41)999120389');
    insert into cliente (codigo_cliente, nome, endereco, telefone) values (2, 'Danilo', 'Rua da Paz-455', '(41)999825739');
    insert into cliente (codigo_cliente, nome, endereco, telefone) values (3, 'Diego', 'Avenida Palmeiras-300', '(41)999105471');
    insert into cliente (codigo_cliente, nome, endereco, telefone) values (4, 'Maria', 'Travessa Lange-01', '(41)9996419028');
    insert into cliente (codigo_cliente, nome, endereco, telefone) values (5, 'Eduardo', 'Rua Trindade-493', '(41)998120487');
    insert into cliente (codigo_cliente, nome, endereco, telefone) values (6, 'Fabiola', 'Alameda Dionisio-4376', '(41)999758894');
    insert into cliente (codigo_cliente, nome, endereco, telefone) values (7, 'Rogerio', 'Estrada da Fe-3848', '(41)998058473');
    
    
    create table venda (numero_notafiscal INT, data_venda date, codigo_vendedor INT, codigo_cliente INT,
		primary key (numero_notafiscal),
        foreign key (codigo_vendedor) references vendedor (codigo_vendedor),
        foreign key (codigo_cliente) references cliente (codigo_cliente));


	insert into venda (numero_notafiscal, data_venda, codigo_vendedor, codigo_cliente) values (1, '2017-04-12', 1, 1);
    insert into venda (numero_notafiscal, data_venda, codigo_vendedor, codigo_cliente) values (2, '2017-09-17', 1, 2);
    insert into venda (numero_notafiscal, data_venda, codigo_vendedor, codigo_cliente) values (3, '2017-01-30', 2, 3);
    insert into venda (numero_notafiscal, data_venda, codigo_vendedor, codigo_cliente) values (4, '2017-03-19', 3, 4);
    insert into venda (numero_notafiscal, data_venda, codigo_vendedor, codigo_cliente) values (5, '2017-05-01', 4, 5);
    insert into venda (numero_notafiscal, data_venda, codigo_vendedor, codigo_cliente) values (6, '2017-10-22', 5, 6);
    insert into venda (numero_notafiscal, data_venda, codigo_vendedor, codigo_cliente) values (7, '2017-04-22', 3, 6);
    insert into venda (numero_notafiscal, data_venda, codigo_vendedor, codigo_cliente) values (8, '2017-12-22', 4, 6);
    insert into venda (numero_notafiscal, data_venda, codigo_vendedor, codigo_cliente) values (9, '2017-10-22', 5, 7);
    
        
	create table venda_produto (numero_notafiscal INT, codigo_barras INT, quantidade INT,
		primary key (numero_notafiscal, codigo_barras),
        foreign key (numero_notafiscal) references venda (numero_notafiscal),
        foreign key (codigo_barras) references produto (codigo_barras));
        
	insert into venda_produto (numero_notafiscal, codigo_barras, quantidade) values (1,00000035783, 20);
    insert into venda_produto (numero_notafiscal, codigo_barras, quantidade) values (2,00000012938, 30);
    insert into venda_produto (numero_notafiscal, codigo_barras, quantidade) values (3,00000038478, 55);
    insert into venda_produto (numero_notafiscal, codigo_barras, quantidade) values (4,00000069789, 40);
    insert into venda_produto (numero_notafiscal, codigo_barras, quantidade) values (5,00000039082, 60);
    insert into venda_produto (numero_notafiscal, codigo_barras, quantidade) values (6,00000023798, 90);
    insert into venda_produto (numero_notafiscal, codigo_barras, quantidade) values (7,00000012900, 10);
    
    
    -- Nome do cliente com maior numero de transações.
    
    select cliente.nome
    from venda, cliente
    where cliente.codigo_cliente = venda.codigo_cliente
    group by venda.codigo_cliente having Count(*) > 1;
    
    
    -- O nome do vendedor que atende o cliente x em 17 de setembro de 2017.
    
    select vendedor.nome, cliente.nome
    from venda, vendedor, cliente
    where venda.codigo_vendedor = vendedor.codigo_vendedor and cliente.codigo_cliente = venda.codigo_cliente and venda.data_venda = '2017-09-17';
    
    -- Qual a descrição dos produtos que em uma mesma compra foram comercializados em numero superior a 50.
    
	select produto.descricao
    from produto, venda_produto
    where produto.codigo_barras = venda_produto.codigo_barras and venda_produto.quantidade < 50;
    