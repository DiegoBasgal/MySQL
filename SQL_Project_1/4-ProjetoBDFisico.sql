drop database FIFA;

create database FIFA;
	use FIFA;

create table posicao_jogador(codigo_posicao int,
							 descricao varchar(50),
                             primary key (codigo_posicao)
);

insert into posicao_jogador values (1, 'Atacante');
insert into posicao_jogador values (2, 'Zagueiro');
insert into posicao_jogador values (3, 'Meio-campo');
insert into posicao_jogador values (4, 'Volante');
insert into posicao_jogador values (5, 'Goleiro');
insert into posicao_jogador values (6, 'Lateral-direita');
insert into posicao_jogador values (7, 'Lateral-esquerda');


create table jogador(codigo_jogador int,
					 codigo_posicao int,
					 nome varchar(50),
                     numero int,
					 primary key (codigo_jogador, codigo_posicao),
					 foreign key (codigo_posicao) references posicao_jogador(codigo_posicao)
);

insert into jogador values (1, 5, 'Manuel Neuer', 1);
insert into jogador values (2, 2, 'Niklas Süle', 4);
insert into jogador values (3, 2, 'Mats Hummels', 5);
insert into jogador values (4, 4, 'Thiago Alcántara', 6);
insert into jogador values (5, 3, 'Franck Ribéry', 7);
insert into jogador values (6, 4, 'Javi Martínez', 8);
insert into jogador values (7, 1, 'Robert Lewandowski', 9);
insert into jogador values (8, 1, 'Arjen Robben', 10);
insert into jogador values (9, 3, 'James Rodríguez', 11);
insert into jogador values (10, 6, 'Rafinha', 13);
insert into jogador values (11, 2, 'Jérôme Boateng', 17);
insert into jogador values (12, 7, 'Juan Bernat', 14);
insert into jogador values (13, 4, 'Sebastian Rudy', 19);
insert into jogador values (14, 4, 'Arturo Vidal', 23);
insert into jogador values (15, 4, 'Corentin Tolisso', 24);
insert into jogador values (16, 1, 'Thomas Müller', 25);
insert into jogador values (17, 5, 'Sven Ulreich', 26);
insert into jogador values (18, 7, 'David Alaba', 27);
insert into jogador values (19, 1, 'Kingsley Coman', 29);
insert into jogador values (20, 4, 'Niklas Dorsch', 30);
insert into jogador values (21, 6, 'Joshua Kimmich', 32);
insert into jogador values (22, 3, 'Fabian Benko', 40);
insert into jogador values (23, 5, 'Marc-André ter Stegen', 1);
insert into jogador values (24, 6, 'Nélson Semedo', 2);
insert into jogador values (25, 2, 'Gerard Piqué', 3);
insert into jogador values (26, 4, 'Ivan Rakitić', 4);
insert into jogador values (27, 4, 'Sergio Busquets', 5);
insert into jogador values (28, 3, 'Denis Suárez', 6);
insert into jogador values (29, 3, 'Arda Turan', 7);
insert into jogador values (30, 3, 'Andrés Iniesta', 8);
insert into jogador values (31, 1, 'Luis Suárez', 9);
insert into jogador values (32, 1, 'Lionel Messi', 10);
insert into jogador values (33, 1, 'Ousmane Dembélé', 11);
insert into jogador values (34, 3, 'Rafinha', 12);
insert into jogador values (35, 5, 'Jasper Cillessen', 13);
insert into jogador values (36, 4, 'Javier Mascherano', 14);
insert into jogador values (37, 4, 'Paulinho', 15);
insert into jogador values (38, 3, 'Gerard Deulofeu', 16);
insert into jogador values (39, 1, 'Paco Alcácer', 17);
insert into jogador values (40, 7, 'Jordi Alba', 18);
insert into jogador values (41, 7, 'Lucas Digne', 19);
insert into jogador values (42, 6, 'Sergi Roberto', 20);
insert into jogador values (43, 4, 'André Gomes', 21);
insert into jogador values (44, 6, 'Aleix Vidal', 22);
insert into jogador values (45, 2, 'Samuel Umtiti', 23);
insert into jogador values (46, 2, 'Thomas Vermaelen', 25);
insert into jogador values (47, 5, 'Kevin Trapp', 1);
insert into jogador values (48, 2, 'Thiago Silva', 2);
insert into jogador values (49, 2, 'Presnel Kimpembe', 3);
insert into jogador values (50, 2, 'Marquinhos', 5);
insert into jogador values (51, 4, 'Marco Verratti', 6);
insert into jogador values (52, 1, 'Lucas Moura', 7);
insert into jogador values (53, 4, 'Thiago Motta', 8);
insert into jogador values (54, 1, 'Edinson Cavani', 9);
insert into jogador values (55, 1, 'Neymar', 10);
insert into jogador values (56, 3, 'Ángel Di María', 11);
insert into jogador values (57, 6, 'Thomas Meunier', 12);
insert into jogador values (58, 5, 'Alphonse Aréola', 16);
insert into jogador values (59, 7, 'Yuri Berchiche', 17);
insert into jogador values (60, 3, 'Giovani Lo Celso', 18);
insert into jogador values (61, 7, 'Layvin Kurzawa', 20);
insert into jogador values (62, 3, 'Hatem Ben Arfa', 21);
insert into jogador values (63, 3, 'Julian Draxler', 23);
insert into jogador values (64, 3, 'Christopher Nkunku', 24);
insert into jogador values (65, 4, 'Adrien Rabiot', 25);
insert into jogador values (66, 3, 'Javier Pastore', 27);
insert into jogador values (67, 1, 'Kylian Mbappé', 29);
insert into jogador values (68, 6, 'Daniel Alves', 32);
insert into jogador values (69, 5, 'Rémy Descamps', 40);
insert into jogador values (70, 5, 'Keylor Navas', 1);
insert into jogador values (71, 6, 'Dani Carvajal', 2);
insert into jogador values (72, 2, 'Jesús Vallejo', 3);
insert into jogador values (73, 2, 'Sergio Ramos', 4);
insert into jogador values (74, 2, 'Raphaël Varane', 5);
insert into jogador values (75, 2, 'Nacho Fernández', 6);
insert into jogador values (76, 1, 'Cristiano Ronaldo', 7);
insert into jogador values (77, 4, 'Toni Kroos', 8);
insert into jogador values (78, 1, 'Karim Benzema', 9);
insert into jogador values (79, 4, 'Luka Modrić', 10);
insert into jogador values (80, 1, 'Gareth Bale', 11);
insert into jogador values (81, 7, 'Marcelo', 12);
insert into jogador values (82, 5, 'Kiko Casilla', 13);
insert into jogador values (83, 4, 'Casemiro', 14);
insert into jogador values (84, 7, 'Theo Hernández', 15);
insert into jogador values (85, 1, 'Lucas Vázquez', 17);
insert into jogador values (86, 4, 'Marcos Llorente', 18);
insert into jogador values (87, 6, 'Achraf Hakimi', 19);
insert into jogador values (88, 3, 'Marco Asensio', 20);
insert into jogador values (89, 1, 'Borja Mayoral', 21);
insert into jogador values (90, 3, 'Isco', 22);
insert into jogador values (91, 4, 'Mateo Kovačić', 23);
insert into jogador values (92, 3, 'Dani Ceballos', 24);
insert into jogador values (93, 5, 'Luca Zidane', 30);
insert into jogador values (94, 5, 'Willy Caballero', 1);
insert into jogador values (95, 2, 'Antonio Rüdiger', 2);
insert into jogador values (96, 7, 'Marcos Alonso', 3);
insert into jogador values (97, 3, 'Cesc Fàbregas', 4);
insert into jogador values (98, 3, 'Daniel Drinkwater', 6);
insert into jogador values (99, 4, 'N Golo Kanté', 7);
insert into jogador values (100, 1, 'Álvaro Morata', 9);
insert into jogador values (100, 3, 'Eden Hazard', 10);
insert into jogador values (102, 1, 'Pedro', 11);
insert into jogador values (103, 5, 'Thibaut Courtois', 13);
insert into jogador values (104, 4, 'Tiemoué Bakayoko', 14);
insert into jogador values (105, 3, 'Victor Moses', 15);
insert into jogador values (106, 3, 'Kenedy', 16);
insert into jogador values (107, 3, 'Charly Musonda', 17);
insert into jogador values (108, 6, 'Davide Zappacosta', 21);
insert into jogador values (109, 3, 'Willian', 22);
insert into jogador values (110, 1, 'Michy Batshuayi', 23);
insert into jogador values (111, 2, 'Gary Cahill', 24);
insert into jogador values (112, 2, 'Andreas Christensen', 27);
insert into jogador values (113, 6, 'César Azpilicueta', 28);
insert into jogador values (114, 2, 'David Luiz', 30);
insert into jogador values (115, 2, 'Jake Clarke-Salter', 35);
insert into jogador values (116, 3, 'Kyle Scott', 36);
insert into jogador values (117, 5, 'Eduardo', 37);
insert into jogador values (118, 6, 'Mathieu Debuchy', 2);
insert into jogador values (119, 2, 'Per Mertesacker', 4);
insert into jogador values (120, 2, 'Laurent Koscielny', 6);
insert into jogador values (121, 1, 'Alexis Sánchez', 7);
insert into jogador values (122, 3, 'Aaron Ramsey', 8);
insert into jogador values (123, 1, 'Alexandre Lacazette', 9);
insert into jogador values (124, 3, 'Jack Wilshere', 10);
insert into jogador values (125, 3, 'Mesut Özil', 11);
insert into jogador values (126, 1, 'Olivier Giroud', 12);
insert into jogador values (127, 5, 'David Ospina', 13);
insert into jogador values (128, 1, 'Theo Walcott', 14);
insert into jogador values (129, 2, 'Rob Holding', 16);
insert into jogador values (130, 1, 'Alex Iwobi', 17);
insert into jogador values (131, 7, 'Nacho Monreal', 18);
insert into jogador values (132, 3, 'Santi Cazorla', 19);
insert into jogador values (133, 2, 'Shkodran Mustafi', 20);
insert into jogador values (134, 2, 'Calum Chambers', 21);
insert into jogador values (135, 3, 'Jeff Reine-Adélaïde', 22);
insert into jogador values (136, 1, 'Danny Welbeck', 23);
insert into jogador values (137, 6, 'Héctor Bellerín', 24);
insert into jogador values (138, 4, 'Granit Xhaka', 29);
insert into jogador values (139, 3, 'Ainsley Maitland-Niles', 30);
insert into jogador values (140, 7, 'Sead Kolašinac', 31);
insert into jogador values (141, 1, 'Chuba Akpom', 32);
insert into jogador values (142, 5, 'Petr Čech', 33);
insert into jogador values (143, 4, 'Francis Coquelin', 34);
insert into jogador values (144, 4, 'Mohamed Elneny', 35);
insert into jogador values (145, 5, 'Matt Macey', 54);
insert into jogador values (146, 5, 'Gianluigi Buffon', 1);
insert into jogador values (147, 6, 'Mattia De Sciglio', 2);
insert into jogador values (148, 2, 'Giorgio Chiellini', 3);
insert into jogador values (149, 2, 'Mehdi Benatia', 4);
insert into jogador values (150, 3, 'Miralem Pjanić', 5);
insert into jogador values (151, 4, 'Sami Khedira', 6);
insert into jogador values (152, 3, 'Juan Cuadrado', 7);
insert into jogador values (153, 4, 'Claudio Marchisio', 8);
insert into jogador values (154, 1, 'Gonzalo Higuaín', 9);
insert into jogador values (155, 1, 'Paulo Dybala', 10);
insert into jogador values (156, 1, 'Douglas Costa', 11);
insert into jogador values (157, 7, 'Alex Sandro', 12);
insert into jogador values (158, 4, 'Blaise Matuidi', 14);
insert into jogador values (159, 2, 'Andrea Barzagli', 15);
insert into jogador values (160, 5, 'Carlo Pinsoglio', 16);
insert into jogador values (161, 1, 'Mario Mandžukić', 17);
insert into jogador values (162, 1, 'Marko Pjaca', 20);
insert into jogador values (163, 2, 'Benedikt Höwedes', 21);
insert into jogador values (164, 7, 'Kwadwo Asamoah', 22);
insert into jogador values (165, 5, 'Wojciech Szczęsny', 23);
insert into jogador values (166, 2, 'Daniele Rugani', 24);
insert into jogador values (167, 6, 'Stephan Lichtsteiner', 26);
insert into jogador values (168, 4, 'Stefano Sturaro', 27);
insert into jogador values (169, 3, 'Rodrigo Bentancur', 30);
insert into jogador values (170, 3, 'Federico Bernardeschi', 33);
insert into jogador values (171, 3, 'Fabrizio Caligara', 36);


