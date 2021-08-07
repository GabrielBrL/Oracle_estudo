SELECT nome_do_produto, preco_de_lista,
(CASE WHEN preco_de_lista >= 12 THEN 'PRODUTO CARO'
     WHEN preco_de_lista >= 7 AND preco_de_lista < 12 THEN 'PRODUTO EM CONTA' 
     ELSE 'PRODUTO BARATO'
     END) AS STATUS_PRECO
    FROM tabela_de_produtos;

SELECT embalagem,
(CASE WHEN preco_de_lista >= 12 THEN 'PRODUTO CARO'
     WHEN preco_de_lista >= 7 AND preco_de_lista < 12 THEN 'PRODUTO EM CONTA' 
     ELSE 'PRODUTO BARATO'
     END) AS STATUS_PRECO,
     AVG(preco_de_lista) AS media_preco
    FROM tabela_de_produtos
    GROUP BY embalagem,
    (CASE WHEN preco_de_lista >= 12 THEN 'PRODUTO CARO'
     WHEN preco_de_lista >= 7 AND preco_de_lista < 12 THEN 'PRODUTO EM CONTA' 
     ELSE 'PRODUTO BARATO'
     END) ORDER BY media_preco DESC;
     
     
SELECT nome,
(CASE WHEN TO_CHAR(data_de_nascimento, 'YYYY') < '1990' THEN 'VELHO'
    WHEN TO_CHAR(data_de_nascimento, 'YYYY') >= '1990' AND TO_CHAR(data_de_nascimento, 'YYYY') <= '1995' THEN 'JOVEM'
    ELSE 'CRIANÇA'
    END) AS status_idade,
    idade
FROM tabela_de_clientes ORDER BY idade; 







