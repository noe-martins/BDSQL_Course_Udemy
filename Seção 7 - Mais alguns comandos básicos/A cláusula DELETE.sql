/* BOAS PRÁTICAS AO SE TRABALHAR COM DELETE */

-- CONTABILIZAR A QUANTIDADE DE REGISTROS

SELECT COUNT(*) FROM CLIENTE; -- TOTAL 6

SELECT COUNT(*) FROM CLIENTE -- TOTAL 2
WHERE NOME = 'GIAN';

-- USAR O SELECT PARA CERTIFICAR O QUE QUER DELETAR

SELECT * FROM CLIENTE
WHERE NOME = 'GIAN'
AND EMAIL = 'gian.lopes@uol.com';

DELETE FROM CLIENTE
WHERE NOME = 'GIAN'
AND EMAIL = 'gian.lopes@uol.com';
 