create table nome_timao(codigo_nometimao int,
						nome varchar(50),
                        primary key (codigo_nometimao)
);

insert into nome_timao values (1, 'Bayern Munique');
insert into nome_timao values (2, 'Barcelona');
insert into nome_timao values (3, 'Paris Saint-Germain');
insert into nome_timao values (4, 'Real Madrid');
insert into nome_timao values (5, 'Chelsea');
insert into nome_timao values (6, 'Arsenal');
insert into nome_timao values (7, 'Juventus');


create table timao(codigo_timao int,
				   codigo_nometimao int,
				   codigo_jogador int,
                   primary key (codigo_timao, codigo_jogador, codigo_nometimao),
                   foreign key (codigo_jogador) references jogador(codigo_jogador),
                   foreign key (codigo_nometimao) references nome_timao(codigo_nometimao)
);

insert into timao values(1, 1, 1);
insert into timao values(1, 1, 2);
insert into timao values(1, 1, 3);
insert into timao values(1, 1, 4);
insert into timao values(1, 1, 5);
insert into timao values(1, 1, 6);
insert into timao values(1, 1, 7);
insert into timao values(1, 1, 8);
insert into timao values(1, 1, 9);
insert into timao values(1, 1, 10);
insert into timao values(1, 1, 11);
insert into timao values(1, 1, 12);
insert into timao values(1, 1, 13);
insert into timao values(1, 1, 14);
insert into timao values(1, 1, 15);
insert into timao values(1, 1, 16);
insert into timao values(1, 1, 17);
insert into timao values(1, 1, 18);
insert into timao values(1, 1, 19);
insert into timao values(1, 1, 20);
insert into timao values(1, 1, 21);
insert into timao values(1, 1, 22);
insert into timao values(2, 2, 23);
insert into timao values(2, 2, 24);
insert into timao values(2, 2, 25);
insert into timao values(2, 2, 26);
insert into timao values(2, 2, 27);
insert into timao values(2, 2, 28);
insert into timao values(2, 2, 29);
insert into timao values(2, 2, 30);
insert into timao values(2, 2, 31);
insert into timao values(2, 2, 32);
insert into timao values(2, 2, 33);
insert into timao values(2, 2, 34);
insert into timao values(2, 2, 35);
insert into timao values(2, 2, 36);
insert into timao values(2, 2, 37);
insert into timao values(2, 2, 38);
insert into timao values(2, 2, 39);
insert into timao values(2, 2, 40);
insert into timao values(2, 2, 41);
insert into timao values(2, 2, 42);
insert into timao values(2, 2, 43);
insert into timao values(2, 2, 44);
insert into timao values(2, 2, 45);
insert into timao values(2, 2, 46);
insert into timao values(3, 3, 47);
insert into timao values(3, 3, 48);
insert into timao values(3, 3, 49);
insert into timao values(3, 3, 50);
insert into timao values(3, 3, 51);
insert into timao values(3, 3, 52);
insert into timao values(3, 3, 53);
insert into timao values(3, 3, 54);
insert into timao values(3, 3, 55);
insert into timao values(3, 3, 56);
insert into timao values(3, 3, 57);
insert into timao values(3, 3, 58);
insert into timao values(3, 3, 59);
insert into timao values(3, 3, 60);
insert into timao values(3, 3, 61);
insert into timao values(3, 3, 62);
insert into timao values(3, 3, 63);
insert into timao values(3, 3, 64);
insert into timao values(3, 3, 65);
insert into timao values(3, 3, 66);
insert into timao values(3, 3, 67);
insert into timao values(3, 3, 68);
insert into timao values(3, 3, 69);
insert into timao values(4, 4, 70);
insert into timao values(4, 4, 71);
insert into timao values(4, 4, 72);
insert into timao values(4, 4, 73);
insert into timao values(4, 4, 74);
insert into timao values(4, 4, 75);
insert into timao values(4, 4, 76);
insert into timao values(4, 4, 77);
insert into timao values(4, 4, 78);
insert into timao values(4, 4, 79);
insert into timao values(4, 4, 80);
insert into timao values(4, 4, 81);
insert into timao values(4, 4, 82);
insert into timao values(4, 4, 83);
insert into timao values(4, 4, 84);
insert into timao values(4, 4, 85);
insert into timao values(4, 4, 86);
insert into timao values(4, 4, 87);
insert into timao values(4, 4, 88);
insert into timao values(4, 4, 89);
insert into timao values(4, 4, 90);
insert into timao values(4, 4, 91);
insert into timao values(4, 4, 92);
insert into timao values(4, 4, 93);
insert into timao values(5, 5, 94);
insert into timao values(5, 5, 95);
insert into timao values(5, 5, 96);
insert into timao values(5, 5, 97);
insert into timao values(5, 5, 98);
insert into timao values(5, 5, 99);
insert into timao values(5, 5, 100);
insert into timao values(5, 5, 102);
insert into timao values(5, 5, 103);
insert into timao values(5, 5, 104);
insert into timao values(5, 5, 105);
insert into timao values(5, 5, 106);
insert into timao values(5, 5, 107);
insert into timao values(5, 5, 108);
insert into timao values(5, 5, 109);
insert into timao values(5, 5, 110);
insert into timao values(5, 5, 111);
insert into timao values(5, 5, 112);
insert into timao values(5, 5, 113);
insert into timao values(5, 5, 114);
insert into timao values(5, 5, 115);
insert into timao values(5, 5, 116);
insert into timao values(5, 5, 117);
insert into timao values(6, 6, 118);
insert into timao values(6, 6, 119);
insert into timao values(6, 6, 120);
insert into timao values(6, 6, 121);
insert into timao values(6, 6, 122);
insert into timao values(6, 6, 123);
insert into timao values(6, 6, 124);
insert into timao values(6, 6, 125);
insert into timao values(6, 6, 126);
insert into timao values(6, 6, 127);
insert into timao values(6, 6, 128);
insert into timao values(6, 6, 129);
insert into timao values(6, 6, 130);
insert into timao values(6, 6, 131);
insert into timao values(6, 6, 132);
insert into timao values(6, 6, 133);
insert into timao values(6, 6, 134);
insert into timao values(6, 6, 135);
insert into timao values(6, 6, 136);
insert into timao values(6, 6, 137);
insert into timao values(6, 6, 138);
insert into timao values(6, 6, 139);
insert into timao values(6, 6, 140);
insert into timao values(6, 6, 141);
insert into timao values(6, 6, 142);
insert into timao values(6, 6, 143);
insert into timao values(6, 6, 144);
insert into timao values(6, 6, 145);
insert into timao values(7, 7, 146);
insert into timao values(7, 7, 147);
insert into timao values(7, 7, 148);
insert into timao values(7, 7, 149);
insert into timao values(7, 7, 150);
insert into timao values(7, 7, 151);
insert into timao values(7, 7, 152);
insert into timao values(7, 7, 153);
insert into timao values(7, 7, 154);
insert into timao values(7, 7, 155);
insert into timao values(7, 7, 156);
insert into timao values(7, 7, 157);
insert into timao values(7, 7, 158);
insert into timao values(7, 7, 159);
insert into timao values(7, 7, 160);
insert into timao values(7, 7, 161);
insert into timao values(7, 7, 162);
insert into timao values(7, 7, 163);
insert into timao values(7, 7, 164);
insert into timao values(7, 7, 165);
insert into timao values(7, 7, 166);
insert into timao values(7, 7, 167);
insert into timao values(7, 7, 168);
insert into timao values(7, 7, 169);
insert into timao values(7, 7, 170);
insert into timao values(7, 7, 171);


