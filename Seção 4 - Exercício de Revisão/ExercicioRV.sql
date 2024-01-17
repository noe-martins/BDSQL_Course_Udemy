/* --- CRIAÇÃO --- */

CREATE DATABASE livraria;

/* MODELAGEM CONCEITUAL 
	1) NOME DO LIVRO - varchar(45)
	2) Nome do autor - varchar(30)
	3) Sexo do autor - char(1)
	4) Numero de páginas - int
	5) Nome da editora - varchar(30)
	6) valor do livro - float
	7) Estado (UF) da editora - char(2)
	8) Ano da publicação - int
*/

USE livraria;

CREATE TABLE livros(
	id_livro INT NOT NULL AUTO_INCREMENT,
	nome_livro VARCHAR(45) NOT NULL,
	nome_autor VARCHAR(30) NOT NULL,
	sexo_autor CHAR(2) NOT NULL,
	numPaginas_livro INT NOT NULL,
	nome_editora VARCHAR(30) NOT NULL,
	valor_livro FLOAT NOT NULL,
	estado_editora CHAR(2) NOT NULL,
	anoPublicacao CHAR(4) NOT NULL,
	PRIMARY KEY(id_livro)
);

/* INSERIR */

INSERT INTO livros(nome_livro, nome_autor, sexo_autor, 
numPaginas_livro, nome_editora, valor_livro, estado_editora,
anoPublicacao) VALUES ('Cavaleiro Real', 'Ana Claudia',
'F', 465, 'Atlas', 49.9, 'RJ', '2009');

INSERT INTO livros(nome_livro, nome_autor, sexo_autor, 
numPaginas_livro, nome_editora, valor_livro, estado_editora,
anoPublicacao) VALUES ('SQL para leigos', 'João Nunes',
'M', 450, 'Addison', 98, 'SP', '2018');

INSERT INTO livros(nome_livro, nome_autor, sexo_autor, 
numPaginas_livro, nome_editora, valor_livro, estado_editora,
anoPublicacao) VALUES ('Receitas Caseiras', 'Celia Tavares',
'F', 210, 'Atlas', 45, 'RJ', '2008');

INSERT INTO livros(nome_livro, nome_autor, sexo_autor, 
numPaginas_livro, nome_editora, valor_livro, estado_editora,
anoPublicacao) VALUES ('Pessoas efetivas', 'Eduardo Santos',
'M', 390, 'Beta', 78.99, 'RJ', '2018');

INSERT INTO livros(nome_livro, nome_autor, sexo_autor, 
numPaginas_livro, nome_editora, valor_livro, estado_editora,
anoPublicacao) VALUES ('Hábitos saudáveis', 'Eduardo Santos',
'M', 630, 'Beta', 150.98, 'RJ', '2019');

INSERT INTO livros(nome_livro, nome_autor, sexo_autor, 
numPaginas_livro, nome_editora, valor_livro, estado_editora,
anoPublicacao) VALUES ('A Casa Marron', 'Hermes Macedo',
'M', 250, 'Bubba', 60, 'MG', '2016');

INSERT INTO livros(nome_livro, nome_autor, sexo_autor, 
numPaginas_livro, nome_editora, valor_livro, estado_editora,
anoPublicacao) VALUES ('Estacio Querido', 'Geraldo Francisco',
'M', 310, 'Insignia', 100, 'ES', '2015');

INSERT INTO livros(nome_livro, nome_autor, sexo_autor, 
numPaginas_livro, nome_editora, valor_livro, estado_editora,
anoPublicacao) VALUES ('Pra Sempre Amigas', 'Leda Silva',
'F', 510, 'Insignia', 78.98, 'ES', '2011');

INSERT INTO livros(nome_livro, nome_autor, sexo_autor, 
numPaginas_livro, nome_editora, valor_livro, estado_editora,
anoPublicacao) VALUES ('Copas Inesquecíveis', 'Marco Alcantara',
'M', 200, 'Larson', 130.98, 'RS', '2018');

INSERT INTO livros(nome_livro, nome_autor, sexo_autor, 
numPaginas_livro, nome_editora, valor_livro, estado_editora,
anoPublicacao) VALUES ('O poder da mente', 'Clara Mafra',
'F', 120, 'Continental', 56.58, 'RS', '2017');

/* --- QUERIES --- */
-- 1) Trazer todos os dados
SELECT * FROM livros;

-- 2) Trazer o nome do livro e o nome da editora
SELECT nome_livro AS LIVRO, nome_editora AS EDITORA FROM livros;

-- 3) Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
SELECT nome_livro AS LIVRO, estado_editora AS UF FROM livros
WHERE sexo_autor = 'M';

-- 4) Trazer o nome do livro e o número de páginas dos 
-- livros publicados por autores do sexo feminino.
SELECT nome_livro AS LIVRO, numPaginas_livro AS PÁGINAS FROM livros
WHERE sexo_autor = 'F';

-- 5) Trazer os valores dos livros das editoras de São Paulo.
SELECT nome_livro AS LIVRO, valor_livro AS PREÇO FROM livros
WHERE estado_editora = 'SP';

-- 6) Trazer os dados dos autores do sexo masculino que tiveram 
--livros publicados por São Paulo ou Rio de Janeiro 
--(Questão Desafio).
SELECT * FROM livros
WHERE sexo_autor = 'M' AND 
(estado_editora = 'SP' OR estado_editora = 'RJ');