/* INSERINDO OS DADOS */
-- NÃO PRECISA ESPECIFICAR O ID, POIS ELE VAI AUTO INCREMENTANDO

INSERT INTO cliente(NOME,SEXO,EMAIL,CPF)
VALUES('Ana', 'F', 'ana@gmail.com', '12345789');

INSERT INTO cliente(NOME,SEXO,EMAIL,CPF)
VALUES('José', 'M', 'jose@gmail.com', '5555555');

INSERT INTO cliente(NOME,SEXO,EMAIL,CPF)
VALUES('Maria', 'F', 'maria@gmail.com', '8888888');

INSERT INTO cliente(NOME,SEXO,EMAIL,CPF)
VALUES('João', 'M', 'joao@gmail.com', '77777777');

INSERT INTO cliente(NOME,SEXO,EMAIL,CPF)
VALUES('Nubia', 'F', 'nubia@gmail.com', '666666666');

/*
+------------+-------+------+-----------------+-----------+
| ID_CLIENTE | NOME  | SEXO | EMAIL           | CPF       |
+------------+-------+------+-----------------+-----------+
|          1 | Ana   | F    | ana@gmail.com   | 12345789  |
|          2 | José  | M    | jose@gmail.com  | 5555555   |
|          3 | Maria | F    | maria@gmail.com | 8888888   |
|          4 | João  | M    | joao@gmail.com  | 77777777  |
|          5 | Nubia | F    | nubia@gmail.com | 666666666 |
+------------+-------+------+-----------------+-----------+
*/