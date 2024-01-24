/* EXERCÍCIOS */

/* 
	1°) QUESTÃO 
		- TRAGA OS FUNCIONÁRIOS QUE TRABALHAM NO DEPARTAMENTO
		DE FILMES OU NO DEPARTAMENTO DE ROUPAS
*/

SELECT * FROM funcionarios
WHERE
departamento = 'roupas' OR departamento = 'filmes';

/* 
	2°) QUESTÃO 
		- O GESTOR DE MARKETING PEDIU A LISTA DAS FUNCIONÁRIAS
		QUE TRABALHAM NO DEPARTAMENTO DE FILMES OU NO
		DEPARTAMENTO LAR. ELE NECESSITA ENVIAR UM EMAIL
		PARA AS COLABORADORAS DESSES DOIS SETORES.
*/

SELECT nome AS NAME, 
email AS 'Emails - Funcionárias de Filmes e lar',
sexo,
departamento
FROM funcionarios
WHERE
(departamento = 'lar' OR departamento = 'filmes') 
AND sexo = 'Feminino';

/* 
	3°) QUESTÃO 
		- TRAGA OS FUNCIONÁRIOS DO SEXO MASCULINO
		OU OS FUNCIONÁRIOS QUE TABALHAM NO JARDIM
*/

SELECT * FROM funcionarios
WHERE
sexo = 'Masculino' OR departamento = 'jardim';

/* 
	COMANDOS PARA FAZER A CONTABILIDADE LÓGICA
	PARA PERFORMANCE
 */
 
SELECT COUNT(*) departamento FROM funcionarios
WHERE departamento = 'roupas'
GROUP BY departamento;

SELECT COUNT(*), departamento 
FROM funcionarios
GROUP BY departamento
ORDER BY 1;