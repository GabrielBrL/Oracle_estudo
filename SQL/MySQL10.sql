SELECT COUNT(*) FROM tabela_de_clientes;

SELECT cpf, COUNT(*) FROM notas_fiscais GROUP BY cpf;

SELECT DISTINCT a.cpf AS CPF_CLI, a.nome, b.cpf AS CPF_NOTA
FROM tabela_de_clientes A 
LEFT JOIN notas_fiscais B
ON a.cpf = b.cpf
WHERE b.cpf IS NULL;

SELECT DISTINCT b.cpf AS CPF_CLI, b.nome, a.cpf AS CPF_NOTA
FROM notas_fiscais A 
RIGHT JOIN tabela_de_clientes B
ON b.cpf = a.cpf
WHERE a.cpf IS NULL;