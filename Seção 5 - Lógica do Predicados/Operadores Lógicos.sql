/* OPERADORES LÓGICOS */

-- OR - OU

SELECT NOME, SEXO, ENDERECO FROM cliente
WHERE
SEXO = 'M' OR ENDERECO LIKE '%BRASIL';

SELECT NOME, SEXO, ENDERECO FROM cliente
WHERE
SEXO = 'F' OR ENDERECO LIKE '%ENGRAÇADA';

-- AND - E

SELECT NOME, SEXO, ENDERECO FROM cliente
WHERE
SEXO = 'M' AND ENDERECO LIKE '%BRASIL';

SELECT NOME, SEXO, ENDERECO FROM cliente
WHERE
SEXO = 'F' AND ENDERECO LIKE '%ENGRAÇADA';