create table usuario(codigo_usuario int,
					 id_usuario varchar(50),
					 codigo_timao int,
					 nome varchar(50), 
					 email varchar(50),
					 nível int,
					 primary key (codigo_usuario, codigo_timao),
                     foreign key (codigo_timao) references timao(codigo_timao)
);

insert into usuario values (1, 'Darius88', 1, 'Darius', 'dariusvecinius@gmail.com', 10);
insert into usuario values (2, 'SoccerMaster', 2, 'Daniel', 'danielsoccer@hotmail.com', 22);
insert into usuario values (3, 'Synergie', 2, 'Diego', 'synergieincyt@gmail.com', 0);
insert into usuario values (4, 'NatMon', 3, 'Natalia', 'supernat@gmail.com', 3);
insert into usuario values (5, 'BrisaEdu', 3, 'Eduardo', 'eduzao24@yahoo.com', 34);
insert into usuario values (6, 'MathTrev', 4, 'Matheus', 'matheussurf@hotmail.com', 49);
insert into usuario values (7, 'InstinctPlayer443', 4, 'Marcos', 'marcosdamata@terra.com.br', 56);
insert into usuario values (8, 'SuperDan2', 5, 'Dan', 'danatures@gmail.com', 70);
insert into usuario values (9, 'Marionante', 5, 'Wesley', 'wesley@vpn.gov', 73);
insert into usuario values (10, 'Zikkatuperdeu', 6, 'Guilherme', 'guiga10@hotmail.com', 81);
insert into usuario values (11, 'WellingtonMendes', 7, 'Wellington', 'wellingtonmendes@terra.com.br', 92);

