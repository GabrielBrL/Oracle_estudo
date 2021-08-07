SELECT * FROM notas_fiscais;

SELECT * FROM tabela_de_clientes;

SELECT nf.cpf, TO_CHAR(nf.data_venda, 'YYYY-MM') AS MES_ANO, SUM(inf.quantidade) AS VOLUME_LIMITE
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON nf.numero = inf.numero
GROUP BY nf.cpf, TO_CHAR(nf.data_venda, 'YYYY-MM');

SELECT cadastro.cpf, cadastro.nome, vendas.mes_ano ,cadastro.volume_de_compra, vendas.volume_limite,
CASE WHEN vendas.volume_limite >= cadastro.volume_de_compra THEN 'VENDA VALIDA'
ELSE 'VENDA INVALIDA' END VALIDACAO
FROM 
(SELECT nf.cpf, TO_CHAR(nf.data_venda, 'YYYY-MM') AS MES_ANO, SUM(inf.quantidade) AS VOLUME_LIMITE
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON nf.numero = inf.numero
GROUP BY nf.cpf, TO_CHAR(nf.data_venda, 'YYYY-MM')) VENDAS
INNER JOIN
(SELECT cpf, nome, volume_de_compra FROM tabela_de_clientes) CADASTRO
ON cadastro.cpf = vendas.cpf;

SELECT nf.cpf, TO_CHAR(nf.data_venda, 'YYYY-MM') AS MES_ANO, SUM(inf.quantidade) AS QUANTIDADE_LIMITE
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON nf.numero = inf.numero
GROUP BY nf.cpf, TO_CHAR(nf.data_venda, 'YYYY-MM');




SELECT tabela.cpf, tabela.nome, tabela.mes_ano, (1-(tabela.QUANTIDADE_LIMITE/tabela.QUANTIDADE_VENDAS)) * 100 AS PERCENTUAL,
CASE WHEN (tabela.QUANTIDADE_LIMITE - tabela.QUANTIDADE_VENDAS) < 0 THEN 'INVALIDA'
ELSE 'VALIDO' END STATUS_VENDA
FROM
(SELECT cadastro.cpf, cadastro.nome, vendas.mes_ano ,cadastro.QUANTIDADE_LIMITE, vendas.QUANTIDADE_VENDAS
FROM
(SELECT nf.cpf, TO_CHAR(nf.data_venda, 'YYYY-MM') AS MES_ANO, SUM(inf.quantidade) AS QUANTIDADE_VENDAS
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON nf.numero = inf.numero
GROUP BY nf.cpf, TO_CHAR(nf.data_venda, 'YYYY-MM')) VENDAS
INNER JOIN
(SELECT cpf, nome, volume_de_compra AS QUANTIDADE_LIMITE FROM tabela_de_clientes) CADASTRO
ON cadastro.cpf = vendas.cpf) TABELA
WHERE (tabela.QUANTIDADE_LIMITE - tabela.QUANTIDADE_VENDAS) < 0;


