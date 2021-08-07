SELECT * FROM tabela_de_produtos WHERE sabor LIKE '%Maca%';

SELECT * FROM tabela_de_produtos WHERE sabor LIKE '%Maca%' AND (tamanho LIKE '%Litros%' OR tamanho LIKE '%Litro%');

SELECT * FROM tabela_de_clientes WHERE nome LIKE '%Mattos%';