create table amistoso(codigo_amistoso int,
					  codigo_usuario int,
                      data_hora datetime,
                      primary key (codigo_amistoso, codigo_usuario),
                      foreign key (codigo_usuario) references usuario(codigo_usuario)
);

insert into amistoso values (1, 1, '2017-03-12 02:02:04');
insert into amistoso values (1, 2, '2017-03-20 04:04:05');
insert into amistoso values (2, 2, '2017-03-24 06:09:06');
insert into amistoso values (2, 3, '2017-03-30 07:14:17');
insert into amistoso values (3, 3, '2017-04-02 09:19:18');
insert into amistoso values (3, 4, '2017-04-07 10:25:20');
insert into amistoso values (4, 4, '2017-04-17 13:30:26');
insert into amistoso values (4, 5, '2017-05-12 14:34:29');
insert into amistoso values (5, 5, '2017-05-15 15:34:31');
insert into amistoso values (5, 6, '2017-05-20 16:39:35');
insert into amistoso values (6, 6, '2017-05-25 17:41:37');
insert into amistoso values (6, 7, '2017-06-18 22:45:40');
insert into amistoso values (7, 7, '2017-06-27 23:49:41');
insert into amistoso values (7, 8, '2017-07-10 00:50:43');
insert into amistoso values (8, 8, '2017-08-29 03:52:45');
insert into amistoso values (8, 9, '2017-08-30 06:57:48');
insert into amistoso values (9, 9, '2017-09-01 11:00:50');
insert into amistoso values (9, 10, '2017-10-11 12:04:55');
insert into amistoso values (10, 10, '2017-10-15 17:10:57');
insert into amistoso values (10, 11, '2017-10-28 21:22:59');

