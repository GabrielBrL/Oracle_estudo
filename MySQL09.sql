SELECT * FROM tabela_de_vendedores;

SELECT * FROM notas_fiscais;

SELECT a.matricula, b.nome, COUNT(*) FROM notas_fiscais A
INNER JOIN tabela_de_vendedores B
ON a.matricula = b.matricula
GROUP BY a.matricula, b.nome;

SELECT SUM(TO_CHAR(b.preco, '999D99') * b.quantidade) AS faturamento, TO_CHAR(a.data_venda, 'YYYY') AS ano FROM notas_fiscais A
INNER JOIN itens_notas_fiscais B
ON a.numero = b.numero
GROUP BY TO_CHAR(a.data_venda, 'YYYY') ORDER BY faturamento DESC;

SELECT * FROM itens_notas_fiscais;