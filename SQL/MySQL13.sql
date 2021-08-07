SELECT DISTINCT bairro FROM tabela_de_vendedores;

SELECT * FROM tabela_de_clientes WHERE bairro IN (SELECT bairro FROM tabela_de_vendedores);

SELECT 
embalagem,
SUM(preco_de_lista) AS total_preco 
FROM tabela_de_produtos
GROUP BY embalagem
HAVING SUM(preco_de_lista) <= 80;

SELECT Z.embalagem, Z.total_preco FROM
(SELECT embalagem, SUM(preco_de_lista) AS total_preco FROM tabela_de_produtos GROUP BY embalagem) Z
WHERE Z.total_preco <= 80;

SELECT A.cpf, A.total_compras FROM
(SELECT CPF, COUNT(*) AS total_compras FROM NOTAS_FISCAIS
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = '2016'
GROUP BY CPF) A
WHERE A.total_compras > 2000;