create table campeonato(codigo_campeonato int,
						data_hora datetime,
                        primary key (codigo_campeonato)
);

insert into campeonato values (1, '2017-02-03 12:00:00');
insert into campeonato values (2, '2017-05-12 12:00:00');
insert into campeonato values (3, '2017-08-23 12:00:00');
insert into campeonato values (4, '2017-11-04 12:00:00');


create table partidas_campeonato(codigo_partida int,
								 codigo_campeonato int,
                                 codigo_usuario int,
                                 data_hora datetime,
                                 primary key (codigo_partida, codigo_campeonato, codigo_usuario),
                                 foreign key (codigo_campeonato) references campeonato(codigo_campeonato),
                                 foreign key (codigo_usuario) references usuario(codigo_usuario)
);

insert into partidas_campeonato values (1, 1, 1,'2016-01-02 21:00:00');
insert into partidas_campeonato values (1, 1, 2,'2016-01-02 21:00:00');
insert into partidas_campeonato values (2, 1, 2,'2016-02-12 21:00:00');
insert into partidas_campeonato values (2, 1, 3,'2016-02-12 21:00:00');
insert into partidas_campeonato values (3, 1, 3,'2016-03-15 21:00:00');
insert into partidas_campeonato values (3, 1, 4,'2016-03-15 21:00:00');
insert into partidas_campeonato values (4, 1, 4,'2016-04-20 21:00:00');
insert into partidas_campeonato values (4, 1, 5,'2016-04-20 21:00:00');
insert into partidas_campeonato values (5, 1, 5,'2016-05-24 21:00:00');
insert into partidas_campeonato values (5, 1, 6,'2016-05-24 21:00:00');
insert into partidas_campeonato values (1, 2, 6,'2016-06-04 12:00:00');
insert into partidas_campeonato values (1, 2, 7,'2016-06-04 12:00:00');
insert into partidas_campeonato values (2, 2, 7,'2016-07-08 12:00:00');
insert into partidas_campeonato values (2, 2, 8,'2016-07-08 12:00:00');
insert into partidas_campeonato values (3, 2, 8,'2016-08-09 12:00:00');
insert into partidas_campeonato values (3, 2, 9,'2016-08-09 12:00:00');
insert into partidas_campeonato values (4, 2, 9,'2016-09-13 12:00:00');
insert into partidas_campeonato values (4, 2, 10,'2016-09-13 12:00:00');
insert into partidas_campeonato values (5, 2, 10,'2017-01-18 12:00:00');
insert into partidas_campeonato values (5, 2, 11,'2017-01-18 12:00:00');
insert into partidas_campeonato values (1, 3, 1,'2017-02-20 21:00:00');
insert into partidas_campeonato values (1, 3, 2,'2017-02-20 21:00:00');
insert into partidas_campeonato values (2, 3, 2,'2017-03-26 21:00:00');
insert into partidas_campeonato values (2, 3, 3,'2017-03-26 21:00:00');
insert into partidas_campeonato values (3, 3, 3,'2017-04-30 21:00:00');
insert into partidas_campeonato values (3, 3, 9,'2017-04-30 21:00:00');
insert into partidas_campeonato values (4, 3, 9,'2017-05-03 21:00:00');
insert into partidas_campeonato values (4, 3, 10,'2017-05-03 21:00:00');
insert into partidas_campeonato values (5, 3, 10,'2017-06-09 21:00:00');
insert into partidas_campeonato values (5, 3, 11,'2017-06-09 21:00:00');
insert into partidas_campeonato values (1, 4, 4,'2017-07-10 12:00:00');
insert into partidas_campeonato values (1, 4, 5,'2017-07-10 12:00:00');
insert into partidas_campeonato values (2, 4, 5,'2017-08-12 12:00:00');
insert into partidas_campeonato values (2, 4, 6,'2017-08-12 12:00:00');
insert into partidas_campeonato values (3, 4, 6,'2017-09-17 12:00:00');
insert into partidas_campeonato values (3, 4, 7,'2017-09-17 12:00:00');
insert into partidas_campeonato values (4, 4, 7,'2017-10-21 12:00:00');
insert into partidas_campeonato values (4, 4, 8,'2017-10-21 12:00:00');



