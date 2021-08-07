SELECT 
a.nome AS noma_vendedor,
a.bairro AS bairro_vendedor,
b.nome AS nome_cliente, 
b.bairro AS bairro_cliente
FROM tabela_de_vendedores A 
INNER JOIN tabela_de_clientes B
ON a.bairro = b.bairro;

SELECT 
a.nome AS noma_vendedor,
a.bairro AS bairro_vendedor,
b.nome AS nome_cliente, 
b.bairro AS bairro_cliente
FROM tabela_de_vendedores A 
LEFT JOIN tabela_de_clientes B
ON a.bairro = b.bairro;

SELECT 
a.nome AS noma_vendedor,
a.bairro AS bairro_vendedor,
b.nome AS nome_cliente, 
b.bairro AS bairro_cliente
FROM tabela_de_vendedores A 
RIGHT JOIN tabela_de_clientes B
ON a.bairro = b.bairro;

SELECT 
a.nome AS noma_vendedor,
a.bairro AS bairro_vendedor,
b.nome AS nome_cliente, 
b.bairro AS bairro_cliente
FROM tabela_de_vendedores A 
FULL JOIN tabela_de_clientes B
ON a.bairro = b.bairro;

SELECT 
a.nome AS noma_vendedor,
a.bairro AS bairro_vendedor,
b.nome AS nome_cliente, 
b.bairro AS bairro_cliente
FROM tabela_de_vendedores A ,tabela_de_clientes B;