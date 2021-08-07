SELECT estado, SUM(limite_de_credito) AS soma_limite
FROM tabela_de_clientes 
GROUP BY estado
HAVING SUM(limite_de_credito) >= 900000;


SELECT embalagem, MAX(preco_de_lista) AS maior_preco,
MIN(preco_de_lista) AS menor_preco FROM tabela_de_produtos
GROUP BY embalagem
HAVING SUM(preco_de_lista) <= 80;

SELECT cpf, nome, SUM(volume_de_compra) AS t_volume_compras FROM tabela_de_clientes WHERE cpf IN ('3623344710', '50534475787', '492472718') GROUP BY cpf, nome;

SELECT cpf, COUNT(*) AS total_compras FROM notas_fiscais WHERE TO_CHAR(data_venda, 'YYYY') = '2016' GROUP BY cpf HAVING COUNT(*) > 2000;