create table status_classificacao(codigo_status int,
								  descricao varchar(50),
                                  primary key (codigo_status)
);

insert into status_classificacao values (1, 'Rebaixado');
insert into status_classificacao values (2, 'Promovido');
insert into status_classificacao values (3, 'Preservado');
insert into status_classificacao values (4, 'Eliminado');


create table classe_campeonato(codigo_classe int,
							   descricao varchar(10),
                               primary key (codigo_classe)
);

insert into classe_campeonato values(1, 'A');
insert into classe_campeonato values(2, 'B');
insert into classe_campeonato values(3, 'C');
insert into classe_campeonato values(4, 'Eliminado');


create table classificacao_campeonato(codigo_campeonato int,
									  codigo_usuario int,
									  codigo_classe int,
									  codigo_status int,
                                      pontuacao int,
                                      primary key (codigo_campeonato, codigo_usuario, codigo_status),
                                      foreign key (codigo_campeonato) references campeonato(codigo_campeonato),
                                      foreign key (codigo_usuario) references usuario(codigo_usuario),
                                      foreign key (codigo_classe) references classe_campeonato(codigo_classe),
                                      foreign key (codigo_status) references status_classificacao(codigo_status)
);

insert into classificacao_campeonato values (1, 1, 1, 3, 100);
insert into classificacao_campeonato values (1, 2, 1, 3, 88);
insert into classificacao_campeonato values (1, 3, 2, 1, 60);
insert into classificacao_campeonato values (1, 4, 3, 1, 43);
insert into classificacao_campeonato values (1, 5, 3, 3, 21);
insert into classificacao_campeonato values (1, 6, 4, 4, 11);
insert into classificacao_campeonato values (2, 6, 3, 3, 21);
insert into classificacao_campeonato values (2, 7, 3, 1, 32);
insert into classificacao_campeonato values (2, 9, 2, 3, 65);
insert into classificacao_campeonato values (2, 10, 1, 3, 82);
insert into classificacao_campeonato values (2, 11, 1, 3, 100);
insert into classificacao_campeonato values (3, 1, 1, 3, 82);
insert into classificacao_campeonato values (3, 2, 2, 2, 49);
insert into classificacao_campeonato values (3, 3, 3, 3, 30);
insert into classificacao_campeonato values (3, 9, 4, 4, 12);
insert into classificacao_campeonato values (3, 10, 4, 4, 9);
insert into classificacao_campeonato values (3, 11, 4, 4, 3);
insert into classificacao_campeonato values (4, 4, 1, 3, 84);
insert into classificacao_campeonato values (4, 5, 1, 2, 73);
insert into classificacao_campeonato values (4, 6, 1, 2, 70);
insert into classificacao_campeonato values (4, 7, 2, 3, 54);


