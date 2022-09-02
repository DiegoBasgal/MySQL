 drop database faculdade;

create database faculdade;
	use faculdade;
    
	create table professor (matricula_professor INT, nome varchar(50), telefone varchar(15),
		primary key (matricula_professor));
        
	insert into professor (matricula_professor, nome, telefone) values (0022343369, 'Rodolfo', '(41)99934482');
    insert into professor (matricula_professor, nome, telefone) values (0034959910, 'Maria', '(41)99839102');
    insert into professor (matricula_professor, nome, telefone) values (0069086980, 'Danilo', '(41)99849103');
    insert into professor (matricula_professor, nome, telefone) values (0017380784, 'Joana', '(41)99928190');
    insert into professor (matricula_professor, nome, telefone) values (0016574847, 'Romário', '(41)99928180');
    insert into professor (matricula_professor, nome, telefone) values (0018755857, 'Andressa', '(41)99928178');
 
 
	create table disciplina (codigo_disciplina INT, nome varchar(50), matricula_professor INT,
		primary key (codigo_disciplina),
		foreign key (matricula_professor) references professor (matricula_professor));
    
	insert into disciplina (codigo_disciplina, nome, matricula_professor) values (1, 'Algebra linear', 0022343369);
    insert into disciplina (codigo_disciplina, nome, matricula_professor) values (2, 'Calculo', 0034959910);
    insert into disciplina (codigo_disciplina, nome, matricula_professor) values (3, 'Programacao 1', 0069086980);
    insert into disciplina (codigo_disciplina, nome, matricula_professor) values (4, 'Metodologia Cientifica', 0017380784);
    insert into disciplina (codigo_disciplina, nome, matricula_professor) values (5, 'Lógica', 0018755857);
    
    
	create table aluno (matricula_aluno INT, nome varchar(50), data_nascimento DATE, 
		primary key (matricula_aluno));
        
	insert into aluno (matricula_aluno, nome, data_nascimento) values (1721062398, 'Maria', '1996-03-20');
    insert into aluno (matricula_aluno, nome, data_nascimento) values (1347569784, 'Mariano', '1994-10-12');
    insert into aluno (matricula_aluno, nome, data_nascimento) values (1275934853, 'Daniela', '1998-07-13');
    insert into aluno (matricula_aluno, nome, data_nascimento) values (1398746456, 'Marcos', '1992-12-09');
    insert into aluno (matricula_aluno, nome, data_nascimento) values (1128577580, 'Bruna', '1990-12-27');
    
        
	create table aluno_disciplina (codigo_disciplina INT, matricula_aluno INT,
		primary key (codigo_disciplina, matricula_aluno),
        foreign key (codigo_disciplina) references disciplina (codigo_disciplina),
        foreign key (matricula_aluno) references aluno (matricula_aluno));
        
	insert into aluno_disciplina (codigo_disciplina, matricula_aluno) values (1, 1721062398);
    insert into aluno_disciplina (codigo_disciplina, matricula_aluno) values (1, 1275934853);
    insert into aluno_disciplina (codigo_disciplina, matricula_aluno) values (2, 1347569784);
    insert into aluno_disciplina (codigo_disciplina, matricula_aluno) values (2, 1275934853);
    insert into aluno_disciplina (codigo_disciplina, matricula_aluno) values (3, 1721062398);
    insert into aluno_disciplina (codigo_disciplina, matricula_aluno) values (3, 1398746456);
    insert into aluno_disciplina (codigo_disciplina, matricula_aluno) values (4, 1347569784);
    insert into aluno_disciplina (codigo_disciplina, matricula_aluno) values (4, 1275934853);
    insert into aluno_disciplina (codigo_disciplina, matricula_aluno) values (5, 1128577580);
    insert into aluno_disciplina (codigo_disciplina, matricula_aluno) values (5, 1721062398);
    
    -- 1721062398
    
    
select nome
from professor
where matricula_professor = 0017380784;

select matricula_aluno
from aluno
where nome= 'Mariano';

select disciplina.nome, professor.nome
from disciplina, professor
where professor.matricula_professor = disciplina.matricula_professor and disciplina.nome = 'Calculo';

select disciplina.nome, professor.nome, professor.telefone
from disciplina, professor
where disciplina.matricula_professor = professor.matricula_professor and telefone = '(41)99934482';

select aluno_disciplina.codigo_disciplina, aluno.nome
from aluno_disciplina, aluno
where aluno.matricula_aluno = aluno_disciplina.matricula_aluno and nome = 'Daniela';


-- Construa a instrução select para:

-- 1) Listar o nome dos professores sem disciplinas: 

select distinct p.nome
from professor p
where p.matricula_professor not in (select matricula_professor from disciplina);

-- 2) Listar o nome dos alunos que não estudam "Lógica":

select distinct a.nome
from aluno a
where a.matricula_aluno not in 
	(select matricula_aluno 
	from aluno_disciplina
    inner join disciplina on
    disciplina.codigo_disciplina = aluno_disciplina.codigo_disciplina
    where disciplina.nome = "logica");
