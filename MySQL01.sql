SELECT * FROM tabela_de_produtos WHERE NOT(sabor = 'Manga' AND tamanho = '470 ml');

SELECT * FROM tabela_de_produtos WHERE sabor IN ('Manga', 'Laranja');


SELECT * FROM tabela_de_clientes WHERE cidade in ('Rio de Janeiro', 'Sao Paulo') AND idade >= 18;

SELECT * FROM tabela_de_clientes WHERE cidade in ('Rio de Janeiro', 'Sao Paulo') AND (idade >= 18 AND idade <= 22);