-- Informações de baixa complexidade (duas tabelas) : Quantos jogadores são atacantes?

select count(codigo_jogador)
from jogador, posicao_jogador
where jogador.codigo_posicao = posicao_jogador.codigo_posicao 
	  and posicao_jogador.descricao = 'Atacante';


-- Informações media complexidade (mais de duas tabelas) : Quais são os times presentes nos amistosos?

select distinct amistoso.codigo_amistoso, timao.codigo_timao
from amistoso, usuario
inner join timao on timao.codigo_timao = usuario.codigo_timao
where amistoso.codigo_usuario = usuario.codigo_usuario;


-- Informações alta complexidade (operadores de álgebra relacional) :

-- Projeção:

select nome
from usuario;

-- Seleção:

select codigo_jogador
from jogador
where jogador.nome = 'Neymar';

-- Renomeação:

select count(codigo_jogador)
from jogador as j, posicao_jogador as pj
where j.codigo_posicao = pj.codigo_posicao 
	  and pj.descricao = 'Atacante';
      
-- Junção:

select count(codigo_jogador)
from jogador
inner join posicao_jogador on posicao_jogador.codigo_posicao = jogador.codigo_posicao
where posicao_jogador.descricao = 'Atacante';

-- Produto Cartesiano:

select distinct amistoso.codigo_amistoso, timao.codigo_timao
from timao, amistoso, usuario
where amistoso.codigo_usuario = usuario.codigo_usuario
	  and timao.codigo_timao = usuario.codigo_timao;
      
-- União:

select * from status_classificacao
union
select * from classe_campeonato;

-- Diferença:

select codigo_usuario
from usuario
where codigo_usuario not in(select codigo_usuario 
							from classificacao_campeonato);

-- Interseção:

select codigo_usuario
from usuario
where usuario.codigo_usuario in(select classificacao_campeonato.codigo_usuario 
								from classificacao_campeonato);

-- Atribuição: 

select id_usuario, nome, email 
from usuario
left join classificacao_campeonato on classificacao_campeonato.codigo_usuario = usuario.codigo_usuario
where classificacao_campeonato.pontuacao < 50
      and classificacao_campeonato.codigo_campeonato = 1
order by nome;

-- Divisão:

select nome
from jogador
where not exists(select codigo_timao 
				 from timao 
				 where not exists(select nome 
								  from nome_timao 
								  where jogador.codigo_jogador = nome_timao.codigo_nometimao)
);
