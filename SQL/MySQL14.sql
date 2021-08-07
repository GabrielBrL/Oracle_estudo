SELECT Z.embalagem, Z.total_preco FROM
(SELECT embalagem, 
SUM(preco_de_lista) AS total_preco
FROM tabela_de_produtos 
GROUP BY embalagem) Z
WHERE Z.total_preco <= 80;

SELECT * FROM vw_embalagens WHERE total_preco < 200;

SELECT * FROM tabela_de_produtos A
INNER JOIN vw_embalagens B ON
a.embalagem = b.embalagem;