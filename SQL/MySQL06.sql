SELECT * FROM tabela_de_clientes;

SELECT estado, limite_de_credito FROM tabela_de_clientes;

SELECT estado, SUM(limite_de_credito) AS total_limite_de_credito FROM tabela_de_clientes GROUP BY estado;

SELECT embalagem, SUM(preco_de_lista) AS maior_preco FROM tabela_de_produtos GROUP BY embalagem ORDER BY maior_preco DESC;

SELECT embalagem, COUNT(*) AS total_embalagem FROM tabela_de_produtos GROUP BY embalagem;

SELECT bairro, SUM(limite_de_credito) AS total_credito FROM tabela_de_clientes GROUP BY bairro ORDER BY total_credito DESC;

SELECT bairro, SUM(limite_de_credito) AS total_credito FROM tabela_de_clientes WHERE cidade = 'Rio de Janeiro' GROUP BY bairro ORDER BY total_credito DESC;

SELECT estado, bairro, SUM(limite_de_credito) AS total_credito FROM tabela_de_clientes GROUP BY estado, bairro ORDER BY estado, bairro;


SELECT COUNT(*) FROM itens_notas_fiscais WHERE codigo_do_produto = '1101035' AND quantidade = 99;