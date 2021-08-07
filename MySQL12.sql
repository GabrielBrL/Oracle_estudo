SELECT DISTINCT bairro FROM tabela_de_clientes
UNION
SELECT DISTINCT bairro FROM tabela_de_vendedores;

SELECT DISTINCT bairro FROM tabela_de_clientes
UNION ALL
SELECT DISTINCT bairro FROM tabela_de_vendedores;

SELECT DISTINCT bairro AS bairro, 'cliente' AS tipo FROM tabela_de_clientes
UNION
SELECT DISTINCT bairro AS bairro, 'vendedor' AS tipo FROM tabela_de_vendedores;

SELECT DISTINCT bairro AS bairro, 'cliente' AS tipo FROM tabela_de_clientes
UNION ALL
SELECT DISTINCT bairro AS bairro, 'vendedor' AS tipo FROM tabela_de_vendedores;