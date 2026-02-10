/*CREATE TABLE ATLETA (
  IDatleta int NOT NULL PRIMARY KEY,
  Nome varchar(40) NOT NULL,
  Modalidade varchar(40) NOT NULL,
  qtdMedalha int NOT NULL
);


INSERT INTO ATLETA (Idatleta, Nome, Modalidade, qtdMedalha) VALUES
(1, 'Joel', 'salto em altura', 2),
(2, 'Antony', 'Futebol', 6),
(3, 'Endric', 'Futebol',3),
(4, 'lebrão james', 'basquete',10);

select * from ATLETA; 

select Nome, qtdMedalha from ATLETA; 

select nome, Modalidade from atleta where Modalidade  like 'Futebol'; 

select nome from atleta where modalidade like '%Basquete%'; 

select nome, modalidade from atleta order by modalidade;

select qtdMedalha from atleta order by qtdmedalha desc;

select nome from atleta order by '%S%';

select nome from atleta where nome like 'S%';

select nome from atleta where nome like 'M%';

select nome from atleta where nome like '%O';

select nome from atleta where nome like '%r_';

drop table atleta;
*/

CREATE TABLE Musica (
    idMusica INT PRIMARY KEY,
    titulo VARCHAR(40),
    artista VARCHAR(40),
    genero VARCHAR(40)
);

INSERT INTO Musica (idMusica, titulo, artista, genero) VALUES
(1, 'Pink + White', 'Frank Ocean', 'R&B'),
(2, 'Nights', 'Frank Ocean', 'R&B'),

(3, 'Best Part', 'Daniel Caesar', 'R&B'),
(4, 'Get You', 'Daniel Caesar', 'R&B'),

(5, 'EARFQUAKE', 'Tyler, The Creator', 'Hip Hop'),
(6, 'See You Again', 'Tyler, The Creator', 'Hip Hop'),

(7, 'Roommates', 'Malcom Todd', 'Indie'),
(8, 'Volta', 'Tim Bernardes', 'MPB');

select * from Musica;

select titulo, artista from Musica;

select titulo, genero from Musica where genero like 'Indie';

select titulo from Musica where artista like 'Malcom Todd';

select * from Musica order by titulo;

select * from Musica order by artista desc;

select titulo from Musica where titulo like 'e%';

select * from Musica where genero like '_&%'  

select * from musica where titulo like '%t_';

drop table musica;


CREATE TABLE Filme (
    idFilme INT PRIMARY KEY,
    titulo VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);

INSERT INTO Filme (idFilme, titulo, genero, diretor) VALUES
(1, 'A origem', 'Ficção Científica', 'Christopher Nolan'),
(2, 'Interstellar', 'Ficção Científica', 'Christopher Nolan'),

(3, 'Pulp Fiction', 'Crime', 'Quentin Tarantino'),
(4, 'Django Livre', 'Crime', 'Quentin Tarantino'),

(5, 'Parasita', 'Drama', 'Bong Joon-ho'),
(6, 'Memorias de um assasino', 'Drama', 'Bong Joon-ho'),

(7, 'Tropa de Elite', 'Ação', 'José Padilha');

select * from Filme;

select titulo, diretor from Filme;

select * from Filme where genero like 'ficção cientifica';

select * from Filme where diretor like 'Quentin Tarantino'

select * from Filme order by titulo;

select * from Filme order by diretor desc;

select * from Filme where titulo like 't%';

select * from Filme where titulo like '%e';

select * from filme where titulo like '_e%';

select * from filme where titulo like '%t_';

drop table FILMES; 

CREATE TABLE Professor (
    idProfessor INT PRIMARY KEY,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc DATE
);

INSERT INTO Professor (idProfessor, nome, especialidade, dtNasc) VALUES
(1, 'Carlos Silva', 'Banco de Dados', '1980-05-12'),
(2, 'Mariana Souza', 'Banco de Dados', '1985-09-23'),

(3, 'Rafael Lima', 'Programação', '1978-03-18'),
(4, 'Fernanda Alves', 'Programação', '1990-11-02'),

(5, 'Lucas Pereira', 'Redes', '1983-10-13'),
(6, 'Ana Costa', 'Redes', '1988-07-30'),

(7, 'Bruno Martins', 'Engenharia de Software', '1975-02-25'),
(8, 'Patricia Rocha', 'Engenharia de Software', '1992-06-14');

select * from professor;

select especialidade from professor;

select * from professor where especialidade like 'Programação';

select * from professor order by nome;

select * from professor order by dtNasc desc;

select * from professor where nome like 'P%';

select * from professor where nome like '%A';

select * from professor where nome like '_A%';

select * from professor where nome like '%v_';

drop table professor;

CREATE TABLE Jogo (
    idJogo INT PRIMARY KEY,
    nome VARCHAR(50),
    comentario VARCHAR(200),
    ranking INT
);

INSERT INTO Jogo (idJogo, nome, comentario, ranking) VALUES
(1, 'The Legend of Zelda: Breath of the Wild', 'Exploração livre, mundo aberto e narrativa envolvente.', 1),
(2, 'Red Dead Redemption 2', 'História profunda com personagens marcantes.', 2),
(3, 'Minecraft', 'Criatividade sem limites e jogabilidade infinita.', 3),
(4, 'God of War', 'Combate intenso com uma história emocional.', 4),
(5, 'Hollow Knight', 'Estilo artístico único e desafio elevado.', 5);

select * from jogo;

select nome from jogo;

select comentario from jogo where nome like 'Minecraft';

select * from jogo order by nome;

select * from jogo order by ranking desc;

select * from jogo where nome like 'M%';

select * from jogo where nome like '%t';

select * from jogo where nome like '_h%';

select * from jogo where nome like '%h_';

select * from jogo where nome != 'Minecraft';

drop table jogo;

SHOW TABLES