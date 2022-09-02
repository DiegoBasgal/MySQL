-- drop database faculdade2

create database faculdade2;
	use faculdade2;
    
    create table curso (codigo_curso INT, nome varchar(50),
		primary key (codigo_curso));
        
	insert into curso (codigo_curso, nome) values (1, 'Arquitetura e Urbanismo');
    insert into curso (codigo_curso, nome) values (2, 'Matematica Industrial');
    insert into curso (codigo_curso, nome) values (3, 'Filosofia');
    insert into curso (codigo_curso, nome) values (4, 'Ciencia da Computacao');
    insert into curso (codigo_curso, nome) values (5, 'Letras');
    insert into curso (codigo_curso, nome) values (6, 'Educacao Fisica');
    insert into curso (codigo_curso, nome) values (7, 'Medicina Veterinaria');
    
        
	create table aluno (matricula_aluno INT, nome varchar(50), codigo_curso INT, data_matricula DATE,
		primary key (matricula_aluno),
        foreign key (codigo_curso) references curso (codigo_curso));
        
    insert into aluno (matricula_aluno, nome, codigo_curso, data_matricula) values (00264826718, 'Danilo', 2, '2016-12-30');
    insert into aluno (matricula_aluno, nome, codigo_curso, data_matricula) values (00227834686, 'Marcos', 5, '2017-05-14');
    insert into aluno (matricula_aluno, nome, codigo_curso, data_matricula) values (00236575757, 'Daniela', 6, '2015-04-14');
    insert into aluno (matricula_aluno, nome, codigo_curso, data_matricula) values (00213466646, 'Bruna', 1, '2015-03-20');
    insert into aluno (matricula_aluno, nome, codigo_curso, data_matricula) values (00212304983, 'Mauricio', 3, '2013-08-18');
    insert into aluno (matricula_aluno, nome, codigo_curso, data_matricula) values (00283598098, 'Natalia', 7, '2013-08-17');
    insert into aluno (matricula_aluno, nome, codigo_curso, data_matricula) values (00292384908, 'Maria', 4, '2014-09-05');
    insert into aluno (matricula_aluno, nome, codigo_curso, data_matricula) values (00223848905, 'Joao', 2, '2015-05-26');
    insert into aluno (matricula_aluno, nome, codigo_curso, data_matricula) values (00212389782, 'Wallace', 4, '2014-04-22');
	
	
    create table departamento (codigo_departamento INT, nome varchar(50), responsavel varchar(50), localizacao varchar(50),
		primary key (codigo_departamento));
        
	insert into departamento (codigo_departamento, nome, responsavel, localizacao) values (01, 'Politecnica', 'Joao', 'Bloco 9');
    insert into departamento (codigo_departamento, nome, responsavel, localizacao) values (02, 'Arquitetura e Design', 'Marcia', 'Bloco 2');
    insert into departamento (codigo_departamento, nome, responsavel, localizacao) values (03, 'Ciencias Sociais', 'Rodolfo', 'Bloco 1');
    insert into departamento (codigo_departamento, nome, responsavel, localizacao) values (04, 'Educacao Fisica', 'Marino', 'Bloco 4');
    insert into departamento (codigo_departamento, nome, responsavel, localizacao) values (05, 'Veterinaria', 'Nelson', 'Bloco 3');
	
    
	create table disciplina (codigo_disciplina INT, nome varchar(50), carga_horaria INT, codigo_curso INT, codigo_departamento INT,
		primary key (codigo_disciplina),
        foreign key (codigo_curso) references curso (codigo_curso),
        foreign key (codigo_departamento) references departamento (codigo_departamento));
        
	insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (1, 'Algoritmos e Programacao', 40, 4, 01);
    insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (2, 'Calculo 1', 50, 2, 01);
    insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (3, 'Banco de Dados', 40, 4, 01);
    insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (4, 'Ética', 30, 3, 03);
    insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (5, 'Esportes da Atualidade', 50, 6, 04);
    insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (6, 'Desenho', 30, 1, 02);
    insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (7, 'Anatomia Animal', 50, 7, 05);
    insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (8, 'Anatomia Corporal', 40, 6, 04);
    insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (9, 'LPTA', 40, 5, 03);
    insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (10, 'Topografia', 50, 1, 02);
    insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (11, 'Logica', 40, 4, 01);
    insert into disciplina (codigo_disciplina, nome, carga_horaria, codigo_curso, codigo_departamento) values (12, 'Introducao ao Calculo', 50, 4, 01);
    
    
	create table pre_requisitos (codigo_disciplina INT, pre_requisito INT,
		primary key (codigo_disciplina, pre_requisito),
        foreign key (codigo_disciplina) references disciplina (codigo_disciplina),
        foreign key (pre_requisito) references disciplina (codigo_disciplina));
        
	insert into pre_requisitos (codigo_disciplina, pre_requisito) values (11, 12);
    insert into pre_requisitos (codigo_disciplina, pre_requisito) values (5, 8);
    insert into pre_requisitos (codigo_disciplina, pre_requisito) values (12, 2);
    insert into pre_requisitos (codigo_disciplina, pre_requisito) values (10, 6);
    
    
    -- Quais são as disciplina(s) pré-requisito de lógica?
    
    select disciplina.codigo_disciplina, pre_requisitos.pre_requisito
    from pre_requisitos, disciplina
    where pre_requisitos.codigo_disciplina = disciplina.codigo_disciplina and disciplina.codigo_disciplina = 11;
    
    
    -- Qual é o nome do curso do aluno x?
    
    select curso.nome, aluno.nome
    from curso, aluno
    where aluno.codigo_curso = curso.codigo_curso and aluno.nome = 'Joao';
    
    -- Quantos estudantes estão matriculados por curso?
    
    select curso.nome, count(*)
    from curso, aluno
    where curso.codigo_curso = aluno.codigo_curso
    group by curso.nome
    order by count(*) desc limit 100;
    
        